; ?? (??:0)
      0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
      0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
      0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
      0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
      0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
                                                #; (lsu) t0  <-- 0x80002710
      0x00001014 jalr    t0                     #; t0  = 0x80002710, (wrb) ra  <-- 4120, goto 0x80002710
; ?? (start.S:20)
      0x80002710 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80003710
; ?? (start.S:21)
      0x80002714 addi    gp, gp, -264           #; gp  = 0x80003710, (wrb) gp  <-- 0x80003608
; ?? (start.S:28)
      0x80002718 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002718
      0x8000271c jalr    ra, ra, 964            #; ra  = 0x80002718, (wrb) ra  <-- 0x80002720, goto 0x80002adc
; ?? (start_snitch.S:16)
      0x80002adc mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
; ?? (start_snitch.S:17)
      0x80002ae0 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
                                                #; (lsu) a1  <-- 8
; ?? (start_snitch.S:18)
      0x80002ae4 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:19)
      0x80002ae8 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start_snitch.S:20)
      0x80002aec lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
                                                #; (lsu) t1  <-- 0x00020000
; ?? (start_snitch.S:21)
      0x80002af0 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
; ?? (start_snitch.S:22)
      0x80002af4 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
; ?? (start_snitch.S:23)
      0x80002af8 div     t3, a0, a1             #; a0  = 0, a1  = 8
                                                #; (acc) t4  <-- 0x027e0eb3
                                                #; (lsu) t2  <-- 0
; ?? (start_snitch.S:24)
      0x80002afc mul     t4, t3, t2             #; t3  = 0, t2  = 0
                                                #; (acc) a2  <-- 0x01d60633
; ?? (start_snitch.S:25)
      0x80002b00 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
; ?? (start_snitch.S:26)
      0x80002b04 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
; ?? (start_snitch.S:27)
      0x80002b08 remu    a0, a0, a1             #; a0  = 0, a1  = 8
; ?? (start_snitch.S:28)
      0x80002b0c ret                            #; ra  = 0x80002720, goto 0x80002720
                                                #; (acc) s0  <-- 0x00050413
; ?? (start.S:39)
      0x80002720 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:40)
      0x80002724 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
; ?? (start.S:41)
      0x80002728 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002728
      0x8000272c jalr    ra, ra, 1036           #; ra  = 0x80002728, (wrb) ra  <-- 0x80002730, goto 0x80002b34
; ?? (start_snitch.S:48)
      0x80002b34 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
; ?? (start_snitch.S:49)
      0x80002b38 ret                            #; ra  = 0x80002730, goto 0x80002730
                                                #; (lsu) a0  <-- 0
; ?? (start.S:42)
      0x80002730 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:43)
      0x80002734 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:45)
      0x80002738 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
; ?? (start.S:46)
      0x8000273c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
; ?? (start.S:47)
      0x80002740 bnez    t0, pc + 36            #; t0  = 0, not taken
; ?? (start.S:48)
      0x80002744 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002744
      0x80002748 addi    t0, t0, 1932           #; t0  = 0x80002744, (wrb) t0  <-- 0x80002ed0
; ?? (start.S:49)
      0x8000274c auipc   t1, 0x0                #; (wrb) t1  <-- 0x8000274c
      0x80002750 addi    t1, t1, 1928           #; t1  = 0x8000274c, (wrb) t1  <-- 0x80002ed4
; ?? (start.S:50)
      0x80002754 bge     t0, t1, pc + 16        #; t0  = 0x80002ed0, t1  = 0x80002ed4, not taken
; ?? (start.S:51)
      0x80002758 sw      zero, 0(t0)            #; t0  = 0x80002ed0, 0 ~~> Word[0x80002ed0]
; ?? (start.S:52)
      0x8000275c addi    t0, t0, 4              #; t0  = 0x80002ed0, (wrb) t0  <-- 0x80002ed4
; ?? (start.S:53)
      0x80002760 blt     t0, t1, pc - 8         #; t0  = 0x80002ed4, t1  = 0x80002ed4, not taken
; ?? (start.S:58)
      0x80002764 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
; ?? (start.S:59)
      0x80002768 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
; ?? (start.S:60)
      0x8000276c beqz    t0, pc + 132           #; t0  = 40, not taken
; ?? (start.S:61)
      0x80002770 fcvt.d.w ft0, zero             #; ac1  = 0
; ?? (start.S:62)
      0x80002774 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
; ?? (start.S:63)
      0x80002778 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
; ?? (start.S:64)
      0x8000277c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
                                                #; (f:fpu) ft3  <-- 0.0
; ?? (start.S:65)
      0x80002780 fcvt.d.w ft4, zero             #; ac1  = 0
; ?? (start.S:66)
      0x80002784 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
; ?? (start.S:67)
      0x80002788 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
; ?? (start.S:68)
      0x8000278c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
                                                #; (f:fpu) ft7  <-- 0.0
; ?? (start.S:69)
      0x80002790 fcvt.d.w fs0, zero             #; ac1  = 0
; ?? (start.S:70)
      0x80002794 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
; ?? (start.S:71)
      0x80002798 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
; ?? (start.S:72)
      0x8000279c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
                                                #; (f:fpu) fa1  <-- 0.0
; ?? (start.S:73)
      0x800027a0 fcvt.d.w fa2, zero             #; ac1  = 0
; ?? (start.S:74)
      0x800027a4 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
; ?? (start.S:75)
      0x800027a8 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
; ?? (start.S:76)
      0x800027ac fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
                                                #; (f:fpu) fa5  <-- 0.0
; ?? (start.S:77)
      0x800027b0 fcvt.d.w fa6, zero             #; ac1  = 0
; ?? (start.S:78)
      0x800027b4 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
; ?? (start.S:79)
      0x800027b8 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
; ?? (start.S:80)
      0x800027bc fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
                                                #; (f:fpu) fs3  <-- 0.0
; ?? (start.S:81)
      0x800027c0 fcvt.d.w fs4, zero             #; ac1  = 0
; ?? (start.S:82)
      0x800027c4 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
; ?? (start.S:83)
      0x800027c8 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
; ?? (start.S:84)
      0x800027cc fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
                                                #; (f:fpu) fs7  <-- 0.0
; ?? (start.S:85)
      0x800027d0 fcvt.d.w fs8, zero             #; ac1  = 0
; ?? (start.S:86)
      0x800027d4 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
; ?? (start.S:87)
      0x800027d8 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
; ?? (start.S:88)
      0x800027dc fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
                                                #; (f:fpu) fs11 <-- 0.0
; ?? (start.S:89)
      0x800027e0 fcvt.d.w ft8, zero             #; ac1  = 0
; ?? (start.S:90)
      0x800027e4 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
; ?? (start.S:91)
      0x800027e8 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
; ?? (start.S:92)
      0x800027ec fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
                                                #; (f:fpu) ft11 <-- 0.0
; ?? (start.S:99)
      0x800027f0 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
; ?? (start.S:100)
      0x800027f4 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
; ?? (start.S:103)
      0x800027f8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800027f8
      0x800027fc lw      t0, 900(t0)            #; t0  = 0x800027f8, t0  <~~ Word[0x80002b7c]
                                                #; (lsu) t0  <-- 136
; ?? (start.S:104)
      0x80002800 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
; ?? (start.S:105)
      0x80002804 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
; ?? (start.S:108)
      0x80002808 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002808
      0x8000280c lw      t2, 880(t2)            #; t2  = 0x80002808, t2  <~~ Word[0x80002b78]
                                                #; (lsu) t2  <-- 10
; ?? (start.S:110)
      0x80002810 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
; ?? (start.S:111)
      0x80002814 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
; ?? (start.S:112)
      0x80002818 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:113)
      0x8000281c sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
; ?? (start.S:116)
      0x80002820 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:117)
      0x80002824 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
; ?? (start.S:118)
      0x80002828 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:119)
      0x8000282c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
; ?? (start.S:124)
      0x80002830 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002830
      0x80002834 addi    t0, t0, 1496           #; t0  = 0x80002830, (wrb) t0  <-- 0x80002e08
; ?? (start.S:125)
      0x80002838 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002838
      0x8000283c addi    t1, t1, 1488           #; t1  = 0x80002838, (wrb) t1  <-- 0x80002e08
; ?? (start.S:126)
      0x80002840 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002840
      0x80002844 addi    t2, t2, 1480           #; t2  = 0x80002840, (wrb) t2  <-- 0x80002e08
; ?? (start.S:127)
      0x80002848 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002848
      0x8000284c addi    t3, t3, 1488           #; t3  = 0x80002848, (wrb) t3  <-- 0x80002e18
; ?? (start.S:128)
      0x80002850 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80002e08, (wrb) sp  <-- 0x80122d78
; ?? (start.S:129)
      0x80002854 sub     sp, sp, t1             #; sp  = 0x80122d78, t1  = 0x80002e08, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:130)
      0x80002858 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80002e08, (wrb) sp  <-- 0x80122d78
; ?? (start.S:131)
      0x8000285c sub     sp, sp, t3             #; sp  = 0x80122d78, t3  = 0x80002e18, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:132)
      0x80002860 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:133)
      0x80002864 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
; ?? (start.S:134)
      0x80002868 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:137)
      0x8000286c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
; ?? (start.S:138)
      0x80002870 bge     t0, t1, pc + 24        #; t0  = 0x80002e08, t1  = 0x80002e08, taken, goto 0x80002888
; ?? (start.S:147)
      0x80002888 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002888
      0x8000288c addi    t0, t0, 1408           #; t0  = 0x80002888, (wrb) t0  <-- 0x80002e08
; ?? (start.S:148)
      0x80002890 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002890
      0x80002894 addi    t1, t1, 1416           #; t1  = 0x80002890, (wrb) t1  <-- 0x80002e18
; ?? (start.S:149)
      0x80002898 bge     t0, t1, pc + 20        #; t0  = 0x80002e08, t1  = 0x80002e18, not taken
; ?? (start.S:150)
      0x8000289c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
; ?? (start.S:151)
      0x800028a0 addi    t0, t0, 4              #; t0  = 0x80002e08, (wrb) t0  <-- 0x80002e0c
; ?? (start.S:152)
      0x800028a4 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
; ?? (start.S:153)
      0x800028a8 blt     t0, t2, pc - 12        #; t0  = 0x80002e0c, t2  = 0x80002e08, not taken
; ?? (start.S:158)
      0x800028ac addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
; ?? (start.S:159)
      0x800028b0 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
; ?? (start.S:160)
      0x800028b4 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
; ?? (start.S:161)
      0x800028b8 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
; ?? (start.S:162)
      0x800028bc sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
; ?? (start.S:163)
      0x800028c0 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
; ?? (start.S:164)
      0x800028c4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800028c4
      0x800028c8 jalr    ra, ra, -1056          #; ra  = 0x800028c4, (wrb) ra  <-- 0x800028cc, goto 0x800024a4
; _snrt_init_team (start.c:49)
      0x800024a4 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
; _snrt_init_team (start.c:50)
      0x800024a8 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
; _snrt_init_team (start.c:51)
      0x800024ac lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
                                                #; (lsu) t1  <-- 0
      0x800024b0 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
; _snrt_init_team (start.c:52)
      0x800024b4 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
                                                #; (lsu) a6  <-- 1
; _snrt_init_team (start.c:53)
      0x800024b8 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
                                                #; (lsu) a7  <-- 1
; _snrt_init_team (start.c:52)
      0x800024bc lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
      0x800024c0 mul     a6, a7, a6             #; a7  = 1, a6  = 1
                                                #; (acc) a0  <-- 0x02580533
                                                #; (lsu) t0  <-- 8
      0x800024c4 mul     a0, a6, t0             #; a6  = 1, t0  = 8
                                                #; (acc) a2  <-- 0x00a7a623
      0x800024c8 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
; snrt_hartid (snrt.h:181)
;  in _snrt_init_team (start.c:55)
      0x800024cc csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
; _snrt_init_team (start.c:55)
      0x800024d0 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
      0x800024d4 divu    a0, a0, t0             #; a0  = 0, t0  = 8
                                                #; (acc) a6  <-- 0x00a7a823
; _snrt_init_team (start.c:54)
      0x800024d8 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
; _snrt_init_team (start.c:56)
      0x800024dc sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
; _snrt_init_team (start.c:57)
      0x800024e0 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
; _snrt_init_team (start.c:58)
      0x800024e4 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
; _snrt_init_team (start.c:60)
      0x800024e8 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
      0x800024ec lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
                                                #; (lsu) a0  <-- 0x80000000
      0x800024f0 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
; _snrt_init_team (start.c:59)
      0x800024f4 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
      0x800024f8 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
; _snrt_init_team (start.c:61)
      0x800024fc lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
                                                #; (lsu) a0  <-- 0
      0x80002500 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
      0x80002504 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
                                                #; (lsu) a1  <-- 1
      0x80002508 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
; _snrt_init_team (start.c:62)
      0x8000250c sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
      0x80002510 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
; _snrt_init_team (start.c:63)
      0x80002514 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
      0x80002518 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
; _snrt_init_team (start.c:64)
      0x8000251c lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
                                                #; (lsu) a0  <-- 0x00020000
      0x80002520 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
      0x80002524 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
      0x80002528 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
; _snrt_init_team (start.c:67)
      0x8000252c sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
      0x80002530 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
      0x80002534 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
      0x80002538 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
      0x8000253c add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
; _snrt_init_team (start.c:66)
      0x80002540 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
      0x80002544 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
; _snrt_init_team (start.c:68)
      0x80002548 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
      0x8000254c add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
      0x80002550 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
      0x80002554 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
      0x80002558 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
; _snrt_init_team (start.c:71)
      0x8000255c sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
; _snrt_init_team (start.c:72)
      0x80002560 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
; _snrt_init_team (start.c:75)
      0x80002564 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002568 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000256c sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
; _snrt_init_team (start.c:77)
      0x80002570 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002574 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
                                                #; (lsu) a1  <-- 0
; _snrt_init_team (start.c:78)
      0x80002578 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
; _snrt_init_team (start.c:77)
      0x8000257c sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 8
      0x80002580 remu    a0, a1, a0             #; a1  = 0, a0  = 8
; _snrt_init_team (start.c:76)
      0x80002584 lui     a1, 0x0                #; (wrb) a1  <-- 0
      0x80002588 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
                                                #; (acc) tp  <-- 0x00a5a223
      0x8000258c sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
      0x80002590 li      a0, 1096               #; (wrb) a0  <-- 1096
; _snrt_init_team (start.c:83)
      0x80002594 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
      0x80002598 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80003598
      0x8000259c addi    a1, a1, -1732          #; a1  = 0x80003598, (wrb) a1  <-- 0x80002ed4
      0x800025a0 add     a0, a0, a1             #; a0  = 0, a1  = 0x80002ed4, (wrb) a0  <-- 0x80002ed4
      0x800025a4 sw      zero, 0(a0)            #; a0  = 0x80002ed4, 0 ~~> Word[0x80002ed4]
; _snrt_init_team (start.c:86)
      0x800025a8 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
                                                #; (lsu) a7  <-- 0xffff0000
      0x800025ac sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
; _snrt_init_team (start.c:87)
      0x800025b0 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
; _snrt_init_team (start.c:91)
      0x800025b4 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
; _snrt_init_team (start.c:93)
      0x800025b8 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
; _snrt_init_team (start.c:92)
      0x800025bc sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      0x800025c0 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
      0x800025c4 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
; snrt_alloc_init (alloc.c:64)
;  in _snrt_init_team (start.c:97)
      0x800025c8 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
; snrt_alloc_init (alloc.c:67)
;  in _snrt_init_team (start.c:97)
      0x800025cc sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
; snrt_alloc_init (alloc.c:66)
;  in _snrt_init_team (start.c:97)
      0x800025d0 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
; snrt_alloc_init (alloc.c:68)
;  in _snrt_init_team (start.c:97)
      0x800025d4 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      0x800025d8 lw      a0, 0(a1)              #; a1  = 0x80002ed4, a0  <~~ Word[0x80002ed4]
                                                #; (lsu) a0  <-- 0
      0x800025dc addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
      0x800025e0 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
; snrt_alloc_init (alloc.c:71)
;  in _snrt_init_team (start.c:97)
      0x800025e4 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
; snrt_alloc_init (alloc.c:74)
;  in _snrt_init_team (start.c:97)
      0x800025e8 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
; snrt_alloc_init (alloc.c:75)
;  in _snrt_init_team (start.c:97)
      0x800025ec sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      0x800025f0 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800025f4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800025f8 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      0x800025fc lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002600 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002604 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
