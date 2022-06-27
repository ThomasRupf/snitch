; ?? (??:0)
      0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
      0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
      0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
      0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
      0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
                                                #; (lsu) t0  <-- 0x80002680
      0x00001014 jalr    t0                     #; t0  = 0x80002680, (wrb) ra  <-- 4120, goto 0x80002680
; ?? (start.S:20)
      0x80002680 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80003680
; ?? (start.S:21)
      0x80002684 addi    gp, gp, -248           #; gp  = 0x80003680, (wrb) gp  <-- 0x80003588
; ?? (start.S:28)
      0x80002688 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002688
      0x8000268c jalr    ra, ra, 964            #; ra  = 0x80002688, (wrb) ra  <-- 0x80002690, goto 0x80002a4c
; ?? (start_snitch.S:16)
      0x80002a4c mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
; ?? (start_snitch.S:17)
      0x80002a50 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
                                                #; (lsu) a1  <-- 8
; ?? (start_snitch.S:18)
      0x80002a54 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:19)
      0x80002a58 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start_snitch.S:20)
      0x80002a5c lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
                                                #; (lsu) t1  <-- 0x00020000
; ?? (start_snitch.S:21)
      0x80002a60 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
; ?? (start_snitch.S:22)
      0x80002a64 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
; ?? (start_snitch.S:23)
      0x80002a68 div     t3, a0, a1             #; a0  = 0, a1  = 8
                                                #; (acc) t4  <-- 0x027e0eb3
                                                #; (lsu) t2  <-- 0
; ?? (start_snitch.S:24)
      0x80002a6c mul     t4, t3, t2             #; t3  = 0, t2  = 0
                                                #; (acc) a2  <-- 0x01d60633
; ?? (start_snitch.S:25)
      0x80002a70 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
; ?? (start_snitch.S:26)
      0x80002a74 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
; ?? (start_snitch.S:27)
      0x80002a78 remu    a0, a0, a1             #; a0  = 0, a1  = 8
; ?? (start_snitch.S:28)
      0x80002a7c ret                            #; ra  = 0x80002690, goto 0x80002690
                                                #; (acc) s0  <-- 0x00050413
; ?? (start.S:39)
      0x80002690 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:40)
      0x80002694 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
; ?? (start.S:41)
      0x80002698 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002698
      0x8000269c jalr    ra, ra, 1036           #; ra  = 0x80002698, (wrb) ra  <-- 0x800026a0, goto 0x80002aa4
; ?? (start_snitch.S:48)
      0x80002aa4 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
; ?? (start_snitch.S:49)
      0x80002aa8 ret                            #; ra  = 0x800026a0, goto 0x800026a0
                                                #; (lsu) a0  <-- 0
; ?? (start.S:42)
      0x800026a0 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:43)
      0x800026a4 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:45)
      0x800026a8 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
; ?? (start.S:46)
      0x800026ac sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
; ?? (start.S:47)
      0x800026b0 bnez    t0, pc + 36            #; t0  = 0, not taken
; ?? (start.S:48)
      0x800026b4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800026b4
      0x800026b8 addi    t0, t0, 1948           #; t0  = 0x800026b4, (wrb) t0  <-- 0x80002e50
; ?? (start.S:49)
      0x800026bc auipc   t1, 0x0                #; (wrb) t1  <-- 0x800026bc
      0x800026c0 addi    t1, t1, 1944           #; t1  = 0x800026bc, (wrb) t1  <-- 0x80002e54
; ?? (start.S:50)
      0x800026c4 bge     t0, t1, pc + 16        #; t0  = 0x80002e50, t1  = 0x80002e54, not taken
; ?? (start.S:51)
      0x800026c8 sw      zero, 0(t0)            #; t0  = 0x80002e50, 0 ~~> Word[0x80002e50]
; ?? (start.S:52)
      0x800026cc addi    t0, t0, 4              #; t0  = 0x80002e50, (wrb) t0  <-- 0x80002e54
; ?? (start.S:53)
      0x800026d0 blt     t0, t1, pc - 8         #; t0  = 0x80002e54, t1  = 0x80002e54, not taken
; ?? (start.S:58)
      0x800026d4 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
; ?? (start.S:59)
      0x800026d8 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
; ?? (start.S:60)
      0x800026dc beqz    t0, pc + 132           #; t0  = 40, not taken
; ?? (start.S:61)
      0x800026e0 fcvt.d.w ft0, zero             #; ac1  = 0
; ?? (start.S:62)
      0x800026e4 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
; ?? (start.S:63)
      0x800026e8 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
; ?? (start.S:64)
      0x800026ec fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
                                                #; (f:fpu) ft3  <-- 0.0
; ?? (start.S:65)
      0x800026f0 fcvt.d.w ft4, zero             #; ac1  = 0
; ?? (start.S:66)
      0x800026f4 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
; ?? (start.S:67)
      0x800026f8 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
; ?? (start.S:68)
      0x800026fc fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
                                                #; (f:fpu) ft7  <-- 0.0
; ?? (start.S:69)
      0x80002700 fcvt.d.w fs0, zero             #; ac1  = 0
; ?? (start.S:70)
      0x80002704 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
; ?? (start.S:71)
      0x80002708 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
; ?? (start.S:72)
      0x8000270c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
                                                #; (f:fpu) fa1  <-- 0.0
; ?? (start.S:73)
      0x80002710 fcvt.d.w fa2, zero             #; ac1  = 0
; ?? (start.S:74)
      0x80002714 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
; ?? (start.S:75)
      0x80002718 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
; ?? (start.S:76)
      0x8000271c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
                                                #; (f:fpu) fa5  <-- 0.0
; ?? (start.S:77)
      0x80002720 fcvt.d.w fa6, zero             #; ac1  = 0
; ?? (start.S:78)
      0x80002724 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
; ?? (start.S:79)
      0x80002728 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
; ?? (start.S:80)
      0x8000272c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
                                                #; (f:fpu) fs3  <-- 0.0
; ?? (start.S:81)
      0x80002730 fcvt.d.w fs4, zero             #; ac1  = 0
; ?? (start.S:82)
      0x80002734 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
; ?? (start.S:83)
      0x80002738 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
; ?? (start.S:84)
      0x8000273c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
                                                #; (f:fpu) fs7  <-- 0.0
; ?? (start.S:85)
      0x80002740 fcvt.d.w fs8, zero             #; ac1  = 0
; ?? (start.S:86)
      0x80002744 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
; ?? (start.S:87)
      0x80002748 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
; ?? (start.S:88)
      0x8000274c fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
                                                #; (f:fpu) fs11 <-- 0.0
; ?? (start.S:89)
      0x80002750 fcvt.d.w ft8, zero             #; ac1  = 0
; ?? (start.S:90)
      0x80002754 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
; ?? (start.S:91)
      0x80002758 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
; ?? (start.S:92)
      0x8000275c fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
                                                #; (f:fpu) ft11 <-- 0.0
; ?? (start.S:99)
      0x80002760 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
; ?? (start.S:100)
      0x80002764 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
; ?? (start.S:103)
      0x80002768 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002768
      0x8000276c lw      t0, 900(t0)            #; t0  = 0x80002768, t0  <~~ Word[0x80002aec]
                                                #; (lsu) t0  <-- 136
; ?? (start.S:104)
      0x80002770 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
; ?? (start.S:105)
      0x80002774 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
; ?? (start.S:108)
      0x80002778 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002778
      0x8000277c lw      t2, 880(t2)            #; t2  = 0x80002778, t2  <~~ Word[0x80002ae8]
                                                #; (lsu) t2  <-- 10
; ?? (start.S:110)
      0x80002780 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
; ?? (start.S:111)
      0x80002784 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
; ?? (start.S:112)
      0x80002788 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:113)
      0x8000278c sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
; ?? (start.S:116)
      0x80002790 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:117)
      0x80002794 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
; ?? (start.S:118)
      0x80002798 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:119)
      0x8000279c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
; ?? (start.S:124)
      0x800027a0 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800027a0
      0x800027a4 addi    t0, t0, 1512           #; t0  = 0x800027a0, (wrb) t0  <-- 0x80002d88
; ?? (start.S:125)
      0x800027a8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x800027a8
      0x800027ac addi    t1, t1, 1504           #; t1  = 0x800027a8, (wrb) t1  <-- 0x80002d88
; ?? (start.S:126)
      0x800027b0 auipc   t2, 0x0                #; (wrb) t2  <-- 0x800027b0
      0x800027b4 addi    t2, t2, 1496           #; t2  = 0x800027b0, (wrb) t2  <-- 0x80002d88
; ?? (start.S:127)
      0x800027b8 auipc   t3, 0x0                #; (wrb) t3  <-- 0x800027b8
      0x800027bc addi    t3, t3, 1504           #; t3  = 0x800027b8, (wrb) t3  <-- 0x80002d98
; ?? (start.S:128)
      0x800027c0 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80002d88, (wrb) sp  <-- 0x80122cf8
; ?? (start.S:129)
      0x800027c4 sub     sp, sp, t1             #; sp  = 0x80122cf8, t1  = 0x80002d88, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:130)
      0x800027c8 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80002d88, (wrb) sp  <-- 0x80122cf8
; ?? (start.S:131)
      0x800027cc sub     sp, sp, t3             #; sp  = 0x80122cf8, t3  = 0x80002d98, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:132)
      0x800027d0 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:133)
      0x800027d4 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
; ?? (start.S:134)
      0x800027d8 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:137)
      0x800027dc mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
; ?? (start.S:138)
      0x800027e0 bge     t0, t1, pc + 24        #; t0  = 0x80002d88, t1  = 0x80002d88, taken, goto 0x800027f8
; ?? (start.S:147)
      0x800027f8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800027f8
      0x800027fc addi    t0, t0, 1424           #; t0  = 0x800027f8, (wrb) t0  <-- 0x80002d88
; ?? (start.S:148)
      0x80002800 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002800
      0x80002804 addi    t1, t1, 1432           #; t1  = 0x80002800, (wrb) t1  <-- 0x80002d98
; ?? (start.S:149)
      0x80002808 bge     t0, t1, pc + 20        #; t0  = 0x80002d88, t1  = 0x80002d98, not taken
; ?? (start.S:150)
      0x8000280c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
; ?? (start.S:151)
      0x80002810 addi    t0, t0, 4              #; t0  = 0x80002d88, (wrb) t0  <-- 0x80002d8c
; ?? (start.S:152)
      0x80002814 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
; ?? (start.S:153)
      0x80002818 blt     t0, t2, pc - 12        #; t0  = 0x80002d8c, t2  = 0x80002d88, not taken
; ?? (start.S:158)
      0x8000281c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
; ?? (start.S:159)
      0x80002820 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
; ?? (start.S:160)
      0x80002824 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
; ?? (start.S:161)
      0x80002828 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
; ?? (start.S:162)
      0x8000282c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
; ?? (start.S:163)
      0x80002830 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
; ?? (start.S:164)
      0x80002834 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002834
      0x80002838 jalr    ra, ra, -1060          #; ra  = 0x80002834, (wrb) ra  <-- 0x8000283c, goto 0x80002410
; _snrt_init_team (start.c:49)
      0x80002410 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
; _snrt_init_team (start.c:50)
      0x80002414 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
; _snrt_init_team (start.c:51)
      0x80002418 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
                                                #; (lsu) t1  <-- 0
      0x8000241c sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
; _snrt_init_team (start.c:52)
      0x80002420 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
                                                #; (lsu) a6  <-- 1
; _snrt_init_team (start.c:53)
      0x80002424 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
                                                #; (lsu) a7  <-- 1
; _snrt_init_team (start.c:52)
      0x80002428 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
      0x8000242c mul     a6, a7, a6             #; a7  = 1, a6  = 1
                                                #; (acc) a0  <-- 0x02580533
                                                #; (lsu) t0  <-- 8
      0x80002430 mul     a0, a6, t0             #; a6  = 1, t0  = 8
                                                #; (acc) a2  <-- 0x00a7a623
      0x80002434 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
; snrt_hartid (snrt.h:181)
;  in _snrt_init_team (start.c:55)
      0x80002438 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
; _snrt_init_team (start.c:55)
      0x8000243c sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
      0x80002440 divu    a0, a0, t0             #; a0  = 0, t0  = 8
                                                #; (acc) a6  <-- 0x00a7a823
; _snrt_init_team (start.c:54)
      0x80002444 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
; _snrt_init_team (start.c:56)
      0x80002448 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
; _snrt_init_team (start.c:57)
      0x8000244c sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
; _snrt_init_team (start.c:58)
      0x80002450 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
; _snrt_init_team (start.c:60)
      0x80002454 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
      0x80002458 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
                                                #; (lsu) a0  <-- 0x80000000
      0x8000245c add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
; _snrt_init_team (start.c:59)
      0x80002460 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
      0x80002464 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
; _snrt_init_team (start.c:61)
      0x80002468 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
                                                #; (lsu) a0  <-- 0
      0x8000246c lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
      0x80002470 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
                                                #; (lsu) a1  <-- 1
      0x80002474 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
; _snrt_init_team (start.c:62)
      0x80002478 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
      0x8000247c sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
; _snrt_init_team (start.c:63)
      0x80002480 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
      0x80002484 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
; _snrt_init_team (start.c:64)
      0x80002488 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
                                                #; (lsu) a0  <-- 0x00020000
      0x8000248c add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
      0x80002490 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
      0x80002494 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
; _snrt_init_team (start.c:67)
      0x80002498 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
      0x8000249c srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
      0x800024a0 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
      0x800024a4 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
      0x800024a8 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
; _snrt_init_team (start.c:66)
      0x800024ac sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
      0x800024b0 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
; _snrt_init_team (start.c:68)
      0x800024b4 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
      0x800024b8 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
      0x800024bc sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
      0x800024c0 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
      0x800024c4 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
; _snrt_init_team (start.c:71)
      0x800024c8 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
; _snrt_init_team (start.c:72)
      0x800024cc sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
; _snrt_init_team (start.c:75)
      0x800024d0 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800024d4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800024d8 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
; _snrt_init_team (start.c:77)
      0x800024dc lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800024e0 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
                                                #; (lsu) a1  <-- 0
; _snrt_init_team (start.c:78)
      0x800024e4 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
; _snrt_init_team (start.c:77)
      0x800024e8 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 8
      0x800024ec remu    a0, a1, a0             #; a1  = 0, a0  = 8
; _snrt_init_team (start.c:76)
      0x800024f0 lui     a1, 0x0                #; (wrb) a1  <-- 0
      0x800024f4 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
                                                #; (acc) tp  <-- 0x00a5a223
      0x800024f8 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
      0x800024fc li      a0, 1096               #; (wrb) a0  <-- 1096
; _snrt_init_team (start.c:83)
      0x80002500 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
      0x80002504 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80003504
      0x80002508 addi    a1, a1, -1712          #; a1  = 0x80003504, (wrb) a1  <-- 0x80002e54
                                                #; (acc) a0  <-- 0x00b50533
      0x8000250c add     a0, a0, a1             #; a0  = 0, a1  = 0x80002e54, (wrb) a0  <-- 0x80002e54
      0x80002510 sw      zero, 0(a0)            #; a0  = 0x80002e54, 0 ~~> Word[0x80002e54]
; _snrt_init_team (start.c:86)
      0x80002514 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
                                                #; (lsu) a7  <-- 0xffff0000
      0x80002518 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
; _snrt_init_team (start.c:87)
      0x8000251c sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
; _snrt_init_team (start.c:91)
      0x80002520 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
; _snrt_init_team (start.c:93)
      0x80002524 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
; _snrt_init_team (start.c:92)
      0x80002528 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      0x8000252c addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
      0x80002530 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
; snrt_alloc_init (alloc.c:64)
;  in _snrt_init_team (start.c:97)
      0x80002534 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
; snrt_alloc_init (alloc.c:67)
;  in _snrt_init_team (start.c:97)
      0x80002538 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
; snrt_alloc_init (alloc.c:66)
;  in _snrt_init_team (start.c:97)
      0x8000253c sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
; snrt_alloc_init (alloc.c:68)
;  in _snrt_init_team (start.c:97)
      0x80002540 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      0x80002544 lw      a0, 0(a1)              #; a1  = 0x80002e54, a0  <~~ Word[0x80002e54]
                                                #; (lsu) a0  <-- 0
      0x80002548 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
      0x8000254c andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
; snrt_alloc_init (alloc.c:71)
;  in _snrt_init_team (start.c:97)
      0x80002550 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
; snrt_alloc_init (alloc.c:74)
;  in _snrt_init_team (start.c:97)
      0x80002554 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
; snrt_alloc_init (alloc.c:75)
;  in _snrt_init_team (start.c:97)
      0x80002558 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      0x8000255c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002560 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002564 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      0x80002568 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x8000256c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002570 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
; _snrt_init_team (start.c:99)
      0x80002574 ret                            #; ra  = 0x8000283c, goto 0x8000283c
; ?? (start.S:165)
      0x8000283c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
                                                #; (lsu) a0  <-- 0
; ?? (start.S:166)
      0x80002840 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
                                                #; (lsu) a1  <-- 8
; ?? (start.S:167)
      0x80002844 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start.S:168)
      0x80002848 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
                                                #; (lsu) a3  <-- 0x0011df30
; ?? (start.S:169)
      0x8000284c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
; ?? (start.S:170)
      0x80002850 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:174)
      0x80002854 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002854
      0x80002858 addi    t0, t0, 60             #; t0  = 0x80002854, (wrb) t0  <-- 0x80002890
; ?? (start.S:175)
      0x8000285c csrw    mtvec, t0              #; t0  = 0x80002890, (lsu) a4  <-- 4132
; ?? (start.S:179)
      0x80002860 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002860
      0x80002864 jalr    ra, ra, 544            #; ra  = 0x80002860, (wrb) ra  <-- 0x80002868, goto 0x80002a80
; ?? (start_snitch.S:33)
      0x80002a80 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002a84 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002868 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002a88 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a88
      0x80002a8c jalr    ra, ra, -1264          #; ra  = 0x80002a88, (wrb) ra  <-- 0x80002a90, goto 0x80002598
; _snrt_barrier_reg_ptr (team.c:80)
      0x80002598 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x8000259c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800025a0 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800025a4 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800025a8 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x800025ac ret                            #; ra  = 0x80002a90, goto 0x80002a90
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002a90 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002a94 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002a98 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002a9c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002868
; ?? (start_snitch.S:40)
      0x80002aa0 ret                            #; ra  = 0x80002868, goto 0x80002868
; ?? (start.S:183)
      0x80002868 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000868
      0x8000286c jalr    ra, ra, -564           #; ra  = 0x80000868, (wrb) ra  <-- 0x80002870, goto 0x80000634
; main (bench_sp.c:33)
      0x80000634 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_sp.c:34)
      0x80000638 sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x80002870 ~~> Word[0x0011ff5c]
      0x80000640 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000644 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000063c fsd     fs0, 16(sp)            #; 0.0 ~~> Doub[0x0011ff50]
      0x80000648 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
; main (bench_sp.c:0)
      0x8000064c li      a0, 0                  #; (wrb) a0  <-- 0
                                                #; (lsu) a1  <-- 0
; main (bench_sp.c:34)
      0x80000650 bnez    a1, pc + 348           #; a1  = 0, not taken
; snrt_current_team (team.c:16)
;  in snrt_l1alloc (alloc.c:21)
;  in main (bench_sp.c:38)
      0x80000654 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000658 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000065c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80000660 lw      a2, 0(a0)              #; a0  = 0x0011ff70, a2  <~~ Word[0x0011ff70]
                                                #; (lsu) a2  <-- 0x0011ff70
; snrt_l1alloc (alloc.c:25)
;  in main (bench_sp.c:38)
      0x80000664 lw      a0, 88(a2)             #; a2  = 0x0011ff70, a0  <~~ Word[0x0011ffc8]
                                                #; (lsu) a0  <-- 0x00100000
      0x80000668 lw      a1, 80(a2)             #; a2  = 0x0011ff70, a1  <~~ Word[0x0011ffc0]
                                                #; (lsu) a1  <-- 0x00100000
      0x8000066c lw      a3, 84(a2)             #; a2  = 0x0011ff70, a3  <~~ Word[0x0011ffc4]
                                                #; (lsu) a3  <-- 0x0001df30
      0x80000670 addi    a4, a0, 800            #; a0  = 0x00100000, (wrb) a4  <-- 0x00100320
      0x80000674 add     a3, a3, a1             #; a3  = 0x0001df30, a1  = 0x00100000, (wrb) a3  <-- 0x0011df30
      0x80000678 bgeu    a3, a4, pc + 24        #; a3  = 0x0011df30, a4  = 0x00100320, taken, goto 0x80000690
; snrt_l1alloc (alloc.c:34)
;  in main (bench_sp.c:38)
      0x80000690 sw      a4, 88(a2)             #; a2  = 0x0011ff70, 0x00100320 ~~> Word[0x0011ffc8]
      0x80000694 mv      a1, a0                 #; a0  = 0x00100000, (wrb) a1  <-- 0x00100000
; snrt_l1alloc (alloc.c:25)
;  in main (bench_sp.c:39)
      0x80000698 addi    a5, a0, 1600           #; a0  = 0x00100000, (wrb) a5  <-- 0x00100640
      0x8000069c mv      a0, a4                 #; a4  = 0x00100320, (wrb) a0  <-- 0x00100320
      0x800006a0 bgeu    a3, a5, pc - 24        #; a3  = 0x0011df30, a5  = 0x00100640, taken, goto 0x80000688
; snrt_l1alloc (alloc.c:34)
;  in main (bench_sp.c:39)
      0x80000688 sw      a5, 88(a2)             #; a2  = 0x0011ff70, 0x00100640 ~~> Word[0x0011ffc8]
      0x8000068c j       pc + 0x1c              #; goto 0x800006a8
