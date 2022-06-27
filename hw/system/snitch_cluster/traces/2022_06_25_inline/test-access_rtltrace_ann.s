; ?? (??:0)
      0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
      0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
      0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
      0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
      0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
                                                #; (lsu) t0  <-- 0x800027c0
      0x00001014 jalr    t0                     #; t0  = 0x800027c0, (wrb) ra  <-- 4120, goto 0x800027c0
; ?? (start.S:20)
      0x800027c0 auipc   gp, 0x1                #; (wrb) gp  <-- 0x800037c0
; ?? (start.S:21)
      0x800027c4 addi    gp, gp, -248           #; gp  = 0x800037c0, (wrb) gp  <-- 0x800036c8
; ?? (start.S:28)
      0x800027c8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800027c8
      0x800027cc jalr    ra, ra, 964            #; ra  = 0x800027c8, (wrb) ra  <-- 0x800027d0, goto 0x80002b8c
; ?? (start_snitch.S:16)
      0x80002b8c mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
; ?? (start_snitch.S:17)
      0x80002b90 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
                                                #; (lsu) a1  <-- 8
; ?? (start_snitch.S:18)
      0x80002b94 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:19)
      0x80002b98 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start_snitch.S:20)
      0x80002b9c lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
                                                #; (lsu) t1  <-- 0x00020000
; ?? (start_snitch.S:21)
      0x80002ba0 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
; ?? (start_snitch.S:22)
      0x80002ba4 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
; ?? (start_snitch.S:23)
      0x80002ba8 div     t3, a0, a1             #; a0  = 0, a1  = 8
                                                #; (acc) t4  <-- 0x027e0eb3
                                                #; (lsu) t2  <-- 0
; ?? (start_snitch.S:24)
      0x80002bac mul     t4, t3, t2             #; t3  = 0, t2  = 0
                                                #; (acc) a2  <-- 0x01d60633
; ?? (start_snitch.S:25)
      0x80002bb0 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
; ?? (start_snitch.S:26)
      0x80002bb4 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
; ?? (start_snitch.S:27)
      0x80002bb8 remu    a0, a0, a1             #; a0  = 0, a1  = 8
; ?? (start_snitch.S:28)
      0x80002bbc ret                            #; ra  = 0x800027d0, goto 0x800027d0
                                                #; (acc) s0  <-- 0x00050413
; ?? (start.S:39)
      0x800027d0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:40)
      0x800027d4 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
; ?? (start.S:41)
      0x800027d8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800027d8
      0x800027dc jalr    ra, ra, 1036           #; ra  = 0x800027d8, (wrb) ra  <-- 0x800027e0, goto 0x80002be4
; ?? (start_snitch.S:48)
      0x80002be4 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
; ?? (start_snitch.S:49)
      0x80002be8 ret                            #; ra  = 0x800027e0, goto 0x800027e0
                                                #; (lsu) a0  <-- 0
; ?? (start.S:42)
      0x800027e0 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:43)
      0x800027e4 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:45)
      0x800027e8 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
; ?? (start.S:46)
      0x800027ec sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
; ?? (start.S:47)
      0x800027f0 bnez    t0, pc + 36            #; t0  = 0, not taken
; ?? (start.S:48)
      0x800027f4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800027f4
      0x800027f8 addi    t0, t0, 2004           #; t0  = 0x800027f4, (wrb) t0  <-- 0x80002fc8
; ?? (start.S:49)
      0x800027fc auipc   t1, 0x0                #; (wrb) t1  <-- 0x800027fc
      0x80002800 addi    t1, t1, 2000           #; t1  = 0x800027fc, (wrb) t1  <-- 0x80002fcc
; ?? (start.S:50)
      0x80002804 bge     t0, t1, pc + 16        #; t0  = 0x80002fc8, t1  = 0x80002fcc, not taken
; ?? (start.S:51)
      0x80002808 sw      zero, 0(t0)            #; t0  = 0x80002fc8, 0 ~~> Word[0x80002fc8]
; ?? (start.S:52)
      0x8000280c addi    t0, t0, 4              #; t0  = 0x80002fc8, (wrb) t0  <-- 0x80002fcc
; ?? (start.S:53)
      0x80002810 blt     t0, t1, pc - 8         #; t0  = 0x80002fcc, t1  = 0x80002fcc, not taken
; ?? (start.S:58)
      0x80002814 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
; ?? (start.S:59)
      0x80002818 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
; ?? (start.S:60)
      0x8000281c beqz    t0, pc + 132           #; t0  = 40, not taken
; ?? (start.S:61)
      0x80002820 fcvt.d.w ft0, zero             #; ac1  = 0
; ?? (start.S:62)
      0x80002824 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
; ?? (start.S:63)
      0x80002828 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
; ?? (start.S:64)
      0x8000282c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
                                                #; (f:fpu) ft3  <-- 0.0
; ?? (start.S:65)
      0x80002830 fcvt.d.w ft4, zero             #; ac1  = 0
; ?? (start.S:66)
      0x80002834 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
; ?? (start.S:67)
      0x80002838 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
; ?? (start.S:68)
      0x8000283c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
                                                #; (f:fpu) ft7  <-- 0.0
; ?? (start.S:69)
      0x80002840 fcvt.d.w fs0, zero             #; ac1  = 0
; ?? (start.S:70)
      0x80002844 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
; ?? (start.S:71)
      0x80002848 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
; ?? (start.S:72)
      0x8000284c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
                                                #; (f:fpu) fa1  <-- 0.0
; ?? (start.S:73)
      0x80002850 fcvt.d.w fa2, zero             #; ac1  = 0
; ?? (start.S:74)
      0x80002854 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
; ?? (start.S:75)
      0x80002858 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
; ?? (start.S:76)
      0x8000285c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
                                                #; (f:fpu) fa5  <-- 0.0
; ?? (start.S:77)
      0x80002860 fcvt.d.w fa6, zero             #; ac1  = 0
; ?? (start.S:78)
      0x80002864 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
; ?? (start.S:79)
      0x80002868 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
; ?? (start.S:80)
      0x8000286c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
                                                #; (f:fpu) fs3  <-- 0.0
; ?? (start.S:81)
      0x80002870 fcvt.d.w fs4, zero             #; ac1  = 0
; ?? (start.S:82)
      0x80002874 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
; ?? (start.S:83)
      0x80002878 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
; ?? (start.S:84)
      0x8000287c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
                                                #; (f:fpu) fs7  <-- 0.0
; ?? (start.S:85)
      0x80002880 fcvt.d.w fs8, zero             #; ac1  = 0
; ?? (start.S:86)
      0x80002884 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
; ?? (start.S:87)
      0x80002888 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
; ?? (start.S:88)
      0x8000288c fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
                                                #; (f:fpu) fs11 <-- 0.0
; ?? (start.S:89)
      0x80002890 fcvt.d.w ft8, zero             #; ac1  = 0
; ?? (start.S:90)
      0x80002894 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
; ?? (start.S:91)
      0x80002898 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
; ?? (start.S:92)
      0x8000289c fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
                                                #; (f:fpu) ft11 <-- 0.0
; ?? (start.S:99)
      0x800028a0 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
; ?? (start.S:100)
      0x800028a4 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
; ?? (start.S:103)
      0x800028a8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800028a8
      0x800028ac lw      t0, 900(t0)            #; t0  = 0x800028a8, t0  <~~ Word[0x80002c2c]
                                                #; (lsu) t0  <-- 136
; ?? (start.S:104)
      0x800028b0 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
; ?? (start.S:105)
      0x800028b4 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
; ?? (start.S:108)
      0x800028b8 auipc   t2, 0x0                #; (wrb) t2  <-- 0x800028b8
      0x800028bc lw      t2, 880(t2)            #; t2  = 0x800028b8, t2  <~~ Word[0x80002c28]
                                                #; (lsu) t2  <-- 10
; ?? (start.S:110)
      0x800028c0 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
; ?? (start.S:111)
      0x800028c4 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
; ?? (start.S:112)
      0x800028c8 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:113)
      0x800028cc sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
; ?? (start.S:116)
      0x800028d0 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:117)
      0x800028d4 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
; ?? (start.S:118)
      0x800028d8 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:119)
      0x800028dc sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
; ?? (start.S:124)
      0x800028e0 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800028e0
      0x800028e4 addi    t0, t0, 1512           #; t0  = 0x800028e0, (wrb) t0  <-- 0x80002ec8
; ?? (start.S:125)
      0x800028e8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x800028e8
      0x800028ec addi    t1, t1, 1504           #; t1  = 0x800028e8, (wrb) t1  <-- 0x80002ec8
; ?? (start.S:126)
      0x800028f0 auipc   t2, 0x0                #; (wrb) t2  <-- 0x800028f0
      0x800028f4 addi    t2, t2, 1496           #; t2  = 0x800028f0, (wrb) t2  <-- 0x80002ec8
; ?? (start.S:127)
      0x800028f8 auipc   t3, 0x0                #; (wrb) t3  <-- 0x800028f8
      0x800028fc addi    t3, t3, 1504           #; t3  = 0x800028f8, (wrb) t3  <-- 0x80002ed8
; ?? (start.S:128)
      0x80002900 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80002ec8, (wrb) sp  <-- 0x80122e38
; ?? (start.S:129)
      0x80002904 sub     sp, sp, t1             #; sp  = 0x80122e38, t1  = 0x80002ec8, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:130)
      0x80002908 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80002ec8, (wrb) sp  <-- 0x80122e38
; ?? (start.S:131)
      0x8000290c sub     sp, sp, t3             #; sp  = 0x80122e38, t3  = 0x80002ed8, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:132)
      0x80002910 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:133)
      0x80002914 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
; ?? (start.S:134)
      0x80002918 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:137)
      0x8000291c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
; ?? (start.S:138)
      0x80002920 bge     t0, t1, pc + 24        #; t0  = 0x80002ec8, t1  = 0x80002ec8, taken, goto 0x80002938
; ?? (start.S:147)
      0x80002938 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002938
      0x8000293c addi    t0, t0, 1424           #; t0  = 0x80002938, (wrb) t0  <-- 0x80002ec8
; ?? (start.S:148)
      0x80002940 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002940
      0x80002944 addi    t1, t1, 1432           #; t1  = 0x80002940, (wrb) t1  <-- 0x80002ed8
; ?? (start.S:149)
      0x80002948 bge     t0, t1, pc + 20        #; t0  = 0x80002ec8, t1  = 0x80002ed8, not taken
; ?? (start.S:150)
      0x8000294c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
; ?? (start.S:151)
      0x80002950 addi    t0, t0, 4              #; t0  = 0x80002ec8, (wrb) t0  <-- 0x80002ecc
; ?? (start.S:152)
      0x80002954 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
; ?? (start.S:153)
      0x80002958 blt     t0, t2, pc - 12        #; t0  = 0x80002ecc, t2  = 0x80002ec8, not taken
; ?? (start.S:158)
      0x8000295c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
; ?? (start.S:159)
      0x80002960 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
; ?? (start.S:160)
      0x80002964 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
; ?? (start.S:161)
      0x80002968 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
; ?? (start.S:162)
      0x8000296c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
; ?? (start.S:163)
      0x80002970 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
; ?? (start.S:164)
      0x80002974 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002974
      0x80002978 jalr    ra, ra, -1060          #; ra  = 0x80002974, (wrb) ra  <-- 0x8000297c, goto 0x80002550
; _snrt_init_team (start.c:49)
      0x80002550 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