; _snrt_init_team (start.c:99)
      0x80002608 ret                            #; ra  = 0x800028cc, goto 0x800028cc
; ?? (start.S:165)
      0x800028cc lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
                                                #; (lsu) a0  <-- 0
; ?? (start.S:166)
      0x800028d0 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
                                                #; (lsu) a1  <-- 8
; ?? (start.S:167)
      0x800028d4 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start.S:168)
      0x800028d8 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
                                                #; (lsu) a3  <-- 0x0011df30
; ?? (start.S:169)
      0x800028dc lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
; ?? (start.S:170)
      0x800028e0 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:174)
      0x800028e4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800028e4
      0x800028e8 addi    t0, t0, 60             #; t0  = 0x800028e4, (wrb) t0  <-- 0x80002920
; ?? (start.S:175)
      0x800028ec csrw    mtvec, t0              #; t0  = 0x80002920, (lsu) a4  <-- 4132
; ?? (start.S:179)
      0x800028f0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800028f0
      0x800028f4 jalr    ra, ra, 544            #; ra  = 0x800028f0, (wrb) ra  <-- 0x800028f8, goto 0x80002b10
; ?? (start_snitch.S:33)
      0x80002b10 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002b14 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x800028f8 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002b18 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b18
      0x80002b1c jalr    ra, ra, -1260          #; ra  = 0x80002b18, (wrb) ra  <-- 0x80002b20, goto 0x8000262c
; _snrt_barrier_reg_ptr (team.c:80)
      0x8000262c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002630 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002634 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002638 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x8000263c lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x80002640 ret                            #; ra  = 0x80002b20, goto 0x80002b20
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002b20 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002b24 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002b28 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002b2c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x800028f8
; ?? (start_snitch.S:40)
      0x80002b30 ret                            #; ra  = 0x800028f8, goto 0x800028f8
; ?? (start.S:183)
      0x800028f8 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x800008f8
      0x800028fc jalr    ra, ra, -708           #; ra  = 0x800008f8, (wrb) ra  <-- 0x80002900, goto 0x80000634
; main (bench_sp.c:33)
      0x80000634 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_sp.c:34)
      0x80000638 sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x80002900 ~~> Word[0x0011ff5c]
      0x8000063c fsd     fs0, 16(sp)            #; 0.0 ~~> Doub[0x0011ff50]
      0x80000640 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000644 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80000648 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
; main (bench_sp.c:0)
      0x8000064c li      a0, 0                  #; (wrb) a0  <-- 0
                                                #; (lsu) a1  <-- 0
; main (bench_sp.c:34)
      0x80000650 bnez    a1, pc + 496           #; a1  = 0, not taken
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
      0x80000670 addi    a4, a0, 80             #; a0  = 0x00100000, (wrb) a4  <-- 0x00100050
      0x80000674 add     a3, a3, a1             #; a3  = 0x0001df30, a1  = 0x00100000, (wrb) a3  <-- 0x0011df30
      0x80000678 bgeu    a3, a4, pc + 24        #; a3  = 0x0011df30, a4  = 0x00100050, taken, goto 0x80000690
; snrt_l1alloc (alloc.c:33)
;  in main (bench_sp.c:38)
      0x80000690 mv      a1, a0                 #; a0  = 0x00100000, (wrb) a1  <-- 0x00100000
; snrt_l1alloc (alloc.c:34)
;  in main (bench_sp.c:38)
      0x80000694 sw      a4, 88(a2)             #; a2  = 0x0011ff70, 0x00100050 ~~> Word[0x0011ffc8]
; snrt_l1alloc (alloc.c:25)
;  in main (bench_sp.c:39)
      0x80000698 addi    a5, a0, 160            #; a0  = 0x00100000, (wrb) a5  <-- 0x001000a0
      0x8000069c mv      a0, a4                 #; a4  = 0x00100050, (wrb) a0  <-- 0x00100050
      0x800006a0 bgeu    a3, a5, pc - 24        #; a3  = 0x0011df30, a5  = 0x001000a0, taken, goto 0x80000688
; snrt_l1alloc (alloc.c:34)
;  in main (bench_sp.c:39)
      0x80000688 sw      a5, 88(a2)             #; a2  = 0x0011ff70, 0x001000a0 ~~> Word[0x0011ffc8]
      0x8000068c j       pc + 0x1c              #; goto 0x800006a8
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:41)
      0x800006a8 sw      zero, 4(a1)            #; a1  = 0x00100000, 0 ~~> Word[0x00100004]
      0x800006ac sw      zero, 0(a1)            #; a1  = 0x00100000, 0 ~~> Word[0x00100000]
      0x800006b0 lui     a6, 0x3ff00            #; (wrb) a6  <-- 0x3ff00000
      0x800006b4 sw      a6, 12(a1)             #; a1  = 0x00100000, 0x3ff00000 ~~> Word[0x0010000c]
      0x800006b8 sw      zero, 8(a1)            #; a1  = 0x00100000, 0 ~~> Word[0x00100008]
      0x800006bc lui     a7, 0x40000            #; (wrb) a7  <-- 0x40000000
      0x800006c0 sw      a7, 20(a1)             #; a1  = 0x00100000, 0x40000000 ~~> Word[0x00100014]
      0x800006c4 sw      zero, 16(a1)           #; a1  = 0x00100000, 0 ~~> Word[0x00100010]
      0x800006c8 lui     t0, 0x40080            #; (wrb) t0  <-- 0x40080000
      0x800006cc sw      t0, 28(a1)             #; a1  = 0x00100000, 0x40080000 ~~> Word[0x0010001c]
      0x800006d0 sw      zero, 24(a1)           #; a1  = 0x00100000, 0 ~~> Word[0x00100018]
      0x800006d4 lui     t1, 0x40100            #; (wrb) t1  <-- 0x40100000
      0x800006d8 sw      t1, 36(a1)             #; a1  = 0x00100000, 0x40100000 ~~> Word[0x00100024]
      0x800006dc sw      zero, 32(a1)           #; a1  = 0x00100000, 0 ~~> Word[0x00100020]
      0x800006e0 lui     t2, 0x40140            #; (wrb) t2  <-- 0x40140000
      0x800006e4 sw      t2, 44(a1)             #; a1  = 0x00100000, 0x40140000 ~~> Word[0x0010002c]
      0x800006e8 sw      zero, 40(a1)           #; a1  = 0x00100000, 0 ~~> Word[0x00100028]
      0x800006ec lui     a3, 0x40180            #; (wrb) a3  <-- 0x40180000
      0x800006f0 sw      a3, 52(a1)             #; a1  = 0x00100000, 0x40180000 ~~> Word[0x00100034]
      0x800006f4 sw      zero, 48(a1)           #; a1  = 0x00100000, 0 ~~> Word[0x00100030]
      0x800006f8 lui     a4, 0x401c0            #; (wrb) a4  <-- 0x401c0000
      0x800006fc sw      a4, 60(a1)             #; a1  = 0x00100000, 0x401c0000 ~~> Word[0x0010003c]
      0x80000700 sw      zero, 56(a1)           #; a1  = 0x00100000, 0 ~~> Word[0x00100038]
      0x80000704 lui     a5, 0x40200            #; (wrb) a5  <-- 0x40200000
      0x80000708 sw      a5, 68(a1)             #; a1  = 0x00100000, 0x40200000 ~~> Word[0x00100044]
      0x8000070c sw      zero, 64(a1)           #; a1  = 0x00100000, 0 ~~> Word[0x00100040]
      0x80000710 sw      zero, 72(a1)           #; a1  = 0x00100000, 0 ~~> Word[0x00100048]
      0x80000714 lui     a2, 0x40220            #; (wrb) a2  <-- 0x40220000
      0x80000718 sw      a2, 76(a1)             #; a1  = 0x00100000, 0x40220000 ~~> Word[0x0010004c]
; init_data (bench_sp.c:29)
;  in main (bench_sp.c:42)
      0x8000071c sw      zero, 0(a0)            #; a0  = 0x00100050, 0 ~~> Word[0x00100050]
      0x80000720 sw      zero, 4(a0)            #; a0  = 0x00100050, 0 ~~> Word[0x00100054]
      0x80000724 sw      zero, 8(a0)            #; a0  = 0x00100050, 0 ~~> Word[0x00100058]
      0x80000728 sw      a6, 12(a0)             #; a0  = 0x00100050, 0x3ff00000 ~~> Word[0x0010005c]
      0x8000072c sw      zero, 16(a0)           #; a0  = 0x00100050, 0 ~~> Word[0x00100060]
      0x80000730 sw      a7, 20(a0)             #; a0  = 0x00100050, 0x40000000 ~~> Word[0x00100064]
      0x80000734 sw      zero, 24(a0)           #; a0  = 0x00100050, 0 ~~> Word[0x00100068]
      0x80000738 sw      t0, 28(a0)             #; a0  = 0x00100050, 0x40080000 ~~> Word[0x0010006c]
      0x8000073c sw      zero, 32(a0)           #; a0  = 0x00100050, 0 ~~> Word[0x00100070]
      0x80000740 sw      t1, 36(a0)             #; a0  = 0x00100050, 0x40100000 ~~> Word[0x00100074]
      0x80000744 sw      zero, 40(a0)           #; a0  = 0x00100050, 0 ~~> Word[0x00100078]
      0x80000748 sw      t2, 44(a0)             #; a0  = 0x00100050, 0x40140000 ~~> Word[0x0010007c]
      0x8000074c sw      zero, 48(a0)           #; a0  = 0x00100050, 0 ~~> Word[0x00100080]
      0x80000750 sw      a3, 52(a0)             #; a0  = 0x00100050, 0x40180000 ~~> Word[0x00100084]
      0x80000754 sw      zero, 56(a0)           #; a0  = 0x00100050, 0 ~~> Word[0x00100088]
      0x80000758 sw      a4, 60(a0)             #; a0  = 0x00100050, 0x401c0000 ~~> Word[0x0010008c]
      0x8000075c sw      zero, 64(a0)           #; a0  = 0x00100050, 0 ~~> Word[0x00100090]
      0x80000760 sw      a5, 68(a0)             #; a0  = 0x00100050, 0x40200000 ~~> Word[0x00100094]
      0x80000764 sw      zero, 72(a0)           #; a0  = 0x00100050, 0 ~~> Word[0x00100098]
      0x80000768 sw      a2, 76(a0)             #; a0  = 0x00100050, 0x40220000 ~~> Word[0x0010009c]
; benchmark_get_cycle (benchmark.c:8)
;  in main (bench_sp.c:44)
      0x8000076c csrr    a2, mcycle             #; mcycle = 1788, (wrb) a2  <-- 1788
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x80000770 fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100000]
      0x80000774 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x00100050], (f:lsu) ft0  <-- 0.0
      0x80000778 fld     ft2, 8(a1)             #; ft2  <~~ Doub[0x00100008], (f:lsu) ft1  <-- 0.0
      0x8000077c fld     ft3, 8(a0)             #; ft3  <~~ Doub[0x00100058], (f:lsu) ft2  <-- 1.0
                                                #; (f:lsu) ft3  <-- 1.0
      0x80000780 fmul.d  ft0, ft1, ft0          #; ft1  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80000784 fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 1.0, ft2  = 1.0, ft0  = 0.0
      0x80000788 fld     ft1, 16(a1)            #; ft1  <~~ Doub[0x00100010]
      0x8000078c fld     ft2, 16(a0)            #; ft2  <~~ Doub[0x00100060], (f:lsu) ft1  <-- 2.0
                                                #; (f:fpu) ft0  <-- 1.0
                                                #; (f:lsu) ft2  <-- 2.0
      0x80000790 fld     ft3, 24(a1)            #; ft3  <~~ Doub[0x00100018]
      0x80000794 fld     ft4, 24(a0)            #; ft4  <~~ Doub[0x00100068], (f:lsu) ft3  <-- 3.0
      0x80000798 fld     ft5, 32(a1)            #; ft5  <~~ Doub[0x00100020], (f:lsu) ft4  <-- 3.0
      0x8000079c fld     ft6, 32(a0)            #; ft6  <~~ Doub[0x00100070], (f:lsu) ft5  <-- 4.0
                                                #; (f:lsu) ft6  <-- 4.0
      0x800007a0 fld     ft7, 40(a1)            #; ft7  <~~ Doub[0x00100028]
      0x800007a4 fld     fa0, 40(a0)            #; fa0  <~~ Doub[0x00100078], (f:lsu) ft7  <-- 5.0
      0x800007a8 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 2.0, ft1  = 2.0, ft0  = 1.0, (f:lsu) fa0  <-- 5.0
                                                #; (f:fpu) ft0  <-- 5.0
      0x800007ac fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 3.0, ft3  = 3.0, ft0  = 5.0
                                                #; (f:fpu) ft0  <-- 14.0
      0x800007b0 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 4.0, ft5  = 4.0, ft0  = 14.0
                                                #; (f:fpu) ft0  <-- 30.0
      0x800007b4 fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 5.0, ft7  = 5.0, ft0  = 30.0
      0x800007b8 fld     ft1, 48(a1)            #; ft1  <~~ Doub[0x00100030]
      0x800007bc fld     ft2, 48(a0)            #; ft2  <~~ Doub[0x00100080], (f:lsu) ft1  <-- 6.0
                                                #; (f:fpu) ft0  <-- 55.0
                                                #; (f:lsu) ft2  <-- 6.0
      0x800007c0 fld     ft3, 56(a1)            #; ft3  <~~ Doub[0x00100038]
      0x800007c4 fld     ft4, 56(a0)            #; ft4  <~~ Doub[0x00100088], (f:lsu) ft3  <-- 7.0
      0x800007c8 fld     ft5, 64(a1)            #; ft5  <~~ Doub[0x00100040], (f:lsu) ft4  <-- 7.0
      0x800007cc fld     ft6, 64(a0)            #; ft6  <~~ Doub[0x00100090], (f:lsu) ft5  <-- 8.0
                                                #; (f:lsu) ft6  <-- 8.0
      0x800007d0 fld     ft7, 72(a1)            #; ft7  <~~ Doub[0x00100048]
      0x800007d4 fld     fa0, 72(a0)            #; fa0  <~~ Doub[0x00100098], (f:lsu) ft7  <-- 9.0
      0x800007d8 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 6.0, ft1  = 6.0, ft0  = 55.0, (f:lsu) fa0  <-- 9.0
                                                #; (f:fpu) ft0  <-- 91.0
      0x800007dc fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 7.0, ft3  = 7.0, ft0  = 91.0
                                                #; (f:fpu) ft0  <-- 140.0
; benchmark_get_cycle (benchmark.c:8)
;  in main (bench_sp.c:48)
      0x800007e8 csrr    a0, mcycle             #; mcycle = 1883, (wrb) a0  <-- 1883
      0x800007e0 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 8.0, ft5  = 8.0, ft0  = 140.0
; main (bench_sp.c:50)
      0x800007ec sub     a1, a0, a2             #; a0  = 1883, a2  = 1788, (wrb) a1  <-- 95
                                                #; (f:fpu) ft0  <-- 204.0
; scalarprod (scalarprod.c:7)
;  in main (bench_sp.c:46)
      0x800007e4 fmadd.d fs0, fa0, ft7, ft0     #; fa0  = 9.0, ft7  = 9.0, ft0  = 204.0
                                                #; (f:fpu) fs0  <-- 285.0
; main (bench_sp.c:50)
      0x800007f0 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800027f0
      0x800007f4 addi    a0, a0, 929            #; a0  = 0x800027f0, (wrb) a0  <-- 0x80002b91
      0x800007f8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800007f8
      0x800007fc jalr    ra, ra, 88             #; ra  = 0x800007f8, (wrb) ra  <-- 0x80000800, goto 0x80000850
; printf_ (printf.c:863)
      0x80000850 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
      0x80000854 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x80000800 ~~> Word[0x0011ff1c]
      0x80000858 mv      t0, a0                 #; a0  = 0x80002b91, (wrb) t0  <-- 0x80002b91
      0x8000085c sw      a7, 44(sp)             #; sp  = 0x0011ff10, 0x40000000 ~~> Word[0x0011ff3c]
      0x80000860 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 0x3ff00000 ~~> Word[0x0011ff38]
      0x80000864 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 0x40200000 ~~> Word[0x0011ff34]
      0x80000868 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 0x401c0000 ~~> Word[0x0011ff30]
      0x8000086c sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0x40180000 ~~> Word[0x0011ff2c]
      0x80000870 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 1788 ~~> Word[0x0011ff28]
      0x80000874 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 95 ~~> Word[0x0011ff24]
      0x80000878 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