; main (alloc.c:0)
      0x800006a8 li      a2, 0                  #; (wrb) a2  <-- 0
      0x800006ac li      a3, 0                  #; (wrb) a3  <-- 0
      0x800006b0 lui     a4, 0xccccd            #; (wrb) a4  <-- 0xccccd000
      0x800006b4 addi    a4, a4, -819           #; a4  = 0xccccd000, (wrb) a4  <-- 0xcccccccd
      0x800006b8 li      a6, 10                 #; (wrb) a6  <-- 10
      0x800006bc li      a7, 800                #; (wrb) a7  <-- 800
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 0, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 0, (wrb) a5  <-- 0
      0x800006c8 mul     a5, a5, a6             #; a5  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 0, a5  = 0, (wrb) a5  <-- 0
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 0, (wrb) a5  <-- 0x00100000
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 0, (wrb) a2  <-- 8
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006d8 fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x00100000]
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006e0 addi    a3, a3, 1              #; a3  = 0, (wrb) a3  <-- 1
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 8, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 1, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 0, (wrb) a5  <-- 0
      0x800006c8 mul     a5, a5, a6             #; a5  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 1, a5  = 0, (wrb) a5  <-- 1
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 8, (wrb) a5  <-- 0x00100008
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 1
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 8, (wrb) a2  <-- 16
      0x800006e0 addi    a3, a3, 1              #; a3  = 1, (wrb) a3  <-- 2
      0x800006d8 fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x00100008]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 16, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 2, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 1, (wrb) a5  <-- 0
      0x800006c8 mul     a5, a5, a6             #; a5  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 2, a5  = 0, (wrb) a5  <-- 2
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 16, (wrb) a5  <-- 0x00100010
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 2
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 16, (wrb) a2  <-- 24
      0x800006e0 addi    a3, a3, 1              #; a3  = 2, (wrb) a3  <-- 3
      0x800006d8 fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x00100010]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 24, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 3, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 2, (wrb) a5  <-- 0
      0x800006c8 mul     a5, a5, a6             #; a5  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 3, a5  = 0, (wrb) a5  <-- 3
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 24, (wrb) a5  <-- 0x00100018
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 3
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 24, (wrb) a2  <-- 32
      0x800006e0 addi    a3, a3, 1              #; a3  = 3, (wrb) a3  <-- 4
      0x800006d8 fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x00100018]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 32, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 4, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 3, (wrb) a5  <-- 0
      0x800006c8 mul     a5, a5, a6             #; a5  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 4, a5  = 0, (wrb) a5  <-- 4
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 32, (wrb) a5  <-- 0x00100020
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 4
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 32, (wrb) a2  <-- 40
      0x800006e0 addi    a3, a3, 1              #; a3  = 4, (wrb) a3  <-- 5
      0x800006d8 fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x00100020]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 40, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 5, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 4, (wrb) a5  <-- 0
      0x800006c8 mul     a5, a5, a6             #; a5  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 5, a5  = 0, (wrb) a5  <-- 5
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 40, (wrb) a5  <-- 0x00100028
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 5
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 40, (wrb) a2  <-- 48
      0x800006e0 addi    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 6
      0x800006d8 fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x00100028]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 48, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 6, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 4, (wrb) a5  <-- 0
      0x800006c8 mul     a5, a5, a6             #; a5  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 6, a5  = 0, (wrb) a5  <-- 6
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 48, (wrb) a5  <-- 0x00100030
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 6
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 48, (wrb) a2  <-- 56
      0x800006e0 addi    a3, a3, 1              #; a3  = 6, (wrb) a3  <-- 7
      0x800006d8 fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x00100030]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 56, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 7, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 5, (wrb) a5  <-- 0
      0x800006c8 mul     a5, a5, a6             #; a5  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 7, a5  = 0, (wrb) a5  <-- 7
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 56, (wrb) a5  <-- 0x00100038
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 7
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 56, (wrb) a2  <-- 64
      0x800006e0 addi    a3, a3, 1              #; a3  = 7, (wrb) a3  <-- 8
      0x800006d8 fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x00100038]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 64, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 8, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 6, (wrb) a5  <-- 0
      0x800006c8 mul     a5, a5, a6             #; a5  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 8, a5  = 0, (wrb) a5  <-- 8
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 64, (wrb) a5  <-- 0x00100040
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 8
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 64, (wrb) a2  <-- 72
      0x800006e0 addi    a3, a3, 1              #; a3  = 8, (wrb) a3  <-- 9
      0x800006d8 fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x00100040]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 72, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 9, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 7, (wrb) a5  <-- 0
      0x800006c8 mul     a5, a5, a6             #; a5  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 9, a5  = 0, (wrb) a5  <-- 9
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 72, (wrb) a5  <-- 0x00100048
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 9
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 72, (wrb) a2  <-- 80
      0x800006e0 addi    a3, a3, 1              #; a3  = 9, (wrb) a3  <-- 10
      0x800006d8 fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x00100048]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 80, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 10, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 8, (wrb) a5  <-- 1
      0x800006c8 mul     a5, a5, a6             #; a5  = 1, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 10, a5  = 10, (wrb) a5  <-- 0
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 80, (wrb) a5  <-- 0x00100050
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 80, (wrb) a2  <-- 88
      0x800006e0 addi    a3, a3, 1              #; a3  = 10, (wrb) a3  <-- 11
      0x800006d8 fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x00100050]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 88, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 11, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 8, (wrb) a5  <-- 1
      0x800006c8 mul     a5, a5, a6             #; a5  = 1, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 11, a5  = 10, (wrb) a5  <-- 1
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 88, (wrb) a5  <-- 0x00100058
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 1
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 88, (wrb) a2  <-- 96
      0x800006e0 addi    a3, a3, 1              #; a3  = 11, (wrb) a3  <-- 12
      0x800006d8 fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x00100058]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 96, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 12, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 9, (wrb) a5  <-- 1
      0x800006c8 mul     a5, a5, a6             #; a5  = 1, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 12, a5  = 10, (wrb) a5  <-- 2
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 96, (wrb) a5  <-- 0x00100060
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 2
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 96, (wrb) a2  <-- 104
      0x800006e0 addi    a3, a3, 1              #; a3  = 12, (wrb) a3  <-- 13
      0x800006d8 fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x00100060]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 104, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 13, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 10, (wrb) a5  <-- 1
      0x800006c8 mul     a5, a5, a6             #; a5  = 1, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 13, a5  = 10, (wrb) a5  <-- 3
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 104, (wrb) a5  <-- 0x00100068
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 3
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 104, (wrb) a2  <-- 112
      0x800006e0 addi    a3, a3, 1              #; a3  = 13, (wrb) a3  <-- 14
      0x800006d8 fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x00100068]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 112, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 14, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 11, (wrb) a5  <-- 1
      0x800006c8 mul     a5, a5, a6             #; a5  = 1, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 14, a5  = 10, (wrb) a5  <-- 4
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 112, (wrb) a5  <-- 0x00100070
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 4
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 112, (wrb) a2  <-- 120
      0x800006e0 addi    a3, a3, 1              #; a3  = 14, (wrb) a3  <-- 15
      0x800006d8 fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x00100070]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 120, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 15, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 12, (wrb) a5  <-- 1
      0x800006c8 mul     a5, a5, a6             #; a5  = 1, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 15, a5  = 10, (wrb) a5  <-- 5
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 120, (wrb) a5  <-- 0x00100078
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 5
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 120, (wrb) a2  <-- 128
      0x800006e0 addi    a3, a3, 1              #; a3  = 15, (wrb) a3  <-- 16
      0x800006d8 fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x00100078]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 128, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 16, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 12, (wrb) a5  <-- 1
      0x800006c8 mul     a5, a5, a6             #; a5  = 1, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 16, a5  = 10, (wrb) a5  <-- 6
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 128, (wrb) a5  <-- 0x00100080
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 6
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 128, (wrb) a2  <-- 136
      0x800006e0 addi    a3, a3, 1              #; a3  = 16, (wrb) a3  <-- 17
      0x800006d8 fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x00100080]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 136, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 17, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 13, (wrb) a5  <-- 1
      0x800006c8 mul     a5, a5, a6             #; a5  = 1, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 17, a5  = 10, (wrb) a5  <-- 7
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 136, (wrb) a5  <-- 0x00100088
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 7
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 136, (wrb) a2  <-- 144
      0x800006e0 addi    a3, a3, 1              #; a3  = 17, (wrb) a3  <-- 18
      0x800006d8 fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x00100088]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 144, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 18, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 14, (wrb) a5  <-- 1
      0x800006c8 mul     a5, a5, a6             #; a5  = 1, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 18, a5  = 10, (wrb) a5  <-- 8
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 144, (wrb) a5  <-- 0x00100090
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 8
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 144, (wrb) a2  <-- 152
      0x800006e0 addi    a3, a3, 1              #; a3  = 18, (wrb) a3  <-- 19
      0x800006d8 fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x00100090]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 152, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 19, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 15, (wrb) a5  <-- 1
      0x800006c8 mul     a5, a5, a6             #; a5  = 1, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 19, a5  = 10, (wrb) a5  <-- 9
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 152, (wrb) a5  <-- 0x00100098
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 9
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 152, (wrb) a2  <-- 160
      0x800006e0 addi    a3, a3, 1              #; a3  = 19, (wrb) a3  <-- 20
      0x800006d8 fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x00100098]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 160, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 20, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 16, (wrb) a5  <-- 2
      0x800006c8 mul     a5, a5, a6             #; a5  = 2, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 20, a5  = 20, (wrb) a5  <-- 0
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 160, (wrb) a5  <-- 0x001000a0
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 160, (wrb) a2  <-- 168
      0x800006e0 addi    a3, a3, 1              #; a3  = 20, (wrb) a3  <-- 21
      0x800006d8 fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x001000a0]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 168, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 21, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 16, (wrb) a5  <-- 2
      0x800006c8 mul     a5, a5, a6             #; a5  = 2, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 21, a5  = 20, (wrb) a5  <-- 1
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 168, (wrb) a5  <-- 0x001000a8
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 1
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 168, (wrb) a2  <-- 176
      0x800006e0 addi    a3, a3, 1              #; a3  = 21, (wrb) a3  <-- 22
      0x800006d8 fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x001000a8]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 176, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 22, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 17, (wrb) a5  <-- 2
      0x800006c8 mul     a5, a5, a6             #; a5  = 2, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 22, a5  = 20, (wrb) a5  <-- 2
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 176, (wrb) a5  <-- 0x001000b0
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 2
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 176, (wrb) a2  <-- 184
      0x800006e0 addi    a3, a3, 1              #; a3  = 22, (wrb) a3  <-- 23
      0x800006d8 fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x001000b0]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 184, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 23, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 18, (wrb) a5  <-- 2
      0x800006c8 mul     a5, a5, a6             #; a5  = 2, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 23, a5  = 20, (wrb) a5  <-- 3
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 184, (wrb) a5  <-- 0x001000b8
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 3
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 184, (wrb) a2  <-- 192
      0x800006e0 addi    a3, a3, 1              #; a3  = 23, (wrb) a3  <-- 24
      0x800006d8 fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x001000b8]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 192, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 24, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 19, (wrb) a5  <-- 2
      0x800006c8 mul     a5, a5, a6             #; a5  = 2, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 24, a5  = 20, (wrb) a5  <-- 4
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 192, (wrb) a5  <-- 0x001000c0
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 4
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 192, (wrb) a2  <-- 200
      0x800006e0 addi    a3, a3, 1              #; a3  = 24, (wrb) a3  <-- 25
      0x800006d8 fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x001000c0]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 200, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 25, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 20, (wrb) a5  <-- 2
      0x800006c8 mul     a5, a5, a6             #; a5  = 2, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 25, a5  = 20, (wrb) a5  <-- 5
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 200, (wrb) a5  <-- 0x001000c8
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 5
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 200, (wrb) a2  <-- 208
      0x800006e0 addi    a3, a3, 1              #; a3  = 25, (wrb) a3  <-- 26
      0x800006d8 fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x001000c8]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 208, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 26, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 20, (wrb) a5  <-- 2
      0x800006c8 mul     a5, a5, a6             #; a5  = 2, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 26, a5  = 20, (wrb) a5  <-- 6
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 208, (wrb) a5  <-- 0x001000d0
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 6
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 208, (wrb) a2  <-- 216
      0x800006e0 addi    a3, a3, 1              #; a3  = 26, (wrb) a3  <-- 27
      0x800006d8 fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x001000d0]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 216, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 27, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 21, (wrb) a5  <-- 2
      0x800006c8 mul     a5, a5, a6             #; a5  = 2, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 27, a5  = 20, (wrb) a5  <-- 7
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 216, (wrb) a5  <-- 0x001000d8
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 7
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 216, (wrb) a2  <-- 224
      0x800006e0 addi    a3, a3, 1              #; a3  = 27, (wrb) a3  <-- 28
      0x800006d8 fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x001000d8]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 224, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 28, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 22, (wrb) a5  <-- 2
      0x800006c8 mul     a5, a5, a6             #; a5  = 2, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 28, a5  = 20, (wrb) a5  <-- 8
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 224, (wrb) a5  <-- 0x001000e0
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 8
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 224, (wrb) a2  <-- 232
      0x800006e0 addi    a3, a3, 1              #; a3  = 28, (wrb) a3  <-- 29
      0x800006d8 fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x001000e0]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 232, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 29, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 23, (wrb) a5  <-- 2
      0x800006c8 mul     a5, a5, a6             #; a5  = 2, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 29, a5  = 20, (wrb) a5  <-- 9
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 232, (wrb) a5  <-- 0x001000e8
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 9
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 232, (wrb) a2  <-- 240
      0x800006e0 addi    a3, a3, 1              #; a3  = 29, (wrb) a3  <-- 30
      0x800006d8 fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x001000e8]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 240, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 30, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 24, (wrb) a5  <-- 3
      0x800006c8 mul     a5, a5, a6             #; a5  = 3, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 30, a5  = 30, (wrb) a5  <-- 0
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 240, (wrb) a5  <-- 0x001000f0
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 240, (wrb) a2  <-- 248
      0x800006e0 addi    a3, a3, 1              #; a3  = 30, (wrb) a3  <-- 31
      0x800006d8 fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x001000f0]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 248, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 31, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 24, (wrb) a5  <-- 3
      0x800006c8 mul     a5, a5, a6             #; a5  = 3, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 31, a5  = 30, (wrb) a5  <-- 1
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 248, (wrb) a5  <-- 0x001000f8
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 1
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 248, (wrb) a2  <-- 256
      0x800006e0 addi    a3, a3, 1              #; a3  = 31, (wrb) a3  <-- 32
      0x800006d8 fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x001000f8]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 256, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 32, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 25, (wrb) a5  <-- 3
      0x800006c8 mul     a5, a5, a6             #; a5  = 3, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 32, a5  = 30, (wrb) a5  <-- 2
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 256, (wrb) a5  <-- 0x00100100
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 2
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 256, (wrb) a2  <-- 264
      0x800006e0 addi    a3, a3, 1              #; a3  = 32, (wrb) a3  <-- 33
      0x800006d8 fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x00100100]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 264, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 33, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 26, (wrb) a5  <-- 3
      0x800006c8 mul     a5, a5, a6             #; a5  = 3, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 33, a5  = 30, (wrb) a5  <-- 3
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 264, (wrb) a5  <-- 0x00100108
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 3
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 264, (wrb) a2  <-- 272
      0x800006e0 addi    a3, a3, 1              #; a3  = 33, (wrb) a3  <-- 34
      0x800006d8 fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x00100108]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 272, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 34, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 27, (wrb) a5  <-- 3
      0x800006c8 mul     a5, a5, a6             #; a5  = 3, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 34, a5  = 30, (wrb) a5  <-- 4
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 272, (wrb) a5  <-- 0x00100110
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 4
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 272, (wrb) a2  <-- 280
      0x800006e0 addi    a3, a3, 1              #; a3  = 34, (wrb) a3  <-- 35
      0x800006d8 fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x00100110]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 280, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 35, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 28, (wrb) a5  <-- 3
      0x800006c8 mul     a5, a5, a6             #; a5  = 3, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 35, a5  = 30, (wrb) a5  <-- 5
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 280, (wrb) a5  <-- 0x00100118
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 5
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 280, (wrb) a2  <-- 288
      0x800006e0 addi    a3, a3, 1              #; a3  = 35, (wrb) a3  <-- 36
      0x800006d8 fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x00100118]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 288, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 36, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 28, (wrb) a5  <-- 3
      0x800006c8 mul     a5, a5, a6             #; a5  = 3, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 36, a5  = 30, (wrb) a5  <-- 6
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 288, (wrb) a5  <-- 0x00100120
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 6
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 288, (wrb) a2  <-- 296
      0x800006e0 addi    a3, a3, 1              #; a3  = 36, (wrb) a3  <-- 37
      0x800006d8 fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x00100120]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 296, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 37, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 29, (wrb) a5  <-- 3
      0x800006c8 mul     a5, a5, a6             #; a5  = 3, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 37, a5  = 30, (wrb) a5  <-- 7
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 296, (wrb) a5  <-- 0x00100128
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 7
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 296, (wrb) a2  <-- 304
      0x800006e0 addi    a3, a3, 1              #; a3  = 37, (wrb) a3  <-- 38
      0x800006d8 fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x00100128]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 304, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 38, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 30, (wrb) a5  <-- 3
      0x800006c8 mul     a5, a5, a6             #; a5  = 3, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 38, a5  = 30, (wrb) a5  <-- 8
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 304, (wrb) a5  <-- 0x00100130
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 8
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 304, (wrb) a2  <-- 312
      0x800006e0 addi    a3, a3, 1              #; a3  = 38, (wrb) a3  <-- 39
      0x800006d8 fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x00100130]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 312, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 39, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 31, (wrb) a5  <-- 3
      0x800006c8 mul     a5, a5, a6             #; a5  = 3, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 39, a5  = 30, (wrb) a5  <-- 9
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 312, (wrb) a5  <-- 0x00100138
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 9
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 312, (wrb) a2  <-- 320
      0x800006e0 addi    a3, a3, 1              #; a3  = 39, (wrb) a3  <-- 40
      0x800006d8 fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x00100138]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 320, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 40, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 32, (wrb) a5  <-- 4
      0x800006c8 mul     a5, a5, a6             #; a5  = 4, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 40, a5  = 40, (wrb) a5  <-- 0
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 320, (wrb) a5  <-- 0x00100140
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 320, (wrb) a2  <-- 328
      0x800006e0 addi    a3, a3, 1              #; a3  = 40, (wrb) a3  <-- 41
      0x800006d8 fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x00100140]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 328, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 41, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 32, (wrb) a5  <-- 4
      0x800006c8 mul     a5, a5, a6             #; a5  = 4, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 41, a5  = 40, (wrb) a5  <-- 1
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 328, (wrb) a5  <-- 0x00100148
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 1
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 328, (wrb) a2  <-- 336
      0x800006e0 addi    a3, a3, 1              #; a3  = 41, (wrb) a3  <-- 42
      0x800006d8 fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x00100148]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 336, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 42, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 33, (wrb) a5  <-- 4
      0x800006c8 mul     a5, a5, a6             #; a5  = 4, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 42, a5  = 40, (wrb) a5  <-- 2
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 336, (wrb) a5  <-- 0x00100150
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 2
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 336, (wrb) a2  <-- 344
      0x800006e0 addi    a3, a3, 1              #; a3  = 42, (wrb) a3  <-- 43
      0x800006d8 fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x00100150]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 344, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 43, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 34, (wrb) a5  <-- 4
      0x800006c8 mul     a5, a5, a6             #; a5  = 4, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 43, a5  = 40, (wrb) a5  <-- 3
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 344, (wrb) a5  <-- 0x00100158
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 3
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 344, (wrb) a2  <-- 352
      0x800006e0 addi    a3, a3, 1              #; a3  = 43, (wrb) a3  <-- 44
      0x800006d8 fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x00100158]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 352, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 44, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 35, (wrb) a5  <-- 4
      0x800006c8 mul     a5, a5, a6             #; a5  = 4, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 44, a5  = 40, (wrb) a5  <-- 4
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 352, (wrb) a5  <-- 0x00100160
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 4
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 352, (wrb) a2  <-- 360
      0x800006e0 addi    a3, a3, 1              #; a3  = 44, (wrb) a3  <-- 45
      0x800006d8 fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x00100160]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 360, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 45, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 36, (wrb) a5  <-- 4
      0x800006c8 mul     a5, a5, a6             #; a5  = 4, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 45, a5  = 40, (wrb) a5  <-- 5
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 360, (wrb) a5  <-- 0x00100168
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 5
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 360, (wrb) a2  <-- 368
      0x800006e0 addi    a3, a3, 1              #; a3  = 45, (wrb) a3  <-- 46
      0x800006d8 fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x00100168]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 368, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 46, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 36, (wrb) a5  <-- 4
      0x800006c8 mul     a5, a5, a6             #; a5  = 4, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 46, a5  = 40, (wrb) a5  <-- 6
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 368, (wrb) a5  <-- 0x00100170
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 6
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 368, (wrb) a2  <-- 376
      0x800006e0 addi    a3, a3, 1              #; a3  = 46, (wrb) a3  <-- 47
      0x800006d8 fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x00100170]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 376, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 47, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 37, (wrb) a5  <-- 4
      0x800006c8 mul     a5, a5, a6             #; a5  = 4, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 47, a5  = 40, (wrb) a5  <-- 7
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 376, (wrb) a5  <-- 0x00100178
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 7
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 376, (wrb) a2  <-- 384
      0x800006e0 addi    a3, a3, 1              #; a3  = 47, (wrb) a3  <-- 48
      0x800006d8 fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x00100178]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 384, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 48, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 38, (wrb) a5  <-- 4
      0x800006c8 mul     a5, a5, a6             #; a5  = 4, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 48, a5  = 40, (wrb) a5  <-- 8
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 384, (wrb) a5  <-- 0x00100180
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 8
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 384, (wrb) a2  <-- 392
      0x800006e0 addi    a3, a3, 1              #; a3  = 48, (wrb) a3  <-- 49
      0x800006d8 fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x00100180]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 392, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 49, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 39, (wrb) a5  <-- 4
      0x800006c8 mul     a5, a5, a6             #; a5  = 4, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 49, a5  = 40, (wrb) a5  <-- 9
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 392, (wrb) a5  <-- 0x00100188
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 9
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 392, (wrb) a2  <-- 400
      0x800006e0 addi    a3, a3, 1              #; a3  = 49, (wrb) a3  <-- 50
      0x800006d8 fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x00100188]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 400, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 50, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 40, (wrb) a5  <-- 5
      0x800006c8 mul     a5, a5, a6             #; a5  = 5, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 50, a5  = 50, (wrb) a5  <-- 0
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 400, (wrb) a5  <-- 0x00100190
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 400, (wrb) a2  <-- 408
      0x800006e0 addi    a3, a3, 1              #; a3  = 50, (wrb) a3  <-- 51
      0x800006d8 fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x00100190]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 408, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 51, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 40, (wrb) a5  <-- 5
      0x800006c8 mul     a5, a5, a6             #; a5  = 5, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 51, a5  = 50, (wrb) a5  <-- 1
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 408, (wrb) a5  <-- 0x00100198
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 1
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 408, (wrb) a2  <-- 416
      0x800006e0 addi    a3, a3, 1              #; a3  = 51, (wrb) a3  <-- 52
      0x800006d8 fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x00100198]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 416, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 52, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 41, (wrb) a5  <-- 5
      0x800006c8 mul     a5, a5, a6             #; a5  = 5, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 52, a5  = 50, (wrb) a5  <-- 2
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 416, (wrb) a5  <-- 0x001001a0
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 2
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 416, (wrb) a2  <-- 424
      0x800006e0 addi    a3, a3, 1              #; a3  = 52, (wrb) a3  <-- 53
      0x800006d8 fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x001001a0]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 424, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 53, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 42, (wrb) a5  <-- 5
      0x800006c8 mul     a5, a5, a6             #; a5  = 5, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 53, a5  = 50, (wrb) a5  <-- 3
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 424, (wrb) a5  <-- 0x001001a8
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 3
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 424, (wrb) a2  <-- 432
      0x800006e0 addi    a3, a3, 1              #; a3  = 53, (wrb) a3  <-- 54
      0x800006d8 fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x001001a8]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 432, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 54, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 43, (wrb) a5  <-- 5
      0x800006c8 mul     a5, a5, a6             #; a5  = 5, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 54, a5  = 50, (wrb) a5  <-- 4
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 432, (wrb) a5  <-- 0x001001b0
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 4
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 432, (wrb) a2  <-- 440
      0x800006e0 addi    a3, a3, 1              #; a3  = 54, (wrb) a3  <-- 55
      0x800006d8 fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x001001b0]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 440, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 55, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 44, (wrb) a5  <-- 5
      0x800006c8 mul     a5, a5, a6             #; a5  = 5, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 55, a5  = 50, (wrb) a5  <-- 5
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 440, (wrb) a5  <-- 0x001001b8
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 5
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 440, (wrb) a2  <-- 448
      0x800006e0 addi    a3, a3, 1              #; a3  = 55, (wrb) a3  <-- 56
      0x800006d8 fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x001001b8]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 448, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 56, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 44, (wrb) a5  <-- 5
      0x800006c8 mul     a5, a5, a6             #; a5  = 5, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 56, a5  = 50, (wrb) a5  <-- 6
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 448, (wrb) a5  <-- 0x001001c0
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 6
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 448, (wrb) a2  <-- 456
      0x800006e0 addi    a3, a3, 1              #; a3  = 56, (wrb) a3  <-- 57
      0x800006d8 fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x001001c0]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 456, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 57, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 45, (wrb) a5  <-- 5
      0x800006c8 mul     a5, a5, a6             #; a5  = 5, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 57, a5  = 50, (wrb) a5  <-- 7
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 456, (wrb) a5  <-- 0x001001c8
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 7
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 456, (wrb) a2  <-- 464
      0x800006e0 addi    a3, a3, 1              #; a3  = 57, (wrb) a3  <-- 58
      0x800006d8 fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x001001c8]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 464, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 58, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 46, (wrb) a5  <-- 5
      0x800006c8 mul     a5, a5, a6             #; a5  = 5, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 58, a5  = 50, (wrb) a5  <-- 8
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 464, (wrb) a5  <-- 0x001001d0
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 8
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 464, (wrb) a2  <-- 472
      0x800006e0 addi    a3, a3, 1              #; a3  = 58, (wrb) a3  <-- 59
      0x800006d8 fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x001001d0]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 472, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 59, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 47, (wrb) a5  <-- 5
      0x800006c8 mul     a5, a5, a6             #; a5  = 5, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 59, a5  = 50, (wrb) a5  <-- 9
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 472, (wrb) a5  <-- 0x001001d8
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 9
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 472, (wrb) a2  <-- 480
      0x800006e0 addi    a3, a3, 1              #; a3  = 59, (wrb) a3  <-- 60
      0x800006d8 fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x001001d8]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 480, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 60, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 48, (wrb) a5  <-- 6
      0x800006c8 mul     a5, a5, a6             #; a5  = 6, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 60, a5  = 60, (wrb) a5  <-- 0
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 480, (wrb) a5  <-- 0x001001e0
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 480, (wrb) a2  <-- 488
      0x800006e0 addi    a3, a3, 1              #; a3  = 60, (wrb) a3  <-- 61
      0x800006d8 fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x001001e0]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 488, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 61, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 48, (wrb) a5  <-- 6
      0x800006c8 mul     a5, a5, a6             #; a5  = 6, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 61, a5  = 60, (wrb) a5  <-- 1
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 488, (wrb) a5  <-- 0x001001e8
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 1
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 488, (wrb) a2  <-- 496
      0x800006e0 addi    a3, a3, 1              #; a3  = 61, (wrb) a3  <-- 62
      0x800006d8 fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x001001e8]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 496, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 62, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 49, (wrb) a5  <-- 6
      0x800006c8 mul     a5, a5, a6             #; a5  = 6, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 62, a5  = 60, (wrb) a5  <-- 2
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 496, (wrb) a5  <-- 0x001001f0
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 2
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 496, (wrb) a2  <-- 504
      0x800006e0 addi    a3, a3, 1              #; a3  = 62, (wrb) a3  <-- 63
      0x800006d8 fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x001001f0]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 504, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 63, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 50, (wrb) a5  <-- 6
      0x800006c8 mul     a5, a5, a6             #; a5  = 6, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 63, a5  = 60, (wrb) a5  <-- 3
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 504, (wrb) a5  <-- 0x001001f8
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 3
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 504, (wrb) a2  <-- 512
      0x800006e0 addi    a3, a3, 1              #; a3  = 63, (wrb) a3  <-- 64
      0x800006d8 fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x001001f8]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 512, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 64, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 51, (wrb) a5  <-- 6
      0x800006c8 mul     a5, a5, a6             #; a5  = 6, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 64, a5  = 60, (wrb) a5  <-- 4
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 512, (wrb) a5  <-- 0x00100200
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 4
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 512, (wrb) a2  <-- 520
      0x800006e0 addi    a3, a3, 1              #; a3  = 64, (wrb) a3  <-- 65
      0x800006d8 fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x00100200]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 520, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 65, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 52, (wrb) a5  <-- 6
      0x800006c8 mul     a5, a5, a6             #; a5  = 6, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 65, a5  = 60, (wrb) a5  <-- 5
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 520, (wrb) a5  <-- 0x00100208
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 5
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 520, (wrb) a2  <-- 528
      0x800006e0 addi    a3, a3, 1              #; a3  = 65, (wrb) a3  <-- 66
      0x800006d8 fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x00100208]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 528, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 66, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 52, (wrb) a5  <-- 6
      0x800006c8 mul     a5, a5, a6             #; a5  = 6, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 66, a5  = 60, (wrb) a5  <-- 6
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 528, (wrb) a5  <-- 0x00100210
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 6
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 528, (wrb) a2  <-- 536
      0x800006e0 addi    a3, a3, 1              #; a3  = 66, (wrb) a3  <-- 67
      0x800006d8 fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x00100210]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 536, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 67, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 53, (wrb) a5  <-- 6
      0x800006c8 mul     a5, a5, a6             #; a5  = 6, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 67, a5  = 60, (wrb) a5  <-- 7
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 536, (wrb) a5  <-- 0x00100218
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 7
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 536, (wrb) a2  <-- 544
      0x800006e0 addi    a3, a3, 1              #; a3  = 67, (wrb) a3  <-- 68
      0x800006d8 fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x00100218]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 544, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 68, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 54, (wrb) a5  <-- 6
      0x800006c8 mul     a5, a5, a6             #; a5  = 6, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 68, a5  = 60, (wrb) a5  <-- 8
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 544, (wrb) a5  <-- 0x00100220
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 8
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 544, (wrb) a2  <-- 552
      0x800006e0 addi    a3, a3, 1              #; a3  = 68, (wrb) a3  <-- 69
      0x800006d8 fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x00100220]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 552, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 69, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 55, (wrb) a5  <-- 6
      0x800006c8 mul     a5, a5, a6             #; a5  = 6, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 69, a5  = 60, (wrb) a5  <-- 9
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 552, (wrb) a5  <-- 0x00100228
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 9
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 552, (wrb) a2  <-- 560
      0x800006e0 addi    a3, a3, 1              #; a3  = 69, (wrb) a3  <-- 70
      0x800006d8 fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x00100228]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 560, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 70, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 56, (wrb) a5  <-- 7
      0x800006c8 mul     a5, a5, a6             #; a5  = 7, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 70, a5  = 70, (wrb) a5  <-- 0
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 560, (wrb) a5  <-- 0x00100230
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 560, (wrb) a2  <-- 568
      0x800006e0 addi    a3, a3, 1              #; a3  = 70, (wrb) a3  <-- 71
      0x800006d8 fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x00100230]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 568, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 71, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 56, (wrb) a5  <-- 7
      0x800006c8 mul     a5, a5, a6             #; a5  = 7, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 71, a5  = 70, (wrb) a5  <-- 1
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 568, (wrb) a5  <-- 0x00100238
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 1
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 568, (wrb) a2  <-- 576
      0x800006e0 addi    a3, a3, 1              #; a3  = 71, (wrb) a3  <-- 72
      0x800006d8 fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x00100238]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 576, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 72, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 57, (wrb) a5  <-- 7
      0x800006c8 mul     a5, a5, a6             #; a5  = 7, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 72, a5  = 70, (wrb) a5  <-- 2
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 576, (wrb) a5  <-- 0x00100240
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 2
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 576, (wrb) a2  <-- 584
      0x800006e0 addi    a3, a3, 1              #; a3  = 72, (wrb) a3  <-- 73
      0x800006d8 fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x00100240]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 584, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 73, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 58, (wrb) a5  <-- 7
      0x800006c8 mul     a5, a5, a6             #; a5  = 7, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 73, a5  = 70, (wrb) a5  <-- 3
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 584, (wrb) a5  <-- 0x00100248
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 3
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 584, (wrb) a2  <-- 592
      0x800006e0 addi    a3, a3, 1              #; a3  = 73, (wrb) a3  <-- 74
      0x800006d8 fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x00100248]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 592, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 74, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 59, (wrb) a5  <-- 7
      0x800006c8 mul     a5, a5, a6             #; a5  = 7, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 74, a5  = 70, (wrb) a5  <-- 4
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 592, (wrb) a5  <-- 0x00100250
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 4
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 592, (wrb) a2  <-- 600
      0x800006e0 addi    a3, a3, 1              #; a3  = 74, (wrb) a3  <-- 75
      0x800006d8 fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x00100250]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 600, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 75, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 60, (wrb) a5  <-- 7
      0x800006c8 mul     a5, a5, a6             #; a5  = 7, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 75, a5  = 70, (wrb) a5  <-- 5
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 600, (wrb) a5  <-- 0x00100258
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 5
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 600, (wrb) a2  <-- 608
      0x800006e0 addi    a3, a3, 1              #; a3  = 75, (wrb) a3  <-- 76
      0x800006d8 fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x00100258]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 608, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 76, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 60, (wrb) a5  <-- 7
      0x800006c8 mul     a5, a5, a6             #; a5  = 7, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 76, a5  = 70, (wrb) a5  <-- 6
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 608, (wrb) a5  <-- 0x00100260
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 6
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 608, (wrb) a2  <-- 616
      0x800006e0 addi    a3, a3, 1              #; a3  = 76, (wrb) a3  <-- 77
      0x800006d8 fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x00100260]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 616, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 77, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 61, (wrb) a5  <-- 7
      0x800006c8 mul     a5, a5, a6             #; a5  = 7, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 77, a5  = 70, (wrb) a5  <-- 7
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 616, (wrb) a5  <-- 0x00100268
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 7
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 616, (wrb) a2  <-- 624
      0x800006e0 addi    a3, a3, 1              #; a3  = 77, (wrb) a3  <-- 78
      0x800006d8 fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x00100268]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 624, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 78, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 62, (wrb) a5  <-- 7
      0x800006c8 mul     a5, a5, a6             #; a5  = 7, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 78, a5  = 70, (wrb) a5  <-- 8
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 624, (wrb) a5  <-- 0x00100270
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 8
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 624, (wrb) a2  <-- 632
      0x800006e0 addi    a3, a3, 1              #; a3  = 78, (wrb) a3  <-- 79
      0x800006d8 fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x00100270]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 632, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 79, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 63, (wrb) a5  <-- 7
      0x800006c8 mul     a5, a5, a6             #; a5  = 7, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 79, a5  = 70, (wrb) a5  <-- 9
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 632, (wrb) a5  <-- 0x00100278
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 9
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 632, (wrb) a2  <-- 640
      0x800006e0 addi    a3, a3, 1              #; a3  = 79, (wrb) a3  <-- 80
      0x800006d8 fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x00100278]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 640, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 80, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 64, (wrb) a5  <-- 8
      0x800006c8 mul     a5, a5, a6             #; a5  = 8, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 80, a5  = 80, (wrb) a5  <-- 0
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 640, (wrb) a5  <-- 0x00100280
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 640, (wrb) a2  <-- 648
      0x800006e0 addi    a3, a3, 1              #; a3  = 80, (wrb) a3  <-- 81
      0x800006d8 fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x00100280]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 648, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 81, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 64, (wrb) a5  <-- 8
      0x800006c8 mul     a5, a5, a6             #; a5  = 8, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 81, a5  = 80, (wrb) a5  <-- 1
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 648, (wrb) a5  <-- 0x00100288
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 1
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 648, (wrb) a2  <-- 656
      0x800006e0 addi    a3, a3, 1              #; a3  = 81, (wrb) a3  <-- 82
      0x800006d8 fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x00100288]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 656, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 82, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 65, (wrb) a5  <-- 8
      0x800006c8 mul     a5, a5, a6             #; a5  = 8, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 82, a5  = 80, (wrb) a5  <-- 2
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 656, (wrb) a5  <-- 0x00100290
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 2
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 656, (wrb) a2  <-- 664
      0x800006e0 addi    a3, a3, 1              #; a3  = 82, (wrb) a3  <-- 83
      0x800006d8 fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x00100290]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 664, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 83, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 66, (wrb) a5  <-- 8
      0x800006c8 mul     a5, a5, a6             #; a5  = 8, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 83, a5  = 80, (wrb) a5  <-- 3
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 664, (wrb) a5  <-- 0x00100298
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 3
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 664, (wrb) a2  <-- 672
      0x800006e0 addi    a3, a3, 1              #; a3  = 83, (wrb) a3  <-- 84
      0x800006d8 fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x00100298]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 672, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 84, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 67, (wrb) a5  <-- 8
      0x800006c8 mul     a5, a5, a6             #; a5  = 8, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 84, a5  = 80, (wrb) a5  <-- 4
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 672, (wrb) a5  <-- 0x001002a0
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 4
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 672, (wrb) a2  <-- 680
      0x800006e0 addi    a3, a3, 1              #; a3  = 84, (wrb) a3  <-- 85
      0x800006d8 fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x001002a0]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 680, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 85, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 68, (wrb) a5  <-- 8
      0x800006c8 mul     a5, a5, a6             #; a5  = 8, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 85, a5  = 80, (wrb) a5  <-- 5
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 680, (wrb) a5  <-- 0x001002a8
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 5
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 680, (wrb) a2  <-- 688
      0x800006e0 addi    a3, a3, 1              #; a3  = 85, (wrb) a3  <-- 86
      0x800006d8 fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x001002a8]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 688, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 86, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 68, (wrb) a5  <-- 8
      0x800006c8 mul     a5, a5, a6             #; a5  = 8, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 86, a5  = 80, (wrb) a5  <-- 6
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 688, (wrb) a5  <-- 0x001002b0
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 6
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 688, (wrb) a2  <-- 696
      0x800006e0 addi    a3, a3, 1              #; a3  = 86, (wrb) a3  <-- 87
      0x800006d8 fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x001002b0]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 696, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 87, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 69, (wrb) a5  <-- 8
      0x800006c8 mul     a5, a5, a6             #; a5  = 8, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 87, a5  = 80, (wrb) a5  <-- 7
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 696, (wrb) a5  <-- 0x001002b8
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 7
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 696, (wrb) a2  <-- 704
      0x800006e0 addi    a3, a3, 1              #; a3  = 87, (wrb) a3  <-- 88
      0x800006d8 fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x001002b8]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 704, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 88, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 70, (wrb) a5  <-- 8
      0x800006c8 mul     a5, a5, a6             #; a5  = 8, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 88, a5  = 80, (wrb) a5  <-- 8
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 704, (wrb) a5  <-- 0x001002c0
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 8
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 704, (wrb) a2  <-- 712
      0x800006e0 addi    a3, a3, 1              #; a3  = 88, (wrb) a3  <-- 89
      0x800006d8 fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x001002c0]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 712, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 89, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 71, (wrb) a5  <-- 8
      0x800006c8 mul     a5, a5, a6             #; a5  = 8, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 89, a5  = 80, (wrb) a5  <-- 9
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 712, (wrb) a5  <-- 0x001002c8
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 9
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 712, (wrb) a2  <-- 720
      0x800006e0 addi    a3, a3, 1              #; a3  = 89, (wrb) a3  <-- 90
      0x800006d8 fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x001002c8]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 720, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 90, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 72, (wrb) a5  <-- 9
      0x800006c8 mul     a5, a5, a6             #; a5  = 9, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 90, a5  = 90, (wrb) a5  <-- 0
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 720, (wrb) a5  <-- 0x001002d0
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 720, (wrb) a2  <-- 728
      0x800006e0 addi    a3, a3, 1              #; a3  = 90, (wrb) a3  <-- 91
      0x800006d8 fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x001002d0]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 728, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 91, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 72, (wrb) a5  <-- 9
      0x800006c8 mul     a5, a5, a6             #; a5  = 9, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 91, a5  = 90, (wrb) a5  <-- 1
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 728, (wrb) a5  <-- 0x001002d8
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 1
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 728, (wrb) a2  <-- 736
      0x800006e0 addi    a3, a3, 1              #; a3  = 91, (wrb) a3  <-- 92
      0x800006d8 fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x001002d8]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 736, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 92, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 73, (wrb) a5  <-- 9
      0x800006c8 mul     a5, a5, a6             #; a5  = 9, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 92, a5  = 90, (wrb) a5  <-- 2
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 736, (wrb) a5  <-- 0x001002e0
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 2
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 736, (wrb) a2  <-- 744
      0x800006e0 addi    a3, a3, 1              #; a3  = 92, (wrb) a3  <-- 93
      0x800006d8 fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x001002e0]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 744, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 93, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 74, (wrb) a5  <-- 9
      0x800006c8 mul     a5, a5, a6             #; a5  = 9, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 93, a5  = 90, (wrb) a5  <-- 3
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 744, (wrb) a5  <-- 0x001002e8
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 3
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 744, (wrb) a2  <-- 752
      0x800006e0 addi    a3, a3, 1              #; a3  = 93, (wrb) a3  <-- 94
      0x800006d8 fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x001002e8]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 752, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 94, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 75, (wrb) a5  <-- 9
      0x800006c8 mul     a5, a5, a6             #; a5  = 9, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 94, a5  = 90, (wrb) a5  <-- 4
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 752, (wrb) a5  <-- 0x001002f0
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 4
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 752, (wrb) a2  <-- 760
      0x800006e0 addi    a3, a3, 1              #; a3  = 94, (wrb) a3  <-- 95
      0x800006d8 fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x001002f0]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 760, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 95, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 76, (wrb) a5  <-- 9
      0x800006c8 mul     a5, a5, a6             #; a5  = 9, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 95, a5  = 90, (wrb) a5  <-- 5
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 760, (wrb) a5  <-- 0x001002f8
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 5
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 760, (wrb) a2  <-- 768
      0x800006e0 addi    a3, a3, 1              #; a3  = 95, (wrb) a3  <-- 96
      0x800006d8 fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x001002f8]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 768, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 96, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 76, (wrb) a5  <-- 9
      0x800006c8 mul     a5, a5, a6             #; a5  = 9, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 96, a5  = 90, (wrb) a5  <-- 6
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 768, (wrb) a5  <-- 0x00100300
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 6
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 768, (wrb) a2  <-- 776
      0x800006e0 addi    a3, a3, 1              #; a3  = 96, (wrb) a3  <-- 97
      0x800006d8 fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x00100300]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 776, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 97, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 77, (wrb) a5  <-- 9
      0x800006c8 mul     a5, a5, a6             #; a5  = 9, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 97, a5  = 90, (wrb) a5  <-- 7
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 776, (wrb) a5  <-- 0x00100308
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 7
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 776, (wrb) a2  <-- 784
      0x800006e0 addi    a3, a3, 1              #; a3  = 97, (wrb) a3  <-- 98
      0x800006d8 fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x00100308]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 784, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 98, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 78, (wrb) a5  <-- 9
      0x800006c8 mul     a5, a5, a6             #; a5  = 9, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 98, a5  = 90, (wrb) a5  <-- 8
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 784, (wrb) a5  <-- 0x00100310
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 8
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 784, (wrb) a2  <-- 792
      0x800006e0 addi    a3, a3, 1              #; a3  = 98, (wrb) a3  <-- 99
      0x800006d8 fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x00100310]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 792, a7  = 800, taken, goto 0x800006c0
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006c0 mulhu   a5, a3, a4             #; a3  = 99, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x800006c4 srli    a5, a5, 3              #; a5  = 79, (wrb) a5  <-- 9
      0x800006c8 mul     a5, a5, a6             #; a5  = 9, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x800006cc sub     a5, a3, a5             #; a3  = 99, a5  = 90, (wrb) a5  <-- 9
      0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 792, (wrb) a5  <-- 0x00100318
      0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 9
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:41)
      0x800006dc addi    a2, a2, 8              #; a2  = 792, (wrb) a2  <-- 800
      0x800006e0 addi    a3, a3, 1              #; a3  = 99, (wrb) a3  <-- 100
      0x800006d8 fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x00100318]
      0x800006e4 bne     a2, a7, pc - 36        #; a2  = 800, a7  = 800, not taken