; _snrt_init_team (start.c:50)
      0x80002554 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
; _snrt_init_team (start.c:51)
      0x80002558 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
                                                #; (lsu) t1  <-- 0
      0x8000255c sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
; _snrt_init_team (start.c:52)
      0x80002560 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
                                                #; (lsu) a6  <-- 1
; _snrt_init_team (start.c:53)
      0x80002564 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
                                                #; (lsu) a7  <-- 1
; _snrt_init_team (start.c:52)
      0x80002568 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
      0x8000256c mul     a6, a7, a6             #; a7  = 1, a6  = 1
                                                #; (acc) a0  <-- 0x02580533
                                                #; (lsu) t0  <-- 8
      0x80002570 mul     a0, a6, t0             #; a6  = 1, t0  = 8
                                                #; (acc) a2  <-- 0x00a7a623
      0x80002574 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
; snrt_hartid (snrt.h:181)
;  in _snrt_init_team (start.c:55)
      0x80002578 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
; _snrt_init_team (start.c:55)
      0x8000257c sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
      0x80002580 divu    a0, a0, t0             #; a0  = 0, t0  = 8
                                                #; (acc) a6  <-- 0x00a7a823
; _snrt_init_team (start.c:54)
      0x80002584 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
; _snrt_init_team (start.c:56)
      0x80002588 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
; _snrt_init_team (start.c:57)
      0x8000258c sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
; _snrt_init_team (start.c:58)
      0x80002590 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
; _snrt_init_team (start.c:60)
      0x80002594 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
      0x80002598 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
                                                #; (lsu) a0  <-- 0x80000000
      0x8000259c add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
; _snrt_init_team (start.c:59)
      0x800025a0 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
      0x800025a4 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
; _snrt_init_team (start.c:61)
      0x800025a8 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
                                                #; (lsu) a0  <-- 0
      0x800025ac lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
      0x800025b0 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
                                                #; (lsu) a1  <-- 1
      0x800025b4 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
; _snrt_init_team (start.c:62)
      0x800025b8 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
      0x800025bc sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
; _snrt_init_team (start.c:63)
      0x800025c0 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
      0x800025c4 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
; _snrt_init_team (start.c:64)
      0x800025c8 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
                                                #; (lsu) a0  <-- 0x00020000
      0x800025cc add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
      0x800025d0 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
      0x800025d4 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
; _snrt_init_team (start.c:67)
      0x800025d8 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
      0x800025dc srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
      0x800025e0 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
      0x800025e4 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
      0x800025e8 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
; _snrt_init_team (start.c:66)
      0x800025ec sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
      0x800025f0 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
; _snrt_init_team (start.c:68)
      0x800025f4 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
      0x800025f8 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
      0x800025fc sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
      0x80002600 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
      0x80002604 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
; _snrt_init_team (start.c:71)
      0x80002608 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
; _snrt_init_team (start.c:72)
      0x8000260c sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
; _snrt_init_team (start.c:75)
      0x80002610 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002614 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002618 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
; _snrt_init_team (start.c:77)
      0x8000261c lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002620 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
                                                #; (lsu) a1  <-- 0
; _snrt_init_team (start.c:78)
      0x80002624 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
; _snrt_init_team (start.c:77)
      0x80002628 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 8
      0x8000262c remu    a0, a1, a0             #; a1  = 0, a0  = 8
; _snrt_init_team (start.c:76)
      0x80002630 lui     a1, 0x0                #; (wrb) a1  <-- 0
      0x80002634 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
                                                #; (acc) tp  <-- 0x00a5a223
      0x80002638 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
      0x8000263c li      a0, 1096               #; (wrb) a0  <-- 1096
; _snrt_init_team (start.c:83)
      0x80002640 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
      0x80002644 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80003644
      0x80002648 addi    a1, a1, -1656          #; a1  = 0x80003644, (wrb) a1  <-- 0x80002fcc
                                                #; (acc) a0  <-- 0x00b50533
      0x8000264c add     a0, a0, a1             #; a0  = 0, a1  = 0x80002fcc, (wrb) a0  <-- 0x80002fcc
      0x80002650 sw      zero, 0(a0)            #; a0  = 0x80002fcc, 0 ~~> Word[0x80002fcc]
; _snrt_init_team (start.c:86)
      0x80002654 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
                                                #; (lsu) a7  <-- 0xffff0000
      0x80002658 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
; _snrt_init_team (start.c:87)
      0x8000265c sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
; _snrt_init_team (start.c:91)
      0x80002660 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
; _snrt_init_team (start.c:93)
      0x80002664 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
; _snrt_init_team (start.c:92)
      0x80002668 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      0x8000266c addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
      0x80002670 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
; snrt_alloc_init (alloc.c:64)
;  in _snrt_init_team (start.c:97)
      0x80002674 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
; snrt_alloc_init (alloc.c:67)
;  in _snrt_init_team (start.c:97)
      0x80002678 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
; snrt_alloc_init (alloc.c:66)
;  in _snrt_init_team (start.c:97)
      0x8000267c sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
; snrt_alloc_init (alloc.c:68)
;  in _snrt_init_team (start.c:97)
      0x80002680 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      0x80002684 lw      a0, 0(a1)              #; a1  = 0x80002fcc, a0  <~~ Word[0x80002fcc]
                                                #; (lsu) a0  <-- 0
      0x80002688 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
      0x8000268c andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
; snrt_alloc_init (alloc.c:71)
;  in _snrt_init_team (start.c:97)
      0x80002690 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
; snrt_alloc_init (alloc.c:74)
;  in _snrt_init_team (start.c:97)
      0x80002694 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
; snrt_alloc_init (alloc.c:75)
;  in _snrt_init_team (start.c:97)
      0x80002698 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      0x8000269c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800026a0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800026a4 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      0x800026a8 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800026ac add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800026b0 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
; _snrt_init_team (start.c:99)
      0x800026b4 ret                            #; ra  = 0x8000297c, goto 0x8000297c
; ?? (start.S:165)
      0x8000297c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
                                                #; (lsu) a0  <-- 0
; ?? (start.S:166)
      0x80002980 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
                                                #; (lsu) a1  <-- 8
; ?? (start.S:167)
      0x80002984 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start.S:168)
      0x80002988 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
                                                #; (lsu) a3  <-- 0x0011df30
; ?? (start.S:169)
      0x8000298c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
; ?? (start.S:170)
      0x80002990 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:174)
      0x80002994 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002994
      0x80002998 addi    t0, t0, 60             #; t0  = 0x80002994, (wrb) t0  <-- 0x800029d0
; ?? (start.S:175)
      0x8000299c csrw    mtvec, t0              #; t0  = 0x800029d0, (lsu) a4  <-- 4132
; ?? (start.S:179)
      0x800029a0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029a0
      0x800029a4 jalr    ra, ra, 544            #; ra  = 0x800029a0, (wrb) ra  <-- 0x800029a8, goto 0x80002bc0
; ?? (start_snitch.S:33)
      0x80002bc0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002bc4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x800029a8 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002bc8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002bc8
      0x80002bcc jalr    ra, ra, -1264          #; ra  = 0x80002bc8, (wrb) ra  <-- 0x80002bd0, goto 0x800026d8
; _snrt_barrier_reg_ptr (team.c:80)
      0x800026d8 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800026dc add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800026e0 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800026e4 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800026e8 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x800026ec ret                            #; ra  = 0x80002bd0, goto 0x80002bd0
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002bd0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002bd4 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002bd8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002bdc addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x800029a8
; ?? (start_snitch.S:40)
      0x80002be0 ret                            #; ra  = 0x800029a8, goto 0x800029a8
; ?? (start.S:183)
      0x800029a8 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x800009a8
      0x800029ac jalr    ra, ra, -884           #; ra  = 0x800009a8, (wrb) ra  <-- 0x800029b0, goto 0x80000634
; main (test_access.c:12)
      0x80000634 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (test_access.c:13)
      0x80000638 sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x800029b0 ~~> Word[0x0011ff5c]
      0x80000640 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000644 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000063c fsd     fs0, 16(sp)            #; 0.0 ~~> Doub[0x0011ff50]
      0x80000648 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
; main (test_access.c:0)
      0x8000064c li      a0, 0                  #; (wrb) a0  <-- 0
                                                #; (lsu) a1  <-- 0
; main (test_access.c:13)
      0x80000650 bnez    a1, pc + 668           #; a1  = 0, not taken
; snrt_current_team (team.c:16)
;  in snrt_l1alloc (alloc.c:21)
;  in main (test_access.c:18)
      0x80000654 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000658 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000065c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80000660 lw      a1, 0(a0)              #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff70]
                                                #; (lsu) a1  <-- 0x0011ff70
; snrt_l1alloc (alloc.c:25)
;  in main (test_access.c:18)
      0x80000664 lw      a0, 88(a1)             #; a1  = 0x0011ff70, a0  <~~ Word[0x0011ffc8]
                                                #; (lsu) a0  <-- 0x00100000
      0x80000668 lw      a3, 80(a1)             #; a1  = 0x0011ff70, a3  <~~ Word[0x0011ffc0]
                                                #; (lsu) a3  <-- 0x00100000
      0x8000066c lw      a4, 84(a1)             #; a1  = 0x0011ff70, a4  <~~ Word[0x0011ffc4]
                                                #; (lsu) a4  <-- 0x0001df30
      0x80000670 addi    a2, a0, 48             #; a0  = 0x00100000, (wrb) a2  <-- 0x00100030
      0x80000674 add     a3, a4, a3             #; a4  = 0x0001df30, a3  = 0x00100000, (wrb) a3  <-- 0x0011df30
      0x80000678 bgeu    a3, a2, pc + 12        #; a3  = 0x0011df30, a2  = 0x00100030, taken, goto 0x80000684
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x80000684 srli    a3, a0, 20             #; a0  = 0x00100000, (wrb) a3  <-- 1
      0x80000688 snez    a3, a3                 #; a3  = 1, (wrb) a3  <-- 1
      0x8000068c lui     a4, 0x120              #; (wrb) a4  <-- 0x00120000
      0x80000690 addi    a4, a4, -39            #; a4  = 0x00120000, (wrb) a4  <-- 0x0011ffd9
      0x80000694 sltu    a4, a0, a4             #; a0  = 0x00100000, a4  = 0x0011ffd9, (wrb) a4  <-- 1
      0x80000698 and     a3, a3, a4             #; a3  = 1, a4  = 1, (wrb) a3  <-- 1
; snrt_l1alloc (alloc.c:34)
;  in main (test_access.c:18)
      0x8000069c sw      a2, 88(a1)             #; a1  = 0x0011ff70, 0x00100030 ~~> Word[0x0011ffc8]
; snrt_l1alloc (alloc.c:0)
;  in main (test_access.c:18)
      0x800006a0 beqz    a3, pc + 352           #; a3  = 1, not taken
; main (alloc.c:0)
      0x800006a4 li      a1, 8                  #; (wrb) a1  <-- 8
      0x800006a8 li      a2, 5                  #; (wrb) a2  <-- 5
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006ac li      a3, 64                 #; (wrb) a3  <-- 64
      0x800006b0 li      a4, 192                #; (wrb) a4  <-- 192
      0x800006b4 scfgw   a2, a3                 #; a2  = 5, a3  = 64
      0x800006b8 scfgw   a1, a4                 #; a1  = 8, a4  = 192
      0x800006bc li      a2, 32                 #; (wrb) a2  <-- 32
      0x800006c0 scfgw   zero, a2               #; a2  = 32
      0x800006c4 scfgwi  a0, 896                #; a0  = 0x00100000