; printf_ (printf.c:865)
      0x8000087c sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
; printf_ (printf.c:867)
      0x80000880 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001880
      0x80000884 addi    a0, a0, -988           #; a0  = 0x80001880, (wrb) a0  <-- 0x800014a4
      0x80000888 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
      0x8000088c li      a2, -1                 #; (wrb) a2  <-- -1
      0x80000890 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
      0x80000894 mv      a3, t0                 #; t0  = 0x80002b91, (wrb) a3  <-- 0x80002b91
      0x80000898 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000898
      0x8000089c jalr    ra, ra, 20             #; ra  = 0x80000898, (wrb) ra  <-- 0x800008a0, goto 0x800008ac
; _vsnprintf.llvm.1805434900161566649 (printf.c:578)
      0x800008ac addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
      0x800008b0 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x800008a0 ~~> Word[0x0011ff0c]
      0x800008b4 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff08]
      0x800008b8 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
      0x800008bc sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
      0x800008c0 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
      0x800008c4 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
      0x800008c8 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
      0x800008cc sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
      0x800008d0 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
      0x800008d4 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
      0x800008d8 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
      0x800008dc sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
      0x800008e0 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
      0x800008e4 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
      0x800008e8 mv      s0, a3                 #; a3  = 0x80002b91, (wrb) s0  <-- 0x80002b91
      0x800008ec mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
      0x800008f0 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
; _vsnprintf.llvm.1805434900161566649 (printf.c:582)
      0x800008f4 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800008f8 mv      s2, a0                 #; a0  = 0x800014a4, (wrb) s2  <-- 0x800014a4
      0x800008fc j       pc + 0xc               #; goto 0x80000908
      0x80000908 li      s8, 0                  #; (wrb) s8  <-- 0
      0x8000090c li      s6, 37                 #; (wrb) s6  <-- 37
      0x80000910 li      s11, 16                #; (wrb) s11 <-- 16
      0x80000914 li      s7, 46                 #; (wrb) s7  <-- 46
      0x80000918 lui     a0, 0x1                #; (wrb) a0  <-- 4096
      0x8000091c addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
      0x80000920 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
      0x80000924 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
      0x80000928 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
      0x8000092c sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000930 addi    s10, s0, 2             #; s0  = 0x80002b91, (wrb) s10 <-- 0x80002b93
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000934 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
      0x80000938 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x8000093c lbu     a0, 0(s0)              #; s0  = 0x80002b91, a0  <~~ Byte[0x80002b91]
                                                #; (lsu) a0  <-- 99
      0x80000940 beqz    a0, pc + 2824          #; a0  = 99, not taken
      0x80000944 beq     a0, s6, pc + 48        #; a0  = 99, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000948 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
      0x8000094c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000950 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
      0x80000954 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000958 jalr    s2                     #; s2  = 0x800014a4, (wrb) ra  <-- 0x8000095c, goto 0x800014a4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014a4 beqz    a0, pc + 168           #; a0  = 99, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
      0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
      0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 0
      0x800014c4 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
      0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 1 ~~> Word[0x80002ed4]
      0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 0, (wrb) a4  <-- 0x80002ed4
      0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002ed4, 99 ~~> Byte[0x80002f1c]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 1
      0x800014d8 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
      0x800014dc snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
      0x800014e0 addi    a0, a0, -10            #; a0  = 99, (wrb) a0  <-- 89
      0x800014e4 snez    a0, a0                 #; a0  = 89, (wrb) a0  <-- 1
      0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000154c ret                            #; ra  = 0x8000095c, goto 0x8000095c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x8000095c addi    s0, s0, 1              #; s0  = 0x80002b91, (wrb) s0  <-- 0x80002b92
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000960 addi    s10, s10, 1            #; s10 = 0x80002b93, (wrb) s10 <-- 0x80002b94
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000964 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000968 lbu     a0, 0(s0)              #; s0  = 0x80002b92, a0  <~~ Byte[0x80002b92]
                                                #; (lsu) a0  <-- 121
      0x8000096c bnez    a0, pc - 40            #; a0  = 121, taken, goto 0x80000944
      0x80000944 beq     a0, s6, pc + 48        #; a0  = 121, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000948 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
      0x8000094c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000950 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
      0x80000954 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000958 jalr    s2                     #; s2  = 0x800014a4, (wrb) ra  <-- 0x8000095c, goto 0x800014a4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014a4 beqz    a0, pc + 168           #; a0  = 121, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
      0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
      0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 1
      0x800014c4 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
      0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 2 ~~> Word[0x80002ed4]
      0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 1, (wrb) a4  <-- 0x80002ed5
      0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002ed5, 121 ~~> Byte[0x80002f1d]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 2
      0x800014d8 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
      0x800014dc snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
      0x800014e0 addi    a0, a0, -10            #; a0  = 121, (wrb) a0  <-- 111
      0x800014e4 snez    a0, a0                 #; a0  = 111, (wrb) a0  <-- 1
      0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000154c ret                            #; ra  = 0x8000095c, goto 0x8000095c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x8000095c addi    s0, s0, 1              #; s0  = 0x80002b92, (wrb) s0  <-- 0x80002b93
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000960 addi    s10, s10, 1            #; s10 = 0x80002b94, (wrb) s10 <-- 0x80002b95
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000964 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000968 lbu     a0, 0(s0)              #; s0  = 0x80002b93, a0  <~~ Byte[0x80002b93]
                                                #; (lsu) a0  <-- 99
      0x8000096c bnez    a0, pc - 40            #; a0  = 99, taken, goto 0x80000944
      0x80000944 beq     a0, s6, pc + 48        #; a0  = 99, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000948 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
      0x8000094c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000950 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
      0x80000954 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000958 jalr    s2                     #; s2  = 0x800014a4, (wrb) ra  <-- 0x8000095c, goto 0x800014a4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014a4 beqz    a0, pc + 168           #; a0  = 99, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
      0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
      0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 2
      0x800014c4 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
      0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 3 ~~> Word[0x80002ed4]
      0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 2, (wrb) a4  <-- 0x80002ed6
      0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002ed6, 99 ~~> Byte[0x80002f1e]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 3
      0x800014d8 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
      0x800014dc snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
      0x800014e0 addi    a0, a0, -10            #; a0  = 99, (wrb) a0  <-- 89
      0x800014e4 snez    a0, a0                 #; a0  = 89, (wrb) a0  <-- 1
      0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000154c ret                            #; ra  = 0x8000095c, goto 0x8000095c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x8000095c addi    s0, s0, 1              #; s0  = 0x80002b93, (wrb) s0  <-- 0x80002b94
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000960 addi    s10, s10, 1            #; s10 = 0x80002b95, (wrb) s10 <-- 0x80002b96
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000964 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000968 lbu     a0, 0(s0)              #; s0  = 0x80002b94, a0  <~~ Byte[0x80002b94]
                                                #; (lsu) a0  <-- 108
      0x8000096c bnez    a0, pc - 40            #; a0  = 108, taken, goto 0x80000944
      0x80000944 beq     a0, s6, pc + 48        #; a0  = 108, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000948 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
      0x8000094c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000950 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
      0x80000954 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000958 jalr    s2                     #; s2  = 0x800014a4, (wrb) ra  <-- 0x8000095c, goto 0x800014a4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014a4 beqz    a0, pc + 168           #; a0  = 108, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
      0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
      0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 3
      0x800014c4 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
      0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 4 ~~> Word[0x80002ed4]
      0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 3, (wrb) a4  <-- 0x80002ed7
      0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002ed7, 108 ~~> Byte[0x80002f1f]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 4
      0x800014d8 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
      0x800014dc snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
      0x800014e0 addi    a0, a0, -10            #; a0  = 108, (wrb) a0  <-- 98
      0x800014e4 snez    a0, a0                 #; a0  = 98, (wrb) a0  <-- 1
      0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000154c ret                            #; ra  = 0x8000095c, goto 0x8000095c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x8000095c addi    s0, s0, 1              #; s0  = 0x80002b94, (wrb) s0  <-- 0x80002b95
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000960 addi    s10, s10, 1            #; s10 = 0x80002b96, (wrb) s10 <-- 0x80002b97
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000964 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000968 lbu     a0, 0(s0)              #; s0  = 0x80002b95, a0  <~~ Byte[0x80002b95]
                                                #; (lsu) a0  <-- 101
      0x8000096c bnez    a0, pc - 40            #; a0  = 101, taken, goto 0x80000944
      0x80000944 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000948 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
      0x8000094c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000950 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
      0x80000954 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000958 jalr    s2                     #; s2  = 0x800014a4, (wrb) ra  <-- 0x8000095c, goto 0x800014a4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014a4 beqz    a0, pc + 168           #; a0  = 101, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
      0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
      0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 4
      0x800014c4 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
      0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 5 ~~> Word[0x80002ed4]
      0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 4, (wrb) a4  <-- 0x80002ed8
      0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002ed8, 101 ~~> Byte[0x80002f20]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 5
      0x800014d8 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
      0x800014dc snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
      0x800014e0 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
      0x800014e4 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
      0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000154c ret                            #; ra  = 0x8000095c, goto 0x8000095c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x8000095c addi    s0, s0, 1              #; s0  = 0x80002b95, (wrb) s0  <-- 0x80002b96
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000960 addi    s10, s10, 1            #; s10 = 0x80002b97, (wrb) s10 <-- 0x80002b98
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000964 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000968 lbu     a0, 0(s0)              #; s0  = 0x80002b96, a0  <~~ Byte[0x80002b96]
                                                #; (lsu) a0  <-- 115
      0x8000096c bnez    a0, pc - 40            #; a0  = 115, taken, goto 0x80000944
      0x80000944 beq     a0, s6, pc + 48        #; a0  = 115, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000948 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
      0x8000094c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000950 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
      0x80000954 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000958 jalr    s2                     #; s2  = 0x800014a4, (wrb) ra  <-- 0x8000095c, goto 0x800014a4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014a4 beqz    a0, pc + 168           #; a0  = 115, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
      0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
      0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 5
      0x800014c4 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
      0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 6 ~~> Word[0x80002ed4]
      0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 5, (wrb) a4  <-- 0x80002ed9
      0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002ed9, 115 ~~> Byte[0x80002f21]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 6
      0x800014d8 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
      0x800014dc snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
      0x800014e0 addi    a0, a0, -10            #; a0  = 115, (wrb) a0  <-- 105
      0x800014e4 snez    a0, a0                 #; a0  = 105, (wrb) a0  <-- 1
      0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000154c ret                            #; ra  = 0x8000095c, goto 0x8000095c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x8000095c addi    s0, s0, 1              #; s0  = 0x80002b96, (wrb) s0  <-- 0x80002b97
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000960 addi    s10, s10, 1            #; s10 = 0x80002b98, (wrb) s10 <-- 0x80002b99
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000964 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000968 lbu     a0, 0(s0)              #; s0  = 0x80002b97, a0  <~~ Byte[0x80002b97]
                                                #; (lsu) a0  <-- 32
      0x8000096c bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000944
      0x80000944 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000948 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
      0x8000094c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000950 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
      0x80000954 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000958 jalr    s2                     #; s2  = 0x800014a4, (wrb) ra  <-- 0x8000095c, goto 0x800014a4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014a4 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
      0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
      0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 6
      0x800014c4 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
      0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 7 ~~> Word[0x80002ed4]
      0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 6, (wrb) a4  <-- 0x80002eda
      0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002eda, 32 ~~> Byte[0x80002f22]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 7
      0x800014d8 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
      0x800014dc snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
      0x800014e0 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x800014e4 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000154c ret                            #; ra  = 0x8000095c, goto 0x8000095c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x8000095c addi    s0, s0, 1              #; s0  = 0x80002b97, (wrb) s0  <-- 0x80002b98
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000960 addi    s10, s10, 1            #; s10 = 0x80002b99, (wrb) s10 <-- 0x80002b9a
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000964 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000968 lbu     a0, 0(s0)              #; s0  = 0x80002b98, a0  <~~ Byte[0x80002b98]
                                                #; (lsu) a0  <-- 61
      0x8000096c bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000944
      0x80000944 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000948 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
      0x8000094c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000950 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
      0x80000954 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000958 jalr    s2                     #; s2  = 0x800014a4, (wrb) ra  <-- 0x8000095c, goto 0x800014a4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014a4 beqz    a0, pc + 168           #; a0  = 61, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
      0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
      0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 7
      0x800014c4 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
      0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 8 ~~> Word[0x80002ed4]
      0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 7, (wrb) a4  <-- 0x80002edb
      0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002edb, 61 ~~> Byte[0x80002f23]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 8
      0x800014d8 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
      0x800014dc snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
      0x800014e0 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
      0x800014e4 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
      0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000154c ret                            #; ra  = 0x8000095c, goto 0x8000095c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x8000095c addi    s0, s0, 1              #; s0  = 0x80002b98, (wrb) s0  <-- 0x80002b99
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000960 addi    s10, s10, 1            #; s10 = 0x80002b9a, (wrb) s10 <-- 0x80002b9b
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000964 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000968 lbu     a0, 0(s0)              #; s0  = 0x80002b99, a0  <~~ Byte[0x80002b99]
                                                #; (lsu) a0  <-- 32
      0x8000096c bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000944
      0x80000944 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000948 addi    s1, s9, 1              #; s9  = 8, (wrb) s1  <-- 9
      0x8000094c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000950 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
      0x80000954 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000958 jalr    s2                     #; s2  = 0x800014a4, (wrb) ra  <-- 0x8000095c, goto 0x800014a4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014a4 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
      0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
      0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 8
      0x800014c4 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
      0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 9 ~~> Word[0x80002ed4]
      0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 8, (wrb) a4  <-- 0x80002edc
      0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002edc, 32 ~~> Byte[0x80002f24]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 9
      0x800014d8 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
      0x800014dc snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
      0x800014e0 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x800014e4 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000154c ret                            #; ra  = 0x8000095c, goto 0x8000095c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x8000095c addi    s0, s0, 1              #; s0  = 0x80002b99, (wrb) s0  <-- 0x80002b9a
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000960 addi    s10, s10, 1            #; s10 = 0x80002b9b, (wrb) s10 <-- 0x80002b9c
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000964 mv      s9, s1                 #; s1  = 9, (wrb) s9  <-- 9
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000968 lbu     a0, 0(s0)              #; s0  = 0x80002b9a, a0  <~~ Byte[0x80002b9a]
                                                #; (lsu) a0  <-- 37
      0x8000096c bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000944
      0x80000944 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000974
; _vsnprintf.llvm.1805434900161566649 (printf.c:602)
      0x80000974 li      s0, 0                  #; (wrb) s0  <-- 0
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000978 j       pc + 0x10              #; goto 0x80000988
; _vsnprintf.llvm.1805434900161566649 (printf.c:604)
      0x80000988 lbu     a0, -1(s10)            #; s10 = 0x80002b9c, a0  <~~ Byte[0x80002b9b]
                                                #; (lsu) a0  <-- 108
      0x8000098c addi    a1, a0, -32            #; a0  = 108, (wrb) a1  <-- 76
      0x80000990 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 76, taken, goto 0x800009c8
; _is_digit (printf.c:183)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x800009c8 addi    a1, a0, -48            #; a0  = 108, (wrb) a1  <-- 60
      0x800009cc andi    a2, a1, 255            #; a1  = 60, (wrb) a2  <-- 60
; _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x800009d0 addi    a1, s10, -1            #; s10 = 0x80002b9c, (wrb) a1  <-- 0x80002b9b
      0x800009d4 li      a3, 9                  #; (wrb) a3  <-- 9
      0x800009d8 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 60, taken, goto 0x80000a54
; _vsnprintf.llvm.1805434900161566649 (printf.c:619)
      0x80000a54 li      a2, 42                 #; (wrb) a2  <-- 42
      0x80000a58 bne     a0, a2, pc + 80        #; a0  = 108, a2  = 42, taken, goto 0x80000aa8
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000aa8 li      s6, 0                  #; (wrb) s6  <-- 0
      0x80000aac mv      s10, a1                #; a1  = 0x80002b9b, (wrb) s10 <-- 0x80002b9b
; _vsnprintf.llvm.1805434900161566649 (printf.c:633)
      0x80000ab0 beq     a0, s7, pc - 164       #; a0  = 108, s7  = 46, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000ab4 li      s7, 0                  #; (wrb) s7  <-- 0
      0x80000ab8 j       pc + 0xc               #; goto 0x80000ac4