; main (bench_sp.c:0)
      0x800006e8 li      a2, 0                  #; (wrb) a2  <-- 0
      0x800006ec li      a3, 0                  #; (wrb) a3  <-- 0
      0x800006f0 lui     a4, 0xccccd            #; (wrb) a4  <-- 0xccccd000
      0x800006f4 addi    a4, a4, -819           #; a4  = 0xccccd000, (wrb) a4  <-- 0xcccccccd
      0x800006f8 li      a6, 10                 #; (wrb) a6  <-- 10
      0x800006fc li      a7, 800                #; (wrb) a7  <-- 800
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 0, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 0, (wrb) a5  <-- 0
      0x80000708 mul     a5, a5, a6             #; a5  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 0, a5  = 0, (wrb) a5  <-- 0
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 0, (wrb) a5  <-- 0x00100320
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 0, (wrb) a2  <-- 8
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000718 fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x00100320]
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x80000720 addi    a3, a3, 1              #; a3  = 0, (wrb) a3  <-- 1
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 8, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 1, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 0, (wrb) a5  <-- 0
      0x80000708 mul     a5, a5, a6             #; a5  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 1, a5  = 0, (wrb) a5  <-- 1
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 8, (wrb) a5  <-- 0x00100328
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 1
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 8, (wrb) a2  <-- 16
      0x80000720 addi    a3, a3, 1              #; a3  = 1, (wrb) a3  <-- 2
      0x80000718 fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x00100328]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 16, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 2, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 1, (wrb) a5  <-- 0
      0x80000708 mul     a5, a5, a6             #; a5  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 2, a5  = 0, (wrb) a5  <-- 2
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 16, (wrb) a5  <-- 0x00100330
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 2
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 16, (wrb) a2  <-- 24
      0x80000720 addi    a3, a3, 1              #; a3  = 2, (wrb) a3  <-- 3
      0x80000718 fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x00100330]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 24, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 3, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 2, (wrb) a5  <-- 0
      0x80000708 mul     a5, a5, a6             #; a5  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 3, a5  = 0, (wrb) a5  <-- 3
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 24, (wrb) a5  <-- 0x00100338
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 3
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 24, (wrb) a2  <-- 32
      0x80000720 addi    a3, a3, 1              #; a3  = 3, (wrb) a3  <-- 4
      0x80000718 fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x00100338]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 32, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 4, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 3, (wrb) a5  <-- 0
      0x80000708 mul     a5, a5, a6             #; a5  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 4, a5  = 0, (wrb) a5  <-- 4
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 32, (wrb) a5  <-- 0x00100340
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 4
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 32, (wrb) a2  <-- 40
      0x80000720 addi    a3, a3, 1              #; a3  = 4, (wrb) a3  <-- 5
      0x80000718 fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x00100340]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 40, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 5, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 4, (wrb) a5  <-- 0
      0x80000708 mul     a5, a5, a6             #; a5  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 5, a5  = 0, (wrb) a5  <-- 5
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 40, (wrb) a5  <-- 0x00100348
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 5
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 40, (wrb) a2  <-- 48
      0x80000720 addi    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 6
      0x80000718 fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x00100348]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 48, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 6, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 4, (wrb) a5  <-- 0
      0x80000708 mul     a5, a5, a6             #; a5  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 6, a5  = 0, (wrb) a5  <-- 6
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 48, (wrb) a5  <-- 0x00100350
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 6
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 48, (wrb) a2  <-- 56
      0x80000720 addi    a3, a3, 1              #; a3  = 6, (wrb) a3  <-- 7
      0x80000718 fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x00100350]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 56, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 7, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 5, (wrb) a5  <-- 0
      0x80000708 mul     a5, a5, a6             #; a5  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 7, a5  = 0, (wrb) a5  <-- 7
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 56, (wrb) a5  <-- 0x00100358
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 7
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 56, (wrb) a2  <-- 64
      0x80000720 addi    a3, a3, 1              #; a3  = 7, (wrb) a3  <-- 8
      0x80000718 fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x00100358]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 64, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 8, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 6, (wrb) a5  <-- 0
      0x80000708 mul     a5, a5, a6             #; a5  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 8, a5  = 0, (wrb) a5  <-- 8
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 64, (wrb) a5  <-- 0x00100360
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 8
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 64, (wrb) a2  <-- 72
      0x80000720 addi    a3, a3, 1              #; a3  = 8, (wrb) a3  <-- 9
      0x80000718 fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x00100360]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 72, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 9, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 7, (wrb) a5  <-- 0
      0x80000708 mul     a5, a5, a6             #; a5  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 9, a5  = 0, (wrb) a5  <-- 9
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 72, (wrb) a5  <-- 0x00100368
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 9
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 72, (wrb) a2  <-- 80
      0x80000720 addi    a3, a3, 1              #; a3  = 9, (wrb) a3  <-- 10
      0x80000718 fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x00100368]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 80, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 10, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 8, (wrb) a5  <-- 1
      0x80000708 mul     a5, a5, a6             #; a5  = 1, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 10, a5  = 10, (wrb) a5  <-- 0
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 80, (wrb) a5  <-- 0x00100370
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 80, (wrb) a2  <-- 88
      0x80000720 addi    a3, a3, 1              #; a3  = 10, (wrb) a3  <-- 11
      0x80000718 fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x00100370]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 88, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 11, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 8, (wrb) a5  <-- 1
      0x80000708 mul     a5, a5, a6             #; a5  = 1, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 11, a5  = 10, (wrb) a5  <-- 1
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 88, (wrb) a5  <-- 0x00100378
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 1
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 88, (wrb) a2  <-- 96
      0x80000720 addi    a3, a3, 1              #; a3  = 11, (wrb) a3  <-- 12
      0x80000718 fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x00100378]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 96, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 12, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 9, (wrb) a5  <-- 1
      0x80000708 mul     a5, a5, a6             #; a5  = 1, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 12, a5  = 10, (wrb) a5  <-- 2
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 96, (wrb) a5  <-- 0x00100380
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 2
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 96, (wrb) a2  <-- 104
      0x80000720 addi    a3, a3, 1              #; a3  = 12, (wrb) a3  <-- 13
      0x80000718 fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x00100380]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 104, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 13, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 10, (wrb) a5  <-- 1
      0x80000708 mul     a5, a5, a6             #; a5  = 1, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 13, a5  = 10, (wrb) a5  <-- 3
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 104, (wrb) a5  <-- 0x00100388
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 3
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 104, (wrb) a2  <-- 112
      0x80000720 addi    a3, a3, 1              #; a3  = 13, (wrb) a3  <-- 14
      0x80000718 fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x00100388]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 112, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 14, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 11, (wrb) a5  <-- 1
      0x80000708 mul     a5, a5, a6             #; a5  = 1, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 14, a5  = 10, (wrb) a5  <-- 4
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 112, (wrb) a5  <-- 0x00100390
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 4
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 112, (wrb) a2  <-- 120
      0x80000720 addi    a3, a3, 1              #; a3  = 14, (wrb) a3  <-- 15
      0x80000718 fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x00100390]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 120, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 15, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 12, (wrb) a5  <-- 1
      0x80000708 mul     a5, a5, a6             #; a5  = 1, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 15, a5  = 10, (wrb) a5  <-- 5
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 120, (wrb) a5  <-- 0x00100398
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 5
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 120, (wrb) a2  <-- 128
      0x80000720 addi    a3, a3, 1              #; a3  = 15, (wrb) a3  <-- 16
      0x80000718 fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x00100398]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 128, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 16, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 12, (wrb) a5  <-- 1
      0x80000708 mul     a5, a5, a6             #; a5  = 1, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 16, a5  = 10, (wrb) a5  <-- 6
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 128, (wrb) a5  <-- 0x001003a0
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 6
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 128, (wrb) a2  <-- 136
      0x80000720 addi    a3, a3, 1              #; a3  = 16, (wrb) a3  <-- 17
      0x80000718 fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x001003a0]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 136, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 17, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 13, (wrb) a5  <-- 1
      0x80000708 mul     a5, a5, a6             #; a5  = 1, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 17, a5  = 10, (wrb) a5  <-- 7
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 136, (wrb) a5  <-- 0x001003a8
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 7
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 136, (wrb) a2  <-- 144
      0x80000720 addi    a3, a3, 1              #; a3  = 17, (wrb) a3  <-- 18
      0x80000718 fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x001003a8]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 144, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 18, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 14, (wrb) a5  <-- 1
      0x80000708 mul     a5, a5, a6             #; a5  = 1, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 18, a5  = 10, (wrb) a5  <-- 8
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 144, (wrb) a5  <-- 0x001003b0
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 8
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 144, (wrb) a2  <-- 152
      0x80000720 addi    a3, a3, 1              #; a3  = 18, (wrb) a3  <-- 19
      0x80000718 fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x001003b0]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 152, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 19, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 15, (wrb) a5  <-- 1
      0x80000708 mul     a5, a5, a6             #; a5  = 1, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 19, a5  = 10, (wrb) a5  <-- 9
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 152, (wrb) a5  <-- 0x001003b8
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 9
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 152, (wrb) a2  <-- 160
      0x80000720 addi    a3, a3, 1              #; a3  = 19, (wrb) a3  <-- 20
      0x80000718 fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x001003b8]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 160, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 20, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 16, (wrb) a5  <-- 2
      0x80000708 mul     a5, a5, a6             #; a5  = 2, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 20, a5  = 20, (wrb) a5  <-- 0
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 160, (wrb) a5  <-- 0x001003c0
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 160, (wrb) a2  <-- 168
      0x80000720 addi    a3, a3, 1              #; a3  = 20, (wrb) a3  <-- 21
      0x80000718 fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x001003c0]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 168, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 21, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 16, (wrb) a5  <-- 2
      0x80000708 mul     a5, a5, a6             #; a5  = 2, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 21, a5  = 20, (wrb) a5  <-- 1
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 168, (wrb) a5  <-- 0x001003c8
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 1
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 168, (wrb) a2  <-- 176
      0x80000720 addi    a3, a3, 1              #; a3  = 21, (wrb) a3  <-- 22
      0x80000718 fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x001003c8]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 176, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 22, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 17, (wrb) a5  <-- 2
      0x80000708 mul     a5, a5, a6             #; a5  = 2, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 22, a5  = 20, (wrb) a5  <-- 2
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 176, (wrb) a5  <-- 0x001003d0
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 2
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 176, (wrb) a2  <-- 184
      0x80000720 addi    a3, a3, 1              #; a3  = 22, (wrb) a3  <-- 23
      0x80000718 fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x001003d0]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 184, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 23, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 18, (wrb) a5  <-- 2
      0x80000708 mul     a5, a5, a6             #; a5  = 2, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 23, a5  = 20, (wrb) a5  <-- 3
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 184, (wrb) a5  <-- 0x001003d8
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 3
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 184, (wrb) a2  <-- 192
      0x80000720 addi    a3, a3, 1              #; a3  = 23, (wrb) a3  <-- 24
      0x80000718 fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x001003d8]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 192, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 24, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 19, (wrb) a5  <-- 2
      0x80000708 mul     a5, a5, a6             #; a5  = 2, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 24, a5  = 20, (wrb) a5  <-- 4
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 192, (wrb) a5  <-- 0x001003e0
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 4
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 192, (wrb) a2  <-- 200
      0x80000720 addi    a3, a3, 1              #; a3  = 24, (wrb) a3  <-- 25
      0x80000718 fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x001003e0]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 200, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 25, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 20, (wrb) a5  <-- 2
      0x80000708 mul     a5, a5, a6             #; a5  = 2, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 25, a5  = 20, (wrb) a5  <-- 5
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 200, (wrb) a5  <-- 0x001003e8
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 5
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 200, (wrb) a2  <-- 208
      0x80000720 addi    a3, a3, 1              #; a3  = 25, (wrb) a3  <-- 26
      0x80000718 fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x001003e8]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 208, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 26, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 20, (wrb) a5  <-- 2
      0x80000708 mul     a5, a5, a6             #; a5  = 2, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 26, a5  = 20, (wrb) a5  <-- 6
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 208, (wrb) a5  <-- 0x001003f0
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 6
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 208, (wrb) a2  <-- 216
      0x80000720 addi    a3, a3, 1              #; a3  = 26, (wrb) a3  <-- 27
      0x80000718 fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x001003f0]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 216, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 27, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 21, (wrb) a5  <-- 2
      0x80000708 mul     a5, a5, a6             #; a5  = 2, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 27, a5  = 20, (wrb) a5  <-- 7
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 216, (wrb) a5  <-- 0x001003f8
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 7
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 216, (wrb) a2  <-- 224
      0x80000720 addi    a3, a3, 1              #; a3  = 27, (wrb) a3  <-- 28
      0x80000718 fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x001003f8]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 224, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 28, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 22, (wrb) a5  <-- 2
      0x80000708 mul     a5, a5, a6             #; a5  = 2, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 28, a5  = 20, (wrb) a5  <-- 8
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 224, (wrb) a5  <-- 0x00100400
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 8
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 224, (wrb) a2  <-- 232
      0x80000720 addi    a3, a3, 1              #; a3  = 28, (wrb) a3  <-- 29
      0x80000718 fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x00100400]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 232, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 29, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 23, (wrb) a5  <-- 2
      0x80000708 mul     a5, a5, a6             #; a5  = 2, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 29, a5  = 20, (wrb) a5  <-- 9
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 232, (wrb) a5  <-- 0x00100408
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 9
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 232, (wrb) a2  <-- 240
      0x80000720 addi    a3, a3, 1              #; a3  = 29, (wrb) a3  <-- 30
      0x80000718 fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x00100408]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 240, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 30, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 24, (wrb) a5  <-- 3
      0x80000708 mul     a5, a5, a6             #; a5  = 3, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 30, a5  = 30, (wrb) a5  <-- 0
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 240, (wrb) a5  <-- 0x00100410
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 240, (wrb) a2  <-- 248
      0x80000720 addi    a3, a3, 1              #; a3  = 30, (wrb) a3  <-- 31
      0x80000718 fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x00100410]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 248, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 31, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 24, (wrb) a5  <-- 3
      0x80000708 mul     a5, a5, a6             #; a5  = 3, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 31, a5  = 30, (wrb) a5  <-- 1
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 248, (wrb) a5  <-- 0x00100418
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 1
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 248, (wrb) a2  <-- 256
      0x80000720 addi    a3, a3, 1              #; a3  = 31, (wrb) a3  <-- 32
      0x80000718 fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x00100418]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 256, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 32, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 25, (wrb) a5  <-- 3
      0x80000708 mul     a5, a5, a6             #; a5  = 3, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 32, a5  = 30, (wrb) a5  <-- 2
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 256, (wrb) a5  <-- 0x00100420
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 2
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 256, (wrb) a2  <-- 264
      0x80000720 addi    a3, a3, 1              #; a3  = 32, (wrb) a3  <-- 33
      0x80000718 fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x00100420]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 264, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 33, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 26, (wrb) a5  <-- 3
      0x80000708 mul     a5, a5, a6             #; a5  = 3, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 33, a5  = 30, (wrb) a5  <-- 3
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 264, (wrb) a5  <-- 0x00100428
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 3
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 264, (wrb) a2  <-- 272
      0x80000720 addi    a3, a3, 1              #; a3  = 33, (wrb) a3  <-- 34
      0x80000718 fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x00100428]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 272, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 34, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 27, (wrb) a5  <-- 3
      0x80000708 mul     a5, a5, a6             #; a5  = 3, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 34, a5  = 30, (wrb) a5  <-- 4
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 272, (wrb) a5  <-- 0x00100430
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 4
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 272, (wrb) a2  <-- 280
      0x80000720 addi    a3, a3, 1              #; a3  = 34, (wrb) a3  <-- 35
      0x80000718 fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x00100430]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 280, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 35, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 28, (wrb) a5  <-- 3
      0x80000708 mul     a5, a5, a6             #; a5  = 3, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 35, a5  = 30, (wrb) a5  <-- 5
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 280, (wrb) a5  <-- 0x00100438
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 5
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 280, (wrb) a2  <-- 288
      0x80000720 addi    a3, a3, 1              #; a3  = 35, (wrb) a3  <-- 36
      0x80000718 fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x00100438]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 288, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 36, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 28, (wrb) a5  <-- 3
      0x80000708 mul     a5, a5, a6             #; a5  = 3, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 36, a5  = 30, (wrb) a5  <-- 6
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 288, (wrb) a5  <-- 0x00100440
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 6
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 288, (wrb) a2  <-- 296
      0x80000720 addi    a3, a3, 1              #; a3  = 36, (wrb) a3  <-- 37
      0x80000718 fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x00100440]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 296, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 37, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 29, (wrb) a5  <-- 3
      0x80000708 mul     a5, a5, a6             #; a5  = 3, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 37, a5  = 30, (wrb) a5  <-- 7
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 296, (wrb) a5  <-- 0x00100448
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 7
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 296, (wrb) a2  <-- 304
      0x80000720 addi    a3, a3, 1              #; a3  = 37, (wrb) a3  <-- 38
      0x80000718 fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x00100448]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 304, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 38, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 30, (wrb) a5  <-- 3
      0x80000708 mul     a5, a5, a6             #; a5  = 3, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 38, a5  = 30, (wrb) a5  <-- 8
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 304, (wrb) a5  <-- 0x00100450
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 8
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 304, (wrb) a2  <-- 312
      0x80000720 addi    a3, a3, 1              #; a3  = 38, (wrb) a3  <-- 39
      0x80000718 fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x00100450]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 312, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 39, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 31, (wrb) a5  <-- 3
      0x80000708 mul     a5, a5, a6             #; a5  = 3, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 39, a5  = 30, (wrb) a5  <-- 9
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 312, (wrb) a5  <-- 0x00100458
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 9
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 312, (wrb) a2  <-- 320
      0x80000720 addi    a3, a3, 1              #; a3  = 39, (wrb) a3  <-- 40
      0x80000718 fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x00100458]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 320, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 40, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 32, (wrb) a5  <-- 4
      0x80000708 mul     a5, a5, a6             #; a5  = 4, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 40, a5  = 40, (wrb) a5  <-- 0
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 320, (wrb) a5  <-- 0x00100460
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 320, (wrb) a2  <-- 328
      0x80000720 addi    a3, a3, 1              #; a3  = 40, (wrb) a3  <-- 41
      0x80000718 fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x00100460]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 328, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 41, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 32, (wrb) a5  <-- 4
      0x80000708 mul     a5, a5, a6             #; a5  = 4, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 41, a5  = 40, (wrb) a5  <-- 1
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 328, (wrb) a5  <-- 0x00100468
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 1
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 328, (wrb) a2  <-- 336
      0x80000720 addi    a3, a3, 1              #; a3  = 41, (wrb) a3  <-- 42
      0x80000718 fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x00100468]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 336, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 42, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 33, (wrb) a5  <-- 4
      0x80000708 mul     a5, a5, a6             #; a5  = 4, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 42, a5  = 40, (wrb) a5  <-- 2
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 336, (wrb) a5  <-- 0x00100470
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 2
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 336, (wrb) a2  <-- 344
      0x80000720 addi    a3, a3, 1              #; a3  = 42, (wrb) a3  <-- 43
      0x80000718 fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x00100470]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 344, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 43, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 34, (wrb) a5  <-- 4
      0x80000708 mul     a5, a5, a6             #; a5  = 4, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 43, a5  = 40, (wrb) a5  <-- 3
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 344, (wrb) a5  <-- 0x00100478
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 3
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 344, (wrb) a2  <-- 352
      0x80000720 addi    a3, a3, 1              #; a3  = 43, (wrb) a3  <-- 44
      0x80000718 fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x00100478]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 352, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 44, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 35, (wrb) a5  <-- 4
      0x80000708 mul     a5, a5, a6             #; a5  = 4, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 44, a5  = 40, (wrb) a5  <-- 4
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 352, (wrb) a5  <-- 0x00100480
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 4
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 352, (wrb) a2  <-- 360
      0x80000720 addi    a3, a3, 1              #; a3  = 44, (wrb) a3  <-- 45
      0x80000718 fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x00100480]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 360, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 45, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 36, (wrb) a5  <-- 4
      0x80000708 mul     a5, a5, a6             #; a5  = 4, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 45, a5  = 40, (wrb) a5  <-- 5
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 360, (wrb) a5  <-- 0x00100488
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 5
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 360, (wrb) a2  <-- 368
      0x80000720 addi    a3, a3, 1              #; a3  = 45, (wrb) a3  <-- 46
      0x80000718 fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x00100488]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 368, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 46, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 36, (wrb) a5  <-- 4
      0x80000708 mul     a5, a5, a6             #; a5  = 4, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 46, a5  = 40, (wrb) a5  <-- 6
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 368, (wrb) a5  <-- 0x00100490
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 6
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 368, (wrb) a2  <-- 376
      0x80000720 addi    a3, a3, 1              #; a3  = 46, (wrb) a3  <-- 47
      0x80000718 fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x00100490]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 376, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 47, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 37, (wrb) a5  <-- 4
      0x80000708 mul     a5, a5, a6             #; a5  = 4, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 47, a5  = 40, (wrb) a5  <-- 7
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 376, (wrb) a5  <-- 0x00100498
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 7
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 376, (wrb) a2  <-- 384
      0x80000720 addi    a3, a3, 1              #; a3  = 47, (wrb) a3  <-- 48
      0x80000718 fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x00100498]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 384, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 48, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 38, (wrb) a5  <-- 4
      0x80000708 mul     a5, a5, a6             #; a5  = 4, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 48, a5  = 40, (wrb) a5  <-- 8
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 384, (wrb) a5  <-- 0x001004a0
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 8
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 384, (wrb) a2  <-- 392
      0x80000720 addi    a3, a3, 1              #; a3  = 48, (wrb) a3  <-- 49
      0x80000718 fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x001004a0]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 392, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 49, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 39, (wrb) a5  <-- 4
      0x80000708 mul     a5, a5, a6             #; a5  = 4, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 49, a5  = 40, (wrb) a5  <-- 9
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 392, (wrb) a5  <-- 0x001004a8
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 9
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 392, (wrb) a2  <-- 400
      0x80000720 addi    a3, a3, 1              #; a3  = 49, (wrb) a3  <-- 50
      0x80000718 fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x001004a8]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 400, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 50, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 40, (wrb) a5  <-- 5
      0x80000708 mul     a5, a5, a6             #; a5  = 5, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 50, a5  = 50, (wrb) a5  <-- 0
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 400, (wrb) a5  <-- 0x001004b0
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 400, (wrb) a2  <-- 408
      0x80000720 addi    a3, a3, 1              #; a3  = 50, (wrb) a3  <-- 51
      0x80000718 fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x001004b0]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 408, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 51, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 40, (wrb) a5  <-- 5
      0x80000708 mul     a5, a5, a6             #; a5  = 5, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 51, a5  = 50, (wrb) a5  <-- 1
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 408, (wrb) a5  <-- 0x001004b8
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 1
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 408, (wrb) a2  <-- 416
      0x80000720 addi    a3, a3, 1              #; a3  = 51, (wrb) a3  <-- 52
      0x80000718 fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x001004b8]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 416, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 52, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 41, (wrb) a5  <-- 5
      0x80000708 mul     a5, a5, a6             #; a5  = 5, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 52, a5  = 50, (wrb) a5  <-- 2
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 416, (wrb) a5  <-- 0x001004c0
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 2
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 416, (wrb) a2  <-- 424
      0x80000720 addi    a3, a3, 1              #; a3  = 52, (wrb) a3  <-- 53
      0x80000718 fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x001004c0]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 424, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 53, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 42, (wrb) a5  <-- 5
      0x80000708 mul     a5, a5, a6             #; a5  = 5, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 53, a5  = 50, (wrb) a5  <-- 3
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 424, (wrb) a5  <-- 0x001004c8
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 3
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 424, (wrb) a2  <-- 432
      0x80000720 addi    a3, a3, 1              #; a3  = 53, (wrb) a3  <-- 54
      0x80000718 fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x001004c8]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 432, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 54, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 43, (wrb) a5  <-- 5
      0x80000708 mul     a5, a5, a6             #; a5  = 5, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 54, a5  = 50, (wrb) a5  <-- 4
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 432, (wrb) a5  <-- 0x001004d0
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 4
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 432, (wrb) a2  <-- 440
      0x80000720 addi    a3, a3, 1              #; a3  = 54, (wrb) a3  <-- 55
      0x80000718 fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x001004d0]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 440, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 55, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 44, (wrb) a5  <-- 5
      0x80000708 mul     a5, a5, a6             #; a5  = 5, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 55, a5  = 50, (wrb) a5  <-- 5
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 440, (wrb) a5  <-- 0x001004d8
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 5
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 440, (wrb) a2  <-- 448
      0x80000720 addi    a3, a3, 1              #; a3  = 55, (wrb) a3  <-- 56
      0x80000718 fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x001004d8]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 448, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 56, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 44, (wrb) a5  <-- 5
      0x80000708 mul     a5, a5, a6             #; a5  = 5, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 56, a5  = 50, (wrb) a5  <-- 6
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 448, (wrb) a5  <-- 0x001004e0
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 6
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 448, (wrb) a2  <-- 456
      0x80000720 addi    a3, a3, 1              #; a3  = 56, (wrb) a3  <-- 57
      0x80000718 fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x001004e0]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 456, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 57, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 45, (wrb) a5  <-- 5
      0x80000708 mul     a5, a5, a6             #; a5  = 5, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 57, a5  = 50, (wrb) a5  <-- 7
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 456, (wrb) a5  <-- 0x001004e8
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 7
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 456, (wrb) a2  <-- 464
      0x80000720 addi    a3, a3, 1              #; a3  = 57, (wrb) a3  <-- 58
      0x80000718 fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x001004e8]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 464, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 58, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 46, (wrb) a5  <-- 5
      0x80000708 mul     a5, a5, a6             #; a5  = 5, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 58, a5  = 50, (wrb) a5  <-- 8
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 464, (wrb) a5  <-- 0x001004f0
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 8
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 464, (wrb) a2  <-- 472
      0x80000720 addi    a3, a3, 1              #; a3  = 58, (wrb) a3  <-- 59
      0x80000718 fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x001004f0]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 472, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 59, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 47, (wrb) a5  <-- 5
      0x80000708 mul     a5, a5, a6             #; a5  = 5, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 59, a5  = 50, (wrb) a5  <-- 9
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 472, (wrb) a5  <-- 0x001004f8
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 9
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 472, (wrb) a2  <-- 480
      0x80000720 addi    a3, a3, 1              #; a3  = 59, (wrb) a3  <-- 60
      0x80000718 fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x001004f8]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 480, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 60, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 48, (wrb) a5  <-- 6
      0x80000708 mul     a5, a5, a6             #; a5  = 6, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 60, a5  = 60, (wrb) a5  <-- 0
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 480, (wrb) a5  <-- 0x00100500
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 480, (wrb) a2  <-- 488
      0x80000720 addi    a3, a3, 1              #; a3  = 60, (wrb) a3  <-- 61
      0x80000718 fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x00100500]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 488, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 61, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 48, (wrb) a5  <-- 6
      0x80000708 mul     a5, a5, a6             #; a5  = 6, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 61, a5  = 60, (wrb) a5  <-- 1
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 488, (wrb) a5  <-- 0x00100508
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 1
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 488, (wrb) a2  <-- 496
      0x80000720 addi    a3, a3, 1              #; a3  = 61, (wrb) a3  <-- 62
      0x80000718 fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x00100508]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 496, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 62, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 49, (wrb) a5  <-- 6
      0x80000708 mul     a5, a5, a6             #; a5  = 6, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 62, a5  = 60, (wrb) a5  <-- 2
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 496, (wrb) a5  <-- 0x00100510
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 2
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 496, (wrb) a2  <-- 504
      0x80000720 addi    a3, a3, 1              #; a3  = 62, (wrb) a3  <-- 63
      0x80000718 fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x00100510]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 504, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 63, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 50, (wrb) a5  <-- 6
      0x80000708 mul     a5, a5, a6             #; a5  = 6, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 63, a5  = 60, (wrb) a5  <-- 3
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 504, (wrb) a5  <-- 0x00100518
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 3
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 504, (wrb) a2  <-- 512
      0x80000720 addi    a3, a3, 1              #; a3  = 63, (wrb) a3  <-- 64
      0x80000718 fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x00100518]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 512, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 64, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 51, (wrb) a5  <-- 6
      0x80000708 mul     a5, a5, a6             #; a5  = 6, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 64, a5  = 60, (wrb) a5  <-- 4
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 512, (wrb) a5  <-- 0x00100520
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 4
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 512, (wrb) a2  <-- 520
      0x80000720 addi    a3, a3, 1              #; a3  = 64, (wrb) a3  <-- 65
      0x80000718 fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x00100520]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 520, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 65, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 52, (wrb) a5  <-- 6
      0x80000708 mul     a5, a5, a6             #; a5  = 6, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 65, a5  = 60, (wrb) a5  <-- 5
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 520, (wrb) a5  <-- 0x00100528
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 5
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 520, (wrb) a2  <-- 528
      0x80000720 addi    a3, a3, 1              #; a3  = 65, (wrb) a3  <-- 66
      0x80000718 fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x00100528]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 528, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 66, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 52, (wrb) a5  <-- 6
      0x80000708 mul     a5, a5, a6             #; a5  = 6, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 66, a5  = 60, (wrb) a5  <-- 6
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 528, (wrb) a5  <-- 0x00100530
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 6
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 528, (wrb) a2  <-- 536
      0x80000720 addi    a3, a3, 1              #; a3  = 66, (wrb) a3  <-- 67
      0x80000718 fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x00100530]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 536, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 67, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 53, (wrb) a5  <-- 6
      0x80000708 mul     a5, a5, a6             #; a5  = 6, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 67, a5  = 60, (wrb) a5  <-- 7
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 536, (wrb) a5  <-- 0x00100538
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 7
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 536, (wrb) a2  <-- 544
      0x80000720 addi    a3, a3, 1              #; a3  = 67, (wrb) a3  <-- 68
      0x80000718 fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x00100538]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 544, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 68, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 54, (wrb) a5  <-- 6
      0x80000708 mul     a5, a5, a6             #; a5  = 6, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 68, a5  = 60, (wrb) a5  <-- 8
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 544, (wrb) a5  <-- 0x00100540
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 8
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 544, (wrb) a2  <-- 552
      0x80000720 addi    a3, a3, 1              #; a3  = 68, (wrb) a3  <-- 69
      0x80000718 fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x00100540]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 552, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 69, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 55, (wrb) a5  <-- 6
      0x80000708 mul     a5, a5, a6             #; a5  = 6, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 69, a5  = 60, (wrb) a5  <-- 9
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 552, (wrb) a5  <-- 0x00100548
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 9
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 552, (wrb) a2  <-- 560
      0x80000720 addi    a3, a3, 1              #; a3  = 69, (wrb) a3  <-- 70
      0x80000718 fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x00100548]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 560, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 70, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 56, (wrb) a5  <-- 7
      0x80000708 mul     a5, a5, a6             #; a5  = 7, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 70, a5  = 70, (wrb) a5  <-- 0
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 560, (wrb) a5  <-- 0x00100550
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 560, (wrb) a2  <-- 568
      0x80000720 addi    a3, a3, 1              #; a3  = 70, (wrb) a3  <-- 71
      0x80000718 fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x00100550]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 568, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 71, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 56, (wrb) a5  <-- 7
      0x80000708 mul     a5, a5, a6             #; a5  = 7, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 71, a5  = 70, (wrb) a5  <-- 1
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 568, (wrb) a5  <-- 0x00100558
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 1
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 568, (wrb) a2  <-- 576
      0x80000720 addi    a3, a3, 1              #; a3  = 71, (wrb) a3  <-- 72
      0x80000718 fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x00100558]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 576, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 72, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 57, (wrb) a5  <-- 7
      0x80000708 mul     a5, a5, a6             #; a5  = 7, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 72, a5  = 70, (wrb) a5  <-- 2
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 576, (wrb) a5  <-- 0x00100560
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 2
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 576, (wrb) a2  <-- 584
      0x80000720 addi    a3, a3, 1              #; a3  = 72, (wrb) a3  <-- 73
      0x80000718 fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x00100560]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 584, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 73, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 58, (wrb) a5  <-- 7
      0x80000708 mul     a5, a5, a6             #; a5  = 7, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 73, a5  = 70, (wrb) a5  <-- 3
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 584, (wrb) a5  <-- 0x00100568
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 3
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 584, (wrb) a2  <-- 592
      0x80000720 addi    a3, a3, 1              #; a3  = 73, (wrb) a3  <-- 74
      0x80000718 fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x00100568]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 592, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 74, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 59, (wrb) a5  <-- 7
      0x80000708 mul     a5, a5, a6             #; a5  = 7, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 74, a5  = 70, (wrb) a5  <-- 4
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 592, (wrb) a5  <-- 0x00100570
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 4
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 592, (wrb) a2  <-- 600
      0x80000720 addi    a3, a3, 1              #; a3  = 74, (wrb) a3  <-- 75
      0x80000718 fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x00100570]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 600, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 75, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 60, (wrb) a5  <-- 7
      0x80000708 mul     a5, a5, a6             #; a5  = 7, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 75, a5  = 70, (wrb) a5  <-- 5
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 600, (wrb) a5  <-- 0x00100578
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 5
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 600, (wrb) a2  <-- 608
      0x80000720 addi    a3, a3, 1              #; a3  = 75, (wrb) a3  <-- 76
      0x80000718 fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x00100578]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 608, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 76, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 60, (wrb) a5  <-- 7
      0x80000708 mul     a5, a5, a6             #; a5  = 7, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 76, a5  = 70, (wrb) a5  <-- 6
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 608, (wrb) a5  <-- 0x00100580
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 6
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 608, (wrb) a2  <-- 616
      0x80000720 addi    a3, a3, 1              #; a3  = 76, (wrb) a3  <-- 77
      0x80000718 fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x00100580]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 616, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 77, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 61, (wrb) a5  <-- 7
      0x80000708 mul     a5, a5, a6             #; a5  = 7, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 77, a5  = 70, (wrb) a5  <-- 7
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 616, (wrb) a5  <-- 0x00100588
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 7
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 616, (wrb) a2  <-- 624
      0x80000720 addi    a3, a3, 1              #; a3  = 77, (wrb) a3  <-- 78
      0x80000718 fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x00100588]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 624, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 78, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 62, (wrb) a5  <-- 7
      0x80000708 mul     a5, a5, a6             #; a5  = 7, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 78, a5  = 70, (wrb) a5  <-- 8
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 624, (wrb) a5  <-- 0x00100590
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 8
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 624, (wrb) a2  <-- 632
      0x80000720 addi    a3, a3, 1              #; a3  = 78, (wrb) a3  <-- 79
      0x80000718 fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x00100590]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 632, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 79, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 63, (wrb) a5  <-- 7
      0x80000708 mul     a5, a5, a6             #; a5  = 7, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 79, a5  = 70, (wrb) a5  <-- 9
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 632, (wrb) a5  <-- 0x00100598
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 9
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 632, (wrb) a2  <-- 640
      0x80000720 addi    a3, a3, 1              #; a3  = 79, (wrb) a3  <-- 80
      0x80000718 fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x00100598]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 640, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 80, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 64, (wrb) a5  <-- 8
      0x80000708 mul     a5, a5, a6             #; a5  = 8, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 80, a5  = 80, (wrb) a5  <-- 0
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 640, (wrb) a5  <-- 0x001005a0
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 640, (wrb) a2  <-- 648
      0x80000720 addi    a3, a3, 1              #; a3  = 80, (wrb) a3  <-- 81
      0x80000718 fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x001005a0]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 648, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 81, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 64, (wrb) a5  <-- 8
      0x80000708 mul     a5, a5, a6             #; a5  = 8, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 81, a5  = 80, (wrb) a5  <-- 1
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 648, (wrb) a5  <-- 0x001005a8
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 1
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 648, (wrb) a2  <-- 656
      0x80000720 addi    a3, a3, 1              #; a3  = 81, (wrb) a3  <-- 82
      0x80000718 fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x001005a8]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 656, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 82, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 65, (wrb) a5  <-- 8
      0x80000708 mul     a5, a5, a6             #; a5  = 8, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 82, a5  = 80, (wrb) a5  <-- 2
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 656, (wrb) a5  <-- 0x001005b0
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 2
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 656, (wrb) a2  <-- 664
      0x80000720 addi    a3, a3, 1              #; a3  = 82, (wrb) a3  <-- 83
      0x80000718 fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x001005b0]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 664, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 83, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 66, (wrb) a5  <-- 8
      0x80000708 mul     a5, a5, a6             #; a5  = 8, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 83, a5  = 80, (wrb) a5  <-- 3
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 664, (wrb) a5  <-- 0x001005b8
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 3
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 664, (wrb) a2  <-- 672
      0x80000720 addi    a3, a3, 1              #; a3  = 83, (wrb) a3  <-- 84
      0x80000718 fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x001005b8]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 672, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 84, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 67, (wrb) a5  <-- 8
      0x80000708 mul     a5, a5, a6             #; a5  = 8, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 84, a5  = 80, (wrb) a5  <-- 4
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 672, (wrb) a5  <-- 0x001005c0
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 4
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 672, (wrb) a2  <-- 680
      0x80000720 addi    a3, a3, 1              #; a3  = 84, (wrb) a3  <-- 85
      0x80000718 fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x001005c0]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 680, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 85, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 68, (wrb) a5  <-- 8
      0x80000708 mul     a5, a5, a6             #; a5  = 8, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 85, a5  = 80, (wrb) a5  <-- 5
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 680, (wrb) a5  <-- 0x001005c8
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 5
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 680, (wrb) a2  <-- 688
      0x80000720 addi    a3, a3, 1              #; a3  = 85, (wrb) a3  <-- 86
      0x80000718 fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x001005c8]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 688, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 86, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 68, (wrb) a5  <-- 8
      0x80000708 mul     a5, a5, a6             #; a5  = 8, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 86, a5  = 80, (wrb) a5  <-- 6
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 688, (wrb) a5  <-- 0x001005d0
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 6
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 688, (wrb) a2  <-- 696
      0x80000720 addi    a3, a3, 1              #; a3  = 86, (wrb) a3  <-- 87
      0x80000718 fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x001005d0]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 696, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 87, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 69, (wrb) a5  <-- 8
      0x80000708 mul     a5, a5, a6             #; a5  = 8, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 87, a5  = 80, (wrb) a5  <-- 7
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 696, (wrb) a5  <-- 0x001005d8
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 7
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 696, (wrb) a2  <-- 704
      0x80000720 addi    a3, a3, 1              #; a3  = 87, (wrb) a3  <-- 88
      0x80000718 fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x001005d8]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 704, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 88, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 70, (wrb) a5  <-- 8
      0x80000708 mul     a5, a5, a6             #; a5  = 8, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 88, a5  = 80, (wrb) a5  <-- 8
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 704, (wrb) a5  <-- 0x001005e0
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 8
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 704, (wrb) a2  <-- 712
      0x80000720 addi    a3, a3, 1              #; a3  = 88, (wrb) a3  <-- 89
      0x80000718 fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x001005e0]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 712, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 89, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 71, (wrb) a5  <-- 8
      0x80000708 mul     a5, a5, a6             #; a5  = 8, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 89, a5  = 80, (wrb) a5  <-- 9
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 712, (wrb) a5  <-- 0x001005e8
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 9
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 712, (wrb) a2  <-- 720
      0x80000720 addi    a3, a3, 1              #; a3  = 89, (wrb) a3  <-- 90
      0x80000718 fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x001005e8]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 720, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 90, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 72, (wrb) a5  <-- 9
      0x80000708 mul     a5, a5, a6             #; a5  = 9, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 90, a5  = 90, (wrb) a5  <-- 0
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 720, (wrb) a5  <-- 0x001005f0
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 720, (wrb) a2  <-- 728
      0x80000720 addi    a3, a3, 1              #; a3  = 90, (wrb) a3  <-- 91
      0x80000718 fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x001005f0]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 728, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 91, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 72, (wrb) a5  <-- 9
      0x80000708 mul     a5, a5, a6             #; a5  = 9, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 91, a5  = 90, (wrb) a5  <-- 1
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 728, (wrb) a5  <-- 0x001005f8
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 1
                                                #; (f:fpu) ft0  <-- 1.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 728, (wrb) a2  <-- 736
      0x80000720 addi    a3, a3, 1              #; a3  = 91, (wrb) a3  <-- 92
      0x80000718 fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x001005f8]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 736, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 92, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 73, (wrb) a5  <-- 9
      0x80000708 mul     a5, a5, a6             #; a5  = 9, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 92, a5  = 90, (wrb) a5  <-- 2
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 736, (wrb) a5  <-- 0x00100600
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 2
                                                #; (f:fpu) ft0  <-- 2.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 736, (wrb) a2  <-- 744
      0x80000720 addi    a3, a3, 1              #; a3  = 92, (wrb) a3  <-- 93
      0x80000718 fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x00100600]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 744, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 93, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 74, (wrb) a5  <-- 9
      0x80000708 mul     a5, a5, a6             #; a5  = 9, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 93, a5  = 90, (wrb) a5  <-- 3
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 744, (wrb) a5  <-- 0x00100608
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 3
                                                #; (f:fpu) ft0  <-- 3.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 744, (wrb) a2  <-- 752
      0x80000720 addi    a3, a3, 1              #; a3  = 93, (wrb) a3  <-- 94
      0x80000718 fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x00100608]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 752, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 94, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 75, (wrb) a5  <-- 9
      0x80000708 mul     a5, a5, a6             #; a5  = 9, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 94, a5  = 90, (wrb) a5  <-- 4
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 752, (wrb) a5  <-- 0x00100610
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 4
                                                #; (f:fpu) ft0  <-- 4.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 752, (wrb) a2  <-- 760
      0x80000720 addi    a3, a3, 1              #; a3  = 94, (wrb) a3  <-- 95
      0x80000718 fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x00100610]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 760, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 95, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 76, (wrb) a5  <-- 9
      0x80000708 mul     a5, a5, a6             #; a5  = 9, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 95, a5  = 90, (wrb) a5  <-- 5
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 760, (wrb) a5  <-- 0x00100618
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 5
                                                #; (f:fpu) ft0  <-- 5.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 760, (wrb) a2  <-- 768
      0x80000720 addi    a3, a3, 1              #; a3  = 95, (wrb) a3  <-- 96
      0x80000718 fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x00100618]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 768, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 96, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 76, (wrb) a5  <-- 9
      0x80000708 mul     a5, a5, a6             #; a5  = 9, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 96, a5  = 90, (wrb) a5  <-- 6
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 768, (wrb) a5  <-- 0x00100620
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 6
                                                #; (f:fpu) ft0  <-- 6.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 768, (wrb) a2  <-- 776
      0x80000720 addi    a3, a3, 1              #; a3  = 96, (wrb) a3  <-- 97
      0x80000718 fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x00100620]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 776, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 97, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 77, (wrb) a5  <-- 9
      0x80000708 mul     a5, a5, a6             #; a5  = 9, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 97, a5  = 90, (wrb) a5  <-- 7
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 776, (wrb) a5  <-- 0x00100628
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 7
                                                #; (f:fpu) ft0  <-- 7.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 776, (wrb) a2  <-- 784
      0x80000720 addi    a3, a3, 1              #; a3  = 97, (wrb) a3  <-- 98
      0x80000718 fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x00100628]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 784, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 98, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 78, (wrb) a5  <-- 9
      0x80000708 mul     a5, a5, a6             #; a5  = 9, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 98, a5  = 90, (wrb) a5  <-- 8
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 784, (wrb) a5  <-- 0x00100630
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 8
                                                #; (f:fpu) ft0  <-- 8.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 784, (wrb) a2  <-- 792
      0x80000720 addi    a3, a3, 1              #; a3  = 98, (wrb) a3  <-- 99
      0x80000718 fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x00100630]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 792, a7  = 800, taken, goto 0x80000700
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x80000700 mulhu   a5, a3, a4             #; a3  = 99, a4  = 0xcccccccd
                                                #; (acc) a5  <-- 0x0037d793
      0x80000704 srli    a5, a5, 3              #; a5  = 79, (wrb) a5  <-- 9
      0x80000708 mul     a5, a5, a6             #; a5  = 9, a6  = 10
                                                #; (acc) a5  <-- 0x40f687b3
      0x8000070c sub     a5, a3, a5             #; a3  = 99, a5  = 90, (wrb) a5  <-- 9
      0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 792, (wrb) a5  <-- 0x00100638
      0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 9
                                                #; (f:fpu) ft0  <-- 9.0