; init_data (test_access.c:0)
;  in main (test_access.c:20)
      0x800006c8 auipc   a2, 0x3                #; (wrb) a2  <-- 0x800036c8
      0x800006cc addi    a2, a2, -2032          #; a2  = 0x800036c8, (wrb) a2  <-- 0x80002ed8
      0x800006d4 auipc   a2, 0x3                #; (wrb) a2  <-- 0x800036d4
      0x800006d8 addi    a2, a2, -2036          #; a2  = 0x800036d4, (wrb) a2  <-- 0x80002ee0
      0x800006d0 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x80002ed8]
      0x800006dc fld     ft4, 0(a2)             #; ft4  <~~ Doub[0x80002ee0]
                                                #; (f:lsu) ft3  <-- 1.0
; init_data (test_access.c:7)
;  in main (test_access.c:20)
      0x800006e0 csrrsi  a2, ssr, 1             #; 
                                                #; (f:lsu) ft4  <-- 2.0
; init_data (test_access.c:0)
;  in main (test_access.c:20)
      0x800006ec auipc   a2, 0x2                #; (wrb) a2  <-- 0x800026ec
      0x800006e4 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x800006e8 fsgnj.d ft0, ft4, ft4          #; ft4  = 2.0, ft4  = 2.0, (f:fpu) ft0  <-- 1.0
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (test_access.c:0)
;  in main (test_access.c:20)
      0x800006f0 addi    a2, a2, 2044           #; a2  = 0x800026ec, (wrb) a2  <-- 0x80002ee8
      0x800006f8 auipc   a2, 0x2                #; (wrb) a2  <-- 0x800026f8
      0x800006fc addi    a2, a2, 2040           #; a2  = 0x800026f8, (wrb) a2  <-- 0x80002ef0
      0x800006f4 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x80002ee8]
                                                #; (f:lsu) ft3  <-- 3.0
      0x80000704 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002704
      0x80000708 addi    a2, a2, 2036           #; a2  = 0x80002704, (wrb) a2  <-- 0x80002ef8
      0x80000700 fld     ft4, 0(a2)             #; ft4  <~~ Doub[0x80002ef0]
      0x8000070c fld     ft5, 0(a2)             #; ft5  <~~ Doub[0x80002ef8]
                                                #; (f:lsu) ft4  <-- 4.0
      0x80000710 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002710
      0x80000714 addi    a2, a2, 2032           #; a2  = 0x80002710, (wrb) a2  <-- 0x80002f00
                                                #; (f:lsu) ft5  <-- 5.0
      0x80000718 fld     ft6, 0(a2)             #; ft6  <~~ Doub[0x80002f00]
; init_data (test_access.c:8)
;  in main (test_access.c:20)
      0x8000071c fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
                                                #; (f:fpu) ft0  <-- 3.0
                                                #; (f:lsu) ft6  <-- 6.0
      0x80000720 fsgnj.d ft0, ft4, ft4          #; ft4  = 4.0, ft4  = 4.0
      0x80000724 fsgnj.d ft0, ft5, ft5          #; ft5  = 5.0, ft5  = 5.0, (f:fpu) ft0  <-- 4.0
      0x80000728 fsgnj.d ft0, ft6, ft6          #; ft6  = 6.0, ft6  = 6.0, (f:fpu) ft0  <-- 5.0
; init_data (test_access.c:0)
;  in main (test_access.c:20)
      0x8000072c csrrci  a2, ssr, 1             #; (f:fpu) ft0  <-- 6.0
      0x80000730 li      a2, 2                  #; (wrb) a2  <-- 2
; main (test_access.c:24)
      0x80000734 li      a3, 64                 #; (wrb) a3  <-- 64
      0x80000738 li      a4, 192                #; (wrb) a4  <-- 192
      0x8000073c scfgw   a2, a3                 #; a2  = 2, a3  = 64
      0x80000740 scfgw   a1, a4                 #; a1  = 8, a4  = 192
      0x80000744 li      a3, 1                  #; (wrb) a3  <-- 1
      0x80000748 li      a4, 96                 #; (wrb) a4  <-- 96
      0x8000074c li      a5, 224                #; (wrb) a5  <-- 224
      0x80000750 scfgw   a3, a4                 #; a3  = 1, a4  = 96
      0x80000754 scfgw   a1, a5                 #; a1  = 8, a5  = 224
      0x80000758 li      a1, 32                 #; (wrb) a1  <-- 32
      0x8000075c scfgw   zero, a1               #; a1  = 32, (acc) ra  <-- 0x00b020ab
      0x80000760 scfgwi  a0, 800                #; a0  = 0x00100000
      0x80000764 csrrsi  a1, ssr, 1             #; 
                                                #; (acc) gp  <-- 0x023071d3
; main (test_access.c:26)
      0x80000768 fsgnj.d ft3, ft0, ft0          #; ft0  = 1.0, ft0  = 1.0
                                                #; (f:fpu) ft3  <-- 1.0
      0x8000076c fadd.d  ft3, ft0, ft3          #; ft0  = 2.0, ft3  = 1.0
                                                #; (f:fpu) ft3  <-- 3.0
      0x80000770 fadd.d  ft3, ft3, ft0          #; ft3  = 3.0, ft0  = 3.0
                                                #; (f:fpu) ft3  <-- 6.0
      0x80000774 fadd.d  ft3, ft3, ft0          #; ft3  = 6.0, ft0  = 4.0
                                                #; (f:fpu) ft3  <-- 10.0
      0x80000778 fadd.d  ft3, ft3, ft0          #; ft3  = 10.0, ft0  = 5.0
      0x8000077c fsgnj.d ft4, ft0, ft0          #; ft0  = 6.0, ft0  = 6.0
                                                #; (f:fpu) ft4  <-- 6.0
      0x80000784 li      a1, 24                 #; (wrb) a1  <-- 24
      0x80000780 csrrci  a1, ssr, 1             #; (f:fpu) ft3  <-- 15.0
; main (test_access.c:32)
      0x80000788 li      a4, 64                 #; (wrb) a4  <-- 64
      0x8000078c li      a5, 192                #; (wrb) a5  <-- 192
      0x80000790 scfgw   a3, a4                 #; a3  = 1, a4  = 64
      0x80000794 scfgw   a1, a5                 #; a1  = 24, a5  = 192
      0x80000798 li      a1, -16                #; (wrb) a1  <-- -16
      0x8000079c li      a3, 96                 #; (wrb) a3  <-- 96
      0x800007a0 li      a4, 224                #; (wrb) a4  <-- 224
      0x800007a4 scfgw   a2, a3                 #; a2  = 2, a3  = 96
      0x800007a8 scfgw   a1, a4                 #; a1  = -16, a4  = 224
      0x800007ac li      a1, 32                 #; (wrb) a1  <-- 32
      0x800007b0 scfgw   zero, a1               #; a1  = 32
      0x800007b4 scfgwi  a0, 800                #; a0  = 0x00100000
                                                #; (acc) t0  <-- 0x220002d3
      0x800007b8 csrrsi  a1, ssr, 1             #; 
; main (test_access.c:34)
      0x800007bc fsgnj.d ft5, ft0, ft0          #; ft0  = 1.0, ft0  = 1.0
                                                #; (f:fpu) ft5  <-- 1.0
; main (test_access.c:26)
      0x800007c0 fadd.d  ft3, ft3, ft4          #; ft3  = 15.0, ft4  = 6.0
; main (test_access.c:34)
      0x800007c4 fadd.d  ft4, ft0, ft5          #; ft0  = 4.0, ft5  = 1.0
                                                #; (f:fpu) ft3  <-- 21.0
                                                #; (f:fpu) ft4  <-- 5.0
      0x800007c8 fadd.d  ft4, ft4, ft0          #; ft4  = 5.0, ft0  = 2.0
                                                #; (f:fpu) ft4  <-- 7.0
      0x800007cc fadd.d  ft5, ft4, ft0          #; ft4  = 7.0, ft0  = 5.0
      0x800007d0 fsgnj.d fa2, ft0, ft0          #; ft0  = 3.0, ft0  = 3.0, (f:fpu) ft5  <-- 12.0
      0x800007d4 fsgnj.d fa3, ft0, ft0          #; ft0  = 6.0, ft0  = 6.0, (f:fpu) fa2  <-- 3.0
      0x800007d8 csrrci  a1, ssr, 1             #; (f:fpu) fa3  <-- 6.0
; main (test_access.c:42)
      0x800007dc fld     ft4, 24(a0)            #; ft4  <~~ Doub[0x00100018]
                                                #; (f:lsu) ft4  <-- 4.0
      0x800007e0 fld     ft6, 32(a0)            #; ft6  <~~ Doub[0x00100020]
      0x800007e4 fld     ft7, 40(a0)            #; ft7  <~~ Doub[0x00100028], (f:lsu) ft6  <-- 5.0
      0x800007e8 fld     fa0, 8(a0)             #; fa0  <~~ Doub[0x00100008], (f:lsu) ft7  <-- 6.0
      0x800007ec fld     fa1, 16(a0)            #; fa1  <~~ Doub[0x00100010], (f:lsu) fa0  <-- 2.0
                                                #; (f:lsu) fa1  <-- 3.0
; main (test_access.c:34)
      0x800007f0 fadd.d  ft5, ft5, fa2          #; ft5  = 12.0, fa2  = 3.0
; main (test_access.c:0)
      0x800007fc j       pc + 0xa0              #; goto 0x8000089c
                                                #; (f:fpu) ft5  <-- 15.0
; main (test_access.c:34)
      0x800007f4 fadd.d  ft5, ft5, fa3          #; ft5  = 15.0, fa3  = 6.0
; main (test_access.c:0)
      0x800007f8 fadd.d  ft3, ft3, ft3          #; ft3  = 21.0, ft3  = 21.0
                                                #; (f:fpu) ft5  <-- 21.0
                                                #; (f:fpu) ft3  <-- 42.0
; main (test_access.c:42)
      0x8000089c fld     fa2, 0(a0)             #; fa2  <~~ Doub[0x00100000]
                                                #; (f:lsu) fa2  <-- 1.0
      0x800008a0 fadd.d  ft4, ft5, ft4          #; ft5  = 21.0, ft4  = 4.0
                                                #; (f:fpu) ft4  <-- 25.0
      0x800008a4 fadd.d  ft4, ft4, ft6          #; ft4  = 25.0, ft6  = 5.0
                                                #; (f:fpu) ft4  <-- 30.0
      0x800008a8 fadd.d  ft4, ft4, ft7          #; ft4  = 30.0, ft7  = 6.0
                                                #; (f:fpu) ft4  <-- 36.0
      0x800008ac fadd.d  ft4, ft4, fa2          #; ft4  = 36.0, fa2  = 1.0
                                                #; (f:fpu) ft4  <-- 37.0
; main (test_access.c:46)
      0x800008b0 fadd.d  ft4, ft4, fa0          #; ft4  = 37.0, fa0  = 2.0
                                                #; (f:fpu) ft4  <-- 39.0
      0x800008b4 fadd.d  ft4, ft4, fa1          #; ft4  = 39.0, fa1  = 3.0
; main (test_access.c:49)
      0x800008c4 lw      a2, 8(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff48]
                                                #; (f:fpu) ft4  <-- 42.0