; _vsnprintf.llvm.1805434900161566649 (printf.c:647)
      0x80000ac4 addi    a1, a0, -104           #; a0  = 108, (wrb) a1  <-- 4
      0x80000ac8 srli    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 2
      0x80000acc slli    a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 0
      0x80000ad0 or      a1, a1, a2             #; a1  = 0, a2  = 2, (wrb) a1  <-- 2
      0x80000ad4 li      a2, 9                  #; (wrb) a2  <-- 9
      0x80000ad8 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 2, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000adc slli    a1, a1, 2              #; a1  = 2, (wrb) a1  <-- 8
      0x80000ae0 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002ae0
      0x80000ae4 addi    a2, a2, 264            #; a2  = 0x80002ae0, (wrb) a2  <-- 0x80002be8
      0x80000ae8 add     a1, a1, a2             #; a1  = 8, a2  = 0x80002be8, (wrb) a1  <-- 0x80002bf0
      0x80000aec lw      a3, 0(a1)              #; a1  = 0x80002bf0, a3  <~~ Word[0x80002bf0]
      0x80000af0 li      a1, 1                  #; (wrb) a1  <-- 1
      0x80000af4 li      a2, 256                #; (wrb) a2  <-- 256
                                                #; (lsu) a3  <-- 0x80000b1c
      0x80000af8 jr      a3                     #; a3  = 0x80000b1c, goto 0x80000b1c
; _vsnprintf.llvm.1805434900161566649 (printf.c:651)
      0x80000b1c lbu     a0, 1(s10)             #; s10 = 0x80002b9b, a0  <~~ Byte[0x80002b9c]
                                                #; (lsu) a0  <-- 117
      0x80000b20 li      a1, 108                #; (wrb) a1  <-- 108
      0x80000b24 bne     a0, a1, pc + 272       #; a0  = 117, a1  = 108, taken, goto 0x80000c34
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c34 ori     s0, s0, 256            #; s0  = 0, (wrb) s0  <-- 256
      0x80000c38 addi    s10, s10, 1            #; s10 = 0x80002b9b, (wrb) s10 <-- 0x80002b9c
      0x80000c3c j       pc - 0x100             #; goto 0x80000b3c
; _vsnprintf.llvm.1805434900161566649 (printf.c:683)
      0x80000b3c addi    a1, a0, -37            #; a0  = 117, (wrb) a1  <-- 80
      0x80000b40 li      a2, 83                 #; (wrb) a2  <-- 83
      0x80000b44 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 80, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b48 slli    a1, a1, 2              #; a1  = 80, (wrb) a1  <-- 320
      0x80000b4c auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002b4c
      0x80000b50 addi    a2, a2, 196            #; a2  = 0x80002b4c, (wrb) a2  <-- 0x80002c10
      0x80000b54 add     a1, a1, a2             #; a1  = 320, a2  = 0x80002c10, (wrb) a1  <-- 0x80002d50
      0x80000b58 lw      a2, 0(a1)              #; a1  = 0x80002d50, a2  <~~ Word[0x80002d50]
      0x80000b5c li      a1, 8                  #; (wrb) a1  <-- 8
      0x80000b60 li      s8, 16                 #; (wrb) s8  <-- 16
                                                #; (lsu) a2  <-- 0x80000b68
      0x80000b64 jr      a2                     #; a2  = 0x80000b68
; _vsnprintf.llvm.1805434900161566649 (printf.c:704)
      0x80000b68 andi    s0, s0, -17            #; s0  = 256, (wrb) s0  <-- 256
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b6c li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:707)
      0x80000b70 li      a1, 88                 #; (wrb) a1  <-- 88
      0x80000b74 bne     a0, a1, pc + 8         #; a0  = 117, a1  = 88, taken, goto 0x80000b7c
; _vsnprintf.llvm.1805434900161566649 (printf.c:712)
      0x80000b7c li      a1, 100                #; (wrb) a1  <-- 100
      0x80000b80 beq     a0, a1, pc + 240       #; a0  = 117, a1  = 100, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b84 mv      a1, s8                 #; s8  = 10, (wrb) a1  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:712)
      0x80000b88 li      a2, 105                #; (wrb) a2  <-- 105
      0x80000b8c beq     a0, a2, pc + 228       #; a0  = 117, a2  = 105, not taken
      0x80000b90 j       pc + 0xd8              #; goto 0x80000c68
; _vsnprintf.llvm.1805434900161566649 (printf.c:713)
      0x80000c68 andi    s0, s0, -13            #; s0  = 256, (wrb) s0  <-- 256
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c6c mv      s8, a1                 #; a1  = 10, (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:717)
      0x80000c70 andi    a1, s0, 1024           #; s0  = 256, (wrb) a1  <-- 0
      0x80000c74 beqz    a1, pc + 8             #; a1  = 0, taken, goto 0x80000c7c
; _vsnprintf.llvm.1805434900161566649 (printf.c:722)
      0x80000c7c li      a1, 105                #; (wrb) a1  <-- 105
      0x80000c80 beq     a0, a1, pc + 12        #; a0  = 117, a1  = 105, not taken
      0x80000c84 li      a1, 100                #; (wrb) a1  <-- 100
      0x80000c88 bne     a0, a1, pc + 312       #; a0  = 117, a1  = 100, taken, goto 0x80000dc0
; _vsnprintf.llvm.1805434900161566649 (printf.c:741)
      0x80000dc0 andi    a0, s0, 512            #; s0  = 256, (wrb) a0  <-- 0
      0x80000dc4 bnez    a0, pc + 196           #; a0  = 0, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:746)
      0x80000dc8 andi    a0, s0, 256            #; s0  = 256, (wrb) a0  <-- 256
      0x80000dcc bnez    a0, pc + 1148          #; a0  = 256, taken, goto 0x80001248
; _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x80001248 lw      a0, 0(s3)              #; s3  = 0x0011ff24, a0  <~~ Word[0x0011ff24]
                                                #; (lsu) a0  <-- 95
; _ntoa_long (printf.c:287)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x8000124c bnez    a0, pc + 8             #; a0  = 95, taken, goto 0x80001254
; _ntoa_long (printf.c:0)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x80001254 seqz    a1, a0                 #; a0  = 95, (wrb) a1  <-- 0
; _ntoa_long (printf.c:292)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x80001258 andi    a2, s0, 1024           #; s0  = 256, (wrb) a2  <-- 0
      0x8000125c srli    a2, a2, 10             #; a2  = 0, (wrb) a2  <-- 0
      0x80001260 and     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
; _ntoa_long (printf.c:0)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x80001264 li      a5, 0                  #; (wrb) a5  <-- 0
; _ntoa_long (printf.c:292)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x80001268 bnez    a1, pc + 248           #; a1  = 0, not taken
; _ntoa_long (printf.c:0)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x8000126c li      a2, 0                  #; (wrb) a2  <-- 0
      0x80001270 andi    a1, s0, 32             #; s0  = 256, (wrb) a1  <-- 0
      0x80001274 xori    a1, a1, 97             #; a1  = 0, (wrb) a1  <-- 97
      0x80001278 addi    a6, a1, 246            #; a1  = 97, (wrb) a6  <-- 343
      0x8000127c j       pc + 0x34              #; goto 0x800012b0
; _ntoa_long (printf.c:296)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x800012b0 divu    a3, a0, s8             #; a0  = 95, s8  = 10
                                                #; (acc) a4  <-- 0x03868733
      0x800012b4 mul     a4, a3, s8             #; a3  = 9, s8  = 10
                                                #; (acc) a4  <-- 0x40e50733
      0x800012b8 sub     a4, a0, a4             #; a0  = 95, a4  = 90, (wrb) a4  <-- 5
; _ntoa_long (printf.c:295)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x800012bc andi    s1, a4, 254            #; a4  = 5, (wrb) s1  <-- 4
      0x800012c0 li      a5, 48                 #; (wrb) a5  <-- 48
      0x800012c4 li      a1, 10                 #; (wrb) a1  <-- 10
      0x800012c8 bltu    s1, a1, pc - 72        #; s1  = 4, a1  = 10, taken, goto 0x80001280
      0x80001280 add     a4, a5, a4             #; a5  = 48, a4  = 5, (wrb) a4  <-- 53
      0x80001284 addi    a5, a2, 1              #; a2  = 0, (wrb) a5  <-- 1
      0x80001288 addi    a1, sp, 28             #; sp  = 0x0011fea0, (wrb) a1  <-- 0x0011febc
      0x8000128c add     s1, a1, a2             #; a1  = 0x0011febc, a2  = 0, (wrb) s1  <-- 0x0011febc
; _ntoa_long (printf.c:297)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x80001290 sltu    a0, a0, s8             #; a0  = 95, s8  = 10, (wrb) a0  <-- 0
      0x80001294 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x80001298 sltiu   a2, a2, 31             #; a2  = 0, (wrb) a2  <-- 1
      0x8000129c and     a1, a2, a0             #; a2  = 1, a0  = 1, (wrb) a1  <-- 1
; _ntoa_long (printf.c:295)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x800012a0 sb      a4, 0(s1)              #; s1  = 0x0011febc, 53 ~~> Byte[0x0011febc]
; _ntoa_long (printf.c:0)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x800012a4 mv      a2, a5                 #; a5  = 1, (wrb) a2  <-- 1
      0x800012a8 mv      a0, a3                 #; a3  = 9, (wrb) a0  <-- 9
; _ntoa_long (printf.c:297)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x800012ac beqz    a1, pc + 180           #; a1  = 1, not taken
; _ntoa_long (printf.c:296)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x800012b0 divu    a3, a0, s8             #; a0  = 9, s8  = 10
                                                #; (acc) a4  <-- 0x03868733
      0x800012b4 mul     a4, a3, s8             #; a3  = 0, s8  = 10
                                                #; (acc) a4  <-- 0x40e50733
      0x800012b8 sub     a4, a0, a4             #; a0  = 9, a4  = 0, (wrb) a4  <-- 9
; _ntoa_long (printf.c:295)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x800012bc andi    s1, a4, 254            #; a4  = 9, (wrb) s1  <-- 8
      0x800012c0 li      a5, 48                 #; (wrb) a5  <-- 48
      0x800012c4 li      a1, 10                 #; (wrb) a1  <-- 10
      0x800012c8 bltu    s1, a1, pc - 72        #; s1  = 8, a1  = 10, taken, goto 0x80001280
      0x80001280 add     a4, a5, a4             #; a5  = 48, a4  = 9, (wrb) a4  <-- 57
      0x80001284 addi    a5, a2, 1              #; a2  = 1, (wrb) a5  <-- 2
      0x80001288 addi    a1, sp, 28             #; sp  = 0x0011fea0, (wrb) a1  <-- 0x0011febc
      0x8000128c add     s1, a1, a2             #; a1  = 0x0011febc, a2  = 1, (wrb) s1  <-- 0x0011febd
; _ntoa_long (printf.c:297)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x80001290 sltu    a0, a0, s8             #; a0  = 9, s8  = 10, (wrb) a0  <-- 1
      0x80001294 xori    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 0
      0x80001298 sltiu   a2, a2, 31             #; a2  = 1, (wrb) a2  <-- 1
      0x8000129c and     a1, a2, a0             #; a2  = 1, a0  = 0, (wrb) a1  <-- 0
; _ntoa_long (printf.c:295)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x800012a0 sb      a4, 0(s1)              #; s1  = 0x0011febd, 57 ~~> Byte[0x0011febd]
; _ntoa_long (printf.c:0)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x800012a4 mv      a2, a5                 #; a5  = 2, (wrb) a2  <-- 2
      0x800012a8 mv      a0, a3                 #; a3  = 0, (wrb) a0  <-- 0
; _ntoa_long (printf.c:297)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:747)
      0x800012ac beqz    a1, pc + 180           #; a1  = 0, taken, goto 0x80001360
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80001360 addi    s3, s3, 4              #; s3  = 0x0011ff24, (wrb) s3  <-- 0x0011ff28
      0x80001364 addi    a4, sp, 28             #; sp  = 0x0011fea0, (wrb) a4  <-- 0x0011febc
      0x80001368 mv      a0, s2                 #; s2  = 0x800014a4, (wrb) a0  <-- 0x800014a4
      0x8000136c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001370 mv      a2, s9                 #; s9  = 9, (wrb) a2  <-- 9
      0x80001374 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80001378 li      a6, 0                  #; (wrb) a6  <-- 0
      0x8000137c mv      a7, s8                 #; s8  = 10, (wrb) a7  <-- 10
      0x80001380 mv      t2, s7                 #; s7  = 0, (wrb) t2  <-- 0
      0x80001384 mv      t3, s6                 #; s6  = 0, (wrb) t3  <-- 0
      0x80001388 mv      t4, s0                 #; s0  = 256, (wrb) t4  <-- 256
      0x8000138c auipc   ra, 0x1                #; (wrb) ra  <-- 0x8000238c
      0x80001390 jalr    ra, ra, -620           #; ra  = 0x8000238c, (wrb) ra  <-- 0x80001394, goto 0x80002120
; _ntoa_format (printf.c:228)
      0x80002120 addi    sp, sp, -64            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe60
      0x80002124 sw      ra, 60(sp)             #; sp  = 0x0011fe60, 0x80001394 ~~> Word[0x0011fe9c]
      0x80002128 sw      s0, 56(sp)             #; sp  = 0x0011fe60, 256 ~~> Word[0x0011fe98]
      0x8000212c sw      s1, 52(sp)             #; sp  = 0x0011fe60, 0x0011febd ~~> Word[0x0011fe94]
      0x80002130 sw      s2, 48(sp)             #; sp  = 0x0011fe60, 0x800014a4 ~~> Word[0x0011fe90]
      0x80002134 sw      s3, 44(sp)             #; sp  = 0x0011fe60, 0x0011ff28 ~~> Word[0x0011fe8c]
      0x80002138 sw      s4, 40(sp)             #; sp  = 0x0011fe60, 0x0011ff17 ~~> Word[0x0011fe88]
      0x8000213c sw      s5, 36(sp)             #; sp  = 0x0011fe60, -1 ~~> Word[0x0011fe84]
      0x80002140 sw      s6, 32(sp)             #; sp  = 0x0011fe60, 0 ~~> Word[0x0011fe80]
      0x80002144 sw      s7, 28(sp)             #; sp  = 0x0011fe60, 0 ~~> Word[0x0011fe7c]
      0x80002148 sw      s8, 24(sp)             #; sp  = 0x0011fe60, 10 ~~> Word[0x0011fe78]
      0x8000214c sw      s9, 20(sp)             #; sp  = 0x0011fe60, 9 ~~> Word[0x0011fe74]
      0x80002150 sw      s10, 16(sp)            #; sp  = 0x0011fe60, 0x80002b9c ~~> Word[0x0011fe70]
      0x80002154 sw      s11, 12(sp)            #; sp  = 0x0011fe60, 16 ~~> Word[0x0011fe6c]
      0x80002158 mv      s7, t4                 #; t4  = 256, (wrb) s7  <-- 256
; _ntoa_format (printf.c:230)
      0x8000215c andi    s5, t4, 2              #; t4  = 256, (wrb) s5  <-- 0
      0x80002160 mv      s2, t3                 #; t3  = 0, (wrb) s2  <-- 0
; _ntoa_format (printf.c:0)
      0x80002164 mv      s10, t2                #; t2  = 0, (wrb) s10 <-- 0
      0x80002168 mv      s9, a7                 #; a7  = 10, (wrb) s9  <-- 10
      0x8000216c mv      s8, a5                 #; a5  = 2, (wrb) s8  <-- 2
      0x80002170 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
      0x80002174 mv      s4, a2                 #; a2  = 9, (wrb) s4  <-- 9
      0x80002178 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
      0x8000217c mv      s11, a0                #; a0  = 0x800014a4, (wrb) s11 <-- 0x800014a4
      0x80002180 sw      a4, 8(sp)              #; sp  = 0x0011fe60, 0x0011febc ~~> Word[0x0011fe68]
; _ntoa_format (printf.c:230)
      0x80002184 bnez    s5, pc + 220           #; s5  = 0, not taken
; _ntoa_format (printf.c:0)
      0x80002188 andi    s0, s7, 1              #; s7  = 256, (wrb) s0  <-- 0
; _ntoa_format (printf.c:231)
      0x8000218c beqz    s2, pc + 28            #; s2  = 0, taken, goto 0x800021a8
; _ntoa_format (printf.c:0)
      0x800021a8 li      s2, 0                  #; (wrb) s2  <-- 0