; init_data (bench_sp.c:28)
;  in main (bench_sp.c:42)
      0x8000071c addi    a2, a2, 8              #; a2  = 792, (wrb) a2  <-- 800
      0x80000720 addi    a3, a3, 1              #; a3  = 99, (wrb) a3  <-- 100
      0x80000718 fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x00100638]
      0x80000724 bne     a2, a7, pc - 36        #; a2  = 800, a7  = 800, not taken
; main (bench_sp.c:0)
      0x80000728 li      a3, 0                  #; (wrb) a3  <-- 0
      0x8000072c fcvt.d.w fs0, zero             #; ac1  = 0
                                                #; (f:fpu) fs0  <-- 0.0
; benchmark_get_cycle (benchmark.c:8)
;  in main (bench_sp.c:44)
      0x80000730 csrr    a2, mcycle             #; mcycle = 4927, (wrb) a2  <-- 4927
; benchmark_get_cycle (benchmark.c:0)
;  in main (bench_sp.c:44)
      0x80000734 li      a4, 800                #; (wrb) a4  <-- 800
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 0, (wrb) a5  <-- 0x00100000
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100000]
                                                #; (f:lsu) ft0  <-- 0.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 0, (wrb) a5  <-- 0x00100320
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 0, (wrb) a3  <-- 8
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100320]
                                                #; (f:lsu) ft1  <-- 0.0
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 0.0
                                                #; (f:fpu) fs0  <-- 0.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 8, a4  = 800, taken, goto 0x80000738
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 8, (wrb) a5  <-- 0x00100008
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 8, (wrb) a5  <-- 0x00100328
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100008]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 8, (wrb) a3  <-- 16
                                                #; (f:lsu) ft0  <-- 1.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100328]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 16, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 1.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 16, (wrb) a5  <-- 0x00100010
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 0.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 16, (wrb) a5  <-- 0x00100330
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100010], (f:fpu) fs0  <-- 1.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 16, (wrb) a3  <-- 24
                                                #; (f:lsu) ft0  <-- 2.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100330]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 24, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 2.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 24, (wrb) a5  <-- 0x00100018
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 1.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 24, (wrb) a5  <-- 0x00100338
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100018], (f:fpu) fs0  <-- 5.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 24, (wrb) a3  <-- 32
                                                #; (f:lsu) ft0  <-- 3.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100338]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 32, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 3.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 32, (wrb) a5  <-- 0x00100020
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 5.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 32, (wrb) a5  <-- 0x00100340
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100020], (f:fpu) fs0  <-- 14.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 32, (wrb) a3  <-- 40
                                                #; (f:lsu) ft0  <-- 4.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100340]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 40, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 4.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 40, (wrb) a5  <-- 0x00100028
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 14.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 40, (wrb) a5  <-- 0x00100348
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100028], (f:fpu) fs0  <-- 30.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 40, (wrb) a3  <-- 48
                                                #; (f:lsu) ft0  <-- 5.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100348]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 48, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 5.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 48, (wrb) a5  <-- 0x00100030
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 30.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 48, (wrb) a5  <-- 0x00100350
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100030], (f:fpu) fs0  <-- 55.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 48, (wrb) a3  <-- 56
                                                #; (f:lsu) ft0  <-- 6.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100350]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 56, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 6.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 56, (wrb) a5  <-- 0x00100038
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 55.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 56, (wrb) a5  <-- 0x00100358
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100038], (f:fpu) fs0  <-- 91.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 56, (wrb) a3  <-- 64
                                                #; (f:lsu) ft0  <-- 7.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100358]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 64, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 7.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 64, (wrb) a5  <-- 0x00100040
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 91.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 64, (wrb) a5  <-- 0x00100360
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100040], (f:fpu) fs0  <-- 140.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 64, (wrb) a3  <-- 72
                                                #; (f:lsu) ft0  <-- 8.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100360]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 72, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 8.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 72, (wrb) a5  <-- 0x00100048
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 140.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 72, (wrb) a5  <-- 0x00100368
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100048], (f:fpu) fs0  <-- 204.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 72, (wrb) a3  <-- 80
                                                #; (f:lsu) ft0  <-- 9.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100368]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 80, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 9.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 80, (wrb) a5  <-- 0x00100050
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 204.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 80, (wrb) a5  <-- 0x00100370
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100050], (f:fpu) fs0  <-- 285.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 80, (wrb) a3  <-- 88
                                                #; (f:lsu) ft0  <-- 0.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100370]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 88, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 0.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 88, (wrb) a5  <-- 0x00100058
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 285.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 88, (wrb) a5  <-- 0x00100378
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100058], (f:fpu) fs0  <-- 285.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 88, (wrb) a3  <-- 96
                                                #; (f:lsu) ft0  <-- 1.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100378]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 96, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 1.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 96, (wrb) a5  <-- 0x00100060
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 285.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 96, (wrb) a5  <-- 0x00100380
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100060], (f:fpu) fs0  <-- 286.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 96, (wrb) a3  <-- 104
                                                #; (f:lsu) ft0  <-- 2.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100380]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 104, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 2.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 104, (wrb) a5  <-- 0x00100068
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 286.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 104, (wrb) a5  <-- 0x00100388
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100068], (f:fpu) fs0  <-- 290.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 104, (wrb) a3  <-- 112
                                                #; (f:lsu) ft0  <-- 3.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100388]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 112, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 3.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 112, (wrb) a5  <-- 0x00100070
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 290.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 112, (wrb) a5  <-- 0x00100390
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100070], (f:fpu) fs0  <-- 299.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 112, (wrb) a3  <-- 120
                                                #; (f:lsu) ft0  <-- 4.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100390]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 120, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 4.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 120, (wrb) a5  <-- 0x00100078
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 299.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 120, (wrb) a5  <-- 0x00100398
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100078], (f:fpu) fs0  <-- 315.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 120, (wrb) a3  <-- 128
                                                #; (f:lsu) ft0  <-- 5.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100398]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 128, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 5.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 128, (wrb) a5  <-- 0x00100080
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 315.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 128, (wrb) a5  <-- 0x001003a0
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100080], (f:fpu) fs0  <-- 340.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 128, (wrb) a3  <-- 136
                                                #; (f:lsu) ft0  <-- 6.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001003a0]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 136, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 6.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 136, (wrb) a5  <-- 0x00100088
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 340.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 136, (wrb) a5  <-- 0x001003a8
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100088], (f:fpu) fs0  <-- 376.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 136, (wrb) a3  <-- 144
                                                #; (f:lsu) ft0  <-- 7.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001003a8]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 144, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 7.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 144, (wrb) a5  <-- 0x00100090
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 376.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 144, (wrb) a5  <-- 0x001003b0
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100090], (f:fpu) fs0  <-- 425.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 144, (wrb) a3  <-- 152
                                                #; (f:lsu) ft0  <-- 8.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001003b0]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 152, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 8.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 152, (wrb) a5  <-- 0x00100098
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 425.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 152, (wrb) a5  <-- 0x001003b8
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100098], (f:fpu) fs0  <-- 489.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 152, (wrb) a3  <-- 160
                                                #; (f:lsu) ft0  <-- 9.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001003b8]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 160, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 9.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 160, (wrb) a5  <-- 0x001000a0
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 489.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 160, (wrb) a5  <-- 0x001003c0
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001000a0], (f:fpu) fs0  <-- 570.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 160, (wrb) a3  <-- 168
                                                #; (f:lsu) ft0  <-- 0.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001003c0]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 168, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 0.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 168, (wrb) a5  <-- 0x001000a8
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 570.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 168, (wrb) a5  <-- 0x001003c8
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001000a8], (f:fpu) fs0  <-- 570.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 168, (wrb) a3  <-- 176
                                                #; (f:lsu) ft0  <-- 1.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001003c8]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 176, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 1.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 176, (wrb) a5  <-- 0x001000b0
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 570.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 176, (wrb) a5  <-- 0x001003d0
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001000b0], (f:fpu) fs0  <-- 571.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 176, (wrb) a3  <-- 184
                                                #; (f:lsu) ft0  <-- 2.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001003d0]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 184, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 2.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 184, (wrb) a5  <-- 0x001000b8
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 571.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 184, (wrb) a5  <-- 0x001003d8
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001000b8], (f:fpu) fs0  <-- 575.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 184, (wrb) a3  <-- 192
                                                #; (f:lsu) ft0  <-- 3.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001003d8]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 192, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 3.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 192, (wrb) a5  <-- 0x001000c0
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 575.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 192, (wrb) a5  <-- 0x001003e0
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001000c0], (f:fpu) fs0  <-- 584.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 192, (wrb) a3  <-- 200
                                                #; (f:lsu) ft0  <-- 4.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001003e0]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 200, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 4.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 200, (wrb) a5  <-- 0x001000c8
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 584.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 200, (wrb) a5  <-- 0x001003e8
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001000c8], (f:fpu) fs0  <-- 600.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 200, (wrb) a3  <-- 208
                                                #; (f:lsu) ft0  <-- 5.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001003e8]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 208, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 5.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 208, (wrb) a5  <-- 0x001000d0
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 600.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 208, (wrb) a5  <-- 0x001003f0
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001000d0], (f:fpu) fs0  <-- 625.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 208, (wrb) a3  <-- 216
                                                #; (f:lsu) ft0  <-- 6.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001003f0]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 216, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 6.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 216, (wrb) a5  <-- 0x001000d8
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 625.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 216, (wrb) a5  <-- 0x001003f8
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001000d8], (f:fpu) fs0  <-- 661.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 216, (wrb) a3  <-- 224
                                                #; (f:lsu) ft0  <-- 7.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001003f8]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 224, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 7.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 224, (wrb) a5  <-- 0x001000e0
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 661.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 224, (wrb) a5  <-- 0x00100400
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001000e0], (f:fpu) fs0  <-- 710.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 224, (wrb) a3  <-- 232
                                                #; (f:lsu) ft0  <-- 8.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100400]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 232, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 8.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 232, (wrb) a5  <-- 0x001000e8
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 710.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 232, (wrb) a5  <-- 0x00100408
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001000e8], (f:fpu) fs0  <-- 774.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 232, (wrb) a3  <-- 240
                                                #; (f:lsu) ft0  <-- 9.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100408]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 240, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 9.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 240, (wrb) a5  <-- 0x001000f0
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 774.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 240, (wrb) a5  <-- 0x00100410
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001000f0], (f:fpu) fs0  <-- 855.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 240, (wrb) a3  <-- 248
                                                #; (f:lsu) ft0  <-- 0.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100410]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 248, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 0.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 248, (wrb) a5  <-- 0x001000f8
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 855.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 248, (wrb) a5  <-- 0x00100418
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001000f8], (f:fpu) fs0  <-- 855.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 248, (wrb) a3  <-- 256
                                                #; (f:lsu) ft0  <-- 1.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100418]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 256, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 1.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 256, (wrb) a5  <-- 0x00100100
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 855.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 256, (wrb) a5  <-- 0x00100420
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100100], (f:fpu) fs0  <-- 856.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 256, (wrb) a3  <-- 264
                                                #; (f:lsu) ft0  <-- 2.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100420]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 264, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 2.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 264, (wrb) a5  <-- 0x00100108
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 856.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 264, (wrb) a5  <-- 0x00100428
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100108], (f:fpu) fs0  <-- 860.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 264, (wrb) a3  <-- 272
                                                #; (f:lsu) ft0  <-- 3.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100428]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 272, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 3.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 272, (wrb) a5  <-- 0x00100110
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 860.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 272, (wrb) a5  <-- 0x00100430
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100110], (f:fpu) fs0  <-- 869.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 272, (wrb) a3  <-- 280
                                                #; (f:lsu) ft0  <-- 4.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100430]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 280, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 4.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 280, (wrb) a5  <-- 0x00100118
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 869.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 280, (wrb) a5  <-- 0x00100438
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100118], (f:fpu) fs0  <-- 885.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 280, (wrb) a3  <-- 288
                                                #; (f:lsu) ft0  <-- 5.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100438]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 288, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 5.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 288, (wrb) a5  <-- 0x00100120
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 885.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 288, (wrb) a5  <-- 0x00100440
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100120], (f:fpu) fs0  <-- 910.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 288, (wrb) a3  <-- 296
                                                #; (f:lsu) ft0  <-- 6.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100440]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 296, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 6.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 296, (wrb) a5  <-- 0x00100128
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 910.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 296, (wrb) a5  <-- 0x00100448
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100128], (f:fpu) fs0  <-- 946.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 296, (wrb) a3  <-- 304
                                                #; (f:lsu) ft0  <-- 7.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100448]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 304, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 7.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 304, (wrb) a5  <-- 0x00100130
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 946.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 304, (wrb) a5  <-- 0x00100450
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100130], (f:fpu) fs0  <-- 995.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 304, (wrb) a3  <-- 312
                                                #; (f:lsu) ft0  <-- 8.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100450]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 312, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 8.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 312, (wrb) a5  <-- 0x00100138
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 995.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 312, (wrb) a5  <-- 0x00100458
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100138], (f:fpu) fs0  <-- 1059.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 312, (wrb) a3  <-- 320
                                                #; (f:lsu) ft0  <-- 9.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100458]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 320, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 9.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 320, (wrb) a5  <-- 0x00100140
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 1059.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 320, (wrb) a5  <-- 0x00100460
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100140], (f:fpu) fs0  <-- 1140.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 320, (wrb) a3  <-- 328
                                                #; (f:lsu) ft0  <-- 0.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100460]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 328, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 0.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 328, (wrb) a5  <-- 0x00100148
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 1140.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 328, (wrb) a5  <-- 0x00100468
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100148], (f:fpu) fs0  <-- 1140.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 328, (wrb) a3  <-- 336
                                                #; (f:lsu) ft0  <-- 1.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100468]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 336, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 1.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 336, (wrb) a5  <-- 0x00100150
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 1140.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 336, (wrb) a5  <-- 0x00100470
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100150], (f:fpu) fs0  <-- 1141.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 336, (wrb) a3  <-- 344
                                                #; (f:lsu) ft0  <-- 2.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100470]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 344, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 2.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 344, (wrb) a5  <-- 0x00100158
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 1141.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 344, (wrb) a5  <-- 0x00100478
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100158], (f:fpu) fs0  <-- 1145.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 344, (wrb) a3  <-- 352
                                                #; (f:lsu) ft0  <-- 3.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100478]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 352, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 3.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 352, (wrb) a5  <-- 0x00100160
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 1145.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 352, (wrb) a5  <-- 0x00100480
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100160], (f:fpu) fs0  <-- 1154.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 352, (wrb) a3  <-- 360
                                                #; (f:lsu) ft0  <-- 4.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100480]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 360, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 4.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 360, (wrb) a5  <-- 0x00100168
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 1154.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 360, (wrb) a5  <-- 0x00100488
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100168], (f:fpu) fs0  <-- 1170.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 360, (wrb) a3  <-- 368
                                                #; (f:lsu) ft0  <-- 5.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100488]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 368, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 5.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 368, (wrb) a5  <-- 0x00100170
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 1170.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 368, (wrb) a5  <-- 0x00100490
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100170], (f:fpu) fs0  <-- 1195.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 368, (wrb) a3  <-- 376
                                                #; (f:lsu) ft0  <-- 6.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100490]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 376, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 6.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 376, (wrb) a5  <-- 0x00100178
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 1195.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 376, (wrb) a5  <-- 0x00100498
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100178], (f:fpu) fs0  <-- 1231.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 376, (wrb) a3  <-- 384
                                                #; (f:lsu) ft0  <-- 7.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100498]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 384, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 7.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 384, (wrb) a5  <-- 0x00100180
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 1231.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 384, (wrb) a5  <-- 0x001004a0
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100180], (f:fpu) fs0  <-- 1280.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 384, (wrb) a3  <-- 392
                                                #; (f:lsu) ft0  <-- 8.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001004a0]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 392, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 8.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 392, (wrb) a5  <-- 0x00100188
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 1280.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 392, (wrb) a5  <-- 0x001004a8
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100188], (f:fpu) fs0  <-- 1344.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 392, (wrb) a3  <-- 400
                                                #; (f:lsu) ft0  <-- 9.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001004a8]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 400, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 9.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 400, (wrb) a5  <-- 0x00100190
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 1344.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 400, (wrb) a5  <-- 0x001004b0
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100190], (f:fpu) fs0  <-- 1425.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 400, (wrb) a3  <-- 408
                                                #; (f:lsu) ft0  <-- 0.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001004b0]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 408, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 0.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 408, (wrb) a5  <-- 0x00100198
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 1425.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 408, (wrb) a5  <-- 0x001004b8
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100198], (f:fpu) fs0  <-- 1425.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 408, (wrb) a3  <-- 416
                                                #; (f:lsu) ft0  <-- 1.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001004b8]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 416, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 1.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 416, (wrb) a5  <-- 0x001001a0
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 1425.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 416, (wrb) a5  <-- 0x001004c0
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001001a0], (f:fpu) fs0  <-- 1426.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 416, (wrb) a3  <-- 424
                                                #; (f:lsu) ft0  <-- 2.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001004c0]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 424, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 2.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 424, (wrb) a5  <-- 0x001001a8
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 1426.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 424, (wrb) a5  <-- 0x001004c8
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001001a8], (f:fpu) fs0  <-- 1430.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 424, (wrb) a3  <-- 432
                                                #; (f:lsu) ft0  <-- 3.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001004c8]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 432, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 3.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 432, (wrb) a5  <-- 0x001001b0
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 1430.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 432, (wrb) a5  <-- 0x001004d0
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001001b0], (f:fpu) fs0  <-- 1439.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 432, (wrb) a3  <-- 440
                                                #; (f:lsu) ft0  <-- 4.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001004d0]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 440, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 4.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 440, (wrb) a5  <-- 0x001001b8
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 1439.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 440, (wrb) a5  <-- 0x001004d8
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001001b8], (f:fpu) fs0  <-- 1455.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 440, (wrb) a3  <-- 448
                                                #; (f:lsu) ft0  <-- 5.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001004d8]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 448, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 5.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 448, (wrb) a5  <-- 0x001001c0
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 1455.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 448, (wrb) a5  <-- 0x001004e0
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001001c0], (f:fpu) fs0  <-- 1480.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 448, (wrb) a3  <-- 456
                                                #; (f:lsu) ft0  <-- 6.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001004e0]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 456, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 6.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 456, (wrb) a5  <-- 0x001001c8
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 1480.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 456, (wrb) a5  <-- 0x001004e8
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001001c8], (f:fpu) fs0  <-- 1516.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 456, (wrb) a3  <-- 464
                                                #; (f:lsu) ft0  <-- 7.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001004e8]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 464, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 7.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 464, (wrb) a5  <-- 0x001001d0
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 1516.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 464, (wrb) a5  <-- 0x001004f0
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001001d0], (f:fpu) fs0  <-- 1565.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 464, (wrb) a3  <-- 472
                                                #; (f:lsu) ft0  <-- 8.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001004f0]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 472, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 8.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 472, (wrb) a5  <-- 0x001001d8
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 1565.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 472, (wrb) a5  <-- 0x001004f8
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001001d8], (f:fpu) fs0  <-- 1629.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 472, (wrb) a3  <-- 480
                                                #; (f:lsu) ft0  <-- 9.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001004f8]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 480, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 9.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 480, (wrb) a5  <-- 0x001001e0
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 1629.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 480, (wrb) a5  <-- 0x00100500
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001001e0], (f:fpu) fs0  <-- 1710.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 480, (wrb) a3  <-- 488
                                                #; (f:lsu) ft0  <-- 0.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100500]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 488, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 0.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 488, (wrb) a5  <-- 0x001001e8
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 1710.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 488, (wrb) a5  <-- 0x00100508
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001001e8], (f:fpu) fs0  <-- 1710.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 488, (wrb) a3  <-- 496
                                                #; (f:lsu) ft0  <-- 1.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100508]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 496, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 1.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 496, (wrb) a5  <-- 0x001001f0
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 1710.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 496, (wrb) a5  <-- 0x00100510
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001001f0], (f:fpu) fs0  <-- 1711.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 496, (wrb) a3  <-- 504
                                                #; (f:lsu) ft0  <-- 2.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100510]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 504, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 2.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 504, (wrb) a5  <-- 0x001001f8
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 1711.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 504, (wrb) a5  <-- 0x00100518
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001001f8], (f:fpu) fs0  <-- 1715.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 504, (wrb) a3  <-- 512
                                                #; (f:lsu) ft0  <-- 3.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100518]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 512, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 3.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 512, (wrb) a5  <-- 0x00100200
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 1715.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 512, (wrb) a5  <-- 0x00100520
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100200], (f:fpu) fs0  <-- 1724.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 512, (wrb) a3  <-- 520
                                                #; (f:lsu) ft0  <-- 4.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100520]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 520, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 4.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 520, (wrb) a5  <-- 0x00100208
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 1724.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 520, (wrb) a5  <-- 0x00100528
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100208], (f:fpu) fs0  <-- 1740.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 520, (wrb) a3  <-- 528
                                                #; (f:lsu) ft0  <-- 5.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100528]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 528, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 5.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 528, (wrb) a5  <-- 0x00100210
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 1740.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 528, (wrb) a5  <-- 0x00100530
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100210], (f:fpu) fs0  <-- 1765.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 528, (wrb) a3  <-- 536
                                                #; (f:lsu) ft0  <-- 6.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100530]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 536, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 6.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 536, (wrb) a5  <-- 0x00100218
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 1765.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 536, (wrb) a5  <-- 0x00100538
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100218], (f:fpu) fs0  <-- 1801.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 536, (wrb) a3  <-- 544
                                                #; (f:lsu) ft0  <-- 7.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100538]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 544, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 7.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 544, (wrb) a5  <-- 0x00100220
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 1801.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 544, (wrb) a5  <-- 0x00100540
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100220], (f:fpu) fs0  <-- 1850.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 544, (wrb) a3  <-- 552
                                                #; (f:lsu) ft0  <-- 8.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100540]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 552, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 8.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 552, (wrb) a5  <-- 0x00100228
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 1850.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 552, (wrb) a5  <-- 0x00100548
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100228], (f:fpu) fs0  <-- 1914.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 552, (wrb) a3  <-- 560
                                                #; (f:lsu) ft0  <-- 9.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100548]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 560, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 9.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 560, (wrb) a5  <-- 0x00100230
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 1914.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 560, (wrb) a5  <-- 0x00100550
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100230], (f:fpu) fs0  <-- 1995.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 560, (wrb) a3  <-- 568
                                                #; (f:lsu) ft0  <-- 0.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100550]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 568, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 0.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 568, (wrb) a5  <-- 0x00100238
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 1995.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 568, (wrb) a5  <-- 0x00100558
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100238], (f:fpu) fs0  <-- 1995.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 568, (wrb) a3  <-- 576
                                                #; (f:lsu) ft0  <-- 1.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100558]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 576, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 1.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 576, (wrb) a5  <-- 0x00100240
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 1995.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 576, (wrb) a5  <-- 0x00100560
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100240], (f:fpu) fs0  <-- 1996.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 576, (wrb) a3  <-- 584
                                                #; (f:lsu) ft0  <-- 2.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100560]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 584, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 2.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 584, (wrb) a5  <-- 0x00100248
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 1996.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 584, (wrb) a5  <-- 0x00100568
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100248], (f:fpu) fs0  <-- 2000.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 584, (wrb) a3  <-- 592
                                                #; (f:lsu) ft0  <-- 3.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100568]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 592, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 3.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 592, (wrb) a5  <-- 0x00100250
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 2000.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 592, (wrb) a5  <-- 0x00100570
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100250], (f:fpu) fs0  <-- 2009.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 592, (wrb) a3  <-- 600
                                                #; (f:lsu) ft0  <-- 4.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100570]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 600, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 4.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 600, (wrb) a5  <-- 0x00100258
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 2009.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 600, (wrb) a5  <-- 0x00100578
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100258], (f:fpu) fs0  <-- 2025.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 600, (wrb) a3  <-- 608
                                                #; (f:lsu) ft0  <-- 5.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100578]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 608, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 5.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 608, (wrb) a5  <-- 0x00100260
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 2025.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 608, (wrb) a5  <-- 0x00100580
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100260], (f:fpu) fs0  <-- 2050.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 608, (wrb) a3  <-- 616
                                                #; (f:lsu) ft0  <-- 6.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100580]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 616, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 6.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 616, (wrb) a5  <-- 0x00100268
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 2050.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 616, (wrb) a5  <-- 0x00100588
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100268], (f:fpu) fs0  <-- 2086.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 616, (wrb) a3  <-- 624
                                                #; (f:lsu) ft0  <-- 7.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100588]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 624, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 7.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 624, (wrb) a5  <-- 0x00100270
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 2086.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 624, (wrb) a5  <-- 0x00100590
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100270], (f:fpu) fs0  <-- 2135.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 624, (wrb) a3  <-- 632
                                                #; (f:lsu) ft0  <-- 8.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100590]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 632, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 8.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 632, (wrb) a5  <-- 0x00100278
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 2135.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 632, (wrb) a5  <-- 0x00100598
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100278], (f:fpu) fs0  <-- 2199.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 632, (wrb) a3  <-- 640
                                                #; (f:lsu) ft0  <-- 9.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100598]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 640, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 9.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 640, (wrb) a5  <-- 0x00100280
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 2199.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 640, (wrb) a5  <-- 0x001005a0
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100280], (f:fpu) fs0  <-- 2280.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 640, (wrb) a3  <-- 648
                                                #; (f:lsu) ft0  <-- 0.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001005a0]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 648, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 0.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 648, (wrb) a5  <-- 0x00100288
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 2280.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 648, (wrb) a5  <-- 0x001005a8
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100288], (f:fpu) fs0  <-- 2280.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 648, (wrb) a3  <-- 656
                                                #; (f:lsu) ft0  <-- 1.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001005a8]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 656, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 1.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 656, (wrb) a5  <-- 0x00100290
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 2280.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 656, (wrb) a5  <-- 0x001005b0
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100290], (f:fpu) fs0  <-- 2281.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 656, (wrb) a3  <-- 664
                                                #; (f:lsu) ft0  <-- 2.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001005b0]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 664, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 2.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 664, (wrb) a5  <-- 0x00100298
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 2281.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 664, (wrb) a5  <-- 0x001005b8
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100298], (f:fpu) fs0  <-- 2285.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 664, (wrb) a3  <-- 672
                                                #; (f:lsu) ft0  <-- 3.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001005b8]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 672, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 3.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 672, (wrb) a5  <-- 0x001002a0
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 2285.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 672, (wrb) a5  <-- 0x001005c0
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001002a0], (f:fpu) fs0  <-- 2294.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 672, (wrb) a3  <-- 680
                                                #; (f:lsu) ft0  <-- 4.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001005c0]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 680, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 4.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 680, (wrb) a5  <-- 0x001002a8
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 2294.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 680, (wrb) a5  <-- 0x001005c8
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001002a8], (f:fpu) fs0  <-- 2310.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 680, (wrb) a3  <-- 688
                                                #; (f:lsu) ft0  <-- 5.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001005c8]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 688, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 5.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 688, (wrb) a5  <-- 0x001002b0
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 2310.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 688, (wrb) a5  <-- 0x001005d0
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001002b0], (f:fpu) fs0  <-- 2335.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 688, (wrb) a3  <-- 696
                                                #; (f:lsu) ft0  <-- 6.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001005d0]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 696, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 6.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 696, (wrb) a5  <-- 0x001002b8
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 2335.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 696, (wrb) a5  <-- 0x001005d8
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001002b8], (f:fpu) fs0  <-- 2371.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 696, (wrb) a3  <-- 704
                                                #; (f:lsu) ft0  <-- 7.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001005d8]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 704, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 7.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 704, (wrb) a5  <-- 0x001002c0
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 2371.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 704, (wrb) a5  <-- 0x001005e0
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001002c0], (f:fpu) fs0  <-- 2420.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 704, (wrb) a3  <-- 712
                                                #; (f:lsu) ft0  <-- 8.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001005e0]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 712, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 8.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 712, (wrb) a5  <-- 0x001002c8
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 2420.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 712, (wrb) a5  <-- 0x001005e8
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001002c8], (f:fpu) fs0  <-- 2484.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 712, (wrb) a3  <-- 720
                                                #; (f:lsu) ft0  <-- 9.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001005e8]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 720, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 9.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 720, (wrb) a5  <-- 0x001002d0
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 2484.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 720, (wrb) a5  <-- 0x001005f0
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001002d0], (f:fpu) fs0  <-- 2565.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 720, (wrb) a3  <-- 728
                                                #; (f:lsu) ft0  <-- 0.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001005f0]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 728, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 0.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 728, (wrb) a5  <-- 0x001002d8
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 2565.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 728, (wrb) a5  <-- 0x001005f8
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001002d8], (f:fpu) fs0  <-- 2565.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 728, (wrb) a3  <-- 736
                                                #; (f:lsu) ft0  <-- 1.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001005f8]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 736, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 1.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 736, (wrb) a5  <-- 0x001002e0
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 2565.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 736, (wrb) a5  <-- 0x00100600
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001002e0], (f:fpu) fs0  <-- 2566.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 736, (wrb) a3  <-- 744
                                                #; (f:lsu) ft0  <-- 2.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100600]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 744, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 2.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 744, (wrb) a5  <-- 0x001002e8
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 2566.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 744, (wrb) a5  <-- 0x00100608
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001002e8], (f:fpu) fs0  <-- 2570.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 744, (wrb) a3  <-- 752
                                                #; (f:lsu) ft0  <-- 3.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100608]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 752, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 3.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 752, (wrb) a5  <-- 0x001002f0
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 2570.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 752, (wrb) a5  <-- 0x00100610
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001002f0], (f:fpu) fs0  <-- 2579.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 752, (wrb) a3  <-- 760
                                                #; (f:lsu) ft0  <-- 4.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100610]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 760, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 4.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 760, (wrb) a5  <-- 0x001002f8
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 2579.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 760, (wrb) a5  <-- 0x00100618
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001002f8], (f:fpu) fs0  <-- 2595.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 760, (wrb) a3  <-- 768
                                                #; (f:lsu) ft0  <-- 5.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100618]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 768, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 5.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 768, (wrb) a5  <-- 0x00100300
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 2595.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 768, (wrb) a5  <-- 0x00100620
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100300], (f:fpu) fs0  <-- 2620.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 768, (wrb) a3  <-- 776
                                                #; (f:lsu) ft0  <-- 6.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100620]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 776, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 6.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 776, (wrb) a5  <-- 0x00100308
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 2620.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 776, (wrb) a5  <-- 0x00100628
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100308], (f:fpu) fs0  <-- 2656.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 776, (wrb) a3  <-- 784
                                                #; (f:lsu) ft0  <-- 7.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100628]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 784, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 7.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 784, (wrb) a5  <-- 0x00100310
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 2656.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 784, (wrb) a5  <-- 0x00100630
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100310], (f:fpu) fs0  <-- 2705.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 784, (wrb) a3  <-- 792
                                                #; (f:lsu) ft0  <-- 8.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100630]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 792, a4  = 800, taken, goto 0x80000738
                                                #; (f:lsu) ft1  <-- 8.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 792, (wrb) a5  <-- 0x00100318
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 2705.0
      0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 792, (wrb) a5  <-- 0x00100638
      0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100318], (f:fpu) fs0  <-- 2769.0
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000748 addi    a3, a3, 8              #; a3  = 792, (wrb) a3  <-- 800
                                                #; (f:lsu) ft0  <-- 9.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100638]