; main (test_access.c:46)
      0x800008b8 fsub.d  ft3, ft3, ft4          #; ft3  = 42.0, ft4  = 42.0
                                                #; (lsu) a2  <-- 0
; main (test_access.c:49)
      0x800008c8 lw      a3, 12(sp)             #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff4c]
                                                #; (f:fpu) ft3  <-- 0.0
      0x800008cc auipc   a0, 0x2                #; (wrb) a0  <-- 0x800028cc
      0x800008bc fsgnjx.d fs0, ft3, ft3         #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) fs0  <-- 0.0
                                                #; (lsu) a3  <-- 0
      0x800008c0 fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff48]
      0x800008d0 addi    a0, a0, 873            #; a0  = 0x800028cc, (wrb) a0  <-- 0x80002c35
      0x800008d4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800008d4
      0x800008d8 jalr    ra, ra, 40             #; ra  = 0x800008d4, (wrb) ra  <-- 0x800008dc, goto 0x800008fc
; printf_ (printf.c:863)
      0x800008fc addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
      0x80000900 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x800008dc ~~> Word[0x0011ff1c]
      0x80000904 mv      t0, a0                 #; a0  = 0x80002c35, (wrb) t0  <-- 0x80002c35
      0x80000908 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 0xffff0000 ~~> Word[0x0011ff3c]
      0x8000090c sw      a6, 40(sp)             #; sp  = 0x0011ff10, 0x00120000 ~~> Word[0x0011ff38]
      0x80000910 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 192 ~~> Word[0x0011ff34]
      0x80000914 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 224 ~~> Word[0x0011ff30]
      0x80000918 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
      0x8000091c sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
      0x80000920 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 32 ~~> Word[0x0011ff24]
      0x80000924 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
; printf_ (printf.c:865)
      0x80000928 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
; printf_ (printf.c:867)
      0x8000092c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000192c
      0x80000930 addi    a0, a0, -988           #; a0  = 0x8000192c, (wrb) a0  <-- 0x80001550
      0x80000934 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
      0x80000938 li      a2, -1                 #; (wrb) a2  <-- -1
      0x8000093c addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
      0x80000940 mv      a3, t0                 #; t0  = 0x80002c35, (wrb) a3  <-- 0x80002c35
      0x80000944 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000944
      0x80000948 jalr    ra, ra, 20             #; ra  = 0x80000944, (wrb) ra  <-- 0x8000094c, goto 0x80000958
; _vsnprintf.llvm.1805434900161566649 (printf.c:578)
      0x80000958 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
      0x8000095c sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x8000094c ~~> Word[0x0011ff0c]
      0x80000960 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff08]
      0x80000964 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
      0x80000968 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
      0x8000096c sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
      0x80000970 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
      0x80000974 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
      0x80000978 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
      0x8000097c sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
      0x80000980 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
      0x80000984 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
      0x80000988 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
      0x8000098c sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
      0x80000990 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
      0x80000994 mv      s0, a3                 #; a3  = 0x80002c35, (wrb) s0  <-- 0x80002c35
      0x80000998 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
      0x8000099c mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
; _vsnprintf.llvm.1805434900161566649 (printf.c:582)
      0x800009a0 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800009a4 mv      s2, a0                 #; a0  = 0x80001550, (wrb) s2  <-- 0x80001550
      0x800009a8 j       pc + 0xc               #; goto 0x800009b4
      0x800009b4 li      s8, 0                  #; (wrb) s8  <-- 0
      0x800009b8 li      s6, 37                 #; (wrb) s6  <-- 37
      0x800009bc li      s11, 16                #; (wrb) s11 <-- 16
      0x800009c0 li      s7, 46                 #; (wrb) s7  <-- 46
      0x800009c4 lui     a0, 0x1                #; (wrb) a0  <-- 4096
      0x800009c8 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
      0x800009cc sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
      0x800009d0 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
      0x800009d4 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
      0x800009d8 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800009dc addi    s10, s0, 2             #; s0  = 0x80002c35, (wrb) s10 <-- 0x80002c37
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800009e0 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
      0x800009e4 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800009e8 lbu     a0, 0(s0)              #; s0  = 0x80002c35, a0  <~~ Byte[0x80002c35]
                                                #; (lsu) a0  <-- 101
      0x800009ec beqz    a0, pc + 2824          #; a0  = 101, not taken
      0x800009f0 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800009f4 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
      0x800009f8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800009fc mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
      0x80000a00 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a04 jalr    s2                     #; s2  = 0x80001550, (wrb) ra  <-- 0x80000a08, goto 0x80001550
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001550 beqz    a0, pc + 168           #; a0  = 101, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001554 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001558 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000155c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001560 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003560
      0x80001564 addi    a3, a3, -1428          #; a3  = 0x80003560, (wrb) a3  <-- 0x80002fcc
      0x80001568 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fcc, (wrb) a1  <-- 0x80002fcc
      0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
                                                #; (lsu) a4  <-- 0
      0x80001570 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
      0x80001574 sw      a5, 0(a1)              #; a1  = 0x80002fcc, 1 ~~> Word[0x80002fcc]
      0x80001578 add     a4, a1, a4             #; a1  = 0x80002fcc, a4  = 0, (wrb) a4  <-- 0x80002fcc
      0x8000157c sb      a0, 72(a4)             #; a4  = 0x80002fcc, 101 ~~> Byte[0x80003014]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001580 lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
                                                #; (lsu) a4  <-- 1
      0x80001584 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
      0x80001588 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
      0x8000158c addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
      0x80001590 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
      0x80001594 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001598 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015f8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015f8 ret                            #; ra  = 0x80000a08, goto 0x80000a08
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a08 addi    s0, s0, 1              #; s0  = 0x80002c35, (wrb) s0  <-- 0x80002c36
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a0c addi    s10, s10, 1            #; s10 = 0x80002c37, (wrb) s10 <-- 0x80002c38
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a10 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a14 lbu     a0, 0(s0)              #; s0  = 0x80002c36, a0  <~~ Byte[0x80002c36]
                                                #; (lsu) a0  <-- 114
      0x80000a18 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x800009f0
      0x800009f0 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800009f4 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
      0x800009f8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800009fc mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
      0x80000a00 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a04 jalr    s2                     #; s2  = 0x80001550, (wrb) ra  <-- 0x80000a08, goto 0x80001550
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001550 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001554 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001558 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000155c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001560 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003560
      0x80001564 addi    a3, a3, -1428          #; a3  = 0x80003560, (wrb) a3  <-- 0x80002fcc
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001568 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fcc, (wrb) a1  <-- 0x80002fcc
      0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
                                                #; (lsu) a4  <-- 1
      0x80001570 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
      0x80001574 sw      a5, 0(a1)              #; a1  = 0x80002fcc, 2 ~~> Word[0x80002fcc]
      0x80001578 add     a4, a1, a4             #; a1  = 0x80002fcc, a4  = 1, (wrb) a4  <-- 0x80002fcd
      0x8000157c sb      a0, 72(a4)             #; a4  = 0x80002fcd, 114 ~~> Byte[0x80003015]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001580 lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
                                                #; (lsu) a4  <-- 2
      0x80001584 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
      0x80001588 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
      0x8000158c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001590 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001594 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001598 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015f8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015f8 ret                            #; ra  = 0x80000a08, goto 0x80000a08
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a08 addi    s0, s0, 1              #; s0  = 0x80002c36, (wrb) s0  <-- 0x80002c37
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a0c addi    s10, s10, 1            #; s10 = 0x80002c38, (wrb) s10 <-- 0x80002c39
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a10 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a14 lbu     a0, 0(s0)              #; s0  = 0x80002c37, a0  <~~ Byte[0x80002c37]
                                                #; (lsu) a0  <-- 114
      0x80000a18 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x800009f0
      0x800009f0 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800009f4 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
      0x800009f8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800009fc mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
      0x80000a00 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a04 jalr    s2                     #; s2  = 0x80001550, (wrb) ra  <-- 0x80000a08, goto 0x80001550
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001550 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001554 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001558 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000155c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001560 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003560
      0x80001564 addi    a3, a3, -1428          #; a3  = 0x80003560, (wrb) a3  <-- 0x80002fcc
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001568 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fcc, (wrb) a1  <-- 0x80002fcc
      0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
                                                #; (lsu) a4  <-- 2
      0x80001570 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
      0x80001574 sw      a5, 0(a1)              #; a1  = 0x80002fcc, 3 ~~> Word[0x80002fcc]
      0x80001578 add     a4, a1, a4             #; a1  = 0x80002fcc, a4  = 2, (wrb) a4  <-- 0x80002fce
      0x8000157c sb      a0, 72(a4)             #; a4  = 0x80002fce, 114 ~~> Byte[0x80003016]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001580 lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
                                                #; (lsu) a4  <-- 3
      0x80001584 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
      0x80001588 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
      0x8000158c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001590 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001594 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001598 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015f8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015f8 ret                            #; ra  = 0x80000a08, goto 0x80000a08
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a08 addi    s0, s0, 1              #; s0  = 0x80002c37, (wrb) s0  <-- 0x80002c38
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a0c addi    s10, s10, 1            #; s10 = 0x80002c39, (wrb) s10 <-- 0x80002c3a
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a10 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a14 lbu     a0, 0(s0)              #; s0  = 0x80002c38, a0  <~~ Byte[0x80002c38]
                                                #; (lsu) a0  <-- 111
      0x80000a18 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x800009f0
      0x800009f0 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800009f4 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
      0x800009f8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800009fc mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
      0x80000a00 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a04 jalr    s2                     #; s2  = 0x80001550, (wrb) ra  <-- 0x80000a08, goto 0x80001550
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001550 beqz    a0, pc + 168           #; a0  = 111, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001554 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001558 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000155c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001560 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003560
      0x80001564 addi    a3, a3, -1428          #; a3  = 0x80003560, (wrb) a3  <-- 0x80002fcc
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001568 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fcc, (wrb) a1  <-- 0x80002fcc
      0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
                                                #; (lsu) a4  <-- 3
      0x80001570 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
      0x80001574 sw      a5, 0(a1)              #; a1  = 0x80002fcc, 4 ~~> Word[0x80002fcc]
      0x80001578 add     a4, a1, a4             #; a1  = 0x80002fcc, a4  = 3, (wrb) a4  <-- 0x80002fcf
      0x8000157c sb      a0, 72(a4)             #; a4  = 0x80002fcf, 111 ~~> Byte[0x80003017]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001580 lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
                                                #; (lsu) a4  <-- 4
      0x80001584 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
      0x80001588 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
      0x8000158c addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
      0x80001590 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
      0x80001594 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001598 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015f8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015f8 ret                            #; ra  = 0x80000a08, goto 0x80000a08
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a08 addi    s0, s0, 1              #; s0  = 0x80002c38, (wrb) s0  <-- 0x80002c39
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a0c addi    s10, s10, 1            #; s10 = 0x80002c3a, (wrb) s10 <-- 0x80002c3b
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a10 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a14 lbu     a0, 0(s0)              #; s0  = 0x80002c39, a0  <~~ Byte[0x80002c39]
                                                #; (lsu) a0  <-- 114
      0x80000a18 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x800009f0
      0x800009f0 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800009f4 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
      0x800009f8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800009fc mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
      0x80000a00 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a04 jalr    s2                     #; s2  = 0x80001550, (wrb) ra  <-- 0x80000a08, goto 0x80001550
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001550 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001554 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001558 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000155c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001560 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003560
      0x80001564 addi    a3, a3, -1428          #; a3  = 0x80003560, (wrb) a3  <-- 0x80002fcc
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001568 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fcc, (wrb) a1  <-- 0x80002fcc
      0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
                                                #; (lsu) a4  <-- 4
      0x80001570 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
      0x80001574 sw      a5, 0(a1)              #; a1  = 0x80002fcc, 5 ~~> Word[0x80002fcc]
      0x80001578 add     a4, a1, a4             #; a1  = 0x80002fcc, a4  = 4, (wrb) a4  <-- 0x80002fd0
      0x8000157c sb      a0, 72(a4)             #; a4  = 0x80002fd0, 114 ~~> Byte[0x80003018]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001580 lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
                                                #; (lsu) a4  <-- 5
      0x80001584 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
      0x80001588 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
      0x8000158c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001590 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001594 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001598 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015f8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015f8 ret                            #; ra  = 0x80000a08, goto 0x80000a08
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a08 addi    s0, s0, 1              #; s0  = 0x80002c39, (wrb) s0  <-- 0x80002c3a
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a0c addi    s10, s10, 1            #; s10 = 0x80002c3b, (wrb) s10 <-- 0x80002c3c
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a10 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a14 lbu     a0, 0(s0)              #; s0  = 0x80002c3a, a0  <~~ Byte[0x80002c3a]
                                                #; (lsu) a0  <-- 32
      0x80000a18 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x800009f0
      0x800009f0 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800009f4 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
      0x800009f8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800009fc mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
      0x80000a00 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a04 jalr    s2                     #; s2  = 0x80001550, (wrb) ra  <-- 0x80000a08, goto 0x80001550
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001550 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001554 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001558 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000155c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001560 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003560
      0x80001564 addi    a3, a3, -1428          #; a3  = 0x80003560, (wrb) a3  <-- 0x80002fcc
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001568 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fcc, (wrb) a1  <-- 0x80002fcc
      0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
                                                #; (lsu) a4  <-- 5
      0x80001570 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
      0x80001574 sw      a5, 0(a1)              #; a1  = 0x80002fcc, 6 ~~> Word[0x80002fcc]
      0x80001578 add     a4, a1, a4             #; a1  = 0x80002fcc, a4  = 5, (wrb) a4  <-- 0x80002fd1
      0x8000157c sb      a0, 72(a4)             #; a4  = 0x80002fd1, 32 ~~> Byte[0x80003019]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001580 lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
                                                #; (lsu) a4  <-- 6
      0x80001584 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
      0x80001588 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
      0x8000158c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x80001590 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80001594 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001598 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015f8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015f8 ret                            #; ra  = 0x80000a08, goto 0x80000a08
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a08 addi    s0, s0, 1              #; s0  = 0x80002c3a, (wrb) s0  <-- 0x80002c3b
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a0c addi    s10, s10, 1            #; s10 = 0x80002c3c, (wrb) s10 <-- 0x80002c3d
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a10 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a14 lbu     a0, 0(s0)              #; s0  = 0x80002c3b, a0  <~~ Byte[0x80002c3b]
                                                #; (lsu) a0  <-- 61
      0x80000a18 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x800009f0
      0x800009f0 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800009f4 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
      0x800009f8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800009fc mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
      0x80000a00 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a04 jalr    s2                     #; s2  = 0x80001550, (wrb) ra  <-- 0x80000a08, goto 0x80001550
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001550 beqz    a0, pc + 168           #; a0  = 61, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001554 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001558 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000155c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001560 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003560
      0x80001564 addi    a3, a3, -1428          #; a3  = 0x80003560, (wrb) a3  <-- 0x80002fcc
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001568 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fcc, (wrb) a1  <-- 0x80002fcc
      0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
                                                #; (lsu) a4  <-- 6
      0x80001570 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
      0x80001574 sw      a5, 0(a1)              #; a1  = 0x80002fcc, 7 ~~> Word[0x80002fcc]
      0x80001578 add     a4, a1, a4             #; a1  = 0x80002fcc, a4  = 6, (wrb) a4  <-- 0x80002fd2
      0x8000157c sb      a0, 72(a4)             #; a4  = 0x80002fd2, 61 ~~> Byte[0x8000301a]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001580 lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
                                                #; (lsu) a4  <-- 7
      0x80001584 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
      0x80001588 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
      0x8000158c addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
      0x80001590 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
      0x80001594 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001598 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015f8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015f8 ret                            #; ra  = 0x80000a08, goto 0x80000a08
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a08 addi    s0, s0, 1              #; s0  = 0x80002c3b, (wrb) s0  <-- 0x80002c3c
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a0c addi    s10, s10, 1            #; s10 = 0x80002c3d, (wrb) s10 <-- 0x80002c3e
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a10 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a14 lbu     a0, 0(s0)              #; s0  = 0x80002c3c, a0  <~~ Byte[0x80002c3c]
                                                #; (lsu) a0  <-- 32
      0x80000a18 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x800009f0
      0x800009f0 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800009f4 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
      0x800009f8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800009fc mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
      0x80000a00 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a04 jalr    s2                     #; s2  = 0x80001550, (wrb) ra  <-- 0x80000a08, goto 0x80001550
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001550 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001554 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001558 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000155c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001560 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003560
      0x80001564 addi    a3, a3, -1428          #; a3  = 0x80003560, (wrb) a3  <-- 0x80002fcc
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001568 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fcc, (wrb) a1  <-- 0x80002fcc
      0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
                                                #; (lsu) a4  <-- 7
      0x80001570 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
      0x80001574 sw      a5, 0(a1)              #; a1  = 0x80002fcc, 8 ~~> Word[0x80002fcc]
      0x80001578 add     a4, a1, a4             #; a1  = 0x80002fcc, a4  = 7, (wrb) a4  <-- 0x80002fd3
      0x8000157c sb      a0, 72(a4)             #; a4  = 0x80002fd3, 32 ~~> Byte[0x8000301b]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001580 lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
                                                #; (lsu) a4  <-- 8
      0x80001584 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
      0x80001588 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
      0x8000158c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x80001590 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80001594 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001598 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015f8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015f8 ret                            #; ra  = 0x80000a08, goto 0x80000a08
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a08 addi    s0, s0, 1              #; s0  = 0x80002c3c, (wrb) s0  <-- 0x80002c3d
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a0c addi    s10, s10, 1            #; s10 = 0x80002c3e, (wrb) s10 <-- 0x80002c3f
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a10 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a14 lbu     a0, 0(s0)              #; s0  = 0x80002c3d, a0  <~~ Byte[0x80002c3d]
                                                #; (lsu) a0  <-- 37
      0x80000a18 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x800009f0
      0x800009f0 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000a20