; _ntoa_format (printf.c:234)
      0x800021ac sltu    a0, s8, s10            #; s8  = 2, s10 = 0, (wrb) a0  <-- 0
      0x800021b0 xori    a1, a0, 1              #; a0  = 0, (wrb) a1  <-- 1
      0x800021b4 li      a0, 31                 #; (wrb) a0  <-- 31
      0x800021b8 sltu    a2, a0, s8             #; a0  = 31, s8  = 2, (wrb) a2  <-- 0
      0x800021bc or      a1, a2, a1             #; a2  = 0, a1  = 1, (wrb) a1  <-- 1
      0x800021c0 bnez    a1, pc + 72            #; a1  = 1, taken, goto 0x80002208
; _ntoa_format (printf.c:237)
      0x80002208 beqz    s0, pc + 88            #; s0  = 0, taken, goto 0x80002260
; _ntoa_format (printf.c:243)
      0x80002260 andi    a0, s7, 16             #; s7  = 256, (wrb) a0  <-- 0
      0x80002264 beqz    a0, pc + 228           #; a0  = 0, taken, goto 0x80002348
; _ntoa_format (printf.c:0)
      0x80002348 li      a0, 31                 #; (wrb) a0  <-- 31
; _ntoa_format (printf.c:264)
      0x8000234c bltu    a0, s8, pc + 72        #; a0  = 31, s8  = 2, not taken
; _ntoa_format (printf.c:265)
      0x80002350 beqz    a6, pc + 20            #; a6  = 0, taken, goto 0x80002364
; _ntoa_format (printf.c:268)
      0x80002364 andi    a0, s7, 4              #; s7  = 256, (wrb) a0  <-- 0
      0x80002368 bnez    a0, pc + 28            #; a0  = 0, not taken
; _ntoa_format (printf.c:271)
      0x8000236c andi    a0, s7, 8              #; s7  = 256, (wrb) a0  <-- 0
      0x80002370 beqz    a0, pc + 36            #; a0  = 0, taken, goto 0x80002394
; _out_rev (printf.c:204)
;  in _ntoa_format (printf.c:276)
      0x80002394 andi    a0, s7, 3              #; s7  = 256, (wrb) a0  <-- 0
      0x80002398 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
      0x8000239c sltu    a1, s8, s2             #; s8  = 2, s2  = 0, (wrb) a1  <-- 0
      0x800023a0 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x800023a4 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
      0x800023a8 mv      s0, s4                 #; s4  = 9, (wrb) s0  <-- 9
      0x800023ac bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x800023d8
; _out_rev (printf.c:0)
;  in _ntoa_format (printf.c:276)
      0x800023d8 snez    s5, s5                 #; s5  = 0, (wrb) s5  <-- 0
; _out_rev (printf.c:211)
;  in _ntoa_format (printf.c:276)
      0x800023dc beqz    s8, pc + 60            #; s8  = 2, not taken
      0x800023e0 lw      a0, 8(sp)              #; sp  = 0x0011fe60, a0  <~~ Word[0x0011fe68]
                                                #; (lsu) a0  <-- 0x0011febc
      0x800023e4 addi    s7, a0, -1             #; a0  = 0x0011febc, (wrb) s7  <-- 0x0011febb
; _out_rev (printf.c:212)
;  in _ntoa_format (printf.c:276)
      0x800023e8 add     a0, s7, s8             #; s7  = 0x0011febb, s8  = 2, (wrb) a0  <-- 0x0011febd
      0x800023ec lbu     a0, 0(a0)              #; a0  = 0x0011febd, a0  <~~ Byte[0x0011febd]
                                                #; (lsu) a0  <-- 57
      0x800023f0 addi    s9, s8, -1             #; s8  = 2, (wrb) s9  <-- 1
      0x800023f4 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
      0x800023f8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800023fc mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
      0x80002400 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80002404 jalr    s11                    #; s11 = 0x800014a4, (wrb) ra  <-- 0x80002408, goto 0x800014a4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014a4 beqz    a0, pc + 168           #; a0  = 57, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
      0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
      0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 9
      0x800014c4 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
      0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 10 ~~> Word[0x80002ed4]
      0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 9, (wrb) a4  <-- 0x80002edd
      0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002edd, 57 ~~> Byte[0x80002f25]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 10
      0x800014d8 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
      0x800014dc snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
      0x800014e0 addi    a0, a0, -10            #; a0  = 57, (wrb) a0  <-- 47
      0x800014e4 snez    a0, a0                 #; a0  = 47, (wrb) a0  <-- 1
      0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000154c ret                            #; ra  = 0x80002408, goto 0x80002408
; _out_rev (printf.c:0)
;  in _ntoa_format (printf.c:276)
      0x80002408 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
      0x8000240c mv      s8, s9                 #; s9  = 1, (wrb) s8  <-- 1
; _out_rev (printf.c:211)
;  in _ntoa_format (printf.c:276)
      0x80002410 bnez    s9, pc - 40            #; s9  = 1, taken, goto 0x800023e8
; _out_rev (printf.c:212)
;  in _ntoa_format (printf.c:276)
      0x800023e8 add     a0, s7, s8             #; s7  = 0x0011febb, s8  = 1, (wrb) a0  <-- 0x0011febc
      0x800023ec lbu     a0, 0(a0)              #; a0  = 0x0011febc, a0  <~~ Byte[0x0011febc]
      0x800023f0 addi    s9, s8, -1             #; s8  = 1, (wrb) s9  <-- 0
      0x800023f4 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
      0x800023f8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800023fc mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
      0x80002400 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80002404 jalr    s11                    #; s11 = 0x800014a4, (wrb) ra  <-- 0x80002408, goto 0x800014a4
                                                #; (lsu) a0  <-- 53
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014a4 beqz    a0, pc + 168           #; a0  = 53, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
      0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
      0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 10
      0x800014c4 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
      0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 11 ~~> Word[0x80002ed4]
      0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 10, (wrb) a4  <-- 0x80002ede
      0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002ede, 53 ~~> Byte[0x80002f26]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 11
      0x800014d8 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
      0x800014dc snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
      0x800014e0 addi    a0, a0, -10            #; a0  = 53, (wrb) a0  <-- 43
      0x800014e4 snez    a0, a0                 #; a0  = 43, (wrb) a0  <-- 1
      0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000154c ret                            #; ra  = 0x80002408, goto 0x80002408
; _out_rev (printf.c:0)
;  in _ntoa_format (printf.c:276)
      0x80002408 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
      0x8000240c mv      s8, s9                 #; s9  = 0, (wrb) s8  <-- 0
; _out_rev (printf.c:211)
;  in _ntoa_format (printf.c:276)
      0x80002410 bnez    s9, pc - 40            #; s9  = 0, not taken
      0x80002414 j       pc + 0x8               #; goto 0x8000241c
; _out_rev (printf.c:0)
;  in _ntoa_format (printf.c:276)
      0x8000241c sub     a0, s1, s4             #; s1  = 11, s4  = 9, (wrb) a0  <-- 2
      0x80002420 sltu    a0, a0, s2             #; a0  = 2, s2  = 0, (wrb) a0  <-- 0
      0x80002424 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
; _out_rev (printf.c:216)
;  in _ntoa_format (printf.c:276)
      0x80002428 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
      0x8000242c or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x80002430 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80002460
; _ntoa_format (printf.c:0)
      0x80002460 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
; _ntoa_format (printf.c:276)
      0x80002464 mv      a0, s0                 #; s0  = 11, (wrb) a0  <-- 11
      0x80002468 lw      s11, 12(sp)            #; sp  = 0x0011fe60, s11 <~~ Word[0x0011fe6c]
                                                #; (lsu) s11 <-- 16
      0x8000246c lw      s10, 16(sp)            #; sp  = 0x0011fe60, s10 <~~ Word[0x0011fe70]
                                                #; (lsu) s10 <-- 0x80002b9c
      0x80002470 lw      s9, 20(sp)             #; sp  = 0x0011fe60, s9  <~~ Word[0x0011fe74]
                                                #; (lsu) s9  <-- 9
      0x80002474 lw      s8, 24(sp)             #; sp  = 0x0011fe60, s8  <~~ Word[0x0011fe78]
                                                #; (lsu) s8  <-- 10
      0x80002478 lw      s7, 28(sp)             #; sp  = 0x0011fe60, s7  <~~ Word[0x0011fe7c]
                                                #; (lsu) s7  <-- 0
      0x8000247c lw      s6, 32(sp)             #; sp  = 0x0011fe60, s6  <~~ Word[0x0011fe80]
                                                #; (lsu) s6  <-- 0
      0x80002480 lw      s5, 36(sp)             #; sp  = 0x0011fe60, s5  <~~ Word[0x0011fe84]
                                                #; (lsu) s5  <-- -1
      0x80002484 lw      s4, 40(sp)             #; sp  = 0x0011fe60, s4  <~~ Word[0x0011fe88]
                                                #; (lsu) s4  <-- 0x0011ff17
      0x80002488 lw      s3, 44(sp)             #; sp  = 0x0011fe60, s3  <~~ Word[0x0011fe8c]
                                                #; (lsu) s3  <-- 0x0011ff28
      0x8000248c lw      s2, 48(sp)             #; sp  = 0x0011fe60, s2  <~~ Word[0x0011fe90]
                                                #; (lsu) s2  <-- 0x800014a4
      0x80002490 lw      s1, 52(sp)             #; sp  = 0x0011fe60, s1  <~~ Word[0x0011fe94]
                                                #; (lsu) s1  <-- 0x0011febd
      0x80002494 lw      s0, 56(sp)             #; sp  = 0x0011fe60, s0  <~~ Word[0x0011fe98]
                                                #; (lsu) s0  <-- 256
      0x80002498 lw      ra, 60(sp)             #; sp  = 0x0011fe60, ra  <~~ Word[0x0011fe9c]
      0x8000249c addi    sp, sp, 64             #; sp  = 0x0011fe60, (wrb) sp  <-- 0x0011fea0
                                                #; (lsu) ra  <-- 0x80001394
      0x800024a0 ret                            #; ra  = 0x80001394, goto 0x80001394
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80001394 mv      s8, a0                 #; a0  = 11, (wrb) s8  <-- 11
      0x80001398 li      s6, 37                 #; (wrb) s6  <-- 37
      0x8000139c li      s7, 46                 #; (wrb) s7  <-- 46
      0x800013a0 addi    s0, s10, 1             #; s10 = 0x80002b9c, (wrb) s0  <-- 0x80002b9d
      0x800013a4 j       pc - 0xa74             #; goto 0x80000930
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000930 addi    s10, s0, 2             #; s0  = 0x80002b9d, (wrb) s10 <-- 0x80002b9f
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000934 mv      s9, s8                 #; s8  = 11, (wrb) s9  <-- 11
      0x80000938 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x8000093c lbu     a0, 0(s0)              #; s0  = 0x80002b9d, a0  <~~ Byte[0x80002b9d]
                                                #; (lsu) a0  <-- 10
      0x80000940 beqz    a0, pc + 2824          #; a0  = 10, not taken
      0x80000944 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000948 addi    s1, s9, 1              #; s9  = 11, (wrb) s1  <-- 12
      0x8000094c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000950 mv      a2, s9                 #; s9  = 11, (wrb) a2  <-- 11
      0x80000954 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000958 jalr    s2                     #; s2  = 0x800014a4, (wrb) ra  <-- 0x8000095c, goto 0x800014a4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014a4 beqz    a0, pc + 168           #; a0  = 10, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
      0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
      0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 11
      0x800014c4 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
      0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 12 ~~> Word[0x80002ed4]
      0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 11, (wrb) a4  <-- 0x80002edf
      0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002edf, 10 ~~> Byte[0x80002f27]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 12
      0x800014d8 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
      0x800014dc snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
      0x800014e0 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
      0x800014e4 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
      0x800014e8 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
      0x800014ec bnez    a0, pc + 96            #; a0  = 0, not taken
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014f0 add     a0, a3, a2             #; a3  = 0x80002ed4, a2  = 0, (wrb) a0  <-- 0x80002ed4
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014f4 addi    a2, a0, 72             #; a0  = 0x80002ed4, (wrb) a2  <-- 0x80002f1c
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014f8 sw      zero, 12(a0)           #; a0  = 0x80002ed4, 0 ~~> Word[0x80002ee0]
      0x800014fc li      a3, 64                 #; (wrb) a3  <-- 64
      0x80001500 sw      a3, 8(a0)              #; a0  = 0x80002ed4, 64 ~~> Word[0x80002edc]
; snrt_putchar (putchar.c:26)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001504 sw      zero, 20(a0)           #; a0  = 0x80002ed4, 0 ~~> Word[0x80002ee8]
      0x80001508 li      a3, 1                  #; (wrb) a3  <-- 1
      0x8000150c sw      a3, 16(a0)             #; a0  = 0x80002ed4, 1 ~~> Word[0x80002ee4]
; snrt_putchar (putchar.c:27)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001510 sw      zero, 28(a0)           #; a0  = 0x80002ed4, 0 ~~> Word[0x80002ef0]
      0x80001514 sw      a2, 24(a0)             #; a0  = 0x80002ed4, 0x80002f1c ~~> Word[0x80002eec]
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001518 lw      a2, 0(a1)              #; a1  = 0x80002ed4, a2  <~~ Word[0x80002ed4]
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000151c addi    a3, a0, 8              #; a0  = 0x80002ed4, (wrb) a3  <-- 0x80002edc
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001520 sw      zero, 36(a0)           #; a0  = 0x80002ed4, 0 ~~> Word[0x80002ef8]
                                                #; (lsu) a2  <-- 12
      0x80001524 sw      a2, 32(a0)             #; a0  = 0x80002ed4, 12 ~~> Word[0x80002ef4]
; snrt_putchar (putchar.c:30)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001528 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003528
      0x8000152c addi    a0, a0, -1896          #; a0  = 0x80003528, (wrb) a0  <-- 0x80002dc0
      0x80001530 sw      a3, 0(a0)              #; a0  = 0x80002dc0, 0x80002edc ~~> Word[0x80002dc0]
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001534 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003534
      0x80001538 addi    a0, a0, -1844          #; a0  = 0x80003534, (wrb) a0  <-- 0x80002e00
; snrt_putchar (putchar.c:31)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000153c lw      a2, 0(a0)              #; a0  = 0x80002e00, a2  <~~ Word[0x80002e00]
                                                #; (lsu) a2  <-- 0
      0x80001540 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000153c
      0x8000153c lw      a2, 0(a0)              #; a0  = 0x80002e00, a2  <~~ Word[0x80002e00]
                                                #; (lsu) a2  <-- 0
      0x80001540 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000153c
      0x8000153c lw      a2, 0(a0)              #; a0  = 0x80002e00, a2  <~~ Word[0x80002e00]
                                                #; (lsu) a2  <-- 1
      0x80001540 beqz    a2, pc - 4             #; a2  = 1, not taken
; snrt_putchar (putchar.c:33)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001544 sw      zero, 0(a0)            #; a0  = 0x80002e00, 0 ~~> Word[0x80002e00]
; snrt_putchar (putchar.c:35)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001548 sw      zero, 0(a1)            #; a1  = 0x80002ed4, 0 ~~> Word[0x80002ed4]
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000154c ret                            #; ra  = 0x8000095c, goto 0x8000095c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x8000095c addi    s0, s0, 1              #; s0  = 0x80002b9d, (wrb) s0  <-- 0x80002b9e
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000960 addi    s10, s10, 1            #; s10 = 0x80002b9f, (wrb) s10 <-- 0x80002ba0
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000964 mv      s9, s1                 #; s1  = 12, (wrb) s9  <-- 12
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000968 lbu     a0, 0(s0)              #; s0  = 0x80002b9e, a0  <~~ Byte[0x80002b9e]
                                                #; (lsu) a0  <-- 0
      0x8000096c bnez    a0, pc - 40            #; a0  = 0, not taken
      0x80000970 j       pc + 0xad8             #; goto 0x80001448
; _vsnprintf.llvm.1805434900161566649 (printf.c:853)
      0x80001448 mv      a2, s9                 #; s9  = 12, (wrb) a2  <-- 12
      0x8000144c bltu    s9, s5, pc + 8         #; s9  = 12, s5  = -1, taken, goto 0x80001454
      0x80001454 li      a0, 0                  #; (wrb) a0  <-- 0
      0x80001458 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x8000145c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80001460 jalr    s2                     #; s2  = 0x800014a4, (wrb) ra  <-- 0x80001464, goto 0x800014a4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014a4 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x8000154c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000154c ret                            #; ra  = 0x80001464, goto 0x80001464