; scalarprod (scalarprod.c:6)
;  in main (bench_sp.c:46)
      0x80000750 bne     a3, a4, pc - 24        #; a3  = 800, a4  = 800, not taken
                                                #; (f:lsu) ft1  <-- 9.0
; benchmark_get_cycle (benchmark.c:8)
;  in main (bench_sp.c:48)
      0x80000754 csrr    a0, mcycle             #; mcycle = 5645, (wrb) a0  <-- 5645
      0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 2769.0
; main (bench_sp.c:50)
      0x80000758 sub     a1, a0, a2             #; a0  = 5645, a2  = 4927, (wrb) a1  <-- 718
      0x8000075c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000275c
                                                #; (f:fpu) fs0  <-- 2850.0
      0x80000760 addi    a0, a0, 921            #; a0  = 0x8000275c, (wrb) a0  <-- 0x80002af5
      0x80000764 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000764
      0x80000768 jalr    ra, ra, 88             #; ra  = 0x80000764, (wrb) ra  <-- 0x8000076c, goto 0x800007bc
; printf_ (printf.c:863)
      0x800007bc addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
      0x800007c0 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x8000076c ~~> Word[0x0011ff1c]
      0x800007c4 mv      t0, a0                 #; a0  = 0x80002af5, (wrb) t0  <-- 0x80002af5
      0x800007c8 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 800 ~~> Word[0x0011ff3c]
      0x800007cc sw      a6, 40(sp)             #; sp  = 0x0011ff10, 10 ~~> Word[0x0011ff38]
      0x800007d0 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 0x00100638 ~~> Word[0x0011ff34]
      0x800007d4 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 800 ~~> Word[0x0011ff30]
      0x800007d8 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 800 ~~> Word[0x0011ff2c]
      0x800007dc sw      a2, 24(sp)             #; sp  = 0x0011ff10, 4927 ~~> Word[0x0011ff28]
      0x800007e0 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 718 ~~> Word[0x0011ff24]
      0x800007e4 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
; printf_ (printf.c:865)
      0x800007e8 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
; printf_ (printf.c:867)
      0x800007ec auipc   a0, 0x1                #; (wrb) a0  <-- 0x800017ec
      0x800007f0 addi    a0, a0, -988           #; a0  = 0x800017ec, (wrb) a0  <-- 0x80001410
      0x800007f4 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
      0x800007f8 li      a2, -1                 #; (wrb) a2  <-- -1
      0x800007fc addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
      0x80000800 mv      a3, t0                 #; t0  = 0x80002af5, (wrb) a3  <-- 0x80002af5
      0x80000804 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000804
      0x80000808 jalr    ra, ra, 20             #; ra  = 0x80000804, (wrb) ra  <-- 0x8000080c, goto 0x80000818
; _vsnprintf.llvm.1805434900161566649 (printf.c:578)
      0x80000818 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
      0x8000081c sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x8000080c ~~> Word[0x0011ff0c]
      0x80000820 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff08]
      0x80000824 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
      0x80000828 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
      0x8000082c sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
      0x80000830 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
      0x80000834 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
      0x80000838 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
      0x8000083c sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
      0x80000840 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
      0x80000844 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
      0x80000848 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
      0x8000084c sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
      0x80000850 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
      0x80000854 mv      s0, a3                 #; a3  = 0x80002af5, (wrb) s0  <-- 0x80002af5
      0x80000858 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
      0x8000085c mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