; _vsnprintf.llvm.1805434900161566649 (printf.c:602)
      0x80000a20 li      s0, 0                  #; (wrb) s0  <-- 0
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a24 j       pc + 0x10              #; goto 0x80000a34
; _vsnprintf.llvm.1805434900161566649 (printf.c:604)
      0x80000a34 lbu     a0, -1(s10)            #; s10 = 0x80002c3f, a0  <~~ Byte[0x80002c3e]
                                                #; (lsu) a0  <-- 102
      0x80000a38 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
      0x80000a3c bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000a74
; _is_digit (printf.c:183)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000a74 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
      0x80000a78 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
; _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000a7c addi    a1, s10, -1            #; s10 = 0x80002c3f, (wrb) a1  <-- 0x80002c3e
      0x80000a80 li      a3, 9                  #; (wrb) a3  <-- 9
      0x80000a84 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000b00
; _vsnprintf.llvm.1805434900161566649 (printf.c:619)
      0x80000b00 li      a2, 42                 #; (wrb) a2  <-- 42
      0x80000b04 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000b54
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b54 li      s6, 0                  #; (wrb) s6  <-- 0
      0x80000b58 mv      s10, a1                #; a1  = 0x80002c3e, (wrb) s10 <-- 0x80002c3e
; _vsnprintf.llvm.1805434900161566649 (printf.c:633)
      0x80000b5c beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b60 li      s7, 0                  #; (wrb) s7  <-- 0
      0x80000b64 j       pc + 0xc               #; goto 0x80000b70
; _vsnprintf.llvm.1805434900161566649 (printf.c:647)
      0x80000b70 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
      0x80000b74 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
      0x80000b78 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
      0x80000b7c or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
      0x80000b80 li      a2, 9                  #; (wrb) a2  <-- 9
      0x80000b84 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000be8
; _vsnprintf.llvm.1805434900161566649 (printf.c:683)
      0x80000be8 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
      0x80000bec li      a2, 83                 #; (wrb) a2  <-- 83
      0x80000bf0 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000bf4 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
      0x80000bf8 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002bf8
      0x80000bfc addi    a2, a2, 188            #; a2  = 0x80002bf8, (wrb) a2  <-- 0x80002cb4
      0x80000c00 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002cb4, (wrb) a1  <-- 0x80002db8
      0x80000c04 lw      a2, 0(a1)              #; a1  = 0x80002db8, a2  <~~ Word[0x80002db8]
      0x80000c08 li      a1, 8                  #; (wrb) a1  <-- 8
      0x80000c0c li      s8, 16                 #; (wrb) s8  <-- 16
                                                #; (lsu) a2  <-- 0x80000c40
      0x80000c10 jr      a2                     #; a2  = 0x80000c40, goto 0x80000c40
; _vsnprintf.llvm.1805434900161566649 (printf.c:760)
      0x80000c40 li      a1, 70                 #; (wrb) a1  <-- 70
      0x80000c44 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000c4c
; _vsnprintf.llvm.1805434900161566649 (printf.c:761)
      0x80000c4c addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
      0x80000c50 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
      0x80000c58 addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
      0x80000c5c mv      a0, s2                 #; s2  = 0x80001550, (wrb) a0  <-- 0x80001550
      0x80000c54 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
                                                #; (f:lsu) fa0  <-- 0.0
      0x80000c60 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000c64 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
      0x80000c68 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000c6c mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
      0x80000c70 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
      0x80000c74 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
      0x80000c78 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001c78
      0x80000c7c jalr    ra, ra, -1656          #; ra  = 0x80001c78, (wrb) ra  <-- 0x80000c80, goto 0x80001600
; _ftoa (printf.c:340)
      0x80001600 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
      0x80001604 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000c80 ~~> Word[0x0011fe9c]
      0x80001608 sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
      0x8000160c sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
      0x80001610 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x80001550 ~~> Word[0x0011fe90]
      0x80001614 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
      0x80001618 sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
      0x8000161c sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
      0x80001620 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
      0x80001624 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
      0x80001628 sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
      0x8000162c sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
      0x80001630 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002c3e ~~> Word[0x0011fe70]
      0x80001634 fsd     fs0, 56(sp)            #; 0.0 ~~> Doub[0x0011fe68]
      0x80001638 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
      0x8000163c fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
      0x80001640 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003640
      0x80001644 addi    s1, s1, -1824          #; s1  = 0x80003640, (wrb) s1  <-- 0x80002f20
      0x80001648 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80002f20]
; _ftoa (printf.c:351)
      0x80001650 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
; _ftoa (printf.c:0)
      0x80001654 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                                                #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
      0x80001658 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
      0x8000164c fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
      0x8000165c mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
      0x80001660 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
      0x80001664 mv      s7, a0                 #; a0  = 0x80001550, (wrb) s7  <-- 0x80001550
; _ftoa (printf.c:351)
      0x80001668 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001758