; _vsnprintf.llvm.1805434900161566649 (printf.c:856)
      0x80001464 mv      a0, s9                 #; s9  = 12, (wrb) a0  <-- 12
      0x80001468 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
                                                #; (lsu) s11 <-- 0
      0x8000146c lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
                                                #; (lsu) s10 <-- 0
      0x80001470 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
                                                #; (lsu) s9  <-- 0
      0x80001474 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
                                                #; (lsu) s8  <-- 0
      0x80001478 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
                                                #; (lsu) s7  <-- 0
      0x8000147c lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
                                                #; (lsu) s6  <-- 0
      0x80001480 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
                                                #; (lsu) s5  <-- 0
      0x80001484 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
                                                #; (lsu) s4  <-- 0
      0x80001488 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
                                                #; (lsu) s3  <-- 0
      0x8000148c lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
                                                #; (lsu) s2  <-- 0
      0x80001490 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
                                                #; (lsu) s1  <-- 0
      0x80001494 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
                                                #; (lsu) s0  <-- 0
      0x80001498 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
      0x8000149c addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
                                                #; (lsu) ra  <-- 0x800008a0
      0x800014a0 ret                            #; ra  = 0x800008a0, goto 0x800008a0
; printf_ (printf.c:869)
      0x800008a0 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
      0x800008a4 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
                                                #; (lsu) ra  <-- 0x80000800
      0x800008a8 ret                            #; ra  = 0x80000800, goto 0x80000800
; main (bench_sp.c:0)
      0x80000800 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002800
      0x80000804 addi    a0, a0, 1560           #; a0  = 0x80002800, (wrb) a0  <-- 0x80002e18
      0x80000808 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002e18]
                                                #; (f:lsu) ft0  <-- -285.0
; main (bench_sp.c:57)
      0x80000818 lw      a2, 8(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff48]
      0x8000080c fadd.d  ft0, fs0, ft0          #; fs0  = 285.0, ft0  = -285.0
                                                #; (lsu) a2  <-- 0
                                                #; (f:fpu) ft0  <-- 0.0
      0x8000081c lw      a3, 12(sp)             #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff4c]
      0x80000810 fsgnjx.d fs0, ft0, ft0         #; ft0  = 0.0, ft0  = 0.0
                                                #; (f:fpu) fs0  <-- 0.0
      0x80000814 fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff48]
                                                #; (lsu) a3  <-- 0
      0x80000820 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002820
      0x80000824 addi    a0, a0, 869            #; a0  = 0x80002820, (wrb) a0  <-- 0x80002b85
      0x80000828 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000828
      0x8000082c jalr    ra, ra, 40             #; ra  = 0x80000828, (wrb) ra  <-- 0x80000830, goto 0x80000850
; printf_ (printf.c:863)
      0x80000850 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
      0x80000854 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x80000830 ~~> Word[0x0011ff1c]
      0x80000858 mv      t0, a0                 #; a0  = 0x80002b85, (wrb) t0  <-- 0x80002b85
      0x8000085c sw      a7, 44(sp)             #; sp  = 0x0011ff10, 10 ~~> Word[0x0011ff3c]
      0x80000860 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff38]
      0x80000864 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 12 ~~> Word[0x0011ff34]
      0x80000868 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff30]
      0x8000086c sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
      0x80000870 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
      0x80000874 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 0x0011ff17 ~~> Word[0x0011ff24]
      0x80000878 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
; printf_ (printf.c:865)
      0x8000087c sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
; printf_ (printf.c:867)
      0x80000880 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001880
      0x80000884 addi    a0, a0, -988           #; a0  = 0x80001880, (wrb) a0  <-- 0x800014a4
      0x80000888 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
      0x8000088c li      a2, -1                 #; (wrb) a2  <-- -1
      0x80000890 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
      0x80000894 mv      a3, t0                 #; t0  = 0x80002b85, (wrb) a3  <-- 0x80002b85
      0x80000898 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000898
      0x8000089c jalr    ra, ra, 20             #; ra  = 0x80000898, (wrb) ra  <-- 0x800008a0, goto 0x800008ac
; _vsnprintf.llvm.1805434900161566649 (printf.c:578)
      0x800008ac addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
      0x800008b0 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x800008a0 ~~> Word[0x0011ff0c]
      0x800008b4 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff08]
      0x800008b8 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
      0x800008bc sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
      0x800008c0 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
      0x800008c4 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
      0x800008c8 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
      0x800008cc sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
      0x800008d0 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
      0x800008d4 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
      0x800008d8 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
      0x800008dc sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
      0x800008e0 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
      0x800008e4 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
      0x800008e8 mv      s0, a3                 #; a3  = 0x80002b85, (wrb) s0  <-- 0x80002b85
      0x800008ec mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
      0x800008f0 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
; _vsnprintf.llvm.1805434900161566649 (printf.c:582)
      0x800008f4 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x800008f8 mv      s2, a0                 #; a0  = 0x800014a4, (wrb) s2  <-- 0x800014a4
      0x800008fc j       pc + 0xc               #; goto 0x80000908
      0x80000908 li      s8, 0                  #; (wrb) s8  <-- 0
      0x8000090c li      s6, 37                 #; (wrb) s6  <-- 37
      0x80000910 li      s11, 16                #; (wrb) s11 <-- 16
      0x80000914 li      s7, 46                 #; (wrb) s7  <-- 46
      0x80000918 lui     a0, 0x1                #; (wrb) a0  <-- 4096
      0x8000091c addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
      0x80000920 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
      0x80000924 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
      0x80000928 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
      0x8000092c sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000930 addi    s10, s0, 2             #; s0  = 0x80002b85, (wrb) s10 <-- 0x80002b87
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000934 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
      0x80000938 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x8000093c lbu     a0, 0(s0)              #; s0  = 0x80002b85, a0  <~~ Byte[0x80002b85]
                                                #; (lsu) a0  <-- 101
      0x80000940 beqz    a0, pc + 2824          #; a0  = 101, not taken
      0x80000944 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000948 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
      0x8000094c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000950 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
      0x80000954 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000958 jalr    s2                     #; s2  = 0x800014a4, (wrb) ra  <-- 0x8000095c, goto 0x800014a4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014a4 beqz    a0, pc + 168           #; a0  = 101, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
      0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
      0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 0
      0x800014c4 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
      0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 1 ~~> Word[0x80002ed4]
      0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 0, (wrb) a4  <-- 0x80002ed4
      0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002ed4, 101 ~~> Byte[0x80002f1c]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 1
      0x800014d8 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
      0x800014dc snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
      0x800014e0 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
      0x800014e4 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
      0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000154c ret                            #; ra  = 0x8000095c, goto 0x8000095c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x8000095c addi    s0, s0, 1              #; s0  = 0x80002b85, (wrb) s0  <-- 0x80002b86
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000960 addi    s10, s10, 1            #; s10 = 0x80002b87, (wrb) s10 <-- 0x80002b88
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000964 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000968 lbu     a0, 0(s0)              #; s0  = 0x80002b86, a0  <~~ Byte[0x80002b86]
                                                #; (lsu) a0  <-- 114
      0x8000096c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000944
      0x80000944 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000948 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
      0x8000094c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000950 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
      0x80000954 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000958 jalr    s2                     #; s2  = 0x800014a4, (wrb) ra  <-- 0x8000095c, goto 0x800014a4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014a4 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
      0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
      0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 1
      0x800014c4 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
      0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 2 ~~> Word[0x80002ed4]
      0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 1, (wrb) a4  <-- 0x80002ed5
      0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002ed5, 114 ~~> Byte[0x80002f1d]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 2
      0x800014d8 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
      0x800014dc snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
      0x800014e0 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x800014e4 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000154c ret                            #; ra  = 0x8000095c, goto 0x8000095c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x8000095c addi    s0, s0, 1              #; s0  = 0x80002b86, (wrb) s0  <-- 0x80002b87
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000960 addi    s10, s10, 1            #; s10 = 0x80002b88, (wrb) s10 <-- 0x80002b89
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000964 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000968 lbu     a0, 0(s0)              #; s0  = 0x80002b87, a0  <~~ Byte[0x80002b87]
                                                #; (lsu) a0  <-- 114
      0x8000096c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000944
      0x80000944 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000948 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
      0x8000094c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000950 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
      0x80000954 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000958 jalr    s2                     #; s2  = 0x800014a4, (wrb) ra  <-- 0x8000095c, goto 0x800014a4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014a4 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
      0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
      0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 2
      0x800014c4 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
      0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 3 ~~> Word[0x80002ed4]
      0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 2, (wrb) a4  <-- 0x80002ed6
      0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002ed6, 114 ~~> Byte[0x80002f1e]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 3
      0x800014d8 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
      0x800014dc snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
      0x800014e0 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x800014e4 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000154c ret                            #; ra  = 0x8000095c, goto 0x8000095c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x8000095c addi    s0, s0, 1              #; s0  = 0x80002b87, (wrb) s0  <-- 0x80002b88
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000960 addi    s10, s10, 1            #; s10 = 0x80002b89, (wrb) s10 <-- 0x80002b8a
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000964 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000968 lbu     a0, 0(s0)              #; s0  = 0x80002b88, a0  <~~ Byte[0x80002b88]
                                                #; (lsu) a0  <-- 111
      0x8000096c bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000944
      0x80000944 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000948 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
      0x8000094c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000950 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
      0x80000954 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000958 jalr    s2                     #; s2  = 0x800014a4, (wrb) ra  <-- 0x8000095c, goto 0x800014a4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014a4 beqz    a0, pc + 168           #; a0  = 111, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
      0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
      0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 3
      0x800014c4 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
      0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 4 ~~> Word[0x80002ed4]
      0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 3, (wrb) a4  <-- 0x80002ed7
      0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002ed7, 111 ~~> Byte[0x80002f1f]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 4
      0x800014d8 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
      0x800014dc snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
      0x800014e0 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
      0x800014e4 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
      0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000154c ret                            #; ra  = 0x8000095c, goto 0x8000095c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x8000095c addi    s0, s0, 1              #; s0  = 0x80002b88, (wrb) s0  <-- 0x80002b89
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000960 addi    s10, s10, 1            #; s10 = 0x80002b8a, (wrb) s10 <-- 0x80002b8b
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000964 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000968 lbu     a0, 0(s0)              #; s0  = 0x80002b89, a0  <~~ Byte[0x80002b89]
                                                #; (lsu) a0  <-- 114
      0x8000096c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000944
      0x80000944 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000948 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
      0x8000094c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000950 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
      0x80000954 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000958 jalr    s2                     #; s2  = 0x800014a4, (wrb) ra  <-- 0x8000095c, goto 0x800014a4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014a4 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
      0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
      0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 4
      0x800014c4 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
      0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 5 ~~> Word[0x80002ed4]
      0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 4, (wrb) a4  <-- 0x80002ed8
      0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002ed8, 114 ~~> Byte[0x80002f20]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 5
      0x800014d8 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
      0x800014dc snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
      0x800014e0 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x800014e4 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000154c ret                            #; ra  = 0x8000095c, goto 0x8000095c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x8000095c addi    s0, s0, 1              #; s0  = 0x80002b89, (wrb) s0  <-- 0x80002b8a
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000960 addi    s10, s10, 1            #; s10 = 0x80002b8b, (wrb) s10 <-- 0x80002b8c
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000964 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000968 lbu     a0, 0(s0)              #; s0  = 0x80002b8a, a0  <~~ Byte[0x80002b8a]
                                                #; (lsu) a0  <-- 32
      0x8000096c bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000944
      0x80000944 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000948 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
      0x8000094c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000950 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
      0x80000954 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000958 jalr    s2                     #; s2  = 0x800014a4, (wrb) ra  <-- 0x8000095c, goto 0x800014a4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014a4 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
      0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
      0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 5
      0x800014c4 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
      0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 6 ~~> Word[0x80002ed4]
      0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 5, (wrb) a4  <-- 0x80002ed9
      0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002ed9, 32 ~~> Byte[0x80002f21]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 6
      0x800014d8 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
      0x800014dc snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
      0x800014e0 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x800014e4 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000154c ret                            #; ra  = 0x8000095c, goto 0x8000095c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x8000095c addi    s0, s0, 1              #; s0  = 0x80002b8a, (wrb) s0  <-- 0x80002b8b
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000960 addi    s10, s10, 1            #; s10 = 0x80002b8c, (wrb) s10 <-- 0x80002b8d
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000964 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000968 lbu     a0, 0(s0)              #; s0  = 0x80002b8b, a0  <~~ Byte[0x80002b8b]
                                                #; (lsu) a0  <-- 61
      0x8000096c bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000944
      0x80000944 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000948 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
      0x8000094c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000950 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
      0x80000954 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000958 jalr    s2                     #; s2  = 0x800014a4, (wrb) ra  <-- 0x8000095c, goto 0x800014a4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014a4 beqz    a0, pc + 168           #; a0  = 61, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
      0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
      0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 6
      0x800014c4 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
      0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 7 ~~> Word[0x80002ed4]
      0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 6, (wrb) a4  <-- 0x80002eda
      0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002eda, 61 ~~> Byte[0x80002f22]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 7
      0x800014d8 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
      0x800014dc snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
      0x800014e0 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
      0x800014e4 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
      0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000154c ret                            #; ra  = 0x8000095c, goto 0x8000095c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x8000095c addi    s0, s0, 1              #; s0  = 0x80002b8b, (wrb) s0  <-- 0x80002b8c
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000960 addi    s10, s10, 1            #; s10 = 0x80002b8d, (wrb) s10 <-- 0x80002b8e
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000964 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000968 lbu     a0, 0(s0)              #; s0  = 0x80002b8c, a0  <~~ Byte[0x80002b8c]
                                                #; (lsu) a0  <-- 32
      0x8000096c bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000944
      0x80000944 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000948 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
      0x8000094c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000950 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
      0x80000954 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000958 jalr    s2                     #; s2  = 0x800014a4, (wrb) ra  <-- 0x8000095c, goto 0x800014a4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014a4 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
      0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
      0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 7
      0x800014c4 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
      0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 8 ~~> Word[0x80002ed4]
      0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 7, (wrb) a4  <-- 0x80002edb
      0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002edb, 32 ~~> Byte[0x80002f23]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 8
      0x800014d8 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
      0x800014dc snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
      0x800014e0 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x800014e4 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000154c ret                            #; ra  = 0x8000095c, goto 0x8000095c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x8000095c addi    s0, s0, 1              #; s0  = 0x80002b8c, (wrb) s0  <-- 0x80002b8d
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000960 addi    s10, s10, 1            #; s10 = 0x80002b8e, (wrb) s10 <-- 0x80002b8f
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000964 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000968 lbu     a0, 0(s0)              #; s0  = 0x80002b8d, a0  <~~ Byte[0x80002b8d]
                                                #; (lsu) a0  <-- 37
      0x8000096c bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000944
      0x80000944 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000974
; _vsnprintf.llvm.1805434900161566649 (printf.c:602)
      0x80000974 li      s0, 0                  #; (wrb) s0  <-- 0
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000978 j       pc + 0x10              #; goto 0x80000988
; _vsnprintf.llvm.1805434900161566649 (printf.c:604)
      0x80000988 lbu     a0, -1(s10)            #; s10 = 0x80002b8f, a0  <~~ Byte[0x80002b8e]
                                                #; (lsu) a0  <-- 102
      0x8000098c addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
      0x80000990 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x800009c8
; _is_digit (printf.c:183)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x800009c8 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
      0x800009cc andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
; _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x800009d0 addi    a1, s10, -1            #; s10 = 0x80002b8f, (wrb) a1  <-- 0x80002b8e
      0x800009d4 li      a3, 9                  #; (wrb) a3  <-- 9
      0x800009d8 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000a54
; _vsnprintf.llvm.1805434900161566649 (printf.c:619)
      0x80000a54 li      a2, 42                 #; (wrb) a2  <-- 42
      0x80000a58 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000aa8
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000aa8 li      s6, 0                  #; (wrb) s6  <-- 0
      0x80000aac mv      s10, a1                #; a1  = 0x80002b8e, (wrb) s10 <-- 0x80002b8e
; _vsnprintf.llvm.1805434900161566649 (printf.c:633)
      0x80000ab0 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000ab4 li      s7, 0                  #; (wrb) s7  <-- 0
      0x80000ab8 j       pc + 0xc               #; goto 0x80000ac4