; _vsnprintf.llvm.1805434900161566649 (printf.c:582)
      0x80000860 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000864 mv      s2, a0                 #; a0  = 0x80001410, (wrb) s2  <-- 0x80001410
      0x80000868 j       pc + 0xc               #; goto 0x80000874
      0x80000874 li      s8, 0                  #; (wrb) s8  <-- 0
      0x80000878 li      s6, 37                 #; (wrb) s6  <-- 37
      0x8000087c li      s11, 16                #; (wrb) s11 <-- 16
      0x80000880 li      s7, 46                 #; (wrb) s7  <-- 46
      0x80000884 lui     a0, 0x1                #; (wrb) a0  <-- 4096
      0x80000888 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
      0x8000088c sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
      0x80000890 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
      0x80000894 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
      0x80000898 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x8000089c addi    s10, s0, 2             #; s0  = 0x80002af5, (wrb) s10 <-- 0x80002af7
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800008a0 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
      0x800008a4 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800008a8 lbu     a0, 0(s0)              #; s0  = 0x80002af5, a0  <~~ Byte[0x80002af5]
                                                #; (lsu) a0  <-- 99
      0x800008ac beqz    a0, pc + 2824          #; a0  = 99, not taken
      0x800008b0 beq     a0, s6, pc + 48        #; a0  = 99, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800008b4 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
      0x800008b8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800008bc mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
      0x800008c0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800008c4 jalr    s2                     #; s2  = 0x80001410, (wrb) ra  <-- 0x800008c8, goto 0x80001410
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001410 beqz    a0, pc + 168           #; a0  = 99, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
      0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
      0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
      0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 0
      0x80001430 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
      0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 1 ~~> Word[0x80002e54]
      0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 0, (wrb) a4  <-- 0x80002e54
      0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e54, 99 ~~> Byte[0x80002e9c]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 1
      0x80001444 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
      0x80001448 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
      0x8000144c addi    a0, a0, -10            #; a0  = 99, (wrb) a0  <-- 89
      0x80001450 snez    a0, a0                 #; a0  = 89, (wrb) a0  <-- 1
      0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800014b8 ret                            #; ra  = 0x800008c8, goto 0x800008c8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800008c8 addi    s0, s0, 1              #; s0  = 0x80002af5, (wrb) s0  <-- 0x80002af6
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800008cc addi    s10, s10, 1            #; s10 = 0x80002af7, (wrb) s10 <-- 0x80002af8
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800008d0 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800008d4 lbu     a0, 0(s0)              #; s0  = 0x80002af6, a0  <~~ Byte[0x80002af6]
                                                #; (lsu) a0  <-- 121
      0x800008d8 bnez    a0, pc - 40            #; a0  = 121, taken, goto 0x800008b0
      0x800008b0 beq     a0, s6, pc + 48        #; a0  = 121, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800008b4 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
      0x800008b8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800008bc mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
      0x800008c0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800008c4 jalr    s2                     #; s2  = 0x80001410, (wrb) ra  <-- 0x800008c8, goto 0x80001410
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001410 beqz    a0, pc + 168           #; a0  = 121, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
      0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
      0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 1
      0x80001430 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
      0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 2 ~~> Word[0x80002e54]
      0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 1, (wrb) a4  <-- 0x80002e55
      0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e55, 121 ~~> Byte[0x80002e9d]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 2
      0x80001444 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
      0x80001448 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
      0x8000144c addi    a0, a0, -10            #; a0  = 121, (wrb) a0  <-- 111
      0x80001450 snez    a0, a0                 #; a0  = 111, (wrb) a0  <-- 1
      0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800014b8 ret                            #; ra  = 0x800008c8, goto 0x800008c8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800008c8 addi    s0, s0, 1              #; s0  = 0x80002af6, (wrb) s0  <-- 0x80002af7
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800008cc addi    s10, s10, 1            #; s10 = 0x80002af8, (wrb) s10 <-- 0x80002af9
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800008d0 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800008d4 lbu     a0, 0(s0)              #; s0  = 0x80002af7, a0  <~~ Byte[0x80002af7]
                                                #; (lsu) a0  <-- 99
      0x800008d8 bnez    a0, pc - 40            #; a0  = 99, taken, goto 0x800008b0
      0x800008b0 beq     a0, s6, pc + 48        #; a0  = 99, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800008b4 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
      0x800008b8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800008bc mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
      0x800008c0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800008c4 jalr    s2                     #; s2  = 0x80001410, (wrb) ra  <-- 0x800008c8, goto 0x80001410
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001410 beqz    a0, pc + 168           #; a0  = 99, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
      0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
      0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 2
      0x80001430 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
      0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 3 ~~> Word[0x80002e54]
      0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 2, (wrb) a4  <-- 0x80002e56
      0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e56, 99 ~~> Byte[0x80002e9e]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 3
      0x80001444 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
      0x80001448 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
      0x8000144c addi    a0, a0, -10            #; a0  = 99, (wrb) a0  <-- 89
      0x80001450 snez    a0, a0                 #; a0  = 89, (wrb) a0  <-- 1
      0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800014b8 ret                            #; ra  = 0x800008c8, goto 0x800008c8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800008c8 addi    s0, s0, 1              #; s0  = 0x80002af7, (wrb) s0  <-- 0x80002af8
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800008cc addi    s10, s10, 1            #; s10 = 0x80002af9, (wrb) s10 <-- 0x80002afa
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800008d0 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800008d4 lbu     a0, 0(s0)              #; s0  = 0x80002af8, a0  <~~ Byte[0x80002af8]
                                                #; (lsu) a0  <-- 108
      0x800008d8 bnez    a0, pc - 40            #; a0  = 108, taken, goto 0x800008b0
      0x800008b0 beq     a0, s6, pc + 48        #; a0  = 108, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800008b4 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
      0x800008b8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800008bc mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
      0x800008c0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800008c4 jalr    s2                     #; s2  = 0x80001410, (wrb) ra  <-- 0x800008c8, goto 0x80001410
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001410 beqz    a0, pc + 168           #; a0  = 108, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
      0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
      0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 3
      0x80001430 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
      0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 4 ~~> Word[0x80002e54]
      0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 3, (wrb) a4  <-- 0x80002e57
      0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e57, 108 ~~> Byte[0x80002e9f]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 4
      0x80001444 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
      0x80001448 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
      0x8000144c addi    a0, a0, -10            #; a0  = 108, (wrb) a0  <-- 98
      0x80001450 snez    a0, a0                 #; a0  = 98, (wrb) a0  <-- 1
      0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800014b8 ret                            #; ra  = 0x800008c8, goto 0x800008c8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800008c8 addi    s0, s0, 1              #; s0  = 0x80002af8, (wrb) s0  <-- 0x80002af9
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800008cc addi    s10, s10, 1            #; s10 = 0x80002afa, (wrb) s10 <-- 0x80002afb
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800008d0 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800008d4 lbu     a0, 0(s0)              #; s0  = 0x80002af9, a0  <~~ Byte[0x80002af9]
                                                #; (lsu) a0  <-- 101
      0x800008d8 bnez    a0, pc - 40            #; a0  = 101, taken, goto 0x800008b0
      0x800008b0 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800008b4 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
      0x800008b8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800008bc mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
      0x800008c0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800008c4 jalr    s2                     #; s2  = 0x80001410, (wrb) ra  <-- 0x800008c8, goto 0x80001410
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001410 beqz    a0, pc + 168           #; a0  = 101, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
      0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
      0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 4
      0x80001430 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
      0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 5 ~~> Word[0x80002e54]
      0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 4, (wrb) a4  <-- 0x80002e58
      0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e58, 101 ~~> Byte[0x80002ea0]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 5
      0x80001444 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
      0x80001448 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
      0x8000144c addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
      0x80001450 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
      0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800014b8 ret                            #; ra  = 0x800008c8, goto 0x800008c8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800008c8 addi    s0, s0, 1              #; s0  = 0x80002af9, (wrb) s0  <-- 0x80002afa
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800008cc addi    s10, s10, 1            #; s10 = 0x80002afb, (wrb) s10 <-- 0x80002afc
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800008d0 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800008d4 lbu     a0, 0(s0)              #; s0  = 0x80002afa, a0  <~~ Byte[0x80002afa]
                                                #; (lsu) a0  <-- 115
      0x800008d8 bnez    a0, pc - 40            #; a0  = 115, taken, goto 0x800008b0
      0x800008b0 beq     a0, s6, pc + 48        #; a0  = 115, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800008b4 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
      0x800008b8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800008bc mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
      0x800008c0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800008c4 jalr    s2                     #; s2  = 0x80001410, (wrb) ra  <-- 0x800008c8, goto 0x80001410
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001410 beqz    a0, pc + 168           #; a0  = 115, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
      0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
      0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 5
      0x80001430 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
      0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 6 ~~> Word[0x80002e54]
      0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 5, (wrb) a4  <-- 0x80002e59
      0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e59, 115 ~~> Byte[0x80002ea1]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 6
      0x80001444 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
      0x80001448 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
      0x8000144c addi    a0, a0, -10            #; a0  = 115, (wrb) a0  <-- 105
      0x80001450 snez    a0, a0                 #; a0  = 105, (wrb) a0  <-- 1
      0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800014b8 ret                            #; ra  = 0x800008c8, goto 0x800008c8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800008c8 addi    s0, s0, 1              #; s0  = 0x80002afa, (wrb) s0  <-- 0x80002afb
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800008cc addi    s10, s10, 1            #; s10 = 0x80002afc, (wrb) s10 <-- 0x80002afd
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800008d0 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800008d4 lbu     a0, 0(s0)              #; s0  = 0x80002afb, a0  <~~ Byte[0x80002afb]
                                                #; (lsu) a0  <-- 32
      0x800008d8 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x800008b0
      0x800008b0 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800008b4 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
      0x800008b8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800008bc mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
      0x800008c0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800008c4 jalr    s2                     #; s2  = 0x80001410, (wrb) ra  <-- 0x800008c8, goto 0x80001410
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001410 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
      0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
      0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 6
      0x80001430 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
      0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 7 ~~> Word[0x80002e54]
      0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 6, (wrb) a4  <-- 0x80002e5a
      0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e5a, 32 ~~> Byte[0x80002ea2]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 7
      0x80001444 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
      0x80001448 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
      0x8000144c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x80001450 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800014b8 ret                            #; ra  = 0x800008c8, goto 0x800008c8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800008c8 addi    s0, s0, 1              #; s0  = 0x80002afb, (wrb) s0  <-- 0x80002afc
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800008cc addi    s10, s10, 1            #; s10 = 0x80002afd, (wrb) s10 <-- 0x80002afe
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800008d0 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800008d4 lbu     a0, 0(s0)              #; s0  = 0x80002afc, a0  <~~ Byte[0x80002afc]
                                                #; (lsu) a0  <-- 61
      0x800008d8 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x800008b0
      0x800008b0 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800008b4 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
      0x800008b8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800008bc mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
      0x800008c0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800008c4 jalr    s2                     #; s2  = 0x80001410, (wrb) ra  <-- 0x800008c8, goto 0x80001410
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001410 beqz    a0, pc + 168           #; a0  = 61, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
      0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
      0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 7
      0x80001430 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
      0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 8 ~~> Word[0x80002e54]
      0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 7, (wrb) a4  <-- 0x80002e5b
      0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e5b, 61 ~~> Byte[0x80002ea3]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 8
      0x80001444 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
      0x80001448 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
      0x8000144c addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
      0x80001450 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
      0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800014b8 ret                            #; ra  = 0x800008c8, goto 0x800008c8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800008c8 addi    s0, s0, 1              #; s0  = 0x80002afc, (wrb) s0  <-- 0x80002afd
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800008cc addi    s10, s10, 1            #; s10 = 0x80002afe, (wrb) s10 <-- 0x80002aff
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800008d0 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800008d4 lbu     a0, 0(s0)              #; s0  = 0x80002afd, a0  <~~ Byte[0x80002afd]
                                                #; (lsu) a0  <-- 32
      0x800008d8 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x800008b0
      0x800008b0 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800008b4 addi    s1, s9, 1              #; s9  = 8, (wrb) s1  <-- 9
      0x800008b8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800008bc mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
      0x800008c0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800008c4 jalr    s2                     #; s2  = 0x80001410, (wrb) ra  <-- 0x800008c8, goto 0x80001410
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001410 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
      0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
      0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 8
      0x80001430 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
      0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 9 ~~> Word[0x80002e54]
      0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 8, (wrb) a4  <-- 0x80002e5c
      0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e5c, 32 ~~> Byte[0x80002ea4]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 9
      0x80001444 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
      0x80001448 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
      0x8000144c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x80001450 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800014b8 ret                            #; ra  = 0x800008c8, goto 0x800008c8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800008c8 addi    s0, s0, 1              #; s0  = 0x80002afd, (wrb) s0  <-- 0x80002afe
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800008cc addi    s10, s10, 1            #; s10 = 0x80002aff, (wrb) s10 <-- 0x80002b00
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800008d0 mv      s9, s1                 #; s1  = 9, (wrb) s9  <-- 9
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800008d4 lbu     a0, 0(s0)              #; s0  = 0x80002afe, a0  <~~ Byte[0x80002afe]
                                                #; (lsu) a0  <-- 37
      0x800008d8 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x800008b0
      0x800008b0 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x800008e0
; _vsnprintf.llvm.1805434900161566649 (printf.c:602)
      0x800008e0 li      s0, 0                  #; (wrb) s0  <-- 0
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800008e4 j       pc + 0x10              #; goto 0x800008f4
; _vsnprintf.llvm.1805434900161566649 (printf.c:604)
      0x800008f4 lbu     a0, -1(s10)            #; s10 = 0x80002b00, a0  <~~ Byte[0x80002aff]
                                                #; (lsu) a0  <-- 102
      0x800008f8 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
      0x800008fc bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000934
; _is_digit (printf.c:183)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000934 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
      0x80000938 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
; _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x8000093c addi    a1, s10, -1            #; s10 = 0x80002b00, (wrb) a1  <-- 0x80002aff
      0x80000940 li      a3, 9                  #; (wrb) a3  <-- 9
      0x80000944 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x800009c0
; _vsnprintf.llvm.1805434900161566649 (printf.c:619)
      0x800009c0 li      a2, 42                 #; (wrb) a2  <-- 42
      0x800009c4 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000a14
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a14 li      s6, 0                  #; (wrb) s6  <-- 0
      0x80000a18 mv      s10, a1                #; a1  = 0x80002aff, (wrb) s10 <-- 0x80002aff
; _vsnprintf.llvm.1805434900161566649 (printf.c:633)
      0x80000a1c beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a20 li      s7, 0                  #; (wrb) s7  <-- 0
      0x80000a24 j       pc + 0xc               #; goto 0x80000a30
; _vsnprintf.llvm.1805434900161566649 (printf.c:647)
      0x80000a30 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
      0x80000a34 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
      0x80000a38 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
      0x80000a3c or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
      0x80000a40 li      a2, 9                  #; (wrb) a2  <-- 9
      0x80000a44 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000aa8
; _vsnprintf.llvm.1805434900161566649 (printf.c:683)
      0x80000aa8 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
      0x80000aac li      a2, 83                 #; (wrb) a2  <-- 83
      0x80000ab0 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000ab4 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
      0x80000ab8 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002ab8
      0x80000abc addi    a2, a2, 200            #; a2  = 0x80002ab8, (wrb) a2  <-- 0x80002b80
      0x80000ac0 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002b80, (wrb) a1  <-- 0x80002c84
      0x80000ac4 lw      a2, 0(a1)              #; a1  = 0x80002c84, a2  <~~ Word[0x80002c84]
      0x80000ac8 li      a1, 8                  #; (wrb) a1  <-- 8
      0x80000acc li      s8, 16                 #; (wrb) s8  <-- 16
                                                #; (lsu) a2  <-- 0x80000b00
      0x80000ad0 jr      a2                     #; a2  = 0x80000b00, goto 0x80000b00
; _vsnprintf.llvm.1805434900161566649 (printf.c:760)
      0x80000b00 li      a1, 70                 #; (wrb) a1  <-- 70
      0x80000b04 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000b0c
; _vsnprintf.llvm.1805434900161566649 (printf.c:761)
      0x80000b0c addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
      0x80000b10 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
      0x80000b18 addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
      0x80000b1c mv      a0, s2                 #; s2  = 0x80001410, (wrb) a0  <-- 0x80001410
      0x80000b14 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
                                                #; (f:lsu) fa0  <-- 0.0000000
      0x80000b20 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000b24 mv      a2, s9                 #; s9  = 9, (wrb) a2  <-- 9
      0x80000b28 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000b2c mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
      0x80000b30 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
      0x80000b34 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
      0x80000b38 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001b38
      0x80000b3c jalr    ra, ra, -1656          #; ra  = 0x80001b38, (wrb) ra  <-- 0x80000b40, goto 0x800014c0
; _ftoa (printf.c:340)
      0x800014c0 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
      0x800014c4 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000b40 ~~> Word[0x0011fe9c]
      0x800014c8 sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
      0x800014cc sw      s1, 100(sp)            #; sp  = 0x0011fe30, 9 ~~> Word[0x0011fe94]
      0x800014d0 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x80001410 ~~> Word[0x0011fe90]
      0x800014d4 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
      0x800014d8 sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
      0x800014dc sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
      0x800014e0 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
      0x800014e4 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
      0x800014e8 sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
      0x800014ec sw      s9, 68(sp)             #; sp  = 0x0011fe30, 9 ~~> Word[0x0011fe74]
      0x800014f0 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002aff ~~> Word[0x0011fe70]
      0x800014f4 fsd     fs0, 56(sp)            #; 2850.0 ~~> Doub[0x0011fe68]
      0x800014f8 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
      0x800014fc fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
      0x80001500 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003500
      0x80001504 addi    s1, s1, -1880          #; s1  = 0x80003500, (wrb) s1  <-- 0x80002da8
      0x80001508 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80002da8]
; _ftoa (printf.c:351)
      0x80001510 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
; _ftoa (printf.c:0)
      0x80001514 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                                                #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
      0x80001518 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
      0x8000150c fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0000000
      0x8000151c mv      s4, a2                 #; a2  = 9, (wrb) s4  <-- 9
      0x80001520 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
      0x80001524 mv      s7, a0                 #; a0  = 0x80001410, (wrb) s7  <-- 0x80001410
; _ftoa (printf.c:351)
      0x80001528 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001618
; _ftoa (printf.c:0)
      0x8000161c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000261c
      0x80001618 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0000000, fa0  = 0.0000000
                                                #; (f:fpu) fs0  <-- 0.0000000
      0x80001620 addi    a0, a0, 1940           #; a0  = 0x8000261c, (wrb) a0  <-- 0x80002db0
      0x80001624 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002db0]
                                                #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
; _ftoa (printf.c:353)
      0x80001628 fle.d   a0, fa0, ft0           #; fa0  = 0.0000000, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
                                                #; (acc) t3  <-- 0x00051e63
      0x8000162c bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80001648
; _ftoa (printf.c:0)
      0x80001648 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002648
      0x8000164c addi    a0, a0, 1904           #; a0  = 0x80002648, (wrb) a0  <-- 0x80002db8
      0x80001654 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002654
      0x80001658 addi    a0, a0, 1900           #; a0  = 0x80002654, (wrb) a0  <-- 0x80002dc0
      0x80001650 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002db8]
      0x8000165c fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002dc0]
                                                #; (f:lsu) ft0  <-- 1000000000.0000000
; _ftoa (printf.c:358)
      0x80001660 fle.d   a0, fs0, ft0           #; fs0  = 0.0000000, ft0  = 1000000000.0000000
                                                #; (f:lsu) ft1  <-- -1000000000.0000000
                                                #; (acc) a0  <-- 0x00b57533
      0x80001664 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0000000
                                                #; (acc) a0  <-- 0x00b57533
      0x80001668 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
      0x8000166c bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001768
; _ftoa (printf.c:374)
      0x80001768 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
      0x8000176c li      s8, 6                  #; (wrb) s8  <-- 6
      0x80001770 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001778
; _ftoa (printf.c:0)
      0x80001778 li      a0, 10                 #; (wrb) a0  <-- 10
      0x8000177c fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0000000, fs0  = 0.0000000
                                                #; (f:fpu) fs2  <-- 0.0000000
; _ftoa (printf.c:378)
      0x80001780 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x800017b8
; _ftoa (printf.c:0)
      0x800017b8 li      s0, 0                  #; (wrb) s0  <-- 0
; _ftoa (printf.c:384)
      0x800017bc slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
      0x800017c0 auipc   a1, 0x1                #; (wrb) a1  <-- 0x800027c0
      0x800017c4 addi    a1, a1, 1296           #; a1  = 0x800027c0, (wrb) a1  <-- 0x80002cd0
      0x800017c8 add     a0, a0, a1             #; a0  = 48, a1  = 0x80002cd0, (wrb) a0  <-- 0x80002d00
      0x800017cc fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002d00]
; _ftoa (printf.c:383)
      0x800017d0 fcvt.w.d s1, fs2               #; fs2  = 0.0000000
                                                #; (f:lsu) ft1  <-- 1000000.0000000
; _ftoa (printf.c:384)
      0x800017d4 fcvt.d.w ft0, s1               #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
      0x800017d8 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0000000, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0000000
      0x800017dc fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0000000
; _ftoa (printf.c:0)
      0x800017e0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800027e0
      0x800017e4 addi    a0, a0, 1512           #; a0  = 0x800027e0, (wrb) a0  <-- 0x80002dc8
                                                #; (f:fpu) ft2  <-- 0.0000000
      0x800017e8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002dc8]
; _ftoa (printf.c:385)
      0x800017ec fcvt.wu.d a0, ft2              #; ft2  = 0.0000000
; _ftoa (printf.c:386)
      0x800017f0 fcvt.d.wu ft3, a0              #; ac1  = 0, (f:lsu) ft0  <-- 0.5
                                                #; (f:fpu) ft3  <-- 0.0
      0x800017f4 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0000000, ft3  = 0.0
                                                #; (f:fpu) ft2  <-- 0.0000000
; _ftoa (printf.c:388)
      0x800017f8 fle.d   a1, ft2, ft0           #; ft2  = 0.0000000, ft0  = 0.5
      0x800017fc bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x8000181c
; _ftoa (printf.c:396)
      0x8000181c flt.d   a1, ft2, ft0           #; ft2  = 0.0000000, ft0  = 0.5
      0x80001820 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001834
; _ftoa (printf.c:403)
      0x80001838 beqz    s8, pc + 216           #; s8  = 6, not taken
      0x80001834 fcvt.d.w fs1, zero             #; ac1  = 0
; _ftoa (printf.c:0)
      0x8000183c li      a2, 0                  #; (wrb) a2  <-- 0
                                                #; (f:fpu) fs1  <-- 0.0
      0x80001840 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:414)
      0x80001844 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
      0x80001848 li      t0, 32                 #; (wrb) t0  <-- 32
      0x8000184c sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
      0x80001850 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
      0x80001854 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
      0x80001858 li      a6, 10                 #; (wrb) a6  <-- 10
      0x8000185c li      a7, 9                  #; (wrb) a7  <-- 9
      0x80001860 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
; _ftoa (printf.c:0)
      0x80001864 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
; _ftoa (printf.c:417)
      0x80001868 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x8000186c srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001870 mul     a3, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a3  <-- 0x40d586b3
      0x80001874 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
; _ftoa (printf.c:416)
      0x80001878 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
      0x8000187c add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
      0x80001880 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
; _ftoa (printf.c:417)
      0x80001884 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
      0x80001888 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
; _ftoa (printf.c:422)
      0x8000188c add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
      0x80001890 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
      0x80001894 li      a3, 30                 #; (wrb) a3  <-- 30
      0x80001898 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
      0x8000189c xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
      0x800018a0 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
      0x800018a4 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
      0x800018a8 bnez    a3, pc + 136           #; a3  = 0, not taken
; _ftoa (printf.c:0)
      0x800018ac addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
; _ftoa (printf.c:422)
      0x800018b0 add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
      0x800018b4 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
      0x800018b8 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
      0x800018bc add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
      0x800018c0 li      a1, 31                 #; (wrb) a1  <-- 31
      0x800018c4 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
      0x800018c8 add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
      0x800018cc mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
      0x800018d0 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x800018d8
      0x800018d8 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
; _ftoa (printf.c:423)
      0x800018dc li      a1, 48                 #; (wrb) a1  <-- 48
      0x800018e0 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x800008e0
      0x800018e4 jalr    ra, ra, -904           #; ra  = 0x800008e0, (wrb) ra  <-- 0x800018e8, goto 0x80000558
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
      0x800005ec ret                            #; ra  = 0x800018e8, goto 0x800018e8
; _ftoa (printf.c:0)
      0x800018e8 li      a0, 0                  #; (wrb) a0  <-- 0
; _ftoa (printf.c:422)
      0x800018ec add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
      0x800018f0 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
      0x800018f4 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
      0x800018f8 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
      0x800018fc and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001900 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x80001904 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800018ec
      0x800018ec add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
      0x800018f0 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
      0x800018f4 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
      0x800018f8 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
      0x800018fc and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001900 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
      0x80001904 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800018ec
      0x800018ec add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
      0x800018f0 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
      0x800018f4 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
      0x800018f8 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
      0x800018fc and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001900 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
      0x80001904 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800018ec
      0x800018ec add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
      0x800018f0 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
      0x800018f4 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
      0x800018f8 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
      0x800018fc and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001900 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
      0x80001904 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800018ec
      0x800018ec add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
      0x800018f0 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
      0x800018f4 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
      0x800018f8 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
      0x800018fc and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
      0x80001900 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
      0x80001904 bnez    a2, pc - 24            #; a2  = 0, not taken
; _ftoa (printf.c:425)
      0x80001908 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
      0x8000190c j       pc + 0x28              #; goto 0x80001934
      0x80001934 beqz    a1, pc + 28            #; a1  = 1, not taken
; _ftoa (printf.c:427)
      0x80001938 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
; _ftoa (printf.c:0)
      0x8000193c addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:427)
      0x80001940 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
      0x80001944 li      a1, 46                 #; (wrb) a1  <-- 46
      0x80001948 sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
      0x8000194c j       pc + 0x8               #; goto 0x80001954
; _ftoa (printf.c:0)
      0x80001954 li      a0, 32                 #; (wrb) a0  <-- 32
; _ftoa (printf.c:432)
      0x80001958 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
      0x8000195c bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
; _ftoa (printf.c:0)
      0x80001960 li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001968 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
      0x80001964 flt.d   s9, fs0, fs1           #; fs0  = 0.0000000, fs1  = 0.0
      0x8000196c addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
      0x80001970 li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001974 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
      0x80001978 li      a4, 18                 #; (wrb) a4  <-- 18
; _ftoa (printf.c:432)
      0x8000197c beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
; _ftoa (printf.c:434)
      0x80001980 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
                                                #; (acc) a5  <-- 0x01f55793
      0x80001984 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
      0x80001988 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
      0x8000198c add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001990 mul     a5, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f487b3
      0x80001994 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
; _ftoa (printf.c:433)
      0x80001998 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
      0x8000199c addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
      0x800019a0 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
; _ftoa (printf.c:434)
      0x800019a4 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
; _ftoa (printf.c:433)
      0x800019a8 sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
; _ftoa (printf.c:0)
      0x800019ac mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
      0x800019b0 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:434)
      0x800019b4 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
      0x800019b8 j       pc + 0x8               #; goto 0x800019c0
; _ftoa (printf.c:440)
      0x800019c0 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:0)
      0x800019c4 li      a0, 1                  #; (wrb) a0  <-- 1
; _ftoa (printf.c:440)
      0x800019c8 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001a34
; _ftoa (printf.c:0)
      0x80001a34 li      a0, 31                 #; (wrb) a0  <-- 31
; _ftoa (printf.c:449)
      0x80001a38 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
; _ftoa (printf.c:450)
      0x80001a3c beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001a54
; _ftoa (printf.c:453)
      0x80001a54 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
      0x80001a58 bnez    a0, pc + 32            #; a0  = 0, not taken
; _ftoa (printf.c:456)
      0x80001a5c andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
      0x80001a60 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001a8c
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001a8c snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
      0x80001a90 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
      0x80001a94 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x80001a98 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
; _ftoa (printf.c:0)
      0x80001a9c andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
      0x80001aa0 mv      s0, s4                 #; s4  = 9, (wrb) s0  <-- 9
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001aa4 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001ad0
; _ftoa (printf.c:0)
      0x80001ad0 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ad4 beqz    s8, pc + 56            #; s8  = 8, not taken
      0x80001ad8 addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001adc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
      0x80001ae0 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
      0x80001ae4 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
      0x80001ae8 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
      0x80001aec mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
                                                #; (lsu) a0  <-- 48
      0x80001af0 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
      0x80001af4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001af8 jalr    s7                     #; s7  = 0x80001410, (wrb) ra  <-- 0x80001afc, goto 0x80001410
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001410 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
      0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
      0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 9
      0x80001430 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
      0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 10 ~~> Word[0x80002e54]
      0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 9, (wrb) a4  <-- 0x80002e5d
      0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e5d, 48 ~~> Byte[0x80002ea5]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 10
      0x80001444 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
      0x80001448 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
      0x8000144c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001450 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800014b8 ret                            #; ra  = 0x80001afc, goto 0x80001afc
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001afc mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
      0x80001b00 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001b04 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001adc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001adc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
      0x80001ae0 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
      0x80001ae4 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
      0x80001ae8 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
      0x80001aec mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001af0 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
      0x80001af4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001af8 jalr    s7                     #; s7  = 0x80001410, (wrb) ra  <-- 0x80001afc, goto 0x80001410
                                                #; (lsu) a0  <-- 46
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001410 beqz    a0, pc + 168           #; a0  = 46, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
      0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
      0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 10
      0x80001430 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
      0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 11 ~~> Word[0x80002e54]
      0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 10, (wrb) a4  <-- 0x80002e5e
      0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e5e, 46 ~~> Byte[0x80002ea6]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 11
      0x80001444 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
      0x80001448 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
      0x8000144c addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
      0x80001450 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
      0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800014b8 ret                            #; ra  = 0x80001afc, goto 0x80001afc
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001afc mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
      0x80001b00 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001b04 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001adc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001adc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
      0x80001ae0 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
      0x80001ae4 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
      0x80001ae8 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
      0x80001aec mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001af0 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
      0x80001af4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001af8 jalr    s7                     #; s7  = 0x80001410, (wrb) ra  <-- 0x80001afc, goto 0x80001410
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001410 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
      0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
      0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 11
      0x80001430 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
      0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 12 ~~> Word[0x80002e54]
      0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 11, (wrb) a4  <-- 0x80002e5f
      0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e5f, 48 ~~> Byte[0x80002ea7]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 12
      0x80001444 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
      0x80001448 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
      0x8000144c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001450 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800014b8 ret                            #; ra  = 0x80001afc, goto 0x80001afc
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001afc mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
      0x80001b00 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001b04 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001adc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001adc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
      0x80001ae0 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
      0x80001ae4 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
      0x80001ae8 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
      0x80001aec mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001af0 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
      0x80001af4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001af8 jalr    s7                     #; s7  = 0x80001410, (wrb) ra  <-- 0x80001afc, goto 0x80001410
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001410 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
      0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
      0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 12
      0x80001430 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
      0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 13 ~~> Word[0x80002e54]
      0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 12, (wrb) a4  <-- 0x80002e60
      0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e60, 48 ~~> Byte[0x80002ea8]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 13
      0x80001444 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
      0x80001448 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
      0x8000144c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001450 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800014b8 ret                            #; ra  = 0x80001afc, goto 0x80001afc
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001afc mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
      0x80001b00 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001b04 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001adc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001adc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
      0x80001ae0 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
      0x80001ae4 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
      0x80001ae8 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
      0x80001aec mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001af0 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
      0x80001af4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001af8 jalr    s7                     #; s7  = 0x80001410, (wrb) ra  <-- 0x80001afc, goto 0x80001410
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001410 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
      0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
      0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 13
      0x80001430 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
      0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 14 ~~> Word[0x80002e54]
      0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 13, (wrb) a4  <-- 0x80002e61
      0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e61, 48 ~~> Byte[0x80002ea9]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 14
      0x80001444 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
      0x80001448 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
      0x8000144c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001450 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800014b8 ret                            #; ra  = 0x80001afc, goto 0x80001afc
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001afc mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
      0x80001b00 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001b04 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001adc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001adc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
      0x80001ae0 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
      0x80001ae4 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
      0x80001ae8 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
      0x80001aec mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001af0 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
      0x80001af4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001af8 jalr    s7                     #; s7  = 0x80001410, (wrb) ra  <-- 0x80001afc, goto 0x80001410
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001410 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
      0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
      0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 14
      0x80001430 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
      0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 15 ~~> Word[0x80002e54]
      0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 14, (wrb) a4  <-- 0x80002e62
      0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e62, 48 ~~> Byte[0x80002eaa]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 15
      0x80001444 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
      0x80001448 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
      0x8000144c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001450 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800014b8 ret                            #; ra  = 0x80001afc, goto 0x80001afc
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001afc mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
      0x80001b00 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001b04 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001adc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001adc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
      0x80001ae0 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
      0x80001ae4 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
      0x80001ae8 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
      0x80001aec mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001af0 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
      0x80001af4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001af8 jalr    s7                     #; s7  = 0x80001410, (wrb) ra  <-- 0x80001afc, goto 0x80001410
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001410 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
      0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
      0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 15
      0x80001430 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
      0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 16 ~~> Word[0x80002e54]
      0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 15, (wrb) a4  <-- 0x80002e63
      0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e63, 48 ~~> Byte[0x80002eab]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 16
      0x80001444 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
      0x80001448 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
      0x8000144c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001450 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800014b8 ret                            #; ra  = 0x80001afc, goto 0x80001afc
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001afc mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
      0x80001b00 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001b04 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001adc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001adc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
      0x80001ae0 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
      0x80001ae4 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
      0x80001ae8 addi    s1, s0, 1              #; s0  = 16, (wrb) s1  <-- 17
      0x80001aec mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001af0 mv      a2, s0                 #; s0  = 16, (wrb) a2  <-- 16
      0x80001af4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001af8 jalr    s7                     #; s7  = 0x80001410, (wrb) ra  <-- 0x80001afc, goto 0x80001410
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001410 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
      0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
      0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 16
      0x80001430 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
      0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 17 ~~> Word[0x80002e54]
      0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 16, (wrb) a4  <-- 0x80002e64
      0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e64, 48 ~~> Byte[0x80002eac]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 17
      0x80001444 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
      0x80001448 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
      0x8000144c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001450 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800014b8 ret                            #; ra  = 0x80001afc, goto 0x80001afc
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001afc mv      s0, s1                 #; s1  = 17, (wrb) s0  <-- 17
      0x80001b00 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001b04 bnez    s10, pc - 40           #; s10 = 0, not taken
      0x80001b08 j       pc + 0x8               #; goto 0x80001b10
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001b10 sub     a0, s1, s4             #; s1  = 17, s4  = 9, (wrb) a0  <-- 8
      0x80001b14 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
      0x80001b18 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