; _ftoa (printf.c:0)
      0x8000175c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000275c
      0x80001758 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
                                                #; (f:fpu) fs0  <-- 0.0
      0x80001760 addi    a0, a0, 1996           #; a0  = 0x8000275c, (wrb) a0  <-- 0x80002f28
      0x80001764 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f28]
                                                #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
; _ftoa (printf.c:353)
      0x80001768 fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
                                                #; (acc) t3  <-- 0x00051e63
      0x8000176c bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80001788
; _ftoa (printf.c:0)
      0x80001788 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002788
      0x8000178c addi    a0, a0, 1960           #; a0  = 0x80002788, (wrb) a0  <-- 0x80002f30
      0x80001794 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002794
      0x80001798 addi    a0, a0, 1956           #; a0  = 0x80002794, (wrb) a0  <-- 0x80002f38
      0x80001790 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f30]
      0x8000179c fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002f38]
                                                #; (f:lsu) ft0  <-- 1000000000.0000000
; _ftoa (printf.c:358)
      0x800017a0 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
                                                #; (f:lsu) ft1  <-- -1000000000.0000000
                                                #; (acc) a0  <-- 0x00b57533
      0x800017a4 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
                                                #; (acc) a0  <-- 0x00b57533
      0x800017a8 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
      0x800017ac bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x800018a8
; _ftoa (printf.c:374)
      0x800018a8 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
      0x800018ac li      s8, 6                  #; (wrb) s8  <-- 6
      0x800018b0 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x800018b8
; _ftoa (printf.c:0)
      0x800018b8 li      a0, 10                 #; (wrb) a0  <-- 10
      0x800018bc fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
                                                #; (f:fpu) fs2  <-- 0.0
; _ftoa (printf.c:378)
      0x800018c0 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x800018f8
; _ftoa (printf.c:0)
      0x800018f8 li      s0, 0                  #; (wrb) s0  <-- 0
; _ftoa (printf.c:384)
      0x800018fc slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
      0x80001900 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002900
      0x80001904 addi    a1, a1, 1288           #; a1  = 0x80002900, (wrb) a1  <-- 0x80002e08
      0x80001908 add     a0, a0, a1             #; a0  = 48, a1  = 0x80002e08, (wrb) a0  <-- 0x80002e38
      0x8000190c fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002e38]
; _ftoa (printf.c:383)
      0x80001910 fcvt.w.d s1, fs2               #; fs2  = 0.0
                                                #; (f:lsu) ft1  <-- 1000000.0000000
; _ftoa (printf.c:384)
      0x80001914 fcvt.d.w ft0, s1               #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80001918 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x8000191c fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
; _ftoa (printf.c:0)
      0x80001920 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002920
      0x80001924 addi    a0, a0, 1568           #; a0  = 0x80002920, (wrb) a0  <-- 0x80002f40
                                                #; (f:fpu) ft2  <-- 0.0
      0x80001928 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f40]
; _ftoa (printf.c:385)
      0x8000192c fcvt.wu.d a0, ft2              #; ft2  = 0.0
; _ftoa (printf.c:386)
      0x80001930 fcvt.d.wu ft3, a0              #; ac1  = 0, (f:lsu) ft0  <-- 0.5
                                                #; (f:fpu) ft3  <-- 0.0
      0x80001934 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:388)
      0x80001938 fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
      0x8000193c bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x8000195c
; _ftoa (printf.c:396)
      0x8000195c flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
      0x80001960 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001974
; _ftoa (printf.c:403)
      0x80001978 beqz    s8, pc + 216           #; s8  = 6, not taken
      0x80001974 fcvt.d.w fs1, zero             #; ac1  = 0
; _ftoa (printf.c:0)
      0x8000197c li      a2, 0                  #; (wrb) a2  <-- 0
                                                #; (f:fpu) fs1  <-- 0.0
      0x80001980 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:414)
      0x80001984 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
      0x80001988 li      t0, 32                 #; (wrb) t0  <-- 32
      0x8000198c sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
      0x80001990 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
      0x80001994 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
      0x80001998 li      a6, 10                 #; (wrb) a6  <-- 10
      0x8000199c li      a7, 9                  #; (wrb) a7  <-- 9
      0x800019a0 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
; _ftoa (printf.c:0)
      0x800019a4 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
; _ftoa (printf.c:417)
      0x800019a8 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x800019ac srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x800019b0 mul     a3, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a3  <-- 0x40d586b3
      0x800019b4 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
; _ftoa (printf.c:416)
      0x800019b8 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
      0x800019bc add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
      0x800019c0 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
; _ftoa (printf.c:417)
      0x800019c4 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
      0x800019c8 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
; _ftoa (printf.c:422)
      0x800019cc add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
      0x800019d0 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
      0x800019d4 li      a3, 30                 #; (wrb) a3  <-- 30
      0x800019d8 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
      0x800019dc xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
      0x800019e0 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
      0x800019e4 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
      0x800019e8 bnez    a3, pc + 136           #; a3  = 0, not taken
; _ftoa (printf.c:0)
      0x800019ec addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
; _ftoa (printf.c:422)
      0x800019f0 add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
      0x800019f4 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
      0x800019f8 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
      0x800019fc add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
      0x80001a00 li      a1, 31                 #; (wrb) a1  <-- 31
      0x80001a04 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
      0x80001a08 add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
      0x80001a0c mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
      0x80001a10 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001a18
      0x80001a18 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
; _ftoa (printf.c:423)
      0x80001a1c li      a1, 48                 #; (wrb) a1  <-- 48
      0x80001a20 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000a20
      0x80001a24 jalr    ra, ra, -1224          #; ra  = 0x80000a20, (wrb) ra  <-- 0x80001a28, goto 0x80000558
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
      0x800005ec ret                            #; ra  = 0x80001a28, goto 0x80001a28
; _ftoa (printf.c:0)
      0x80001a28 li      a0, 0                  #; (wrb) a0  <-- 0
; _ftoa (printf.c:422)
      0x80001a2c add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
      0x80001a30 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
      0x80001a34 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
      0x80001a38 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
      0x80001a3c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001a40 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x80001a44 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a2c
      0x80001a2c add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
      0x80001a30 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
      0x80001a34 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
      0x80001a38 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
      0x80001a3c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001a40 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
      0x80001a44 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a2c
      0x80001a2c add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
      0x80001a30 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
      0x80001a34 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
      0x80001a38 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
      0x80001a3c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001a40 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
      0x80001a44 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a2c
      0x80001a2c add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
      0x80001a30 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
      0x80001a34 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
      0x80001a38 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
      0x80001a3c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001a40 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
      0x80001a44 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a2c
      0x80001a2c add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
      0x80001a30 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
      0x80001a34 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
      0x80001a38 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
      0x80001a3c and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
      0x80001a40 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
      0x80001a44 bnez    a2, pc - 24            #; a2  = 0, not taken
; _ftoa (printf.c:425)
      0x80001a48 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
      0x80001a4c j       pc + 0x28              #; goto 0x80001a74
      0x80001a74 beqz    a1, pc + 28            #; a1  = 1, not taken
; _ftoa (printf.c:427)
      0x80001a78 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
; _ftoa (printf.c:0)
      0x80001a7c addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:427)
      0x80001a80 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
      0x80001a84 li      a1, 46                 #; (wrb) a1  <-- 46
      0x80001a88 sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
      0x80001a8c j       pc + 0x8               #; goto 0x80001a94
; _ftoa (printf.c:0)
      0x80001a94 li      a0, 32                 #; (wrb) a0  <-- 32
; _ftoa (printf.c:432)
      0x80001a98 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
      0x80001a9c bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
; _ftoa (printf.c:0)
      0x80001aa0 li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001aa8 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
      0x80001aa4 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
      0x80001aac addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
      0x80001ab0 li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001ab4 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
      0x80001ab8 li      a4, 18                 #; (wrb) a4  <-- 18
; _ftoa (printf.c:432)
      0x80001abc beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
; _ftoa (printf.c:434)
      0x80001ac0 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
                                                #; (acc) a5  <-- 0x01f55793
      0x80001ac4 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
      0x80001ac8 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
      0x80001acc add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001ad0 mul     a5, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f487b3
      0x80001ad4 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
; _ftoa (printf.c:433)
      0x80001ad8 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
      0x80001adc addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
      0x80001ae0 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
; _ftoa (printf.c:434)
      0x80001ae4 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
; _ftoa (printf.c:433)
      0x80001ae8 sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
; _ftoa (printf.c:0)
      0x80001aec mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
      0x80001af0 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:434)
      0x80001af4 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
      0x80001af8 j       pc + 0x8               #; goto 0x80001b00
; _ftoa (printf.c:440)
      0x80001b00 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:0)
      0x80001b04 li      a0, 1                  #; (wrb) a0  <-- 1
; _ftoa (printf.c:440)
      0x80001b08 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001b74
; _ftoa (printf.c:0)
      0x80001b74 li      a0, 31                 #; (wrb) a0  <-- 31
; _ftoa (printf.c:449)
      0x80001b78 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
; _ftoa (printf.c:450)
      0x80001b7c beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001b94
; _ftoa (printf.c:453)
      0x80001b94 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
      0x80001b98 bnez    a0, pc + 32            #; a0  = 0, not taken
; _ftoa (printf.c:456)
      0x80001b9c andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
      0x80001ba0 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001bcc
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001bcc snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
      0x80001bd0 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
      0x80001bd4 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x80001bd8 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
; _ftoa (printf.c:0)
      0x80001bdc andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
      0x80001be0 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001be4 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001c10