; _vsnprintf.llvm.1805434900161566649 (printf.c:647)
      0x80000ac4 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
      0x80000ac8 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
      0x80000acc slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
      0x80000ad0 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
      0x80000ad4 li      a2, 9                  #; (wrb) a2  <-- 9
      0x80000ad8 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000b3c
; _vsnprintf.llvm.1805434900161566649 (printf.c:683)
      0x80000b3c addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
      0x80000b40 li      a2, 83                 #; (wrb) a2  <-- 83
      0x80000b44 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000b48 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
      0x80000b4c auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002b4c
      0x80000b50 addi    a2, a2, 196            #; a2  = 0x80002b4c, (wrb) a2  <-- 0x80002c10
      0x80000b54 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002c10, (wrb) a1  <-- 0x80002d14
      0x80000b58 lw      a2, 0(a1)              #; a1  = 0x80002d14, a2  <~~ Word[0x80002d14]
      0x80000b5c li      a1, 8                  #; (wrb) a1  <-- 8
      0x80000b60 li      s8, 16                 #; (wrb) s8  <-- 16
                                                #; (lsu) a2  <-- 0x80000b94
      0x80000b64 jr      a2                     #; a2  = 0x80000b94, goto 0x80000b94
; _vsnprintf.llvm.1805434900161566649 (printf.c:760)
      0x80000b94 li      a1, 70                 #; (wrb) a1  <-- 70
      0x80000b98 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000ba0
; _vsnprintf.llvm.1805434900161566649 (printf.c:761)
      0x80000ba0 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
      0x80000ba4 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
      0x80000bac addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
      0x80000ba8 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
                                                #; (f:lsu) fa0  <-- 0.0
      0x80000bb0 mv      a0, s2                 #; s2  = 0x800014a4, (wrb) a0  <-- 0x800014a4
      0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000bb8 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
      0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000bc0 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
      0x80000bc4 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
      0x80000bc8 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
      0x80000bcc auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001bcc
      0x80000bd0 jalr    ra, ra, -1656          #; ra  = 0x80001bcc, (wrb) ra  <-- 0x80000bd4, goto 0x80001554
; _ftoa (printf.c:340)
      0x80001554 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
      0x80001558 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000bd4 ~~> Word[0x0011fe9c]
      0x8000155c sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
      0x80001560 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
      0x80001564 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x800014a4 ~~> Word[0x0011fe90]
      0x80001568 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
      0x8000156c sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
      0x80001570 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
      0x80001574 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
      0x80001578 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
      0x8000157c sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
      0x80001580 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
      0x80001584 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002b8e ~~> Word[0x0011fe70]
      0x80001588 fsd     fs0, 56(sp)            #; 0.0 ~~> Doub[0x0011fe68]
      0x8000158c fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
      0x80001594 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003594
      0x80001598 addi    s1, s1, -1900          #; s1  = 0x80003594, (wrb) s1  <-- 0x80002e28
      0x80001590 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
      0x8000159c fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80002e28]
; _ftoa (printf.c:351)
      0x800015a4 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
; _ftoa (printf.c:0)
      0x800015a8 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                                                #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
      0x800015ac mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
      0x800015a0 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
      0x800015b0 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
      0x800015b4 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
      0x800015b8 mv      s7, a0                 #; a0  = 0x800014a4, (wrb) s7  <-- 0x800014a4
; _ftoa (printf.c:351)
      0x800015bc bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x800016ac
; _ftoa (printf.c:0)
      0x800016ac fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
                                                #; (f:fpu) fs0  <-- 0.0
      0x800016b0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800026b0
      0x800016b4 addi    a0, a0, 1920           #; a0  = 0x800026b0, (wrb) a0  <-- 0x80002e30
      0x800016b8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002e30]
                                                #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
; _ftoa (printf.c:353)
      0x800016bc fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
                                                #; (acc) t3  <-- 0x00051e63
      0x800016c0 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x800016dc
; _ftoa (printf.c:0)
      0x800016dc auipc   a0, 0x1                #; (wrb) a0  <-- 0x800026dc
      0x800016e0 addi    a0, a0, 1884           #; a0  = 0x800026dc, (wrb) a0  <-- 0x80002e38
      0x800016e8 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800026e8
      0x800016ec addi    a0, a0, 1880           #; a0  = 0x800026e8, (wrb) a0  <-- 0x80002e40
      0x800016e4 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002e38]
                                                #; (f:lsu) ft0  <-- 1000000000.0000000
      0x800016f0 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002e40]
; _ftoa (printf.c:358)
      0x800016f4 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
                                                #; (acc) a0  <-- 0x00b57533
                                                #; (f:lsu) ft1  <-- -1000000000.0000000
      0x800016f8 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
                                                #; (acc) a0  <-- 0x00b57533
      0x800016fc and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
      0x80001700 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x800017fc
; _ftoa (printf.c:374)
      0x800017fc andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
      0x80001800 li      s8, 6                  #; (wrb) s8  <-- 6
      0x80001804 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x8000180c
; _ftoa (printf.c:0)
      0x8000180c li      a0, 10                 #; (wrb) a0  <-- 10
; _ftoa (printf.c:378)
      0x80001814 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x8000184c
; _ftoa (printf.c:0)
      0x80001810 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
                                                #; (f:fpu) fs2  <-- 0.0
      0x8000184c li      s0, 0                  #; (wrb) s0  <-- 0
; _ftoa (printf.c:384)
      0x80001850 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
      0x80001854 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002854
      0x80001858 addi    a1, a1, 1292           #; a1  = 0x80002854, (wrb) a1  <-- 0x80002d60
      0x8000185c add     a0, a0, a1             #; a0  = 48, a1  = 0x80002d60, (wrb) a0  <-- 0x80002d90
      0x80001860 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002d90]
; _ftoa (printf.c:383)
      0x80001864 fcvt.w.d s1, fs2               #; fs2  = 0.0
; _ftoa (printf.c:384)
      0x80001868 fcvt.d.w ft0, s1               #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
      0x8000186c fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
                                                #; (f:lsu) ft1  <-- 1000000.0000000
                                                #; (f:fpu) ft0  <-- 0.0
; _ftoa (printf.c:0)
      0x80001874 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002874
      0x80001878 addi    a0, a0, 1492           #; a0  = 0x80002874, (wrb) a0  <-- 0x80002e48
      0x80001870 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
      0x8000187c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002e48], (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:385)
      0x80001880 fcvt.wu.d a0, ft2              #; ft2  = 0.0
                                                #; (f:lsu) ft0  <-- 0.5
                                                #; (acc) gp  <-- 0xd21501d3
; _ftoa (printf.c:386)
      0x80001884 fcvt.d.wu ft3, a0              #; ac1  = 0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80001888 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:388)
      0x8000188c fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
      0x80001890 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x800018b0
; _ftoa (printf.c:396)
      0x800018b0 flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
                                                #; (acc) s4  <-- 0x00059a63
      0x800018b4 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x800018c8
; _ftoa (printf.c:403)
      0x800018cc beqz    s8, pc + 216           #; s8  = 6, not taken
      0x800018c8 fcvt.d.w fs1, zero             #; ac1  = 0
                                                #; (f:fpu) fs1  <-- 0.0
; _ftoa (printf.c:0)
      0x800018d0 li      a2, 0                  #; (wrb) a2  <-- 0
      0x800018d4 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:414)
      0x800018d8 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
      0x800018dc li      t0, 32                 #; (wrb) t0  <-- 32
      0x800018e0 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
      0x800018e4 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
      0x800018e8 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
      0x800018ec li      a6, 10                 #; (wrb) a6  <-- 10
      0x800018f0 li      a7, 9                  #; (wrb) a7  <-- 9
      0x800018f4 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
; _ftoa (printf.c:0)
      0x800018f8 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
; _ftoa (printf.c:417)
      0x800018fc mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
      0x80001900 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001904 mul     a3, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a3  <-- 0x40d586b3
      0x80001908 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
; _ftoa (printf.c:416)
      0x8000190c ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
      0x80001910 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
      0x80001914 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
; _ftoa (printf.c:417)
      0x80001918 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
      0x8000191c bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
; _ftoa (printf.c:422)
      0x80001920 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
      0x80001924 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
      0x80001928 li      a3, 30                 #; (wrb) a3  <-- 30
      0x8000192c sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
      0x80001930 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
      0x80001934 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
      0x80001938 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
      0x8000193c bnez    a3, pc + 136           #; a3  = 0, not taken
; _ftoa (printf.c:0)
      0x80001940 addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
; _ftoa (printf.c:422)
      0x80001944 add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
      0x80001948 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
      0x8000194c add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
      0x80001950 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
      0x80001954 li      a1, 31                 #; (wrb) a1  <-- 31
      0x80001958 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
      0x8000195c add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
      0x80001960 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
      0x80001964 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x8000196c
      0x8000196c addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
; _ftoa (printf.c:423)
      0x80001970 li      a1, 48                 #; (wrb) a1  <-- 48
      0x80001974 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000974
      0x80001978 jalr    ra, ra, -1052          #; ra  = 0x80000974, (wrb) ra  <-- 0x8000197c, goto 0x80000558
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
      0x800005ec ret                            #; ra  = 0x8000197c, goto 0x8000197c
; _ftoa (printf.c:0)
      0x8000197c li      a0, 0                  #; (wrb) a0  <-- 0
; _ftoa (printf.c:422)
      0x80001980 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
      0x80001984 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
      0x80001988 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
      0x8000198c snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
      0x80001990 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001994 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x80001998 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001980
      0x80001980 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
      0x80001984 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
      0x80001988 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
      0x8000198c snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
      0x80001990 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001994 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
      0x80001998 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001980
      0x80001980 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
      0x80001984 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
      0x80001988 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
      0x8000198c snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
      0x80001990 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001994 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
      0x80001998 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001980
      0x80001980 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
      0x80001984 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
      0x80001988 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
      0x8000198c snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
      0x80001990 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001994 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
      0x80001998 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001980
      0x80001980 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
      0x80001984 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
      0x80001988 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
      0x8000198c snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
      0x80001990 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
      0x80001994 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
      0x80001998 bnez    a2, pc - 24            #; a2  = 0, not taken
; _ftoa (printf.c:425)
      0x8000199c add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
      0x800019a0 j       pc + 0x28              #; goto 0x800019c8
      0x800019c8 beqz    a1, pc + 28            #; a1  = 1, not taken
; _ftoa (printf.c:427)
      0x800019cc addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
; _ftoa (printf.c:0)
      0x800019d0 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:427)
      0x800019d4 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
      0x800019d8 li      a1, 46                 #; (wrb) a1  <-- 46
      0x800019dc sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
      0x800019e0 j       pc + 0x8               #; goto 0x800019e8
; _ftoa (printf.c:0)
      0x800019e8 li      a0, 32                 #; (wrb) a0  <-- 32
; _ftoa (printf.c:432)
      0x800019ec mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
      0x800019f0 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
; _ftoa (printf.c:0)
      0x800019f4 li      t0, 32                 #; (wrb) t0  <-- 32
      0x800019fc lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
      0x800019f8 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
      0x80001a00 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
      0x80001a04 li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001a08 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
      0x80001a0c li      a4, 18                 #; (wrb) a4  <-- 18
; _ftoa (printf.c:432)
      0x80001a10 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
; _ftoa (printf.c:434)
      0x80001a14 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
                                                #; (acc) a5  <-- 0x01f55793
      0x80001a18 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
      0x80001a1c srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
      0x80001a20 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001a24 mul     a5, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f487b3
      0x80001a28 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
; _ftoa (printf.c:433)
      0x80001a2c addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
      0x80001a30 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
      0x80001a34 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
; _ftoa (printf.c:434)
      0x80001a38 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
; _ftoa (printf.c:433)
      0x80001a3c sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
; _ftoa (printf.c:0)
      0x80001a40 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
      0x80001a44 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:434)
      0x80001a48 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
      0x80001a4c j       pc + 0x8               #; goto 0x80001a54
; _ftoa (printf.c:440)
      0x80001a54 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:0)
      0x80001a58 li      a0, 1                  #; (wrb) a0  <-- 1
; _ftoa (printf.c:440)
      0x80001a5c bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001ac8
; _ftoa (printf.c:0)
      0x80001ac8 li      a0, 31                 #; (wrb) a0  <-- 31
; _ftoa (printf.c:449)
      0x80001acc bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
; _ftoa (printf.c:450)
      0x80001ad0 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001ae8
; _ftoa (printf.c:453)
      0x80001ae8 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
      0x80001aec bnez    a0, pc + 32            #; a0  = 0, not taken
; _ftoa (printf.c:456)
      0x80001af0 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
      0x80001af4 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001b20
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001b20 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
      0x80001b24 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
      0x80001b28 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x80001b2c or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
; _ftoa (printf.c:0)
      0x80001b30 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
      0x80001b34 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001b38 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001b64
; _ftoa (printf.c:0)
      0x80001b64 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001b68 beqz    s8, pc + 56            #; s8  = 8, not taken
      0x80001b6c addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001b70 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
      0x80001b74 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
      0x80001b78 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
      0x80001b7c addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
                                                #; (lsu) a0  <-- 48
      0x80001b80 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001b84 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
      0x80001b88 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001b8c jalr    s7                     #; s7  = 0x800014a4, (wrb) ra  <-- 0x80001b90, goto 0x800014a4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014a4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
      0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
      0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 8
      0x800014c4 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
      0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 9 ~~> Word[0x80002ed4]
      0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 8, (wrb) a4  <-- 0x80002edc
      0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002edc, 48 ~~> Byte[0x80002f24]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 9
      0x800014d8 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
      0x800014dc snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
      0x800014e0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800014e4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000154c ret                            #; ra  = 0x80001b90, goto 0x80001b90
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001b90 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
      0x80001b94 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001b98 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001b70
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001b70 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
      0x80001b74 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
      0x80001b78 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
      0x80001b7c addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
      0x80001b80 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001b84 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
      0x80001b88 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001b8c jalr    s7                     #; s7  = 0x800014a4, (wrb) ra  <-- 0x80001b90, goto 0x800014a4
                                                #; (lsu) a0  <-- 46
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014a4 beqz    a0, pc + 168           #; a0  = 46, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
      0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
      0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 9
      0x800014c4 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
      0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 10 ~~> Word[0x80002ed4]
      0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 9, (wrb) a4  <-- 0x80002edd
      0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002edd, 46 ~~> Byte[0x80002f25]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 10
      0x800014d8 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
      0x800014dc snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
      0x800014e0 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
      0x800014e4 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
      0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000154c ret                            #; ra  = 0x80001b90, goto 0x80001b90
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001b90 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
      0x80001b94 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001b98 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001b70
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001b70 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
      0x80001b74 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
      0x80001b78 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
      0x80001b7c addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
      0x80001b80 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001b84 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
      0x80001b88 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001b8c jalr    s7                     #; s7  = 0x800014a4, (wrb) ra  <-- 0x80001b90, goto 0x800014a4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014a4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
      0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
      0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 10
      0x800014c4 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
      0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 11 ~~> Word[0x80002ed4]
      0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 10, (wrb) a4  <-- 0x80002ede
      0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002ede, 48 ~~> Byte[0x80002f26]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 11
      0x800014d8 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
      0x800014dc snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
      0x800014e0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800014e4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000154c ret                            #; ra  = 0x80001b90, goto 0x80001b90
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001b90 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
      0x80001b94 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001b98 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001b70
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001b70 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
      0x80001b74 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
      0x80001b78 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
      0x80001b7c addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
      0x80001b80 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001b84 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
      0x80001b88 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001b8c jalr    s7                     #; s7  = 0x800014a4, (wrb) ra  <-- 0x80001b90, goto 0x800014a4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014a4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
      0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
      0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 11
      0x800014c4 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
      0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 12 ~~> Word[0x80002ed4]
      0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 11, (wrb) a4  <-- 0x80002edf
      0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002edf, 48 ~~> Byte[0x80002f27]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 12
      0x800014d8 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
      0x800014dc snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
      0x800014e0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800014e4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000154c ret                            #; ra  = 0x80001b90, goto 0x80001b90
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001b90 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
      0x80001b94 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001b98 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001b70
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001b70 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
      0x80001b74 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
      0x80001b78 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
      0x80001b7c addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
      0x80001b80 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001b84 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
      0x80001b88 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001b8c jalr    s7                     #; s7  = 0x800014a4, (wrb) ra  <-- 0x80001b90, goto 0x800014a4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014a4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
      0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
      0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 12
      0x800014c4 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
      0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 13 ~~> Word[0x80002ed4]
      0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 12, (wrb) a4  <-- 0x80002ee0
      0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002ee0, 48 ~~> Byte[0x80002f28]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 13
      0x800014d8 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
      0x800014dc snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
      0x800014e0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800014e4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000154c ret                            #; ra  = 0x80001b90, goto 0x80001b90
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001b90 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
      0x80001b94 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001b98 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001b70
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001b70 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
      0x80001b74 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
      0x80001b78 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
      0x80001b7c addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
      0x80001b80 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001b84 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
      0x80001b88 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001b8c jalr    s7                     #; s7  = 0x800014a4, (wrb) ra  <-- 0x80001b90, goto 0x800014a4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014a4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
      0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
      0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 13
      0x800014c4 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
      0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 14 ~~> Word[0x80002ed4]
      0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 13, (wrb) a4  <-- 0x80002ee1
      0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002ee1, 48 ~~> Byte[0x80002f29]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 14
      0x800014d8 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
      0x800014dc snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
      0x800014e0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800014e4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000154c ret                            #; ra  = 0x80001b90, goto 0x80001b90
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001b90 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
      0x80001b94 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001b98 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001b70
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001b70 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
      0x80001b74 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
      0x80001b78 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
      0x80001b7c addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
      0x80001b80 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001b84 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
      0x80001b88 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001b8c jalr    s7                     #; s7  = 0x800014a4, (wrb) ra  <-- 0x80001b90, goto 0x800014a4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014a4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
      0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
      0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 14
      0x800014c4 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
      0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 15 ~~> Word[0x80002ed4]
      0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 14, (wrb) a4  <-- 0x80002ee2
      0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002ee2, 48 ~~> Byte[0x80002f2a]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 15
      0x800014d8 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
      0x800014dc snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
      0x800014e0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800014e4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000154c ret                            #; ra  = 0x80001b90, goto 0x80001b90
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001b90 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
      0x80001b94 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001b98 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001b70
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001b70 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
      0x80001b74 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
      0x80001b78 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
      0x80001b7c addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
      0x80001b80 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001b84 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
      0x80001b88 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001b8c jalr    s7                     #; s7  = 0x800014a4, (wrb) ra  <-- 0x80001b90, goto 0x800014a4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014a4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
      0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
      0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 15
      0x800014c4 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
      0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 16 ~~> Word[0x80002ed4]
      0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 15, (wrb) a4  <-- 0x80002ee3
      0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002ee3, 48 ~~> Byte[0x80002f2b]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 16
      0x800014d8 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
      0x800014dc snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
      0x800014e0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800014e4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000154c ret                            #; ra  = 0x80001b90, goto 0x80001b90
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001b90 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
      0x80001b94 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001b98 bnez    s10, pc - 40           #; s10 = 0, not taken
      0x80001b9c j       pc + 0x8               #; goto 0x80001ba4
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001ba4 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
      0x80001ba8 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
      0x80001bac xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