; _out_rev (printf.c:216)
;  in _ftoa (printf.c:461)
      0x80001b1c xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
      0x80001b20 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x80001b24 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001b54
; _ftoa (printf.c:0)
      0x80001b54 mv      s0, s1                 #; s1  = 17, (wrb) s0  <-- 17
; _ftoa (printf.c:462)
      0x80001b58 mv      a0, s0                 #; s0  = 17, (wrb) a0  <-- 17
      0x80001b5c fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
                                                #; (f:lsu) fs2  <-- 0.0
      0x80001b68 lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
      0x80001b60 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60]
      0x80001b64 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
                                                #; (f:lsu) fs0  <-- 2850.0
                                                #; (lsu) s10 <-- 0x80002aff
      0x80001b6c lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
                                                #; (lsu) s9  <-- 9
      0x80001b70 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
                                                #; (lsu) s8  <-- 16
      0x80001b74 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
                                                #; (lsu) s7  <-- 0
      0x80001b78 lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
                                                #; (lsu) s6  <-- 0
      0x80001b7c lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
                                                #; (lsu) s5  <-- -1
      0x80001b80 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
                                                #; (lsu) s4  <-- 0x0011ff17
      0x80001b84 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
                                                #; (lsu) s3  <-- 0x0011ff30
      0x80001b88 lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
                                                #; (lsu) s2  <-- 0x80001410
      0x80001b8c lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
                                                #; (lsu) s1  <-- 9
      0x80001b90 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
                                                #; (lsu) s0  <-- 0
      0x80001b94 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
      0x80001b98 addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
                                                #; (lsu) ra  <-- 0x80000b40
      0x80001b9c ret                            #; ra  = 0x80000b40, goto 0x80000b40
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b40 j       pc + 0x7c0             #; goto 0x80001300
      0x80001300 mv      s8, a0                 #; a0  = 17, (wrb) s8  <-- 17
      0x80001304 li      s6, 37                 #; (wrb) s6  <-- 37
      0x80001308 li      s7, 46                 #; (wrb) s7  <-- 46
      0x8000130c addi    s0, s10, 1             #; s10 = 0x80002aff, (wrb) s0  <-- 0x80002b00
      0x80001310 j       pc - 0xa74             #; goto 0x8000089c
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x8000089c addi    s10, s0, 2             #; s0  = 0x80002b00, (wrb) s10 <-- 0x80002b02
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800008a0 mv      s9, s8                 #; s8  = 17, (wrb) s9  <-- 17
      0x800008a4 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800008a8 lbu     a0, 0(s0)              #; s0  = 0x80002b00, a0  <~~ Byte[0x80002b00]
                                                #; (lsu) a0  <-- 10
      0x800008ac beqz    a0, pc + 2824          #; a0  = 10, not taken
      0x800008b0 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800008b4 addi    s1, s9, 1              #; s9  = 17, (wrb) s1  <-- 18
      0x800008b8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800008bc mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
      0x800008c0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800008c4 jalr    s2                     #; s2  = 0x80001410, (wrb) ra  <-- 0x800008c8, goto 0x80001410
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001410 beqz    a0, pc + 168           #; a0  = 10, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
      0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
      0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 17
      0x80001430 addi    a5, a4, 1              #; a4  = 17, (wrb) a5  <-- 18
      0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 18 ~~> Word[0x80002e54]
      0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 17, (wrb) a4  <-- 0x80002e65
      0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e65, 10 ~~> Byte[0x80002ead]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 18
      0x80001444 addi    a4, a4, -1020          #; a4  = 18, (wrb) a4  <-- -1002
      0x80001448 snez    a4, a4                 #; a4  = -1002, (wrb) a4  <-- 1
      0x8000144c addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
      0x80001450 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
      0x80001454 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
      0x80001458 bnez    a0, pc + 96            #; a0  = 0, not taken
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000145c add     a0, a3, a2             #; a3  = 0x80002e54, a2  = 0, (wrb) a0  <-- 0x80002e54
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001460 addi    a2, a0, 72             #; a0  = 0x80002e54, (wrb) a2  <-- 0x80002e9c
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001464 sw      zero, 12(a0)           #; a0  = 0x80002e54, 0 ~~> Word[0x80002e60]
      0x80001468 li      a3, 64                 #; (wrb) a3  <-- 64
      0x8000146c sw      a3, 8(a0)              #; a0  = 0x80002e54, 64 ~~> Word[0x80002e5c]
; snrt_putchar (putchar.c:26)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001470 sw      zero, 20(a0)           #; a0  = 0x80002e54, 0 ~~> Word[0x80002e68]
      0x80001474 li      a3, 1                  #; (wrb) a3  <-- 1
      0x80001478 sw      a3, 16(a0)             #; a0  = 0x80002e54, 1 ~~> Word[0x80002e64]
; snrt_putchar (putchar.c:27)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000147c sw      zero, 28(a0)           #; a0  = 0x80002e54, 0 ~~> Word[0x80002e70]
      0x80001480 sw      a2, 24(a0)             #; a0  = 0x80002e54, 0x80002e9c ~~> Word[0x80002e6c]
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001484 lw      a2, 0(a1)              #; a1  = 0x80002e54, a2  <~~ Word[0x80002e54]
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001488 addi    a3, a0, 8              #; a0  = 0x80002e54, (wrb) a3  <-- 0x80002e5c
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000148c sw      zero, 36(a0)           #; a0  = 0x80002e54, 0 ~~> Word[0x80002e78]
                                                #; (lsu) a2  <-- 18
      0x80001490 sw      a2, 32(a0)             #; a0  = 0x80002e54, 18 ~~> Word[0x80002e74]
; snrt_putchar (putchar.c:30)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001494 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003494
      0x80001498 addi    a0, a0, -1876          #; a0  = 0x80003494, (wrb) a0  <-- 0x80002d40
      0x8000149c sw      a3, 0(a0)              #; a0  = 0x80002d40, 0x80002e5c ~~> Word[0x80002d40]
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014a0 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800034a0
      0x800014a4 addi    a0, a0, -1824          #; a0  = 0x800034a0, (wrb) a0  <-- 0x80002d80
; snrt_putchar (putchar.c:31)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014a8 lw      a2, 0(a0)              #; a0  = 0x80002d80, a2  <~~ Word[0x80002d80]
                                                #; (lsu) a2  <-- 0
      0x800014ac beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800014a8
      0x800014a8 lw      a2, 0(a0)              #; a0  = 0x80002d80, a2  <~~ Word[0x80002d80]
                                                #; (lsu) a2  <-- 0
      0x800014ac beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800014a8
      0x800014a8 lw      a2, 0(a0)              #; a0  = 0x80002d80, a2  <~~ Word[0x80002d80]
                                                #; (lsu) a2  <-- 0
      0x800014ac beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800014a8
      0x800014a8 lw      a2, 0(a0)              #; a0  = 0x80002d80, a2  <~~ Word[0x80002d80]
                                                #; (lsu) a2  <-- 1
      0x800014ac beqz    a2, pc - 4             #; a2  = 1, not taken
; snrt_putchar (putchar.c:33)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014b0 sw      zero, 0(a0)            #; a0  = 0x80002d80, 0 ~~> Word[0x80002d80]
; snrt_putchar (putchar.c:35)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014b4 sw      zero, 0(a1)            #; a1  = 0x80002e54, 0 ~~> Word[0x80002e54]
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800014b8 ret                            #; ra  = 0x800008c8, goto 0x800008c8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800008c8 addi    s0, s0, 1              #; s0  = 0x80002b00, (wrb) s0  <-- 0x80002b01
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800008cc addi    s10, s10, 1            #; s10 = 0x80002b02, (wrb) s10 <-- 0x80002b03
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800008d0 mv      s9, s1                 #; s1  = 18, (wrb) s9  <-- 18
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800008d4 lbu     a0, 0(s0)              #; s0  = 0x80002b01, a0  <~~ Byte[0x80002b01]
                                                #; (lsu) a0  <-- 0
      0x800008d8 bnez    a0, pc - 40            #; a0  = 0, not taken
      0x800008dc j       pc + 0xad8             #; goto 0x800013b4
; _vsnprintf.llvm.1805434900161566649 (printf.c:853)
      0x800013b4 mv      a2, s9                 #; s9  = 18, (wrb) a2  <-- 18
      0x800013b8 bltu    s9, s5, pc + 8         #; s9  = 18, s5  = -1, taken, goto 0x800013c0
      0x800013c0 li      a0, 0                  #; (wrb) a0  <-- 0
      0x800013c4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800013c8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800013cc jalr    s2                     #; s2  = 0x80001410, (wrb) ra  <-- 0x800013d0, goto 0x80001410
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001410 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x800014b8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800014b8 ret                            #; ra  = 0x800013d0, goto 0x800013d0
; _vsnprintf.llvm.1805434900161566649 (printf.c:856)
      0x800013d0 mv      a0, s9                 #; s9  = 18, (wrb) a0  <-- 18
      0x800013d4 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
                                                #; (lsu) s11 <-- 0
      0x800013d8 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
                                                #; (lsu) s10 <-- 0
      0x800013dc lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
                                                #; (lsu) s9  <-- 0
      0x800013e0 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
                                                #; (lsu) s8  <-- 0
      0x800013e4 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
                                                #; (lsu) s7  <-- 0
      0x800013e8 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
                                                #; (lsu) s6  <-- 0
      0x800013ec lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
                                                #; (lsu) s5  <-- 0
      0x800013f0 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
                                                #; (lsu) s4  <-- 0
      0x800013f4 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
                                                #; (lsu) s3  <-- 0
      0x800013f8 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
                                                #; (lsu) s2  <-- 0
      0x800013fc lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
                                                #; (lsu) s1  <-- 0
      0x80001400 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
                                                #; (lsu) s0  <-- 0
      0x80001404 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
      0x80001408 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
                                                #; (lsu) ra  <-- 0x8000080c
      0x8000140c ret                            #; ra  = 0x8000080c, goto 0x8000080c
; printf_ (printf.c:869)
      0x8000080c lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
      0x80000810 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
                                                #; (lsu) ra  <-- 0x8000076c
      0x80000814 ret                            #; ra  = 0x8000076c, goto 0x8000076c
; main (bench_sp.c:0)
      0x8000076c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000276c
      0x80000770 addi    a0, a0, 1580           #; a0  = 0x8000276c, (wrb) a0  <-- 0x80002d98
      0x80000774 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002d98]
                                                #; (f:lsu) ft0  <-- 2850.0
; main (bench_sp.c:57)
      0x80000784 lw      a2, 8(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff48]
      0x80000778 fadd.d  ft0, fs0, ft0          #; fs0  = 2850.0, ft0  = 2850.0
                                                #; (lsu) a2  <-- 0
                                                #; (f:fpu) ft0  <-- 5700.0
      0x80000788 lw      a3, 12(sp)             #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff4c]
      0x8000077c fsgnjx.d fs0, ft0, ft0         #; ft0  = 5700.0, ft0  = 5700.0
      0x8000078c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000278c
                                                #; (f:fpu) fs0  <-- 5700.0
      0x80000780 fsd     fs0, 8(sp)             #; 5700.0 ~~> Doub[0x0011ff48]
                                                #; (lsu) a3  <-- 0
      0x80000790 addi    a0, a0, 886            #; a0  = 0x8000278c, (wrb) a0  <-- 0x80002b02
      0x80000794 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000794
      0x80000798 jalr    ra, ra, 40             #; ra  = 0x80000794, (wrb) ra  <-- 0x8000079c, goto 0x800007bc
; printf_ (printf.c:863)
      0x800007bc addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
      0x800007c0 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x8000079c ~~> Word[0x0011ff1c]
      0x800007c4 mv      t0, a0                 #; a0  = 0x80002b02, (wrb) t0  <-- 0x80002b02
      0x800007c8 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 9 ~~> Word[0x0011ff3c]
      0x800007cc sw      a6, 40(sp)             #; sp  = 0x0011ff10, 10 ~~> Word[0x0011ff38]
      0x800007d0 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 18 ~~> Word[0x0011ff34]
      0x800007d4 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff30]
      0x800007d8 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
      0x800007dc sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
      0x800007e0 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 0x0011ff17 ~~> Word[0x0011ff24]
      0x800007e4 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
; printf_ (printf.c:865)
      0x800007e8 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
; printf_ (printf.c:867)
      0x800007ec auipc   a0, 0x1                #; (wrb) a0  <-- 0x800017ec
      0x800007f0 addi    a0, a0, -988           #; a0  = 0x800017ec, (wrb) a0  <-- 0x80001410
      0x800007f4 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
      0x800007f8 li      a2, -1                 #; (wrb) a2  <-- -1
      0x800007fc addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
      0x80000800 mv      a3, t0                 #; t0  = 0x80002b02, (wrb) a3  <-- 0x80002b02
      0x80000804 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000804
      0x80000808 jalr    ra, ra, 20             #; ra  = 0x80000804, (wrb) ra  <-- 0x8000080c, goto 0x80000818
; _vsnprintf.llvm.1805434900161566649 (printf.c:578)
      0x80000818 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
      0x8000081c sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x8000080c ~~> Word[0x0011ff0c]
      0x80000820 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff08]
      0x80000824 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
      0x80000828 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
      0x8000082c sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
      0x80000830 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
      0x80000834 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
      0x80000838 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
      0x8000083c sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
      0x80000840 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
      0x80000844 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
      0x80000848 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
      0x8000084c sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
      0x80000850 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
      0x80000854 mv      s0, a3                 #; a3  = 0x80002b02, (wrb) s0  <-- 0x80002b02
      0x80000858 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
      0x8000085c mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
; _vsnprintf.llvm.1805434900161566649 (printf.c:582)
      0x80000860 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000864 mv      s2, a0                 #; a0  = 0x80001410, (wrb) s2  <-- 0x80001410
      0x80000868 j       pc + 0xc               #; goto 0x80000874
      0x80000874 li      s8, 0                  #; (wrb) s8  <-- 0
      0x80000878 li      s6, 37                 #; (wrb) s6  <-- 37
      0x8000087c li      s11, 16                #; (wrb) s11 <-- 16
      0x80000880 li      s7, 46                 #; (wrb) s7  <-- 46
      0x80000884 lui     a0, 0x1                #; (wrb) a0  <-- 4096
      0x80000888 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
      0x8000088c sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
      0x80000890 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
      0x80000894 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
      0x80000898 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x8000089c addi    s10, s0, 2             #; s0  = 0x80002b02, (wrb) s10 <-- 0x80002b04
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800008a0 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
      0x800008a4 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800008a8 lbu     a0, 0(s0)              #; s0  = 0x80002b02, a0  <~~ Byte[0x80002b02]
                                                #; (lsu) a0  <-- 101
      0x800008ac beqz    a0, pc + 2824          #; a0  = 101, not taken
      0x800008b0 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800008b4 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
      0x800008b8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800008bc mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
      0x800008c0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800008c4 jalr    s2                     #; s2  = 0x80001410, (wrb) ra  <-- 0x800008c8, goto 0x80001410
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001410 beqz    a0, pc + 168           #; a0  = 101, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
      0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
      0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 0
      0x80001430 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
      0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 1 ~~> Word[0x80002e54]
      0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 0, (wrb) a4  <-- 0x80002e54
      0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e54, 101 ~~> Byte[0x80002e9c]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 1
      0x80001444 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
      0x80001448 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
      0x8000144c addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
      0x80001450 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
      0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800014b8 ret                            #; ra  = 0x800008c8, goto 0x800008c8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800008c8 addi    s0, s0, 1              #; s0  = 0x80002b02, (wrb) s0  <-- 0x80002b03
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800008cc addi    s10, s10, 1            #; s10 = 0x80002b04, (wrb) s10 <-- 0x80002b05
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800008d0 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800008d4 lbu     a0, 0(s0)              #; s0  = 0x80002b03, a0  <~~ Byte[0x80002b03]
                                                #; (lsu) a0  <-- 114
      0x800008d8 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x800008b0
      0x800008b0 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800008b4 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
      0x800008b8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800008bc mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
      0x800008c0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800008c4 jalr    s2                     #; s2  = 0x80001410, (wrb) ra  <-- 0x800008c8, goto 0x80001410
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001410 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
      0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
      0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 1
      0x80001430 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
      0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 2 ~~> Word[0x80002e54]
      0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 1, (wrb) a4  <-- 0x80002e55
      0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e55, 114 ~~> Byte[0x80002e9d]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 2
      0x80001444 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
      0x80001448 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
      0x8000144c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001450 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800014b8 ret                            #; ra  = 0x800008c8, goto 0x800008c8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800008c8 addi    s0, s0, 1              #; s0  = 0x80002b03, (wrb) s0  <-- 0x80002b04
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800008cc addi    s10, s10, 1            #; s10 = 0x80002b05, (wrb) s10 <-- 0x80002b06
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800008d0 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800008d4 lbu     a0, 0(s0)              #; s0  = 0x80002b04, a0  <~~ Byte[0x80002b04]
                                                #; (lsu) a0  <-- 114
      0x800008d8 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x800008b0
      0x800008b0 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800008b4 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
      0x800008b8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800008bc mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
      0x800008c0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800008c4 jalr    s2                     #; s2  = 0x80001410, (wrb) ra  <-- 0x800008c8, goto 0x80001410
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001410 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
      0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
      0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 2
      0x80001430 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
      0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 3 ~~> Word[0x80002e54]
      0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 2, (wrb) a4  <-- 0x80002e56
      0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e56, 114 ~~> Byte[0x80002e9e]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 3
      0x80001444 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
      0x80001448 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
      0x8000144c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001450 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800014b8 ret                            #; ra  = 0x800008c8, goto 0x800008c8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800008c8 addi    s0, s0, 1              #; s0  = 0x80002b04, (wrb) s0  <-- 0x80002b05
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800008cc addi    s10, s10, 1            #; s10 = 0x80002b06, (wrb) s10 <-- 0x80002b07
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800008d0 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800008d4 lbu     a0, 0(s0)              #; s0  = 0x80002b05, a0  <~~ Byte[0x80002b05]
                                                #; (lsu) a0  <-- 111
      0x800008d8 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x800008b0
      0x800008b0 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800008b4 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
      0x800008b8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800008bc mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
      0x800008c0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800008c4 jalr    s2                     #; s2  = 0x80001410, (wrb) ra  <-- 0x800008c8, goto 0x80001410
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001410 beqz    a0, pc + 168           #; a0  = 111, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
      0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
      0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 3
      0x80001430 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
      0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 4 ~~> Word[0x80002e54]
      0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 3, (wrb) a4  <-- 0x80002e57
      0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e57, 111 ~~> Byte[0x80002e9f]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 4
      0x80001444 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
      0x80001448 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
      0x8000144c addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
      0x80001450 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
      0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800014b8 ret                            #; ra  = 0x800008c8, goto 0x800008c8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800008c8 addi    s0, s0, 1              #; s0  = 0x80002b05, (wrb) s0  <-- 0x80002b06
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800008cc addi    s10, s10, 1            #; s10 = 0x80002b07, (wrb) s10 <-- 0x80002b08
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800008d0 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800008d4 lbu     a0, 0(s0)              #; s0  = 0x80002b06, a0  <~~ Byte[0x80002b06]
                                                #; (lsu) a0  <-- 114
      0x800008d8 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x800008b0
      0x800008b0 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800008b4 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
      0x800008b8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800008bc mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
      0x800008c0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800008c4 jalr    s2                     #; s2  = 0x80001410, (wrb) ra  <-- 0x800008c8, goto 0x80001410
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001410 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
      0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
      0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 4
      0x80001430 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
      0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 5 ~~> Word[0x80002e54]
      0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 4, (wrb) a4  <-- 0x80002e58
      0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e58, 114 ~~> Byte[0x80002ea0]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 5
      0x80001444 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
      0x80001448 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
      0x8000144c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001450 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800014b8 ret                            #; ra  = 0x800008c8, goto 0x800008c8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800008c8 addi    s0, s0, 1              #; s0  = 0x80002b06, (wrb) s0  <-- 0x80002b07
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800008cc addi    s10, s10, 1            #; s10 = 0x80002b08, (wrb) s10 <-- 0x80002b09
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800008d0 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800008d4 lbu     a0, 0(s0)              #; s0  = 0x80002b07, a0  <~~ Byte[0x80002b07]
                                                #; (lsu) a0  <-- 32
      0x800008d8 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x800008b0
      0x800008b0 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800008b4 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
      0x800008b8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800008bc mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
      0x800008c0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800008c4 jalr    s2                     #; s2  = 0x80001410, (wrb) ra  <-- 0x800008c8, goto 0x80001410
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001410 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
      0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
      0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 5
      0x80001430 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
      0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 6 ~~> Word[0x80002e54]
      0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 5, (wrb) a4  <-- 0x80002e59
      0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e59, 32 ~~> Byte[0x80002ea1]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 6
      0x80001444 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
      0x80001448 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
      0x8000144c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x80001450 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800014b8 ret                            #; ra  = 0x800008c8, goto 0x800008c8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800008c8 addi    s0, s0, 1              #; s0  = 0x80002b07, (wrb) s0  <-- 0x80002b08
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800008cc addi    s10, s10, 1            #; s10 = 0x80002b09, (wrb) s10 <-- 0x80002b0a
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800008d0 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800008d4 lbu     a0, 0(s0)              #; s0  = 0x80002b08, a0  <~~ Byte[0x80002b08]
                                                #; (lsu) a0  <-- 61
      0x800008d8 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x800008b0
      0x800008b0 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800008b4 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
      0x800008b8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800008bc mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
      0x800008c0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800008c4 jalr    s2                     #; s2  = 0x80001410, (wrb) ra  <-- 0x800008c8, goto 0x80001410
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001410 beqz    a0, pc + 168           #; a0  = 61, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
      0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
      0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 6
      0x80001430 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
      0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 7 ~~> Word[0x80002e54]
      0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 6, (wrb) a4  <-- 0x80002e5a
      0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e5a, 61 ~~> Byte[0x80002ea2]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 7
      0x80001444 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
      0x80001448 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
      0x8000144c addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
      0x80001450 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
      0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800014b8 ret                            #; ra  = 0x800008c8, goto 0x800008c8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800008c8 addi    s0, s0, 1              #; s0  = 0x80002b08, (wrb) s0  <-- 0x80002b09
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800008cc addi    s10, s10, 1            #; s10 = 0x80002b0a, (wrb) s10 <-- 0x80002b0b
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800008d0 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800008d4 lbu     a0, 0(s0)              #; s0  = 0x80002b09, a0  <~~ Byte[0x80002b09]
                                                #; (lsu) a0  <-- 32
      0x800008d8 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x800008b0
      0x800008b0 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800008b4 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
      0x800008b8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800008bc mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
      0x800008c0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800008c4 jalr    s2                     #; s2  = 0x80001410, (wrb) ra  <-- 0x800008c8, goto 0x80001410
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001410 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
      0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
      0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 7
      0x80001430 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
      0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 8 ~~> Word[0x80002e54]
      0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 7, (wrb) a4  <-- 0x80002e5b
      0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e5b, 32 ~~> Byte[0x80002ea3]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 8
      0x80001444 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
      0x80001448 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
      0x8000144c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x80001450 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800014b8 ret                            #; ra  = 0x800008c8, goto 0x800008c8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800008c8 addi    s0, s0, 1              #; s0  = 0x80002b09, (wrb) s0  <-- 0x80002b0a
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800008cc addi    s10, s10, 1            #; s10 = 0x80002b0b, (wrb) s10 <-- 0x80002b0c
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800008d0 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800008d4 lbu     a0, 0(s0)              #; s0  = 0x80002b0a, a0  <~~ Byte[0x80002b0a]
                                                #; (lsu) a0  <-- 37
      0x800008d8 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x800008b0
      0x800008b0 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x800008e0
; _vsnprintf.llvm.1805434900161566649 (printf.c:602)
      0x800008e0 li      s0, 0                  #; (wrb) s0  <-- 0
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800008e4 j       pc + 0x10              #; goto 0x800008f4
; _vsnprintf.llvm.1805434900161566649 (printf.c:604)
      0x800008f4 lbu     a0, -1(s10)            #; s10 = 0x80002b0c, a0  <~~ Byte[0x80002b0b]
                                                #; (lsu) a0  <-- 102
      0x800008f8 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
      0x800008fc bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000934
; _is_digit (printf.c:183)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000934 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
      0x80000938 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
; _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x8000093c addi    a1, s10, -1            #; s10 = 0x80002b0c, (wrb) a1  <-- 0x80002b0b
      0x80000940 li      a3, 9                  #; (wrb) a3  <-- 9
      0x80000944 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x800009c0
; _vsnprintf.llvm.1805434900161566649 (printf.c:619)
      0x800009c0 li      a2, 42                 #; (wrb) a2  <-- 42
      0x800009c4 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000a14
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a14 li      s6, 0                  #; (wrb) s6  <-- 0
      0x80000a18 mv      s10, a1                #; a1  = 0x80002b0b, (wrb) s10 <-- 0x80002b0b
; _vsnprintf.llvm.1805434900161566649 (printf.c:633)
      0x80000a1c beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000a20 li      s7, 0                  #; (wrb) s7  <-- 0
      0x80000a24 j       pc + 0xc               #; goto 0x80000a30
; _vsnprintf.llvm.1805434900161566649 (printf.c:647)
      0x80000a30 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
      0x80000a34 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
      0x80000a38 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
      0x80000a3c or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
      0x80000a40 li      a2, 9                  #; (wrb) a2  <-- 9
      0x80000a44 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000aa8
; _vsnprintf.llvm.1805434900161566649 (printf.c:683)
      0x80000aa8 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
      0x80000aac li      a2, 83                 #; (wrb) a2  <-- 83
      0x80000ab0 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000ab4 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
      0x80000ab8 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002ab8
      0x80000abc addi    a2, a2, 200            #; a2  = 0x80002ab8, (wrb) a2  <-- 0x80002b80
      0x80000ac0 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002b80, (wrb) a1  <-- 0x80002c84
      0x80000ac4 lw      a2, 0(a1)              #; a1  = 0x80002c84, a2  <~~ Word[0x80002c84]
      0x80000ac8 li      a1, 8                  #; (wrb) a1  <-- 8
      0x80000acc li      s8, 16                 #; (wrb) s8  <-- 16
                                                #; (lsu) a2  <-- 0x80000b00
      0x80000ad0 jr      a2                     #; a2  = 0x80000b00, goto 0x80000b00
; _vsnprintf.llvm.1805434900161566649 (printf.c:760)
      0x80000b00 li      a1, 70                 #; (wrb) a1  <-- 70
      0x80000b04 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000b0c
; _vsnprintf.llvm.1805434900161566649 (printf.c:761)
      0x80000b0c addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
      0x80000b10 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
      0x80000b18 addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
      0x80000b1c mv      a0, s2                 #; s2  = 0x80001410, (wrb) a0  <-- 0x80001410
      0x80000b14 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
      0x80000b20 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
; ?? (??:0)
                                                #; (f:lsu) fa0  <-- 0.0
; _vsnprintf.llvm.1805434900161566649 (printf.c:761)
      0x80000b24 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
      0x80000b28 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000b2c mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
      0x80000b30 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
      0x80000b34 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
      0x80000b38 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001b38
      0x80000b3c jalr    ra, ra, -1656          #; ra  = 0x80001b38, (wrb) ra  <-- 0x80000b40, goto 0x800014c0
; _ftoa (printf.c:340)
      0x800014c0 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
      0x800014c4 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000b40 ~~> Word[0x0011fe9c]
      0x800014c8 sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
      0x800014cc sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
      0x800014d0 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x80001410 ~~> Word[0x0011fe90]
      0x800014d4 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
      0x800014d8 sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
      0x800014dc sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
      0x800014e0 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
      0x800014e4 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
      0x800014e8 sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
      0x800014ec sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
      0x800014f0 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002b0b ~~> Word[0x0011fe70]
      0x800014f4 fsd     fs0, 56(sp)            #; 5700.0 ~~> Doub[0x0011fe68]
      0x80001500 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003500
      0x800014f8 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
      0x80001504 addi    s1, s1, -1880          #; s1  = 0x80003500, (wrb) s1  <-- 0x80002da8
      0x800014fc fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
; _ftoa (printf.c:351)
      0x80001510 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
      0x80001508 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80002da8]