; _ftoa (printf.c:0)
      0x80001c10 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c14 beqz    s8, pc + 56            #; s8  = 8, not taken
      0x80001c18 addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c1c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
      0x80001c20 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
      0x80001c24 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
      0x80001c28 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
      0x80001c2c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
                                                #; (lsu) a0  <-- 48
      0x80001c30 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
      0x80001c34 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c38 jalr    s7                     #; s7  = 0x80001550, (wrb) ra  <-- 0x80001c3c, goto 0x80001550
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001550 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001554 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001558 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000155c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001560 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003560
      0x80001564 addi    a3, a3, -1428          #; a3  = 0x80003560, (wrb) a3  <-- 0x80002fcc
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001568 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fcc, (wrb) a1  <-- 0x80002fcc
      0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
                                                #; (lsu) a4  <-- 8
      0x80001570 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
      0x80001574 sw      a5, 0(a1)              #; a1  = 0x80002fcc, 9 ~~> Word[0x80002fcc]
      0x80001578 add     a4, a1, a4             #; a1  = 0x80002fcc, a4  = 8, (wrb) a4  <-- 0x80002fd4
      0x8000157c sb      a0, 72(a4)             #; a4  = 0x80002fd4, 48 ~~> Byte[0x8000301c]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001580 lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
                                                #; (lsu) a4  <-- 9
      0x80001584 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
      0x80001588 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
      0x8000158c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001590 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001594 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001598 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015f8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015f8 ret                            #; ra  = 0x80001c3c, goto 0x80001c3c
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c3c mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
      0x80001c40 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c44 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001c1c
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c1c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
      0x80001c20 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
      0x80001c24 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
      0x80001c28 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
      0x80001c2c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c30 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
      0x80001c34 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c38 jalr    s7                     #; s7  = 0x80001550, (wrb) ra  <-- 0x80001c3c, goto 0x80001550
                                                #; (lsu) a0  <-- 46
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001550 beqz    a0, pc + 168           #; a0  = 46, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001554 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001558 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000155c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001560 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003560
      0x80001564 addi    a3, a3, -1428          #; a3  = 0x80003560, (wrb) a3  <-- 0x80002fcc
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001568 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fcc, (wrb) a1  <-- 0x80002fcc
      0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
                                                #; (lsu) a4  <-- 9
      0x80001570 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
      0x80001574 sw      a5, 0(a1)              #; a1  = 0x80002fcc, 10 ~~> Word[0x80002fcc]
      0x80001578 add     a4, a1, a4             #; a1  = 0x80002fcc, a4  = 9, (wrb) a4  <-- 0x80002fd5
      0x8000157c sb      a0, 72(a4)             #; a4  = 0x80002fd5, 46 ~~> Byte[0x8000301d]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001580 lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
                                                #; (lsu) a4  <-- 10
      0x80001584 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
      0x80001588 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
      0x8000158c addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
      0x80001590 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
      0x80001594 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001598 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015f8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015f8 ret                            #; ra  = 0x80001c3c, goto 0x80001c3c
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c3c mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
      0x80001c40 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c44 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001c1c
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c1c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
      0x80001c20 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
      0x80001c24 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
      0x80001c28 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
      0x80001c2c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c30 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
      0x80001c34 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c38 jalr    s7                     #; s7  = 0x80001550, (wrb) ra  <-- 0x80001c3c, goto 0x80001550
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001550 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001554 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001558 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000155c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001560 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003560
      0x80001564 addi    a3, a3, -1428          #; a3  = 0x80003560, (wrb) a3  <-- 0x80002fcc
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001568 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fcc, (wrb) a1  <-- 0x80002fcc
      0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
                                                #; (lsu) a4  <-- 10
      0x80001570 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
      0x80001574 sw      a5, 0(a1)              #; a1  = 0x80002fcc, 11 ~~> Word[0x80002fcc]
      0x80001578 add     a4, a1, a4             #; a1  = 0x80002fcc, a4  = 10, (wrb) a4  <-- 0x80002fd6
      0x8000157c sb      a0, 72(a4)             #; a4  = 0x80002fd6, 48 ~~> Byte[0x8000301e]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001580 lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
                                                #; (lsu) a4  <-- 11
      0x80001584 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
      0x80001588 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
      0x8000158c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001590 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001594 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001598 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015f8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015f8 ret                            #; ra  = 0x80001c3c, goto 0x80001c3c
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c3c mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
      0x80001c40 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c44 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001c1c
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c1c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
      0x80001c20 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
      0x80001c24 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
      0x80001c28 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
      0x80001c2c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c30 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
      0x80001c34 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c38 jalr    s7                     #; s7  = 0x80001550, (wrb) ra  <-- 0x80001c3c, goto 0x80001550
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001550 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001554 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001558 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000155c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001560 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003560
      0x80001564 addi    a3, a3, -1428          #; a3  = 0x80003560, (wrb) a3  <-- 0x80002fcc
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001568 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fcc, (wrb) a1  <-- 0x80002fcc
      0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
                                                #; (lsu) a4  <-- 11
      0x80001570 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
      0x80001574 sw      a5, 0(a1)              #; a1  = 0x80002fcc, 12 ~~> Word[0x80002fcc]
      0x80001578 add     a4, a1, a4             #; a1  = 0x80002fcc, a4  = 11, (wrb) a4  <-- 0x80002fd7
      0x8000157c sb      a0, 72(a4)             #; a4  = 0x80002fd7, 48 ~~> Byte[0x8000301f]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001580 lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
                                                #; (lsu) a4  <-- 12
      0x80001584 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
      0x80001588 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
      0x8000158c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001590 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001594 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001598 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015f8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015f8 ret                            #; ra  = 0x80001c3c, goto 0x80001c3c
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c3c mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
      0x80001c40 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c44 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001c1c
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c1c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
      0x80001c20 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
      0x80001c24 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
      0x80001c28 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
      0x80001c2c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c30 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
      0x80001c34 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c38 jalr    s7                     #; s7  = 0x80001550, (wrb) ra  <-- 0x80001c3c, goto 0x80001550
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001550 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001554 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001558 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000155c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001560 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003560
      0x80001564 addi    a3, a3, -1428          #; a3  = 0x80003560, (wrb) a3  <-- 0x80002fcc
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001568 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fcc, (wrb) a1  <-- 0x80002fcc
      0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
                                                #; (lsu) a4  <-- 12
      0x80001570 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
      0x80001574 sw      a5, 0(a1)              #; a1  = 0x80002fcc, 13 ~~> Word[0x80002fcc]
      0x80001578 add     a4, a1, a4             #; a1  = 0x80002fcc, a4  = 12, (wrb) a4  <-- 0x80002fd8
      0x8000157c sb      a0, 72(a4)             #; a4  = 0x80002fd8, 48 ~~> Byte[0x80003020]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001580 lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
                                                #; (lsu) a4  <-- 13
      0x80001584 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
      0x80001588 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
      0x8000158c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001590 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001594 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001598 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015f8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015f8 ret                            #; ra  = 0x80001c3c, goto 0x80001c3c
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c3c mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
      0x80001c40 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c44 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001c1c
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c1c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
      0x80001c20 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
      0x80001c24 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
      0x80001c28 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
      0x80001c2c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c30 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
      0x80001c34 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c38 jalr    s7                     #; s7  = 0x80001550, (wrb) ra  <-- 0x80001c3c, goto 0x80001550
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001550 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001554 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001558 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000155c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001560 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003560
      0x80001564 addi    a3, a3, -1428          #; a3  = 0x80003560, (wrb) a3  <-- 0x80002fcc
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001568 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fcc, (wrb) a1  <-- 0x80002fcc
      0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
                                                #; (lsu) a4  <-- 13
      0x80001570 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
      0x80001574 sw      a5, 0(a1)              #; a1  = 0x80002fcc, 14 ~~> Word[0x80002fcc]
      0x80001578 add     a4, a1, a4             #; a1  = 0x80002fcc, a4  = 13, (wrb) a4  <-- 0x80002fd9
      0x8000157c sb      a0, 72(a4)             #; a4  = 0x80002fd9, 48 ~~> Byte[0x80003021]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001580 lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
                                                #; (lsu) a4  <-- 14
      0x80001584 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
      0x80001588 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
      0x8000158c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001590 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001594 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001598 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015f8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015f8 ret                            #; ra  = 0x80001c3c, goto 0x80001c3c
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c3c mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
      0x80001c40 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c44 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001c1c
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c1c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
      0x80001c20 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
      0x80001c24 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
      0x80001c28 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
      0x80001c2c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c30 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
      0x80001c34 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c38 jalr    s7                     #; s7  = 0x80001550, (wrb) ra  <-- 0x80001c3c, goto 0x80001550
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001550 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001554 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001558 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000155c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001560 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003560
      0x80001564 addi    a3, a3, -1428          #; a3  = 0x80003560, (wrb) a3  <-- 0x80002fcc
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001568 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fcc, (wrb) a1  <-- 0x80002fcc
      0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
                                                #; (lsu) a4  <-- 14
      0x80001570 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
      0x80001574 sw      a5, 0(a1)              #; a1  = 0x80002fcc, 15 ~~> Word[0x80002fcc]
      0x80001578 add     a4, a1, a4             #; a1  = 0x80002fcc, a4  = 14, (wrb) a4  <-- 0x80002fda
      0x8000157c sb      a0, 72(a4)             #; a4  = 0x80002fda, 48 ~~> Byte[0x80003022]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001580 lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
                                                #; (lsu) a4  <-- 15
      0x80001584 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
      0x80001588 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
      0x8000158c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001590 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001594 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001598 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015f8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015f8 ret                            #; ra  = 0x80001c3c, goto 0x80001c3c
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c3c mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
      0x80001c40 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c44 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001c1c
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001c1c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
      0x80001c20 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
      0x80001c24 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
      0x80001c28 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
      0x80001c2c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001c30 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
      0x80001c34 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001c38 jalr    s7                     #; s7  = 0x80001550, (wrb) ra  <-- 0x80001c3c, goto 0x80001550
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001550 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001554 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001558 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000155c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001560 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003560
      0x80001564 addi    a3, a3, -1428          #; a3  = 0x80003560, (wrb) a3  <-- 0x80002fcc
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001568 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fcc, (wrb) a1  <-- 0x80002fcc
      0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
                                                #; (lsu) a4  <-- 15
      0x80001570 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
      0x80001574 sw      a5, 0(a1)              #; a1  = 0x80002fcc, 16 ~~> Word[0x80002fcc]
      0x80001578 add     a4, a1, a4             #; a1  = 0x80002fcc, a4  = 15, (wrb) a4  <-- 0x80002fdb
      0x8000157c sb      a0, 72(a4)             #; a4  = 0x80002fdb, 48 ~~> Byte[0x80003023]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001580 lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
                                                #; (lsu) a4  <-- 16
      0x80001584 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
      0x80001588 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
      0x8000158c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001590 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001594 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001598 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015f8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015f8 ret                            #; ra  = 0x80001c3c, goto 0x80001c3c
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c3c mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
      0x80001c40 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001c44 bnez    s10, pc - 40           #; s10 = 0, not taken
      0x80001c48 j       pc + 0x8               #; goto 0x80001c50
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001c50 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
      0x80001c54 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
      0x80001c58 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
; _out_rev (printf.c:216)
;  in _ftoa (printf.c:461)
      0x80001c5c xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
      0x80001c60 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x80001c64 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001c94
; _ftoa (printf.c:0)
      0x80001c94 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