; _out_rev (printf.c:216)
;  in _ftoa (printf.c:461)
      0x80001bb0 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
      0x80001bb4 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x80001bb8 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001be8
; _ftoa (printf.c:0)
      0x80001be8 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
; _ftoa (printf.c:462)
      0x80001bec mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
      0x80001bf0 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
      0x80001bfc lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
      0x80001bf4 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
      0x80001bf8 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
                                                #; (f:lsu) fs0  <-- 0.0
                                                #; (lsu) s10 <-- 0x80002b8e
      0x80001c00 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
                                                #; (lsu) s9  <-- 8
      0x80001c04 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
                                                #; (lsu) s8  <-- 16
      0x80001c08 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
                                                #; (lsu) s7  <-- 0
      0x80001c0c lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
                                                #; (lsu) s6  <-- 0
      0x80001c10 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
                                                #; (lsu) s5  <-- -1
      0x80001c14 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
                                                #; (lsu) s4  <-- 0x0011ff17
      0x80001c18 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
                                                #; (lsu) s3  <-- 0x0011ff30
      0x80001c1c lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
                                                #; (lsu) s2  <-- 0x800014a4
      0x80001c20 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
                                                #; (lsu) s1  <-- 8
      0x80001c24 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
                                                #; (lsu) s0  <-- 0
      0x80001c28 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
      0x80001c2c addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
                                                #; (lsu) ra  <-- 0x80000bd4
      0x80001c30 ret                            #; ra  = 0x80000bd4, goto 0x80000bd4
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000bd4 j       pc + 0x7c0             #; goto 0x80001394
      0x80001394 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
      0x80001398 li      s6, 37                 #; (wrb) s6  <-- 37
      0x8000139c li      s7, 46                 #; (wrb) s7  <-- 46
      0x800013a0 addi    s0, s10, 1             #; s10 = 0x80002b8e, (wrb) s0  <-- 0x80002b8f
      0x800013a4 j       pc - 0xa74             #; goto 0x80000930
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000930 addi    s10, s0, 2             #; s0  = 0x80002b8f, (wrb) s10 <-- 0x80002b91
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000934 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
      0x80000938 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x8000093c lbu     a0, 0(s0)              #; s0  = 0x80002b8f, a0  <~~ Byte[0x80002b8f]
                                                #; (lsu) a0  <-- 10
      0x80000940 beqz    a0, pc + 2824          #; a0  = 10, not taken
      0x80000944 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000948 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
      0x8000094c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000950 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
      0x80000954 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000958 jalr    s2                     #; s2  = 0x800014a4, (wrb) ra  <-- 0x8000095c, goto 0x800014a4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014a4 beqz    a0, pc + 168           #; a0  = 10, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
      0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
                                                #; (acc) a1  <-- 0x00d605b3
      0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
      0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 16
      0x800014c4 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
      0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 17 ~~> Word[0x80002ed4]
      0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 16, (wrb) a4  <-- 0x80002ee4
      0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002ee4, 10 ~~> Byte[0x80002f2c]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
                                                #; (lsu) a4  <-- 17
      0x800014d8 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
      0x800014dc snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
      0x800014e0 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
      0x800014e4 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
      0x800014e8 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
      0x800014ec bnez    a0, pc + 96            #; a0  = 0, not taken
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014f0 add     a0, a3, a2             #; a3  = 0x80002ed4, a2  = 0, (wrb) a0  <-- 0x80002ed4
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014f4 addi    a2, a0, 72             #; a0  = 0x80002ed4, (wrb) a2  <-- 0x80002f1c
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800014f8 sw      zero, 12(a0)           #; a0  = 0x80002ed4, 0 ~~> Word[0x80002ee0]
      0x800014fc li      a3, 64                 #; (wrb) a3  <-- 64
      0x80001500 sw      a3, 8(a0)              #; a0  = 0x80002ed4, 64 ~~> Word[0x80002edc]
; snrt_putchar (putchar.c:26)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001504 sw      zero, 20(a0)           #; a0  = 0x80002ed4, 0 ~~> Word[0x80002ee8]
      0x80001508 li      a3, 1                  #; (wrb) a3  <-- 1
      0x8000150c sw      a3, 16(a0)             #; a0  = 0x80002ed4, 1 ~~> Word[0x80002ee4]
; snrt_putchar (putchar.c:27)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001510 sw      zero, 28(a0)           #; a0  = 0x80002ed4, 0 ~~> Word[0x80002ef0]
      0x80001514 sw      a2, 24(a0)             #; a0  = 0x80002ed4, 0x80002f1c ~~> Word[0x80002eec]
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001518 lw      a2, 0(a1)              #; a1  = 0x80002ed4, a2  <~~ Word[0x80002ed4]
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000151c addi    a3, a0, 8              #; a0  = 0x80002ed4, (wrb) a3  <-- 0x80002edc
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001520 sw      zero, 36(a0)           #; a0  = 0x80002ed4, 0 ~~> Word[0x80002ef8]
                                                #; (lsu) a2  <-- 17
      0x80001524 sw      a2, 32(a0)             #; a0  = 0x80002ed4, 17 ~~> Word[0x80002ef4]
; snrt_putchar (putchar.c:30)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001528 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003528
      0x8000152c addi    a0, a0, -1896          #; a0  = 0x80003528, (wrb) a0  <-- 0x80002dc0
      0x80001530 sw      a3, 0(a0)              #; a0  = 0x80002dc0, 0x80002edc ~~> Word[0x80002dc0]
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001534 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003534
      0x80001538 addi    a0, a0, -1844          #; a0  = 0x80003534, (wrb) a0  <-- 0x80002e00
; snrt_putchar (putchar.c:31)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000153c lw      a2, 0(a0)              #; a0  = 0x80002e00, a2  <~~ Word[0x80002e00]
                                                #; (lsu) a2  <-- 0
      0x80001540 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000153c
      0x8000153c lw      a2, 0(a0)              #; a0  = 0x80002e00, a2  <~~ Word[0x80002e00]
                                                #; (lsu) a2  <-- 0
      0x80001540 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000153c
      0x8000153c lw      a2, 0(a0)              #; a0  = 0x80002e00, a2  <~~ Word[0x80002e00]
                                                #; (lsu) a2  <-- 1
      0x80001540 beqz    a2, pc - 4             #; a2  = 1, not taken
; snrt_putchar (putchar.c:33)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001544 sw      zero, 0(a0)            #; a0  = 0x80002e00, 0 ~~> Word[0x80002e00]
; snrt_putchar (putchar.c:35)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001548 sw      zero, 0(a1)            #; a1  = 0x80002ed4, 0 ~~> Word[0x80002ed4]
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000154c ret                            #; ra  = 0x8000095c, goto 0x8000095c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x8000095c addi    s0, s0, 1              #; s0  = 0x80002b8f, (wrb) s0  <-- 0x80002b90
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000960 addi    s10, s10, 1            #; s10 = 0x80002b91, (wrb) s10 <-- 0x80002b92
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000964 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000968 lbu     a0, 0(s0)              #; s0  = 0x80002b90, a0  <~~ Byte[0x80002b90]
                                                #; (lsu) a0  <-- 0
      0x8000096c bnez    a0, pc - 40            #; a0  = 0, not taken
      0x80000970 j       pc + 0xad8             #; goto 0x80001448
; _vsnprintf.llvm.1805434900161566649 (printf.c:853)
      0x80001448 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
      0x8000144c bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x80001454
      0x80001454 li      a0, 0                  #; (wrb) a0  <-- 0
      0x80001458 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x8000145c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80001460 jalr    s2                     #; s2  = 0x800014a4, (wrb) ra  <-- 0x80001464, goto 0x800014a4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800014a4 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x8000154c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000154c ret                            #; ra  = 0x80001464, goto 0x80001464
; _vsnprintf.llvm.1805434900161566649 (printf.c:856)
      0x80001464 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
      0x80001468 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
                                                #; (lsu) s11 <-- 0
      0x8000146c lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
                                                #; (lsu) s10 <-- 0
      0x80001470 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
                                                #; (lsu) s9  <-- 0
      0x80001474 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
                                                #; (lsu) s8  <-- 0
      0x80001478 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
                                                #; (lsu) s7  <-- 0
      0x8000147c lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
                                                #; (lsu) s6  <-- 0
      0x80001480 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
                                                #; (lsu) s5  <-- 0
      0x80001484 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
                                                #; (lsu) s4  <-- 0
      0x80001488 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
                                                #; (lsu) s3  <-- 0
      0x8000148c lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
                                                #; (lsu) s2  <-- 0
      0x80001490 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
                                                #; (lsu) s1  <-- 0
      0x80001494 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
                                                #; (lsu) s0  <-- 0
      0x80001498 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
      0x8000149c addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
                                                #; (lsu) ra  <-- 0x800008a0
      0x800014a0 ret                            #; ra  = 0x800008a0, goto 0x800008a0
; printf_ (printf.c:869)
      0x800008a0 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
      0x800008a4 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
                                                #; (lsu) ra  <-- 0x80000830
      0x800008a8 ret                            #; ra  = 0x80000830, goto 0x80000830
; main (bench_sp.c:0)
      0x80000830 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002830
      0x80000834 addi    a0, a0, 1520           #; a0  = 0x80002830, (wrb) a0  <-- 0x80002e20
      0x80000838 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002e20]
; main (bench_sp.c:60)
      0x80000844 lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
                                                #; (f:lsu) ft0  <-- 0.0001
      0x80000848 addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
      0x8000083c flt.d   a0, ft0, fs0           #; ft0  = 0.0001, fs0  = 0.0
                                                #; (lsu) ra  <-- 0x80002900
      0x80000840 fld     fs0, 16(sp)            #; fs0  <~~ Doub[0x0011ff50]
      0x8000084c ret                            #; ra  = 0x80002900, goto 0x80002900
                                                #; (f:lsu) fs0  <-- 0.0
; ?? (start.S:184)
      0x80002900 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:191)
      0x80002904 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002904
      0x80002908 jalr    ra, ra, 524            #; ra  = 0x80002904, (wrb) ra  <-- 0x8000290c, goto 0x80002b10
; ?? (start_snitch.S:33)
      0x80002b10 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002b14 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x8000290c ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002b18 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b18
      0x80002b1c jalr    ra, ra, -1260          #; ra  = 0x80002b18, (wrb) ra  <-- 0x80002b20, goto 0x8000262c
; _snrt_barrier_reg_ptr (team.c:80)
      0x8000262c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002630 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002634 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002638 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x8000263c lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x80002640 ret                            #; ra  = 0x80002b20, goto 0x80002b20
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002b20 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002b24 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002b28 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002b2c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x8000290c
; ?? (start_snitch.S:40)
      0x80002b30 ret                            #; ra  = 0x8000290c, goto 0x8000290c
; ?? (start.S:195)
      0x8000290c mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:196)
      0x80002910 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002910
      0x80002914 jalr    ra, ra, 556            #; ra  = 0x80002910, (wrb) ra  <-- 0x80002918, goto 0x80002b3c
; ?? (start_snitch.S:15)
      0x80002b3c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
; ?? (start_snitch.S:16)
      0x80002b40 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
; ?? (start_snitch.S:17)
      0x80002b44 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002918 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:18)
      0x80002b48 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b48
      0x80002b4c jalr    ra, ra, -1340          #; ra  = 0x80002b48, (wrb) ra  <-- 0x80002b50, goto 0x8000260c
; snrt_global_core_idx (team.c:32)
      0x8000260c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002610 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002614 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002618 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x8000261c lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
; snrt_hartid (snrt.h:181)
;  in snrt_global_core_idx (team.c:32)
      0x80002620 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 0
; snrt_global_core_idx (team.c:32)
      0x80002624 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
      0x80002628 ret                            #; ra  = 0x80002b50, goto 0x80002b50
; ?? (start_snitch.S:20)
      0x80002b50 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:21)
      0x80002b54 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:22)
      0x80002b58 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
; ?? (start_snitch.S:27)
      0x80002b5c bnez    a0, pc + 24            #; a0  = 0, not taken
                                                #; (lsu) ra  <-- 0x80002918
; ?? (start_snitch.S:28)
      0x80002b60 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
; ?? (start_snitch.S:29)
      0x80002b64 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
; ?? (start_snitch.S:30)
      0x80002b68 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002b68
      0x80002b6c addi    t1, t1, 600            #; t1  = 0x80002b68, (wrb) t1  <-- 0x80002dc0
; ?? (start_snitch.S:31)
      0x80002b70 sw      t0, 0(t1)              #; t1  = 0x80002dc0, 1 ~~> Word[0x80002dc0]
; ?? (start_snitch.S:32)
      0x80002b74 ret                            #; ra  = 0x80002918, goto 0x80002918
; ?? (start.S:198)
      0x80002918 wfi                            #; 
                        tion 0 @ (12, 1788):
                           38
                           90
                            1
                            0
                      18.2105
                       0.1609
                       0.1034
                          1.0
                          1.0
                            0
                          1.0
                            0
                       0.0186
                       0.0180
                       0.9697
                         1777
                       0.1795
            tion 1 @ (1790, 1883):
                           20
                            0
                            0
                       0.0101
                       0.9677
                          1.0
                          1.0
                            5
                         3.75
                          1.1
                       0.3030
                       0.0808
                       0.2667
                           99
                       0.3131
            tion 2 @ (1885, 7514):
                          168
                          173
                           13
                            4
                       9.6358
                       0.2993
                       0.0215
                          1.0
                          1.0
                            0
                       0.8182
                       5.9231
                       0.0066
                       0.0039
                       0.5946
                         5630
                       0.3059