; _ftoa (printf.c:0)
      0x80001514 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
      0x80001518 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
      0x8000151c mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
      0x80001520 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
      0x80001524 mv      s7, a0                 #; a0  = 0x80001410, (wrb) s7  <-- 0x80001410
                                                #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
; _ftoa (printf.c:351)
      0x8000150c fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
                                                #; (acc) a6  <-- 0x0e049863
      0x80001528 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001618
; _ftoa (printf.c:0)
      0x8000161c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000261c
      0x80001618 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
      0x80001620 addi    a0, a0, 1940           #; a0  = 0x8000261c, (wrb) a0  <-- 0x80002db0
                                                #; (f:fpu) fs0  <-- 0.0
      0x80001624 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002db0]
                                                #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
; _ftoa (printf.c:353)
      0x80001628 fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
                                                #; (acc) t3  <-- 0x00051e63
      0x8000162c bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80001648
; _ftoa (printf.c:0)
      0x80001648 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002648
      0x8000164c addi    a0, a0, 1904           #; a0  = 0x80002648, (wrb) a0  <-- 0x80002db8
      0x80001654 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002654
      0x80001658 addi    a0, a0, 1900           #; a0  = 0x80002654, (wrb) a0  <-- 0x80002dc0
      0x80001650 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002db8]
      0x8000165c fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002dc0]
                                                #; (f:lsu) ft0  <-- 1000000000.0000000
; _ftoa (printf.c:358)
      0x80001660 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
                                                #; (acc) a0  <-- 0x00b57533
                                                #; (f:lsu) ft1  <-- -1000000000.0000000
      0x80001664 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
                                                #; (acc) a0  <-- 0x00b57533
      0x80001668 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
      0x8000166c bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001768
; _ftoa (printf.c:374)
      0x80001768 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
      0x8000176c li      s8, 6                  #; (wrb) s8  <-- 6
      0x80001770 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001778
; _ftoa (printf.c:0)
      0x80001778 li      a0, 10                 #; (wrb) a0  <-- 10
      0x8000177c fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
                                                #; (f:fpu) fs2  <-- 0.0
; _ftoa (printf.c:378)
      0x80001780 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x800017b8
; _ftoa (printf.c:0)
      0x800017b8 li      s0, 0                  #; (wrb) s0  <-- 0
; _ftoa (printf.c:384)
      0x800017bc slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
      0x800017c0 auipc   a1, 0x1                #; (wrb) a1  <-- 0x800027c0
      0x800017c4 addi    a1, a1, 1296           #; a1  = 0x800027c0, (wrb) a1  <-- 0x80002cd0
      0x800017c8 add     a0, a0, a1             #; a0  = 48, a1  = 0x80002cd0, (wrb) a0  <-- 0x80002d00
      0x800017cc fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002d00]
; _ftoa (printf.c:383)
      0x800017d0 fcvt.w.d s1, fs2               #; fs2  = 0.0
; _ftoa (printf.c:384)
      0x800017d4 fcvt.d.w ft0, s1               #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
; _ftoa (printf.c:0)
      0x800017e0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800027e0
      0x800017d8 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
      0x800017e4 addi    a0, a0, 1512           #; a0  = 0x800027e0, (wrb) a0  <-- 0x80002dc8
                                                #; (f:lsu) ft1  <-- 1000000.0000000
                                                #; (f:fpu) ft0  <-- 0.0
; _ftoa (printf.c:384)
      0x800017dc fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
; _ftoa (printf.c:0)
      0x800017e8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002dc8]
                                                #; (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:385)
      0x800017ec fcvt.wu.d a0, ft2              #; ft2  = 0.0
                                                #; (acc) gp  <-- 0xd21501d3
; _ftoa (printf.c:386)
      0x800017f0 fcvt.d.wu ft3, a0              #; ac1  = 0
                                                #; (f:fpu) ft3  <-- 0.0
      0x800017f4 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0, (f:lsu) ft0  <-- 0.5
                                                #; (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:388)
      0x800017f8 fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
      0x800017fc bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x8000181c
; _ftoa (printf.c:396)
      0x8000181c flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
                                                #; (acc) s4  <-- 0x00059a63
      0x80001820 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001834
; _ftoa (printf.c:403)
      0x80001838 beqz    s8, pc + 216           #; s8  = 6, not taken
      0x80001834 fcvt.d.w fs1, zero             #; ac1  = 0
; _ftoa (printf.c:0)
      0x8000183c li      a2, 0                  #; (wrb) a2  <-- 0
                                                #; (f:fpu) fs1  <-- 0.0
      0x80001840 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:414)
      0x80001844 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
      0x80001848 li      t0, 32                 #; (wrb) t0  <-- 32
      0x8000184c sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
      0x80001850 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
      0x80001854 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
      0x80001858 li      a6, 10                 #; (wrb) a6  <-- 10
      0x8000185c li      a7, 9                  #; (wrb) a7  <-- 9
      0x80001860 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
; _ftoa (printf.c:0)
      0x80001864 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
; _ftoa (printf.c:417)
      0x80001868 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x8000186c srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001870 mul     a3, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a3  <-- 0x40d586b3
      0x80001874 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
; _ftoa (printf.c:416)
      0x80001878 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
      0x8000187c add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
      0x80001880 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
; _ftoa (printf.c:417)
      0x80001884 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
      0x80001888 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
; _ftoa (printf.c:422)
      0x8000188c add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
      0x80001890 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
      0x80001894 li      a3, 30                 #; (wrb) a3  <-- 30
      0x80001898 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
      0x8000189c xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
      0x800018a0 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
      0x800018a4 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
      0x800018a8 bnez    a3, pc + 136           #; a3  = 0, not taken
; _ftoa (printf.c:0)
      0x800018ac addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
; _ftoa (printf.c:422)
      0x800018b0 add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
      0x800018b4 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
      0x800018b8 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
      0x800018bc add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
      0x800018c0 li      a1, 31                 #; (wrb) a1  <-- 31
      0x800018c4 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
      0x800018c8 add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
      0x800018cc mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
      0x800018d0 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x800018d8
      0x800018d8 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
; _ftoa (printf.c:423)
      0x800018dc li      a1, 48                 #; (wrb) a1  <-- 48
      0x800018e0 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x800008e0
      0x800018e4 jalr    ra, ra, -904           #; ra  = 0x800008e0, (wrb) ra  <-- 0x800018e8, goto 0x80000558
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
      0x800005ec ret                            #; ra  = 0x800018e8, goto 0x800018e8
; _ftoa (printf.c:0)
      0x800018e8 li      a0, 0                  #; (wrb) a0  <-- 0
; _ftoa (printf.c:422)
      0x800018ec add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
      0x800018f0 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
      0x800018f4 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
      0x800018f8 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
      0x800018fc and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001900 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x80001904 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800018ec
      0x800018ec add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
      0x800018f0 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
      0x800018f4 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
      0x800018f8 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
      0x800018fc and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001900 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
      0x80001904 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800018ec
      0x800018ec add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
      0x800018f0 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
      0x800018f4 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
      0x800018f8 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
      0x800018fc and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001900 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
      0x80001904 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800018ec
      0x800018ec add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
      0x800018f0 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
      0x800018f4 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
      0x800018f8 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
      0x800018fc and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001900 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
      0x80001904 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800018ec
      0x800018ec add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
      0x800018f0 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
      0x800018f4 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
      0x800018f8 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
      0x800018fc and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
      0x80001900 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
      0x80001904 bnez    a2, pc - 24            #; a2  = 0, not taken
; _ftoa (printf.c:425)
      0x80001908 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
      0x8000190c j       pc + 0x28              #; goto 0x80001934
      0x80001934 beqz    a1, pc + 28            #; a1  = 1, not taken
; _ftoa (printf.c:427)
      0x80001938 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
; _ftoa (printf.c:0)
      0x8000193c addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:427)
      0x80001940 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
      0x80001944 li      a1, 46                 #; (wrb) a1  <-- 46
      0x80001948 sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
      0x8000194c j       pc + 0x8               #; goto 0x80001954
; _ftoa (printf.c:0)
      0x80001954 li      a0, 32                 #; (wrb) a0  <-- 32
; _ftoa (printf.c:432)
      0x80001958 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
      0x8000195c bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
; _ftoa (printf.c:0)
      0x80001960 li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001968 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
      0x80001964 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
      0x8000196c addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
      0x80001970 li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001974 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
      0x80001978 li      a4, 18                 #; (wrb) a4  <-- 18
; _ftoa (printf.c:432)
      0x8000197c beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
; _ftoa (printf.c:434)
      0x80001980 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
                                                #; (acc) a5  <-- 0x01f55793
      0x80001984 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
      0x80001988 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
      0x8000198c add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001990 mul     a5, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f487b3
      0x80001994 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
; _ftoa (printf.c:433)
      0x80001998 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
      0x8000199c addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
      0x800019a0 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
; _ftoa (printf.c:434)
      0x800019a4 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
; _ftoa (printf.c:433)
      0x800019a8 sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
; _ftoa (printf.c:0)
      0x800019ac mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
      0x800019b0 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:434)
      0x800019b4 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
      0x800019b8 j       pc + 0x8               #; goto 0x800019c0
; _ftoa (printf.c:440)
      0x800019c0 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:0)
      0x800019c4 li      a0, 1                  #; (wrb) a0  <-- 1
; _ftoa (printf.c:440)
      0x800019c8 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001a34
; _ftoa (printf.c:0)
      0x80001a34 li      a0, 31                 #; (wrb) a0  <-- 31
; _ftoa (printf.c:449)
      0x80001a38 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
; _ftoa (printf.c:450)
      0x80001a3c beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001a54
; _ftoa (printf.c:453)
      0x80001a54 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
      0x80001a58 bnez    a0, pc + 32            #; a0  = 0, not taken
; _ftoa (printf.c:456)
      0x80001a5c andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
      0x80001a60 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001a8c
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001a8c snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
      0x80001a90 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
      0x80001a94 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x80001a98 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
; _ftoa (printf.c:0)
      0x80001a9c andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
      0x80001aa0 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001aa4 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001ad0
; _ftoa (printf.c:0)
      0x80001ad0 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ad4 beqz    s8, pc + 56            #; s8  = 8, not taken
      0x80001ad8 addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001adc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
      0x80001ae0 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
      0x80001ae4 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
      0x80001ae8 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
      0x80001aec mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001af0 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
      0x80001af4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001af8 jalr    s7                     #; s7  = 0x80001410, (wrb) ra  <-- 0x80001afc, goto 0x80001410
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001410 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
      0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
      0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 8
      0x80001430 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
      0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 9 ~~> Word[0x80002e54]
      0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 8, (wrb) a4  <-- 0x80002e5c
      0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e5c, 48 ~~> Byte[0x80002ea4]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 9
      0x80001444 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
      0x80001448 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
      0x8000144c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001450 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800014b8 ret                            #; ra  = 0x80001afc, goto 0x80001afc
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001afc mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
      0x80001b00 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001b04 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001adc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001adc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
      0x80001ae0 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
      0x80001ae4 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
      0x80001ae8 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
      0x80001aec mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001af0 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
      0x80001af4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001af8 jalr    s7                     #; s7  = 0x80001410, (wrb) ra  <-- 0x80001afc, goto 0x80001410
                                                #; (lsu) a0  <-- 46
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001410 beqz    a0, pc + 168           #; a0  = 46, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
      0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
      0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 9
      0x80001430 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
      0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 10 ~~> Word[0x80002e54]
      0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 9, (wrb) a4  <-- 0x80002e5d
      0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e5d, 46 ~~> Byte[0x80002ea5]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 10
      0x80001444 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
      0x80001448 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
      0x8000144c addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
      0x80001450 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
      0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800014b8 ret                            #; ra  = 0x80001afc, goto 0x80001afc
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001afc mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
      0x80001b00 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001b04 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001adc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001adc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
      0x80001ae0 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
      0x80001ae4 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
      0x80001ae8 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
      0x80001aec mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001af0 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
      0x80001af4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001af8 jalr    s7                     #; s7  = 0x80001410, (wrb) ra  <-- 0x80001afc, goto 0x80001410
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001410 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
      0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
      0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 10
      0x80001430 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
      0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 11 ~~> Word[0x80002e54]
      0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 10, (wrb) a4  <-- 0x80002e5e
      0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e5e, 48 ~~> Byte[0x80002ea6]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 11
      0x80001444 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
      0x80001448 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
      0x8000144c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001450 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800014b8 ret                            #; ra  = 0x80001afc, goto 0x80001afc
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001afc mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
      0x80001b00 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001b04 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001adc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001adc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
      0x80001ae0 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
      0x80001ae4 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
      0x80001ae8 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
      0x80001aec mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001af0 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
      0x80001af4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001af8 jalr    s7                     #; s7  = 0x80001410, (wrb) ra  <-- 0x80001afc, goto 0x80001410
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001410 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
      0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
      0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 11
      0x80001430 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
      0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 12 ~~> Word[0x80002e54]
      0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 11, (wrb) a4  <-- 0x80002e5f
      0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e5f, 48 ~~> Byte[0x80002ea7]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 12
      0x80001444 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
      0x80001448 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
      0x8000144c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001450 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800014b8 ret                            #; ra  = 0x80001afc, goto 0x80001afc
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001afc mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
      0x80001b00 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001b04 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001adc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001adc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
      0x80001ae0 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
      0x80001ae4 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
      0x80001ae8 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
      0x80001aec mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001af0 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
      0x80001af4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001af8 jalr    s7                     #; s7  = 0x80001410, (wrb) ra  <-- 0x80001afc, goto 0x80001410
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001410 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
      0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
      0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 12
      0x80001430 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
      0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 13 ~~> Word[0x80002e54]
      0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 12, (wrb) a4  <-- 0x80002e60
      0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e60, 48 ~~> Byte[0x80002ea8]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 13
      0x80001444 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
      0x80001448 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
      0x8000144c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001450 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800014b8 ret                            #; ra  = 0x80001afc, goto 0x80001afc
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001afc mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
      0x80001b00 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001b04 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001adc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001adc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
      0x80001ae0 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
      0x80001ae4 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
      0x80001ae8 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
      0x80001aec mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001af0 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
      0x80001af4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001af8 jalr    s7                     #; s7  = 0x80001410, (wrb) ra  <-- 0x80001afc, goto 0x80001410
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001410 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
      0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
      0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 13
      0x80001430 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
      0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 14 ~~> Word[0x80002e54]
      0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 13, (wrb) a4  <-- 0x80002e61
      0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e61, 48 ~~> Byte[0x80002ea9]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 14
      0x80001444 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
      0x80001448 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
      0x8000144c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001450 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800014b8 ret                            #; ra  = 0x80001afc, goto 0x80001afc
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001afc mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
      0x80001b00 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001b04 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001adc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001adc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
      0x80001ae0 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
      0x80001ae4 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
      0x80001ae8 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
      0x80001aec mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001af0 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
      0x80001af4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001af8 jalr    s7                     #; s7  = 0x80001410, (wrb) ra  <-- 0x80001afc, goto 0x80001410
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001410 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
      0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
      0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 14
      0x80001430 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
      0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 15 ~~> Word[0x80002e54]
      0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 14, (wrb) a4  <-- 0x80002e62
      0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e62, 48 ~~> Byte[0x80002eaa]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 15
      0x80001444 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
      0x80001448 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
      0x8000144c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001450 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800014b8 ret                            #; ra  = 0x80001afc, goto 0x80001afc
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001afc mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
      0x80001b00 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001b04 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001adc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001adc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
      0x80001ae0 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
      0x80001ae4 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
      0x80001ae8 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
      0x80001aec mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001af0 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
      0x80001af4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001af8 jalr    s7                     #; s7  = 0x80001410, (wrb) ra  <-- 0x80001afc, goto 0x80001410
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001410 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
      0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
      0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 15
      0x80001430 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
      0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 16 ~~> Word[0x80002e54]
      0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 15, (wrb) a4  <-- 0x80002e63
      0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e63, 48 ~~> Byte[0x80002eab]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 16
      0x80001444 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
      0x80001448 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
      0x8000144c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001450 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800014b8 ret                            #; ra  = 0x80001afc, goto 0x80001afc
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001afc mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
      0x80001b00 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001b04 bnez    s10, pc - 40           #; s10 = 0, not taken
      0x80001b08 j       pc + 0x8               #; goto 0x80001b10
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001b10 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
      0x80001b14 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
      0x80001b18 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
; _out_rev (printf.c:216)
;  in _ftoa (printf.c:461)
      0x80001b1c xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
      0x80001b20 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x80001b24 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001b54
; _ftoa (printf.c:0)
      0x80001b54 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
; _ftoa (printf.c:462)
      0x80001b58 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
      0x80001b5c fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
      0x80001b68 lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
      0x80001b60 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
      0x80001b64 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
                                                #; (f:lsu) fs0  <-- 5700.0
                                                #; (lsu) s10 <-- 0x80002b0b
      0x80001b6c lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
                                                #; (lsu) s9  <-- 8
      0x80001b70 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
                                                #; (lsu) s8  <-- 16
      0x80001b74 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
                                                #; (lsu) s7  <-- 0
      0x80001b78 lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
                                                #; (lsu) s6  <-- 0
      0x80001b7c lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
                                                #; (lsu) s5  <-- -1
      0x80001b80 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
                                                #; (lsu) s4  <-- 0x0011ff17
      0x80001b84 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
                                                #; (lsu) s3  <-- 0x0011ff30
      0x80001b88 lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
                                                #; (lsu) s2  <-- 0x80001410
      0x80001b8c lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
                                                #; (lsu) s1  <-- 8
      0x80001b90 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
                                                #; (lsu) s0  <-- 0
      0x80001b94 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
      0x80001b98 addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
                                                #; (lsu) ra  <-- 0x80000b40
      0x80001b9c ret                            #; ra  = 0x80000b40, goto 0x80000b40
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b40 j       pc + 0x7c0             #; goto 0x80001300
      0x80001300 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
      0x80001304 li      s6, 37                 #; (wrb) s6  <-- 37
      0x80001308 li      s7, 46                 #; (wrb) s7  <-- 46
      0x8000130c addi    s0, s10, 1             #; s10 = 0x80002b0b, (wrb) s0  <-- 0x80002b0c
      0x80001310 j       pc - 0xa74             #; goto 0x8000089c
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x8000089c addi    s10, s0, 2             #; s0  = 0x80002b0c, (wrb) s10 <-- 0x80002b0e
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800008a0 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
      0x800008a4 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800008a8 lbu     a0, 0(s0)              #; s0  = 0x80002b0c, a0  <~~ Byte[0x80002b0c]
                                                #; (lsu) a0  <-- 10
      0x800008ac beqz    a0, pc + 2824          #; a0  = 10, not taken
      0x800008b0 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x800008b4 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
      0x800008b8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800008bc mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
      0x800008c0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800008c4 jalr    s2                     #; s2  = 0x80001410, (wrb) ra  <-- 0x800008c8, goto 0x80001410
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001410 beqz    a0, pc + 168           #; a0  = 10, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
      0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
      0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 16
      0x80001430 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
      0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 17 ~~> Word[0x80002e54]
      0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 16, (wrb) a4  <-- 0x80002e64
      0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e64, 10 ~~> Byte[0x80002eac]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
                                                #; (lsu) a4  <-- 17
      0x80001444 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
      0x80001448 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
      0x8000144c addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
      0x80001450 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
      0x80001454 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
      0x80001458 bnez    a0, pc + 96            #; a0  = 0, not taken
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000145c add     a0, a3, a2             #; a3  = 0x80002e54, a2  = 0, (wrb) a0  <-- 0x80002e54
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001460 addi    a2, a0, 72             #; a0  = 0x80002e54, (wrb) a2  <-- 0x80002e9c
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001464 sw      zero, 12(a0)           #; a0  = 0x80002e54, 0 ~~> Word[0x80002e60]
      0x80001468 li      a3, 64                 #; (wrb) a3  <-- 64
      0x8000146c sw      a3, 8(a0)              #; a0  = 0x80002e54, 64 ~~> Word[0x80002e5c]
; snrt_putchar (putchar.c:26)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001470 sw      zero, 20(a0)           #; a0  = 0x80002e54, 0 ~~> Word[0x80002e68]
      0x80001474 li      a3, 1                  #; (wrb) a3  <-- 1
      0x80001478 sw      a3, 16(a0)             #; a0  = 0x80002e54, 1 ~~> Word[0x80002e64]
; snrt_putchar (putchar.c:27)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000147c sw      zero, 28(a0)           #; a0  = 0x80002e54, 0 ~~> Word[0x80002e70]
      0x80001480 sw      a2, 24(a0)             #; a0  = 0x80002e54, 0x80002e9c ~~> Word[0x80002e6c]
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001484 lw      a2, 0(a1)              #; a1  = 0x80002e54, a2  <~~ Word[0x80002e54]
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001488 addi    a3, a0, 8              #; a0  = 0x80002e54, (wrb) a3  <-- 0x80002e5c
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000148c sw      zero, 36(a0)           #; a0  = 0x80002e54, 0 ~~> Word[0x80002e78]
                                                #; (lsu) a2  <-- 17
      0x80001490 sw      a2, 32(a0)             #; a0  = 0x80002e54, 17 ~~> Word[0x80002e74]
; snrt_putchar (putchar.c:30)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001494 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003494
      0x80001498 addi    a0, a0, -1876          #; a0  = 0x80003494, (wrb) a0  <-- 0x80002d40
      0x8000149c sw      a3, 0(a0)              #; a0  = 0x80002d40, 0x80002e5c ~~> Word[0x80002d40]
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014a0 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800034a0
      0x800014a4 addi    a0, a0, -1824          #; a0  = 0x800034a0, (wrb) a0  <-- 0x80002d80
; snrt_putchar (putchar.c:31)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014a8 lw      a2, 0(a0)              #; a0  = 0x80002d80, a2  <~~ Word[0x80002d80]
                                                #; (lsu) a2  <-- 0
      0x800014ac beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800014a8
      0x800014a8 lw      a2, 0(a0)              #; a0  = 0x80002d80, a2  <~~ Word[0x80002d80]
                                                #; (lsu) a2  <-- 1
      0x800014ac beqz    a2, pc - 4             #; a2  = 1, not taken
; snrt_putchar (putchar.c:33)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014b0 sw      zero, 0(a0)            #; a0  = 0x80002d80, 0 ~~> Word[0x80002d80]
; snrt_putchar (putchar.c:35)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014b4 sw      zero, 0(a1)            #; a1  = 0x80002e54, 0 ~~> Word[0x80002e54]
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800014b8 ret                            #; ra  = 0x800008c8, goto 0x800008c8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x800008c8 addi    s0, s0, 1              #; s0  = 0x80002b0c, (wrb) s0  <-- 0x80002b0d
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x800008cc addi    s10, s10, 1            #; s10 = 0x80002b0e, (wrb) s10 <-- 0x80002b0f
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800008d0 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x800008d4 lbu     a0, 0(s0)              #; s0  = 0x80002b0d, a0  <~~ Byte[0x80002b0d]
                                                #; (lsu) a0  <-- 0
      0x800008d8 bnez    a0, pc - 40            #; a0  = 0, not taken
      0x800008dc j       pc + 0xad8             #; goto 0x800013b4
; _vsnprintf.llvm.1805434900161566649 (printf.c:853)
      0x800013b4 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
      0x800013b8 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x800013c0
      0x800013c0 li      a0, 0                  #; (wrb) a0  <-- 0
      0x800013c4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800013c8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800013cc jalr    s2                     #; s2  = 0x80001410, (wrb) ra  <-- 0x800013d0, goto 0x80001410
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001410 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x800014b8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800014b8 ret                            #; ra  = 0x800013d0, goto 0x800013d0
; _vsnprintf.llvm.1805434900161566649 (printf.c:856)
      0x800013d0 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
      0x800013d4 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
                                                #; (lsu) s11 <-- 0
      0x800013d8 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
                                                #; (lsu) s10 <-- 0
      0x800013dc lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
                                                #; (lsu) s9  <-- 0
      0x800013e0 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
                                                #; (lsu) s8  <-- 0
      0x800013e4 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
                                                #; (lsu) s7  <-- 0
      0x800013e8 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
                                                #; (lsu) s6  <-- 0
      0x800013ec lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
                                                #; (lsu) s5  <-- 0
      0x800013f0 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
                                                #; (lsu) s4  <-- 0
      0x800013f4 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
                                                #; (lsu) s3  <-- 0
      0x800013f8 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
                                                #; (lsu) s2  <-- 0
      0x800013fc lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
                                                #; (lsu) s1  <-- 0
      0x80001400 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
                                                #; (lsu) s0  <-- 0
      0x80001404 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
      0x80001408 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
                                                #; (lsu) ra  <-- 0x8000080c
      0x8000140c ret                            #; ra  = 0x8000080c, goto 0x8000080c
; printf_ (printf.c:869)
      0x8000080c lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
      0x80000810 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
                                                #; (lsu) ra  <-- 0x8000079c
      0x80000814 ret                            #; ra  = 0x8000079c, goto 0x8000079c
; main (bench_sp.c:0)
      0x8000079c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000279c
      0x800007a0 addi    a0, a0, 1540           #; a0  = 0x8000279c, (wrb) a0  <-- 0x80002da0
      0x800007a4 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002da0]
; main (bench_sp.c:60)
      0x800007b0 lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
      0x800007b4 addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
                                                #; (f:lsu) ft0  <-- 0.0001
; main (bench_sp.c:59)
      0x800007a8 flt.d   a0, ft0, fs0           #; ft0  = 0.0001, fs0  = 5700.0
                                                #; (lsu) ra  <-- 0x80002870
; main (bench_sp.c:60)
      0x800007b8 ret                            #; ra  = 0x80002870, goto 0x80002870
      0x800007ac fld     fs0, 16(sp)            #; fs0  <~~ Doub[0x0011ff50]
                                                #; (f:lsu) fs0  <-- 0.0
; ?? (start.S:184)
      0x80002870 mv      s0, a0                 #; a0  = 1, (wrb) s0  <-- 1
; ?? (start.S:191)
      0x80002874 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002874
      0x80002878 jalr    ra, ra, 524            #; ra  = 0x80002874, (wrb) ra  <-- 0x8000287c, goto 0x80002a80
; ?? (start_snitch.S:33)
      0x80002a80 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002a84 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x8000287c ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002a88 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a88
      0x80002a8c jalr    ra, ra, -1264          #; ra  = 0x80002a88, (wrb) ra  <-- 0x80002a90, goto 0x80002598
; _snrt_barrier_reg_ptr (team.c:80)
      0x80002598 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x8000259c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800025a0 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800025a4 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800025a8 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x800025ac ret                            #; ra  = 0x80002a90, goto 0x80002a90
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002a90 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002a94 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002a98 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002a9c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x8000287c
; ?? (start_snitch.S:40)
      0x80002aa0 ret                            #; ra  = 0x8000287c, goto 0x8000287c
; ?? (start.S:195)
      0x8000287c mv      a0, s0                 #; s0  = 1, (wrb) a0  <-- 1
; ?? (start.S:196)
      0x80002880 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002880
      0x80002884 jalr    ra, ra, 556            #; ra  = 0x80002880, (wrb) ra  <-- 0x80002888, goto 0x80002aac
; ?? (start_snitch.S:15)
      0x80002aac addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
; ?? (start_snitch.S:16)
      0x80002ab0 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 1 ~~> Word[0x0011ff58]
; ?? (start_snitch.S:17)
      0x80002ab4 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002888 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:18)
      0x80002ab8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002ab8
      0x80002abc jalr    ra, ra, -1344          #; ra  = 0x80002ab8, (wrb) ra  <-- 0x80002ac0, goto 0x80002578
; snrt_global_core_idx (team.c:32)
      0x80002578 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x8000257c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002580 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002584 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002588 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
; snrt_hartid (snrt.h:181)
;  in snrt_global_core_idx (team.c:32)
      0x8000258c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 0
; snrt_global_core_idx (team.c:32)
      0x80002590 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
      0x80002594 ret                            #; ra  = 0x80002ac0, goto 0x80002ac0
; ?? (start_snitch.S:20)
      0x80002ac0 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
                                                #; (lsu) t0  <-- 1
; ?? (start_snitch.S:21)
      0x80002ac4 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:22)
      0x80002ac8 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
; ?? (start_snitch.S:27)
      0x80002acc bnez    a0, pc + 24            #; a0  = 0, not taken
                                                #; (lsu) ra  <-- 0x80002888
; ?? (start_snitch.S:28)
      0x80002ad0 slli    t0, t0, 1              #; t0  = 1, (wrb) t0  <-- 2
; ?? (start_snitch.S:29)
      0x80002ad4 ori     t0, t0, 1              #; t0  = 2, (wrb) t0  <-- 3
; ?? (start_snitch.S:30)
      0x80002ad8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002ad8
      0x80002adc addi    t1, t1, 616            #; t1  = 0x80002ad8, (wrb) t1  <-- 0x80002d40
; ?? (start_snitch.S:31)
      0x80002ae0 sw      t0, 0(t1)              #; t1  = 0x80002d40, 3 ~~> Word[0x80002d40]
; ?? (start_snitch.S:32)
      0x80002ae4 ret                            #; ra  = 0x80002888, goto 0x80002888
; ?? (start.S:198)
      0x80002888 wfi                            #; 
                        tion 0 @ (12, 4927):
                           38
                           50
                          201
                            0
                      18.2632
                       0.3763
                       0.1900
                          1.0
                          1.0
                            0
                          1.0
                            0
                       0.0883
                       0.0474
                       0.5369
                         4916
                       0.4646
            tion 1 @ (4929, 5645):
                          200
                            0
                            0
                       0.5599
                       0.4274
                          1.0
                          1.0
                            1
                       3.0303
                          1.0
                       0.4178
                       0.1379
                         0.33
                          718
                       0.9777
            tion 2 @ (5647, 11425):
                          184
                          186
                           23
                            7
                      10.0753
                       0.3324
                       0.0337
                          1.0
                          1.0
                            0
                       0.8421
                       5.8696
                       0.0116
                       0.0066
                       0.5672
                         5779
                       0.3440