; _ftoa (printf.c:462)
      0x80001c98 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
      0x80001c9c fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
                                                #; (f:lsu) fs2  <-- 0.0
      0x80001ca8 lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
      0x80001ca0 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60]
      0x80001ca4 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
                                                #; (f:lsu) fs0  <-- 0.0
                                                #; (lsu) s10 <-- 0x80002c3e
      0x80001cac lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
                                                #; (lsu) s9  <-- 8
      0x80001cb0 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
                                                #; (lsu) s8  <-- 16
      0x80001cb4 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
                                                #; (lsu) s7  <-- 0
      0x80001cb8 lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
                                                #; (lsu) s6  <-- 0
      0x80001cbc lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
                                                #; (lsu) s5  <-- -1
      0x80001cc0 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
                                                #; (lsu) s4  <-- 0x0011ff17
      0x80001cc4 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
                                                #; (lsu) s3  <-- 0x0011ff30
      0x80001cc8 lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
                                                #; (lsu) s2  <-- 0x80001550
      0x80001ccc lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
                                                #; (lsu) s1  <-- 8
      0x80001cd0 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
                                                #; (lsu) s0  <-- 0
      0x80001cd4 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
      0x80001cd8 addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
                                                #; (lsu) ra  <-- 0x80000c80
      0x80001cdc ret                            #; ra  = 0x80000c80, goto 0x80000c80
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c80 j       pc + 0x7c0             #; goto 0x80001440
      0x80001440 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
      0x80001444 li      s6, 37                 #; (wrb) s6  <-- 37
      0x80001448 li      s7, 46                 #; (wrb) s7  <-- 46
      0x8000144c addi    s0, s10, 1             #; s10 = 0x80002c3e, (wrb) s0  <-- 0x80002c3f
      0x80001450 j       pc - 0xa74             #; goto 0x800009dc
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800009dc addi    s10, s0, 2             #; s0  = 0x80002c3f, (wrb) s10 <-- 0x80002c41
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800009e0 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
      0x800009e4 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800009e8 lbu     a0, 0(s0)              #; s0  = 0x80002c3f, a0  <~~ Byte[0x80002c3f]
                                                #; (lsu) a0  <-- 10
      0x800009ec beqz    a0, pc + 2824          #; a0  = 10, not taken
      0x800009f0 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800009f4 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
      0x800009f8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800009fc mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
      0x80000a00 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000a04 jalr    s2                     #; s2  = 0x80001550, (wrb) ra  <-- 0x80000a08, goto 0x80001550
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001550 beqz    a0, pc + 168           #; a0  = 10, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001554 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001558 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000155c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001560 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003560
      0x80001564 addi    a3, a3, -1428          #; a3  = 0x80003560, (wrb) a3  <-- 0x80002fcc
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001568 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fcc, (wrb) a1  <-- 0x80002fcc
      0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
                                                #; (lsu) a4  <-- 16
      0x80001570 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
      0x80001574 sw      a5, 0(a1)              #; a1  = 0x80002fcc, 17 ~~> Word[0x80002fcc]
      0x80001578 add     a4, a1, a4             #; a1  = 0x80002fcc, a4  = 16, (wrb) a4  <-- 0x80002fdc
      0x8000157c sb      a0, 72(a4)             #; a4  = 0x80002fdc, 10 ~~> Byte[0x80003024]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001580 lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
                                                #; (lsu) a4  <-- 17
      0x80001584 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
      0x80001588 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
      0x8000158c addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
      0x80001590 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
      0x80001594 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
      0x80001598 bnez    a0, pc + 96            #; a0  = 0, not taken
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000159c add     a0, a3, a2             #; a3  = 0x80002fcc, a2  = 0, (wrb) a0  <-- 0x80002fcc
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015a0 addi    a2, a0, 72             #; a0  = 0x80002fcc, (wrb) a2  <-- 0x80003014
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015a4 sw      zero, 12(a0)           #; a0  = 0x80002fcc, 0 ~~> Word[0x80002fd8]
      0x800015a8 li      a3, 64                 #; (wrb) a3  <-- 64
      0x800015ac sw      a3, 8(a0)              #; a0  = 0x80002fcc, 64 ~~> Word[0x80002fd4]
; snrt_putchar (putchar.c:26)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015b0 sw      zero, 20(a0)           #; a0  = 0x80002fcc, 0 ~~> Word[0x80002fe0]
      0x800015b4 li      a3, 1                  #; (wrb) a3  <-- 1
      0x800015b8 sw      a3, 16(a0)             #; a0  = 0x80002fcc, 1 ~~> Word[0x80002fdc]
; snrt_putchar (putchar.c:27)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015bc sw      zero, 28(a0)           #; a0  = 0x80002fcc, 0 ~~> Word[0x80002fe8]
      0x800015c0 sw      a2, 24(a0)             #; a0  = 0x80002fcc, 0x80003014 ~~> Word[0x80002fe4]
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015c4 lw      a2, 0(a1)              #; a1  = 0x80002fcc, a2  <~~ Word[0x80002fcc]
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015c8 addi    a3, a0, 8              #; a0  = 0x80002fcc, (wrb) a3  <-- 0x80002fd4
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015cc sw      zero, 36(a0)           #; a0  = 0x80002fcc, 0 ~~> Word[0x80002ff0]
                                                #; (lsu) a2  <-- 17
      0x800015d0 sw      a2, 32(a0)             #; a0  = 0x80002fcc, 17 ~~> Word[0x80002fec]
; snrt_putchar (putchar.c:30)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015d4 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800035d4
      0x800015d8 addi    a0, a0, -1876          #; a0  = 0x800035d4, (wrb) a0  <-- 0x80002e80
      0x800015dc sw      a3, 0(a0)              #; a0  = 0x80002e80, 0x80002fd4 ~~> Word[0x80002e80]
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015e0 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800035e0
      0x800015e4 addi    a0, a0, -1824          #; a0  = 0x800035e0, (wrb) a0  <-- 0x80002ec0
; snrt_putchar (putchar.c:31)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015e8 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
                                                #; (lsu) a2  <-- 0
      0x800015ec beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800015e8
      0x800015e8 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
                                                #; (lsu) a2  <-- 0
      0x800015ec beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800015e8
      0x800015e8 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
                                                #; (lsu) a2  <-- 1
      0x800015ec beqz    a2, pc - 4             #; a2  = 1, not taken
; snrt_putchar (putchar.c:33)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f0 sw      zero, 0(a0)            #; a0  = 0x80002ec0, 0 ~~> Word[0x80002ec0]
; snrt_putchar (putchar.c:35)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800015f4 sw      zero, 0(a1)            #; a1  = 0x80002fcc, 0 ~~> Word[0x80002fcc]
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015f8 ret                            #; ra  = 0x80000a08, goto 0x80000a08
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000a08 addi    s0, s0, 1              #; s0  = 0x80002c3f, (wrb) s0  <-- 0x80002c40
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000a0c addi    s10, s10, 1            #; s10 = 0x80002c41, (wrb) s10 <-- 0x80002c42
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a10 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000a14 lbu     a0, 0(s0)              #; s0  = 0x80002c40, a0  <~~ Byte[0x80002c40]
                                                #; (lsu) a0  <-- 0
      0x80000a18 bnez    a0, pc - 40            #; a0  = 0, not taken
      0x80000a1c j       pc + 0xad8             #; goto 0x800014f4
; _vsnprintf.llvm.1805434900161566649 (printf.c:853)
      0x800014f4 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
      0x800014f8 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x80001500
      0x80001500 li      a0, 0                  #; (wrb) a0  <-- 0
      0x80001504 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001508 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x8000150c jalr    s2                     #; s2  = 0x80001550, (wrb) ra  <-- 0x80001510, goto 0x80001550
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001550 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x800015f8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800015f8 ret                            #; ra  = 0x80001510, goto 0x80001510
; _vsnprintf.llvm.1805434900161566649 (printf.c:856)
      0x80001510 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
      0x80001514 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
                                                #; (lsu) s11 <-- 0
      0x80001518 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
                                                #; (lsu) s10 <-- 0
      0x8000151c lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
                                                #; (lsu) s9  <-- 0
      0x80001520 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
                                                #; (lsu) s8  <-- 0
      0x80001524 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
                                                #; (lsu) s7  <-- 0
      0x80001528 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
                                                #; (lsu) s6  <-- 0
      0x8000152c lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
                                                #; (lsu) s5  <-- 0
      0x80001530 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
                                                #; (lsu) s4  <-- 0
      0x80001534 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
                                                #; (lsu) s3  <-- 0
      0x80001538 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
                                                #; (lsu) s2  <-- 0
      0x8000153c lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
                                                #; (lsu) s1  <-- 0
      0x80001540 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
                                                #; (lsu) s0  <-- 0
      0x80001544 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
      0x80001548 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
                                                #; (lsu) ra  <-- 0x8000094c
      0x8000154c ret                            #; ra  = 0x8000094c, goto 0x8000094c
; printf_ (printf.c:869)
      0x8000094c lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
      0x80000950 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
                                                #; (lsu) ra  <-- 0x800008dc
      0x80000954 ret                            #; ra  = 0x800008dc, goto 0x800008dc
; main (test_access.c:0)
      0x800008dc auipc   a0, 0x2                #; (wrb) a0  <-- 0x800028dc
      0x800008e0 addi    a0, a0, 1596           #; a0  = 0x800028dc, (wrb) a0  <-- 0x80002f18
      0x800008e4 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002f18]
; main (test_access.c:52)
      0x800008f0 lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
                                                #; (f:lsu) ft3  <-- 0.0001
      0x800008f4 addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
      0x800008e8 flt.d   a0, ft3, fs0           #; ft3  = 0.0001, fs0  = 0.0
                                                #; (lsu) ra  <-- 0x800029b0
      0x800008ec fld     fs0, 16(sp)            #; fs0  <~~ Doub[0x0011ff50]
      0x800008f8 ret                            #; ra  = 0x800029b0, goto 0x800029b0
                                                #; (f:lsu) fs0  <-- 0.0
; ?? (start.S:184)
      0x800029b0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:191)
      0x800029b4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029b4
      0x800029b8 jalr    ra, ra, 524            #; ra  = 0x800029b4, (wrb) ra  <-- 0x800029bc, goto 0x80002bc0
; ?? (start_snitch.S:33)
      0x80002bc0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002bc4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x800029bc ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002bc8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002bc8
      0x80002bcc jalr    ra, ra, -1264          #; ra  = 0x80002bc8, (wrb) ra  <-- 0x80002bd0, goto 0x800026d8
; _snrt_barrier_reg_ptr (team.c:80)
      0x800026d8 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800026dc add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800026e0 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800026e4 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800026e8 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x800026ec ret                            #; ra  = 0x80002bd0, goto 0x80002bd0
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002bd0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002bd4 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002bd8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002bdc addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x800029bc
; ?? (start_snitch.S:40)
      0x80002be0 ret                            #; ra  = 0x800029bc, goto 0x800029bc
; ?? (start.S:195)
      0x800029bc mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:196)
      0x800029c0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029c0
      0x800029c4 jalr    ra, ra, 556            #; ra  = 0x800029c0, (wrb) ra  <-- 0x800029c8, goto 0x80002bec
; ?? (start_snitch.S:15)
      0x80002bec addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
; ?? (start_snitch.S:16)
      0x80002bf0 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
; ?? (start_snitch.S:17)
      0x80002bf4 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x800029c8 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:18)
      0x80002bf8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002bf8
      0x80002bfc jalr    ra, ra, -1344          #; ra  = 0x80002bf8, (wrb) ra  <-- 0x80002c00, goto 0x800026b8
; snrt_global_core_idx (team.c:32)
      0x800026b8 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800026bc add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800026c0 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800026c4 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800026c8 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
; snrt_hartid (snrt.h:181)
;  in snrt_global_core_idx (team.c:32)
      0x800026cc csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 0
; snrt_global_core_idx (team.c:32)
      0x800026d0 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
      0x800026d4 ret                            #; ra  = 0x80002c00, goto 0x80002c00
; ?? (start_snitch.S:20)
      0x80002c00 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:21)
      0x80002c04 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:22)
      0x80002c08 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
; ?? (start_snitch.S:27)
      0x80002c0c bnez    a0, pc + 24            #; a0  = 0, not taken
                                                #; (lsu) ra  <-- 0x800029c8
; ?? (start_snitch.S:28)
      0x80002c10 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
; ?? (start_snitch.S:29)
      0x80002c14 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
; ?? (start_snitch.S:30)
      0x80002c18 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002c18
      0x80002c1c addi    t1, t1, 616            #; t1  = 0x80002c18, (wrb) t1  <-- 0x80002e80
; ?? (start_snitch.S:31)
      0x80002c20 sw      t0, 0(t1)              #; t1  = 0x80002e80, 1 ~~> Word[0x80002e80]
; ?? (start_snitch.S:32)
      0x80002c24 ret                            #; ra  = 0x800029c8, goto 0x800029c8
; ?? (start.S:198)
      0x800029c8 wfi                            #; 
                        tion 0 @ (12, 5378):
                          136
                          142
                            5
                           24
                      11.9632
                       0.2338
                       0.0839
                          1.0
                          1.0
                            0
                          1.4
                       5.3333
                       0.0214
                       0.0149
                       0.6957
                         5367
                       0.2553
