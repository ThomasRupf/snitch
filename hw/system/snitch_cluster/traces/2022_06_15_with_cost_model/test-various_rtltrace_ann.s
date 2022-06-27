; ?? (??:0)
      0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
      0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
      0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
      0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
      0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
                                                #; (lsu) t0  <-- 0x800029e0
      0x00001014 jalr    t0                     #; t0  = 0x800029e0, (wrb) ra  <-- 4120, goto 0x800029e0
; ?? (start.S:20)
      0x800029e0 auipc   gp, 0x1                #; (wrb) gp  <-- 0x800039e0
; ?? (start.S:21)
      0x800029e4 addi    gp, gp, -280           #; gp  = 0x800039e0, (wrb) gp  <-- 0x800038c8
; ?? (start.S:28)
      0x800029e8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029e8
      0x800029ec jalr    ra, ra, 964            #; ra  = 0x800029e8, (wrb) ra  <-- 0x800029f0, goto 0x80002dac
; ?? (start_snitch.S:16)
      0x80002dac mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
; ?? (start_snitch.S:17)
      0x80002db0 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
                                                #; (lsu) a1  <-- 8
; ?? (start_snitch.S:18)
      0x80002db4 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:19)
      0x80002db8 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start_snitch.S:20)
      0x80002dbc lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
                                                #; (lsu) t1  <-- 0x00020000
; ?? (start_snitch.S:21)
      0x80002dc0 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
; ?? (start_snitch.S:22)
      0x80002dc4 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
; ?? (start_snitch.S:23)
      0x80002dc8 div     t3, a0, a1             #; a0  = 0, a1  = 8
                                                #; (acc) t4  <-- 0x027e0eb3
                                                #; (lsu) t2  <-- 0
; ?? (start_snitch.S:24)
      0x80002dcc mul     t4, t3, t2             #; t3  = 0, t2  = 0
                                                #; (acc) a2  <-- 0x01d60633
; ?? (start_snitch.S:25)
      0x80002dd0 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
; ?? (start_snitch.S:26)
      0x80002dd4 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
; ?? (start_snitch.S:27)
      0x80002dd8 remu    a0, a0, a1             #; a0  = 0, a1  = 8
; ?? (start_snitch.S:28)
      0x80002ddc ret                            #; ra  = 0x800029f0, goto 0x800029f0
                                                #; (acc) s0  <-- 0x00050413
; ?? (start.S:39)
      0x800029f0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:40)
      0x800029f4 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
; ?? (start.S:41)
      0x800029f8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029f8
      0x800029fc jalr    ra, ra, 1036           #; ra  = 0x800029f8, (wrb) ra  <-- 0x80002a00, goto 0x80002e04
; ?? (start_snitch.S:48)
      0x80002e04 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
; ?? (start_snitch.S:49)
      0x80002e08 ret                            #; ra  = 0x80002a00, goto 0x80002a00
                                                #; (lsu) a0  <-- 0
; ?? (start.S:42)
      0x80002a00 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:43)
      0x80002a04 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:45)
      0x80002a08 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
; ?? (start.S:46)
      0x80002a0c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
; ?? (start.S:47)
      0x80002a10 bnez    t0, pc + 36            #; t0  = 0, not taken
; ?? (start.S:48)
      0x80002a14 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002a14
      0x80002a18 addi    t0, t0, 1940           #; t0  = 0x80002a14, (wrb) t0  <-- 0x800031a8
; ?? (start.S:49)
      0x80002a1c auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002a1c
      0x80002a20 addi    t1, t1, 1936           #; t1  = 0x80002a1c, (wrb) t1  <-- 0x800031ac
; ?? (start.S:50)
      0x80002a24 bge     t0, t1, pc + 16        #; t0  = 0x800031a8, t1  = 0x800031ac, not taken
; ?? (start.S:51)
      0x80002a28 sw      zero, 0(t0)            #; t0  = 0x800031a8, 0 ~~> Word[0x800031a8]
; ?? (start.S:52)
      0x80002a2c addi    t0, t0, 4              #; t0  = 0x800031a8, (wrb) t0  <-- 0x800031ac
; ?? (start.S:53)
      0x80002a30 blt     t0, t1, pc - 8         #; t0  = 0x800031ac, t1  = 0x800031ac, not taken
; ?? (start.S:58)
      0x80002a34 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
; ?? (start.S:59)
      0x80002a38 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
; ?? (start.S:60)
      0x80002a3c beqz    t0, pc + 132           #; t0  = 40, not taken
; ?? (start.S:61)
      0x80002a40 fcvt.d.w ft0, zero             #; ac1  = 0
; ?? (start.S:62)
      0x80002a44 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
; ?? (start.S:63)
      0x80002a48 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
; ?? (start.S:64)
      0x80002a4c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
                                                #; (f:fpu) ft3  <-- 0.0
; ?? (start.S:65)
      0x80002a50 fcvt.d.w ft4, zero             #; ac1  = 0
; ?? (start.S:66)
      0x80002a54 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
; ?? (start.S:67)
      0x80002a58 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
; ?? (start.S:68)
      0x80002a5c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
                                                #; (f:fpu) ft7  <-- 0.0
; ?? (start.S:69)
      0x80002a60 fcvt.d.w fs0, zero             #; ac1  = 0
; ?? (start.S:70)
      0x80002a64 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
; ?? (start.S:71)
      0x80002a68 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
; ?? (start.S:72)
      0x80002a6c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
                                                #; (f:fpu) fa1  <-- 0.0
; ?? (start.S:73)
      0x80002a70 fcvt.d.w fa2, zero             #; ac1  = 0
; ?? (start.S:74)
      0x80002a74 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
; ?? (start.S:75)
      0x80002a78 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
; ?? (start.S:76)
      0x80002a7c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
                                                #; (f:fpu) fa5  <-- 0.0
; ?? (start.S:77)
      0x80002a80 fcvt.d.w fa6, zero             #; ac1  = 0
; ?? (start.S:78)
      0x80002a84 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
; ?? (start.S:79)
      0x80002a88 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
; ?? (start.S:80)
      0x80002a8c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
                                                #; (f:fpu) fs3  <-- 0.0
; ?? (start.S:81)
      0x80002a90 fcvt.d.w fs4, zero             #; ac1  = 0
; ?? (start.S:82)
      0x80002a94 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
; ?? (start.S:83)
      0x80002a98 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
; ?? (start.S:84)
      0x80002a9c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
                                                #; (f:fpu) fs7  <-- 0.0
; ?? (start.S:85)
      0x80002aa0 fcvt.d.w fs8, zero             #; ac1  = 0
; ?? (start.S:86)
      0x80002aa4 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
; ?? (start.S:87)
      0x80002aa8 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
; ?? (start.S:88)
      0x80002aac fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
                                                #; (f:fpu) fs11 <-- 0.0
; ?? (start.S:89)
      0x80002ab0 fcvt.d.w ft8, zero             #; ac1  = 0
; ?? (start.S:90)
      0x80002ab4 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
; ?? (start.S:91)
      0x80002ab8 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
; ?? (start.S:92)
      0x80002abc fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
                                                #; (f:fpu) ft11 <-- 0.0
; ?? (start.S:99)
      0x80002ac0 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
; ?? (start.S:100)
      0x80002ac4 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
; ?? (start.S:103)
      0x80002ac8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002ac8
      0x80002acc lw      t0, 900(t0)            #; t0  = 0x80002ac8, t0  <~~ Word[0x80002e4c]
                                                #; (lsu) t0  <-- 136
; ?? (start.S:104)
      0x80002ad0 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
; ?? (start.S:105)
      0x80002ad4 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
; ?? (start.S:108)
      0x80002ad8 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002ad8
      0x80002adc lw      t2, 880(t2)            #; t2  = 0x80002ad8, t2  <~~ Word[0x80002e48]
                                                #; (lsu) t2  <-- 10
; ?? (start.S:110)
      0x80002ae0 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
; ?? (start.S:111)
      0x80002ae4 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
; ?? (start.S:112)
      0x80002ae8 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:113)
      0x80002aec sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
; ?? (start.S:116)
      0x80002af0 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:117)
      0x80002af4 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
; ?? (start.S:118)
      0x80002af8 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:119)
      0x80002afc sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
; ?? (start.S:124)
      0x80002b00 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002b00
      0x80002b04 addi    t0, t0, 1480           #; t0  = 0x80002b00, (wrb) t0  <-- 0x800030c8
; ?? (start.S:125)
      0x80002b08 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002b08
      0x80002b0c addi    t1, t1, 1472           #; t1  = 0x80002b08, (wrb) t1  <-- 0x800030c8
; ?? (start.S:126)
      0x80002b10 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002b10
      0x80002b14 addi    t2, t2, 1464           #; t2  = 0x80002b10, (wrb) t2  <-- 0x800030c8
; ?? (start.S:127)
      0x80002b18 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002b18
      0x80002b1c addi    t3, t3, 1472           #; t3  = 0x80002b18, (wrb) t3  <-- 0x800030d8
; ?? (start.S:128)
      0x80002b20 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x800030c8, (wrb) sp  <-- 0x80123038
; ?? (start.S:129)
      0x80002b24 sub     sp, sp, t1             #; sp  = 0x80123038, t1  = 0x800030c8, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:130)
      0x80002b28 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x800030c8, (wrb) sp  <-- 0x80123038
; ?? (start.S:131)
      0x80002b2c sub     sp, sp, t3             #; sp  = 0x80123038, t3  = 0x800030d8, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:132)
      0x80002b30 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:133)
      0x80002b34 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
; ?? (start.S:134)
      0x80002b38 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:137)
      0x80002b3c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
; ?? (start.S:138)
      0x80002b40 bge     t0, t1, pc + 24        #; t0  = 0x800030c8, t1  = 0x800030c8, taken, goto 0x80002b58
; ?? (start.S:147)
      0x80002b58 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002b58
      0x80002b5c addi    t0, t0, 1392           #; t0  = 0x80002b58, (wrb) t0  <-- 0x800030c8
; ?? (start.S:148)
      0x80002b60 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002b60
      0x80002b64 addi    t1, t1, 1400           #; t1  = 0x80002b60, (wrb) t1  <-- 0x800030d8
; ?? (start.S:149)
      0x80002b68 bge     t0, t1, pc + 20        #; t0  = 0x800030c8, t1  = 0x800030d8, not taken
; ?? (start.S:150)
      0x80002b6c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
; ?? (start.S:151)
      0x80002b70 addi    t0, t0, 4              #; t0  = 0x800030c8, (wrb) t0  <-- 0x800030cc
; ?? (start.S:152)
      0x80002b74 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
; ?? (start.S:153)
      0x80002b78 blt     t0, t2, pc - 12        #; t0  = 0x800030cc, t2  = 0x800030c8, not taken
; ?? (start.S:158)
      0x80002b7c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
; ?? (start.S:159)
      0x80002b80 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
; ?? (start.S:160)
      0x80002b84 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
; ?? (start.S:161)
      0x80002b88 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
; ?? (start.S:162)
      0x80002b8c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
; ?? (start.S:163)
      0x80002b90 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
; ?? (start.S:164)
      0x80002b94 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b94
      0x80002b98 jalr    ra, ra, -1052          #; ra  = 0x80002b94, (wrb) ra  <-- 0x80002b9c, goto 0x80002778
; _snrt_init_team (start.c:49)
      0x80002778 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
; _snrt_init_team (start.c:50)
      0x8000277c sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
; _snrt_init_team (start.c:51)
      0x80002780 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
                                                #; (lsu) t1  <-- 0
      0x80002784 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
; _snrt_init_team (start.c:52)
      0x80002788 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
                                                #; (lsu) a6  <-- 1
; _snrt_init_team (start.c:53)
      0x8000278c lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
                                                #; (lsu) a7  <-- 1
; _snrt_init_team (start.c:52)
      0x80002790 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
      0x80002794 mul     a6, a7, a6             #; a7  = 1, a6  = 1
                                                #; (acc) a0  <-- 0x02580533
                                                #; (lsu) t0  <-- 8
      0x80002798 mul     a0, a6, t0             #; a6  = 1, t0  = 8
                                                #; (acc) a2  <-- 0x00a7a623
      0x8000279c sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
; snrt_hartid (snrt.h:181)
;  in _snrt_init_team (start.c:55)
      0x800027a0 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
; _snrt_init_team (start.c:55)
      0x800027a4 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
      0x800027a8 divu    a0, a0, t0             #; a0  = 0, t0  = 8
                                                #; (acc) a6  <-- 0x00a7a823
; _snrt_init_team (start.c:54)
      0x800027ac sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
; _snrt_init_team (start.c:56)
      0x800027b0 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
; _snrt_init_team (start.c:57)
      0x800027b4 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
; _snrt_init_team (start.c:58)
      0x800027b8 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
; _snrt_init_team (start.c:60)
      0x800027bc lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
      0x800027c0 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
                                                #; (lsu) a0  <-- 0x80000000
      0x800027c4 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
; _snrt_init_team (start.c:59)
      0x800027c8 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
      0x800027cc sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
; _snrt_init_team (start.c:61)
      0x800027d0 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
                                                #; (lsu) a0  <-- 0
      0x800027d4 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
      0x800027d8 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
                                                #; (lsu) a1  <-- 1
      0x800027dc sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
; _snrt_init_team (start.c:62)
      0x800027e0 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
      0x800027e4 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
; _snrt_init_team (start.c:63)
      0x800027e8 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
      0x800027ec sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
; _snrt_init_team (start.c:64)
      0x800027f0 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
                                                #; (lsu) a0  <-- 0x00020000
      0x800027f4 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
      0x800027f8 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
      0x800027fc sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
; _snrt_init_team (start.c:67)
      0x80002800 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
      0x80002804 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
      0x80002808 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
      0x8000280c sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
      0x80002810 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
; _snrt_init_team (start.c:66)
      0x80002814 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
      0x80002818 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
; _snrt_init_team (start.c:68)
      0x8000281c slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
      0x80002820 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
      0x80002824 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
      0x80002828 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
      0x8000282c sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
; _snrt_init_team (start.c:71)
      0x80002830 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
; _snrt_init_team (start.c:72)
      0x80002834 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
; _snrt_init_team (start.c:75)
      0x80002838 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x8000283c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002840 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
; _snrt_init_team (start.c:77)
      0x80002844 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002848 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
                                                #; (lsu) a1  <-- 0
; _snrt_init_team (start.c:78)
      0x8000284c lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
; _snrt_init_team (start.c:77)
      0x80002850 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 8
      0x80002854 remu    a0, a1, a0             #; a1  = 0, a0  = 8
; _snrt_init_team (start.c:76)
      0x80002858 lui     a1, 0x0                #; (wrb) a1  <-- 0
      0x8000285c add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
      0x80002860 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
      0x80002864 li      a0, 1096               #; (wrb) a0  <-- 1096
; _snrt_init_team (start.c:83)
      0x80002868 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
      0x8000286c auipc   a1, 0x1                #; (wrb) a1  <-- 0x8000386c
      0x80002870 addi    a1, a1, -1728          #; a1  = 0x8000386c, (wrb) a1  <-- 0x800031ac
      0x80002874 add     a0, a0, a1             #; a0  = 0, a1  = 0x800031ac, (wrb) a0  <-- 0x800031ac
      0x80002878 sw      zero, 0(a0)            #; a0  = 0x800031ac, 0 ~~> Word[0x800031ac]
; _snrt_init_team (start.c:86)
      0x8000287c lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
                                                #; (lsu) a7  <-- 0xffff0000
      0x80002880 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
; _snrt_init_team (start.c:87)
      0x80002884 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
; _snrt_init_team (start.c:91)
      0x80002888 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
; _snrt_init_team (start.c:93)
      0x8000288c addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
; _snrt_init_team (start.c:92)
      0x80002890 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      0x80002894 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
      0x80002898 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
; snrt_alloc_init (alloc.c:64)
;  in _snrt_init_team (start.c:97)
      0x8000289c sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
; snrt_alloc_init (alloc.c:67)
;  in _snrt_init_team (start.c:97)
      0x800028a0 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
; snrt_alloc_init (alloc.c:66)
;  in _snrt_init_team (start.c:97)
      0x800028a4 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
; snrt_alloc_init (alloc.c:68)
;  in _snrt_init_team (start.c:97)
      0x800028a8 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      0x800028ac lw      a0, 0(a1)              #; a1  = 0x800031ac, a0  <~~ Word[0x800031ac]
                                                #; (lsu) a0  <-- 0
      0x800028b0 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
      0x800028b4 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
; snrt_alloc_init (alloc.c:71)
;  in _snrt_init_team (start.c:97)
      0x800028b8 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
; snrt_alloc_init (alloc.c:74)
;  in _snrt_init_team (start.c:97)
      0x800028bc sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
; snrt_alloc_init (alloc.c:75)
;  in _snrt_init_team (start.c:97)
      0x800028c0 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      0x800028c4 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800028c8 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800028cc sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      0x800028d0 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800028d4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800028d8 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
; _snrt_init_team (start.c:99)
      0x800028dc ret                            #; ra  = 0x80002b9c, goto 0x80002b9c
; ?? (start.S:165)
      0x80002b9c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
                                                #; (lsu) a0  <-- 0
; ?? (start.S:166)
      0x80002ba0 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
                                                #; (lsu) a1  <-- 8
; ?? (start.S:167)
      0x80002ba4 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start.S:168)
      0x80002ba8 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
                                                #; (lsu) a3  <-- 0x0011df30
; ?? (start.S:169)
      0x80002bac lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
; ?? (start.S:170)
      0x80002bb0 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:174)
      0x80002bb4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002bb4
      0x80002bb8 addi    t0, t0, 60             #; t0  = 0x80002bb4, (wrb) t0  <-- 0x80002bf0
; ?? (start.S:175)
      0x80002bbc csrw    mtvec, t0              #; t0  = 0x80002bf0, (lsu) a4  <-- 4132
; ?? (start.S:179)
      0x80002bc0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002bc0
      0x80002bc4 jalr    ra, ra, 544            #; ra  = 0x80002bc0, (wrb) ra  <-- 0x80002bc8, goto 0x80002de0
; ?? (start_snitch.S:33)
      0x80002de0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002de4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002bc8 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002de8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002de8
      0x80002dec jalr    ra, ra, -1256          #; ra  = 0x80002de8, (wrb) ra  <-- 0x80002df0, goto 0x80002900
; _snrt_barrier_reg_ptr (team.c:80)
      0x80002900 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002904 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002908 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x8000290c lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002910 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x80002914 ret                            #; ra  = 0x80002df0, goto 0x80002df0
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002df0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002df4 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002df8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002dfc addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002bc8
; ?? (start_snitch.S:40)
      0x80002e00 ret                            #; ra  = 0x80002bc8, goto 0x80002bc8
; ?? (start.S:183)
      0x80002bc8 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000bc8
      0x80002bcc jalr    ra, ra, -1428          #; ra  = 0x80000bc8, (wrb) ra  <-- 0x80002bd0, goto 0x80000634
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
      0x80000658 addi    sp, sp, -48            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff30
; snrt_current_team (team.c:16)
;  in snrt_l1alloc (alloc.c:21)
;  in various (various.c:41)
      0x8000065c sw      ra, 44(sp)             #; sp  = 0x0011ff30, 0x80002bd0 ~~> Word[0x0011ff5c]
      0x80000660 sw      s0, 40(sp)             #; sp  = 0x0011ff30, 0 ~~> Word[0x0011ff58]
      0x80000664 sw      s1, 36(sp)             #; sp  = 0x0011ff30, 0 ~~> Word[0x0011ff54]
      0x80000668 fsd     fs0, 24(sp)            #; 0.0 ~~> Doub[0x0011ff48]
      0x8000066c fsd     fs1, 16(sp)            #; 0.0 ~~> Doub[0x0011ff40]
      0x80000674 lui     a1, 0x0                #; (wrb) a1  <-- 0
      0x80000678 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
      0x80000670 fsd     fs2, 8(sp)             #; 0.0 ~~> Doub[0x0011ff38]
      0x8000067c lw      a1, 0(a1)              #; a1  = 0x0011ff60, a1  <~~ Word[0x0011ff60]
                                                #; (lsu) a1  <-- 0x0011ff70
      0x80000680 lw      a1, 0(a1)              #; a1  = 0x0011ff70, a1  <~~ Word[0x0011ff70]
                                                #; (lsu) a1  <-- 0x0011ff70
; snrt_l1alloc (alloc.c:25)
;  in various (various.c:41)
      0x80000684 lw      s1, 88(a1)             #; a1  = 0x0011ff70, s1  <~~ Word[0x0011ffc8]
                                                #; (lsu) s1  <-- 0x00100000
      0x80000688 lw      a2, 80(a1)             #; a1  = 0x0011ff70, a2  <~~ Word[0x0011ffc0]
                                                #; (lsu) a2  <-- 0x00100000
      0x8000068c lw      a3, 84(a1)             #; a1  = 0x0011ff70, a3  <~~ Word[0x0011ffc4]
      0x80000690 mv      s0, a0                 #; a0  = 25, (wrb) s0  <-- 25
; various (various.c:41)
      0x80000694 slli    a0, a0, 3              #; a0  = 25, (wrb) a0  <-- 200
; snrt_l1alloc (alloc.c:25)
;  in various (various.c:41)
      0x80000698 add     a0, s1, a0             #; s1  = 0x00100000, a0  = 200, (wrb) a0  <-- 0x001000c8
                                                #; (lsu) a3  <-- 0x0001df30
      0x8000069c add     a2, a3, a2             #; a3  = 0x0001df30, a2  = 0x00100000, (wrb) a2  <-- 0x0011df30
      0x800006a0 bgeu    a2, a0, pc + 12        #; a2  = 0x0011df30, a0  = 0x001000c8, taken, goto 0x800006ac
; snrt_l1alloc (alloc.c:34)
;  in various (various.c:41)
      0x800006ac sw      a0, 88(a1)             #; a1  = 0x0011ff70, 0x001000c8 ~~> Word[0x0011ffc8]
; various (various.c:43)
      0x800006b0 mv      a0, s1                 #; s1  = 0x00100000, (wrb) a0  <-- 0x00100000
      0x800006b4 mv      a1, s0                 #; s0  = 25, (wrb) a1  <-- 25
      0x800006b8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800006b8
      0x800006bc jalr    ra, ra, 284            #; ra  = 0x800006b8, (wrb) ra  <-- 0x800006c0, goto 0x800007d4
; init_data (various.c:7)
      0x800007d4 li      a2, 1                  #; (wrb) a2  <-- 1
; init_data (various.c:8)
      0x800007d8 blt     a1, a2, pc + 124       #; a1  = 25, a2  = 1, not taken
      0x800007dc addi    a2, a1, -1             #; a1  = 25, (wrb) a2  <-- 24
      0x800007e0 slli    a5, a2, 3              #; a2  = 24, (wrb) a5  <-- 192
      0x800007e4 add     a4, a5, a0             #; a5  = 192, a0  = 0x00100000, (wrb) a4  <-- 0x001000c0
      0x800007e8 srli    a3, a0, 20             #; a0  = 0x00100000, (wrb) a3  <-- 1
      0x800007ec snez    a3, a3                 #; a3  = 1, (wrb) a3  <-- 1
      0x800007f0 bgeu    a4, a5, pc + 104       #; a4  = 0x001000c0, a5  = 192, taken, goto 0x80000858
; init_data (various.c:0)
      0x80000858 lui     a5, 0x120              #; (wrb) a5  <-- 0x00120000
      0x8000085c addi    a5, a5, 1              #; a5  = 0x00120000, (wrb) a5  <-- 0x00120001
      0x80000860 sltu    a4, a4, a5             #; a4  = 0x001000c0, a5  = 0x00120001, (wrb) a4  <-- 1
; init_data (various.c:8)
      0x80000864 and     a3, a3, a4             #; a3  = 1, a4  = 1, (wrb) a3  <-- 1
      0x80000868 beqz    a3, pc - 104           #; a3  = 1, not taken
; init_data (various.c:0)
      0x8000086c li      a3, 0                  #; (wrb) a3  <-- 0
      0x80000870 li      a4, 8                  #; (wrb) a4  <-- 8
; init_data (various.c:8)
      0x80000874 li      a5, 64                 #; (wrb) a5  <-- 64
      0x80000878 scfgw   a2, a5                 #; a2  = 24, a5  = 64
      0x8000087c li      a2, 192                #; (wrb) a2  <-- 192
      0x80000880 scfgw   a4, a2                 #; a4  = 8, a2  = 192
      0x80000884 li      a2, 32                 #; (wrb) a2  <-- 32
      0x80000888 scfgw   zero, a2               #; a2  = 32
      0x8000088c scfgwi  a0, 896                #; a0  = 0x00100000
; init_data (various.c:0)
      0x80000894 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003894
      0x80000890 csrrsi  a0, ssr, 1             #; 
      0x80000898 addi    a0, a0, -1948          #; a0  = 0x80003894, (wrb) a0  <-- 0x800030f8
      0x8000089c fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x800030f8]
; init_data (various.c:8)
      0x800008a0 lui     a0, 0x8421             #; (wrb) a0  <-- 0x08421000
      0x800008a4 addi    a0, a0, 133            #; a0  = 0x08421000, (wrb) a0  <-- 0x08421085
; init_data (various.c:9)
      0x800008a8 mulhu   a2, a3, a0             #; a3  = 0, a0  = 0x08421085
                                                #; (f:lsu) ft3  <-- 1.4142
                                                #; (acc) a4  <-- 0x40c68733
      0x800008ac sub     a4, a3, a2             #; a3  = 0, a2  = 0, (wrb) a4  <-- 0
      0x800008b0 srli    a4, a4, 1              #; a4  = 0, (wrb) a4  <-- 0
      0x800008b4 add     a2, a4, a2             #; a4  = 0, a2  = 0, (wrb) a2  <-- 0
      0x800008b8 srli    a2, a2, 4              #; a2  = 0, (wrb) a2  <-- 0
      0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
      0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
      0x800008c4 add     a2, a3, a2             #; a3  = 0, a2  = 0, (wrb) a2  <-- 0
      0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 0
                                                #; (f:fpu) ft4  <-- 0.0
      0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 0.0, ft3  = 1.4142
                                                #; (f:fpu) ft4  <-- 0.0
; init_data (various.c:8)
      0x800008d4 addi    a1, a1, -1             #; a1  = 25, (wrb) a1  <-- 24
      0x800008d8 addi    a3, a3, 1              #; a3  = 0, (wrb) a3  <-- 1
      0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 0.0, ft4  = 0.0
      0x800008dc bnez    a1, pc - 52            #; a1  = 24, taken, goto 0x800008a8
                                                #; (f:fpu) ft0  <-- 0.0
; init_data (various.c:9)
      0x800008a8 mulhu   a2, a3, a0             #; a3  = 1, a0  = 0x08421085
                                                #; (acc) a4  <-- 0x40c68733
      0x800008ac sub     a4, a3, a2             #; a3  = 1, a2  = 0, (wrb) a4  <-- 1
      0x800008b0 srli    a4, a4, 1              #; a4  = 1, (wrb) a4  <-- 0
      0x800008b4 add     a2, a4, a2             #; a4  = 0, a2  = 0, (wrb) a2  <-- 0
      0x800008b8 srli    a2, a2, 4              #; a2  = 0, (wrb) a2  <-- 0
      0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
      0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
      0x800008c4 add     a2, a3, a2             #; a3  = 1, a2  = 0, (wrb) a2  <-- 1
      0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 1
                                                #; (f:fpu) ft4  <-- 1.0
; init_data (various.c:8)
      0x800008d4 addi    a1, a1, -1             #; a1  = 24, (wrb) a1  <-- 23
      0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 1.0, ft3  = 1.4142
      0x800008d8 addi    a3, a3, 1              #; a3  = 1, (wrb) a3  <-- 2
      0x800008dc bnez    a1, pc - 52            #; a1  = 23, taken, goto 0x800008a8
; init_data (various.c:9)
      0x800008a8 mulhu   a2, a3, a0             #; a3  = 2, a0  = 0x08421085
                                                #; (f:fpu) ft4  <-- 1.4142
      0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 1.4142, ft4  = 1.4142
                                                #; (f:fpu) ft0  <-- 1.4142
                                                #; (acc) a4  <-- 0x40c68733
      0x800008ac sub     a4, a3, a2             #; a3  = 2, a2  = 0, (wrb) a4  <-- 2
      0x800008b0 srli    a4, a4, 1              #; a4  = 2, (wrb) a4  <-- 1
      0x800008b4 add     a2, a4, a2             #; a4  = 1, a2  = 0, (wrb) a2  <-- 1
      0x800008b8 srli    a2, a2, 4              #; a2  = 1, (wrb) a2  <-- 0
      0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
      0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
      0x800008c4 add     a2, a3, a2             #; a3  = 2, a2  = 0, (wrb) a2  <-- 2
      0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 2
                                                #; (f:fpu) ft4  <-- 2.0
; init_data (various.c:8)
      0x800008d4 addi    a1, a1, -1             #; a1  = 23, (wrb) a1  <-- 22
      0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 2.0, ft3  = 1.4142
      0x800008d8 addi    a3, a3, 1              #; a3  = 2, (wrb) a3  <-- 3
      0x800008dc bnez    a1, pc - 52            #; a1  = 22, taken, goto 0x800008a8
; init_data (various.c:9)
      0x800008a8 mulhu   a2, a3, a0             #; a3  = 3, a0  = 0x08421085
                                                #; (f:fpu) ft4  <-- 2.8284
      0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 2.8284, ft4  = 2.8284
                                                #; (f:fpu) ft0  <-- 2.8284
                                                #; (acc) a4  <-- 0x40c68733
      0x800008ac sub     a4, a3, a2             #; a3  = 3, a2  = 0, (wrb) a4  <-- 3
      0x800008b0 srli    a4, a4, 1              #; a4  = 3, (wrb) a4  <-- 1
      0x800008b4 add     a2, a4, a2             #; a4  = 1, a2  = 0, (wrb) a2  <-- 1
      0x800008b8 srli    a2, a2, 4              #; a2  = 1, (wrb) a2  <-- 0
      0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
      0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
      0x800008c4 add     a2, a3, a2             #; a3  = 3, a2  = 0, (wrb) a2  <-- 3
      0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 3
                                                #; (f:fpu) ft4  <-- 3.0
; init_data (various.c:8)
      0x800008d4 addi    a1, a1, -1             #; a1  = 22, (wrb) a1  <-- 21
      0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 3.0, ft3  = 1.4142
      0x800008d8 addi    a3, a3, 1              #; a3  = 3, (wrb) a3  <-- 4
      0x800008dc bnez    a1, pc - 52            #; a1  = 21, taken, goto 0x800008a8
; init_data (various.c:9)
      0x800008a8 mulhu   a2, a3, a0             #; a3  = 4, a0  = 0x08421085
                                                #; (f:fpu) ft4  <-- 4.2426000
      0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 4.2426000, ft4  = 4.2426000
                                                #; (f:fpu) ft0  <-- 4.2426000
                                                #; (acc) a4  <-- 0x40c68733
      0x800008ac sub     a4, a3, a2             #; a3  = 4, a2  = 0, (wrb) a4  <-- 4
      0x800008b0 srli    a4, a4, 1              #; a4  = 4, (wrb) a4  <-- 2
      0x800008b4 add     a2, a4, a2             #; a4  = 2, a2  = 0, (wrb) a2  <-- 2
      0x800008b8 srli    a2, a2, 4              #; a2  = 2, (wrb) a2  <-- 0
      0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
      0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
      0x800008c4 add     a2, a3, a2             #; a3  = 4, a2  = 0, (wrb) a2  <-- 4
      0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 4
                                                #; (f:fpu) ft4  <-- 4.0
; init_data (various.c:8)
      0x800008d4 addi    a1, a1, -1             #; a1  = 21, (wrb) a1  <-- 20
      0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 4.0, ft3  = 1.4142
      0x800008d8 addi    a3, a3, 1              #; a3  = 4, (wrb) a3  <-- 5
      0x800008dc bnez    a1, pc - 52            #; a1  = 20, taken, goto 0x800008a8
; init_data (various.c:9)
      0x800008a8 mulhu   a2, a3, a0             #; a3  = 5, a0  = 0x08421085
                                                #; (f:fpu) ft4  <-- 5.6568
      0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 5.6568, ft4  = 5.6568
                                                #; (f:fpu) ft0  <-- 5.6568
                                                #; (acc) a4  <-- 0x40c68733
      0x800008ac sub     a4, a3, a2             #; a3  = 5, a2  = 0, (wrb) a4  <-- 5
      0x800008b0 srli    a4, a4, 1              #; a4  = 5, (wrb) a4  <-- 2
      0x800008b4 add     a2, a4, a2             #; a4  = 2, a2  = 0, (wrb) a2  <-- 2
      0x800008b8 srli    a2, a2, 4              #; a2  = 2, (wrb) a2  <-- 0
      0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
      0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
      0x800008c4 add     a2, a3, a2             #; a3  = 5, a2  = 0, (wrb) a2  <-- 5
      0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 5
                                                #; (f:fpu) ft4  <-- 5.0
; init_data (various.c:8)
      0x800008d4 addi    a1, a1, -1             #; a1  = 20, (wrb) a1  <-- 19
      0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 5.0, ft3  = 1.4142
      0x800008d8 addi    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 6
      0x800008dc bnez    a1, pc - 52            #; a1  = 19, taken, goto 0x800008a8
; init_data (various.c:9)
      0x800008a8 mulhu   a2, a3, a0             #; a3  = 6, a0  = 0x08421085
                                                #; (f:fpu) ft4  <-- 7.071
      0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 7.071, ft4  = 7.071
                                                #; (f:fpu) ft0  <-- 7.071
                                                #; (acc) a4  <-- 0x40c68733
      0x800008ac sub     a4, a3, a2             #; a3  = 6, a2  = 0, (wrb) a4  <-- 6
      0x800008b0 srli    a4, a4, 1              #; a4  = 6, (wrb) a4  <-- 3
      0x800008b4 add     a2, a4, a2             #; a4  = 3, a2  = 0, (wrb) a2  <-- 3
      0x800008b8 srli    a2, a2, 4              #; a2  = 3, (wrb) a2  <-- 0
      0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
      0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
      0x800008c4 add     a2, a3, a2             #; a3  = 6, a2  = 0, (wrb) a2  <-- 6
      0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 6
                                                #; (f:fpu) ft4  <-- 6.0
; init_data (various.c:8)
      0x800008d4 addi    a1, a1, -1             #; a1  = 19, (wrb) a1  <-- 18
      0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 6.0, ft3  = 1.4142
      0x800008d8 addi    a3, a3, 1              #; a3  = 6, (wrb) a3  <-- 7
      0x800008dc bnez    a1, pc - 52            #; a1  = 18, taken, goto 0x800008a8
; init_data (various.c:9)
      0x800008a8 mulhu   a2, a3, a0             #; a3  = 7, a0  = 0x08421085
                                                #; (f:fpu) ft4  <-- 8.4852000
      0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 8.4852000, ft4  = 8.4852000
                                                #; (f:fpu) ft0  <-- 8.4852000
                                                #; (acc) a4  <-- 0x40c68733
      0x800008ac sub     a4, a3, a2             #; a3  = 7, a2  = 0, (wrb) a4  <-- 7
      0x800008b0 srli    a4, a4, 1              #; a4  = 7, (wrb) a4  <-- 3
      0x800008b4 add     a2, a4, a2             #; a4  = 3, a2  = 0, (wrb) a2  <-- 3
      0x800008b8 srli    a2, a2, 4              #; a2  = 3, (wrb) a2  <-- 0
      0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
      0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
      0x800008c4 add     a2, a3, a2             #; a3  = 7, a2  = 0, (wrb) a2  <-- 7
      0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 7
                                                #; (f:fpu) ft4  <-- 7.0
; init_data (various.c:8)
      0x800008d4 addi    a1, a1, -1             #; a1  = 18, (wrb) a1  <-- 17
      0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 7.0, ft3  = 1.4142
      0x800008d8 addi    a3, a3, 1              #; a3  = 7, (wrb) a3  <-- 8
      0x800008dc bnez    a1, pc - 52            #; a1  = 17, taken, goto 0x800008a8
; init_data (various.c:9)
      0x800008a8 mulhu   a2, a3, a0             #; a3  = 8, a0  = 0x08421085
                                                #; (f:fpu) ft4  <-- 9.8994
      0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 9.8994, ft4  = 9.8994
                                                #; (f:fpu) ft0  <-- 9.8994
                                                #; (acc) a4  <-- 0x40c68733
      0x800008ac sub     a4, a3, a2             #; a3  = 8, a2  = 0, (wrb) a4  <-- 8
      0x800008b0 srli    a4, a4, 1              #; a4  = 8, (wrb) a4  <-- 4
      0x800008b4 add     a2, a4, a2             #; a4  = 4, a2  = 0, (wrb) a2  <-- 4
      0x800008b8 srli    a2, a2, 4              #; a2  = 4, (wrb) a2  <-- 0
      0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
      0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
      0x800008c4 add     a2, a3, a2             #; a3  = 8, a2  = 0, (wrb) a2  <-- 8
      0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 8
                                                #; (f:fpu) ft4  <-- 8.0
; init_data (various.c:8)
      0x800008d4 addi    a1, a1, -1             #; a1  = 17, (wrb) a1  <-- 16
      0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 8.0, ft3  = 1.4142
      0x800008d8 addi    a3, a3, 1              #; a3  = 8, (wrb) a3  <-- 9
      0x800008dc bnez    a1, pc - 52            #; a1  = 16, taken, goto 0x800008a8
; init_data (various.c:9)
      0x800008a8 mulhu   a2, a3, a0             #; a3  = 9, a0  = 0x08421085
                                                #; (f:fpu) ft4  <-- 11.3136
      0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 11.3136, ft4  = 11.3136
                                                #; (f:fpu) ft0  <-- 11.3136
                                                #; (acc) a4  <-- 0x40c68733
      0x800008ac sub     a4, a3, a2             #; a3  = 9, a2  = 0, (wrb) a4  <-- 9
      0x800008b0 srli    a4, a4, 1              #; a4  = 9, (wrb) a4  <-- 4
      0x800008b4 add     a2, a4, a2             #; a4  = 4, a2  = 0, (wrb) a2  <-- 4
      0x800008b8 srli    a2, a2, 4              #; a2  = 4, (wrb) a2  <-- 0
      0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
      0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
      0x800008c4 add     a2, a3, a2             #; a3  = 9, a2  = 0, (wrb) a2  <-- 9
      0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 9
                                                #; (f:fpu) ft4  <-- 9.0
; init_data (various.c:8)
      0x800008d4 addi    a1, a1, -1             #; a1  = 16, (wrb) a1  <-- 15
      0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 9.0, ft3  = 1.4142
      0x800008d8 addi    a3, a3, 1              #; a3  = 9, (wrb) a3  <-- 10
      0x800008dc bnez    a1, pc - 52            #; a1  = 15, taken, goto 0x800008a8
; init_data (various.c:9)
      0x800008a8 mulhu   a2, a3, a0             #; a3  = 10, a0  = 0x08421085
                                                #; (f:fpu) ft4  <-- 12.7278000
      0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 12.7278000, ft4  = 12.7278000
                                                #; (f:fpu) ft0  <-- 12.7278000
                                                #; (acc) a4  <-- 0x40c68733
      0x800008ac sub     a4, a3, a2             #; a3  = 10, a2  = 0, (wrb) a4  <-- 10
      0x800008b0 srli    a4, a4, 1              #; a4  = 10, (wrb) a4  <-- 5
      0x800008b4 add     a2, a4, a2             #; a4  = 5, a2  = 0, (wrb) a2  <-- 5
      0x800008b8 srli    a2, a2, 4              #; a2  = 5, (wrb) a2  <-- 0
      0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
      0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
      0x800008c4 add     a2, a3, a2             #; a3  = 10, a2  = 0, (wrb) a2  <-- 10
      0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 10
                                                #; (f:fpu) ft4  <-- 10.0
; init_data (various.c:8)
      0x800008d4 addi    a1, a1, -1             #; a1  = 15, (wrb) a1  <-- 14
      0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 10.0, ft3  = 1.4142
      0x800008d8 addi    a3, a3, 1              #; a3  = 10, (wrb) a3  <-- 11
      0x800008dc bnez    a1, pc - 52            #; a1  = 14, taken, goto 0x800008a8
; init_data (various.c:9)
      0x800008a8 mulhu   a2, a3, a0             #; a3  = 11, a0  = 0x08421085
                                                #; (f:fpu) ft4  <-- 14.142
      0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 14.142, ft4  = 14.142
                                                #; (f:fpu) ft0  <-- 14.142
                                                #; (acc) a4  <-- 0x40c68733
      0x800008ac sub     a4, a3, a2             #; a3  = 11, a2  = 0, (wrb) a4  <-- 11
      0x800008b0 srli    a4, a4, 1              #; a4  = 11, (wrb) a4  <-- 5
      0x800008b4 add     a2, a4, a2             #; a4  = 5, a2  = 0, (wrb) a2  <-- 5
      0x800008b8 srli    a2, a2, 4              #; a2  = 5, (wrb) a2  <-- 0
      0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
      0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
      0x800008c4 add     a2, a3, a2             #; a3  = 11, a2  = 0, (wrb) a2  <-- 11
      0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 11
                                                #; (f:fpu) ft4  <-- 11.0
; init_data (various.c:8)
      0x800008d4 addi    a1, a1, -1             #; a1  = 14, (wrb) a1  <-- 13
      0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 11.0, ft3  = 1.4142
      0x800008d8 addi    a3, a3, 1              #; a3  = 11, (wrb) a3  <-- 12
      0x800008dc bnez    a1, pc - 52            #; a1  = 13, taken, goto 0x800008a8
; init_data (various.c:9)
      0x800008a8 mulhu   a2, a3, a0             #; a3  = 12, a0  = 0x08421085
                                                #; (f:fpu) ft4  <-- 15.5562000
      0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 15.5562000, ft4  = 15.5562000
                                                #; (f:fpu) ft0  <-- 15.5562000
                                                #; (acc) a4  <-- 0x40c68733
      0x800008ac sub     a4, a3, a2             #; a3  = 12, a2  = 0, (wrb) a4  <-- 12
      0x800008b0 srli    a4, a4, 1              #; a4  = 12, (wrb) a4  <-- 6
      0x800008b4 add     a2, a4, a2             #; a4  = 6, a2  = 0, (wrb) a2  <-- 6
      0x800008b8 srli    a2, a2, 4              #; a2  = 6, (wrb) a2  <-- 0
      0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
      0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
      0x800008c4 add     a2, a3, a2             #; a3  = 12, a2  = 0, (wrb) a2  <-- 12
      0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 12
                                                #; (f:fpu) ft4  <-- 12.0
; init_data (various.c:8)
      0x800008d4 addi    a1, a1, -1             #; a1  = 13, (wrb) a1  <-- 12
      0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 12.0, ft3  = 1.4142
      0x800008d8 addi    a3, a3, 1              #; a3  = 12, (wrb) a3  <-- 13
      0x800008dc bnez    a1, pc - 52            #; a1  = 12, taken, goto 0x800008a8
; init_data (various.c:9)
      0x800008a8 mulhu   a2, a3, a0             #; a3  = 13, a0  = 0x08421085
                                                #; (f:fpu) ft4  <-- 16.9704000
      0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 16.9704000, ft4  = 16.9704000
                                                #; (f:fpu) ft0  <-- 16.9704000
                                                #; (acc) a4  <-- 0x40c68733
      0x800008ac sub     a4, a3, a2             #; a3  = 13, a2  = 0, (wrb) a4  <-- 13
      0x800008b0 srli    a4, a4, 1              #; a4  = 13, (wrb) a4  <-- 6
      0x800008b4 add     a2, a4, a2             #; a4  = 6, a2  = 0, (wrb) a2  <-- 6
      0x800008b8 srli    a2, a2, 4              #; a2  = 6, (wrb) a2  <-- 0
      0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
      0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
      0x800008c4 add     a2, a3, a2             #; a3  = 13, a2  = 0, (wrb) a2  <-- 13
      0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 13
                                                #; (f:fpu) ft4  <-- 13.0
; init_data (various.c:8)
      0x800008d4 addi    a1, a1, -1             #; a1  = 12, (wrb) a1  <-- 11
      0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 13.0, ft3  = 1.4142
      0x800008d8 addi    a3, a3, 1              #; a3  = 13, (wrb) a3  <-- 14
      0x800008dc bnez    a1, pc - 52            #; a1  = 11, taken, goto 0x800008a8
; init_data (various.c:9)
      0x800008a8 mulhu   a2, a3, a0             #; a3  = 14, a0  = 0x08421085
                                                #; (f:fpu) ft4  <-- 18.3846
      0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 18.3846, ft4  = 18.3846
                                                #; (f:fpu) ft0  <-- 18.3846
                                                #; (acc) a4  <-- 0x40c68733
      0x800008ac sub     a4, a3, a2             #; a3  = 14, a2  = 0, (wrb) a4  <-- 14
      0x800008b0 srli    a4, a4, 1              #; a4  = 14, (wrb) a4  <-- 7
      0x800008b4 add     a2, a4, a2             #; a4  = 7, a2  = 0, (wrb) a2  <-- 7
      0x800008b8 srli    a2, a2, 4              #; a2  = 7, (wrb) a2  <-- 0
      0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
      0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
      0x800008c4 add     a2, a3, a2             #; a3  = 14, a2  = 0, (wrb) a2  <-- 14
      0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 14
                                                #; (f:fpu) ft4  <-- 14.0
; init_data (various.c:8)
      0x800008d4 addi    a1, a1, -1             #; a1  = 11, (wrb) a1  <-- 10
      0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 14.0, ft3  = 1.4142
      0x800008d8 addi    a3, a3, 1              #; a3  = 14, (wrb) a3  <-- 15
      0x800008dc bnez    a1, pc - 52            #; a1  = 10, taken, goto 0x800008a8
; init_data (various.c:9)
      0x800008a8 mulhu   a2, a3, a0             #; a3  = 15, a0  = 0x08421085
                                                #; (f:fpu) ft4  <-- 19.7988
      0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 19.7988, ft4  = 19.7988
                                                #; (f:fpu) ft0  <-- 19.7988
                                                #; (acc) a4  <-- 0x40c68733
      0x800008ac sub     a4, a3, a2             #; a3  = 15, a2  = 0, (wrb) a4  <-- 15
      0x800008b0 srli    a4, a4, 1              #; a4  = 15, (wrb) a4  <-- 7
      0x800008b4 add     a2, a4, a2             #; a4  = 7, a2  = 0, (wrb) a2  <-- 7
      0x800008b8 srli    a2, a2, 4              #; a2  = 7, (wrb) a2  <-- 0
      0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
      0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
      0x800008c4 add     a2, a3, a2             #; a3  = 15, a2  = 0, (wrb) a2  <-- 15
      0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 15
                                                #; (f:fpu) ft4  <-- 15.0
; init_data (various.c:8)
      0x800008d4 addi    a1, a1, -1             #; a1  = 10, (wrb) a1  <-- 9
      0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 15.0, ft3  = 1.4142
      0x800008d8 addi    a3, a3, 1              #; a3  = 15, (wrb) a3  <-- 16
      0x800008dc bnez    a1, pc - 52            #; a1  = 9, taken, goto 0x800008a8
; init_data (various.c:9)
      0x800008a8 mulhu   a2, a3, a0             #; a3  = 16, a0  = 0x08421085
                                                #; (f:fpu) ft4  <-- 21.2130000
      0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 21.2130000, ft4  = 21.2130000
                                                #; (f:fpu) ft0  <-- 21.2130000
                                                #; (acc) a4  <-- 0x40c68733
      0x800008ac sub     a4, a3, a2             #; a3  = 16, a2  = 0, (wrb) a4  <-- 16
      0x800008b0 srli    a4, a4, 1              #; a4  = 16, (wrb) a4  <-- 8
      0x800008b4 add     a2, a4, a2             #; a4  = 8, a2  = 0, (wrb) a2  <-- 8
      0x800008b8 srli    a2, a2, 4              #; a2  = 8, (wrb) a2  <-- 0
      0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
      0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
      0x800008c4 add     a2, a3, a2             #; a3  = 16, a2  = 0, (wrb) a2  <-- 16
      0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 16
                                                #; (f:fpu) ft4  <-- 16.0
; init_data (various.c:8)
      0x800008d4 addi    a1, a1, -1             #; a1  = 9, (wrb) a1  <-- 8
      0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 16.0, ft3  = 1.4142
      0x800008d8 addi    a3, a3, 1              #; a3  = 16, (wrb) a3  <-- 17
      0x800008dc bnez    a1, pc - 52            #; a1  = 8, taken, goto 0x800008a8
; init_data (various.c:9)
      0x800008a8 mulhu   a2, a3, a0             #; a3  = 17, a0  = 0x08421085
                                                #; (f:fpu) ft4  <-- 22.6272
      0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 22.6272, ft4  = 22.6272
                                                #; (f:fpu) ft0  <-- 22.6272
                                                #; (acc) a4  <-- 0x40c68733
      0x800008ac sub     a4, a3, a2             #; a3  = 17, a2  = 0, (wrb) a4  <-- 17
      0x800008b0 srli    a4, a4, 1              #; a4  = 17, (wrb) a4  <-- 8
      0x800008b4 add     a2, a4, a2             #; a4  = 8, a2  = 0, (wrb) a2  <-- 8
      0x800008b8 srli    a2, a2, 4              #; a2  = 8, (wrb) a2  <-- 0
      0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
      0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
      0x800008c4 add     a2, a3, a2             #; a3  = 17, a2  = 0, (wrb) a2  <-- 17
      0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 17
                                                #; (f:fpu) ft4  <-- 17.0
; init_data (various.c:8)
      0x800008d4 addi    a1, a1, -1             #; a1  = 8, (wrb) a1  <-- 7
      0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 17.0, ft3  = 1.4142
      0x800008d8 addi    a3, a3, 1              #; a3  = 17, (wrb) a3  <-- 18
      0x800008dc bnez    a1, pc - 52            #; a1  = 7, taken, goto 0x800008a8
; init_data (various.c:9)
      0x800008a8 mulhu   a2, a3, a0             #; a3  = 18, a0  = 0x08421085
                                                #; (f:fpu) ft4  <-- 24.0414
      0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 24.0414, ft4  = 24.0414
                                                #; (f:fpu) ft0  <-- 24.0414
                                                #; (acc) a4  <-- 0x40c68733
      0x800008ac sub     a4, a3, a2             #; a3  = 18, a2  = 0, (wrb) a4  <-- 18
      0x800008b0 srli    a4, a4, 1              #; a4  = 18, (wrb) a4  <-- 9
      0x800008b4 add     a2, a4, a2             #; a4  = 9, a2  = 0, (wrb) a2  <-- 9
      0x800008b8 srli    a2, a2, 4              #; a2  = 9, (wrb) a2  <-- 0
      0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
      0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
      0x800008c4 add     a2, a3, a2             #; a3  = 18, a2  = 0, (wrb) a2  <-- 18
      0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 18
                                                #; (f:fpu) ft4  <-- 18.0
; init_data (various.c:8)
      0x800008d4 addi    a1, a1, -1             #; a1  = 7, (wrb) a1  <-- 6
      0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 18.0, ft3  = 1.4142
      0x800008d8 addi    a3, a3, 1              #; a3  = 18, (wrb) a3  <-- 19
      0x800008dc bnez    a1, pc - 52            #; a1  = 6, taken, goto 0x800008a8
; init_data (various.c:9)
      0x800008a8 mulhu   a2, a3, a0             #; a3  = 19, a0  = 0x08421085
                                                #; (f:fpu) ft4  <-- 25.4556000
      0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 25.4556000, ft4  = 25.4556000
                                                #; (f:fpu) ft0  <-- 25.4556000
                                                #; (acc) a4  <-- 0x40c68733
      0x800008ac sub     a4, a3, a2             #; a3  = 19, a2  = 0, (wrb) a4  <-- 19
      0x800008b0 srli    a4, a4, 1              #; a4  = 19, (wrb) a4  <-- 9
      0x800008b4 add     a2, a4, a2             #; a4  = 9, a2  = 0, (wrb) a2  <-- 9
      0x800008b8 srli    a2, a2, 4              #; a2  = 9, (wrb) a2  <-- 0
      0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
      0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
      0x800008c4 add     a2, a3, a2             #; a3  = 19, a2  = 0, (wrb) a2  <-- 19
      0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 19
                                                #; (f:fpu) ft4  <-- 19.0
; init_data (various.c:8)
      0x800008d4 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
      0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 19.0, ft3  = 1.4142
      0x800008d8 addi    a3, a3, 1              #; a3  = 19, (wrb) a3  <-- 20
      0x800008dc bnez    a1, pc - 52            #; a1  = 5, taken, goto 0x800008a8
; init_data (various.c:9)
      0x800008a8 mulhu   a2, a3, a0             #; a3  = 20, a0  = 0x08421085
                                                #; (f:fpu) ft4  <-- 26.8698000
      0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 26.8698000, ft4  = 26.8698000
                                                #; (f:fpu) ft0  <-- 26.8698000
                                                #; (acc) a4  <-- 0x40c68733
      0x800008ac sub     a4, a3, a2             #; a3  = 20, a2  = 0, (wrb) a4  <-- 20
      0x800008b0 srli    a4, a4, 1              #; a4  = 20, (wrb) a4  <-- 10
      0x800008b4 add     a2, a4, a2             #; a4  = 10, a2  = 0, (wrb) a2  <-- 10
      0x800008b8 srli    a2, a2, 4              #; a2  = 10, (wrb) a2  <-- 0
      0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
      0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
      0x800008c4 add     a2, a3, a2             #; a3  = 20, a2  = 0, (wrb) a2  <-- 20
      0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 20
                                                #; (f:fpu) ft4  <-- 20.0
; init_data (various.c:8)
      0x800008d4 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
      0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 20.0, ft3  = 1.4142
      0x800008d8 addi    a3, a3, 1              #; a3  = 20, (wrb) a3  <-- 21
      0x800008dc bnez    a1, pc - 52            #; a1  = 4, taken, goto 0x800008a8
; init_data (various.c:9)
      0x800008a8 mulhu   a2, a3, a0             #; a3  = 21, a0  = 0x08421085
                                                #; (f:fpu) ft4  <-- 28.284
      0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 28.284, ft4  = 28.284
                                                #; (f:fpu) ft0  <-- 28.284
                                                #; (acc) a4  <-- 0x40c68733
      0x800008ac sub     a4, a3, a2             #; a3  = 21, a2  = 0, (wrb) a4  <-- 21
      0x800008b0 srli    a4, a4, 1              #; a4  = 21, (wrb) a4  <-- 10
      0x800008b4 add     a2, a4, a2             #; a4  = 10, a2  = 0, (wrb) a2  <-- 10
      0x800008b8 srli    a2, a2, 4              #; a2  = 10, (wrb) a2  <-- 0
      0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
      0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
      0x800008c4 add     a2, a3, a2             #; a3  = 21, a2  = 0, (wrb) a2  <-- 21
      0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 21
                                                #; (f:fpu) ft4  <-- 21.0
; init_data (various.c:8)
      0x800008d4 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
      0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 21.0, ft3  = 1.4142
      0x800008d8 addi    a3, a3, 1              #; a3  = 21, (wrb) a3  <-- 22
      0x800008dc bnez    a1, pc - 52            #; a1  = 3, taken, goto 0x800008a8
; init_data (various.c:9)
      0x800008a8 mulhu   a2, a3, a0             #; a3  = 22, a0  = 0x08421085
                                                #; (f:fpu) ft4  <-- 29.6982000
      0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 29.6982000, ft4  = 29.6982000
                                                #; (f:fpu) ft0  <-- 29.6982000
                                                #; (acc) a4  <-- 0x40c68733
      0x800008ac sub     a4, a3, a2             #; a3  = 22, a2  = 0, (wrb) a4  <-- 22
      0x800008b0 srli    a4, a4, 1              #; a4  = 22, (wrb) a4  <-- 11
      0x800008b4 add     a2, a4, a2             #; a4  = 11, a2  = 0, (wrb) a2  <-- 11
      0x800008b8 srli    a2, a2, 4              #; a2  = 11, (wrb) a2  <-- 0
      0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
      0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
      0x800008c4 add     a2, a3, a2             #; a3  = 22, a2  = 0, (wrb) a2  <-- 22
      0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 22
                                                #; (f:fpu) ft4  <-- 22.0
; init_data (various.c:8)
      0x800008d4 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
      0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 22.0, ft3  = 1.4142
      0x800008d8 addi    a3, a3, 1              #; a3  = 22, (wrb) a3  <-- 23
      0x800008dc bnez    a1, pc - 52            #; a1  = 2, taken, goto 0x800008a8
; init_data (various.c:9)
      0x800008a8 mulhu   a2, a3, a0             #; a3  = 23, a0  = 0x08421085
                                                #; (f:fpu) ft4  <-- 31.1124000
      0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 31.1124000, ft4  = 31.1124000
                                                #; (f:fpu) ft0  <-- 31.1124000
                                                #; (acc) a4  <-- 0x40c68733
      0x800008ac sub     a4, a3, a2             #; a3  = 23, a2  = 0, (wrb) a4  <-- 23
      0x800008b0 srli    a4, a4, 1              #; a4  = 23, (wrb) a4  <-- 11
      0x800008b4 add     a2, a4, a2             #; a4  = 11, a2  = 0, (wrb) a2  <-- 11
      0x800008b8 srli    a2, a2, 4              #; a2  = 11, (wrb) a2  <-- 0
      0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
      0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
      0x800008c4 add     a2, a3, a2             #; a3  = 23, a2  = 0, (wrb) a2  <-- 23
      0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 23
                                                #; (f:fpu) ft4  <-- 23.0
; init_data (various.c:8)
      0x800008d4 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
      0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 23.0, ft3  = 1.4142
      0x800008d8 addi    a3, a3, 1              #; a3  = 23, (wrb) a3  <-- 24
      0x800008dc bnez    a1, pc - 52            #; a1  = 1, taken, goto 0x800008a8
; init_data (various.c:9)
      0x800008a8 mulhu   a2, a3, a0             #; a3  = 24, a0  = 0x08421085
                                                #; (f:fpu) ft4  <-- 32.5266000
      0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 32.5266000, ft4  = 32.5266000
                                                #; (f:fpu) ft0  <-- 32.5266000
                                                #; (acc) a4  <-- 0x40c68733
      0x800008ac sub     a4, a3, a2             #; a3  = 24, a2  = 0, (wrb) a4  <-- 24
      0x800008b0 srli    a4, a4, 1              #; a4  = 24, (wrb) a4  <-- 12
      0x800008b4 add     a2, a4, a2             #; a4  = 12, a2  = 0, (wrb) a2  <-- 12
      0x800008b8 srli    a2, a2, 4              #; a2  = 12, (wrb) a2  <-- 0
      0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
      0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
      0x800008c4 add     a2, a3, a2             #; a3  = 24, a2  = 0, (wrb) a2  <-- 24
      0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 24
                                                #; (f:fpu) ft4  <-- 24.0
; init_data (various.c:8)
      0x800008d4 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
      0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 24.0, ft3  = 1.4142
      0x800008d8 addi    a3, a3, 1              #; a3  = 24, (wrb) a3  <-- 25
      0x800008dc bnez    a1, pc - 52            #; a1  = 0, not taken
                                                #; (f:fpu) ft4  <-- 33.9408000
; init_data (various.c:9)
      0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 33.9408000, ft4  = 33.9408000
                                                #; (f:fpu) ft0  <-- 33.9408000
; init_data (various.c:11)
      0x800008e4 ret                            #; ra  = 0x800006c0, goto 0x800006c0
      0x800008e0 csrrci  a0, ssr, 1             #; 
; various (various.c:45)
      0x800006c0 mv      a0, s1                 #; s1  = 0x00100000, (wrb) a0  <-- 0x00100000
      0x800006c4 mv      a1, s0                 #; s0  = 25, (wrb) a1  <-- 25
      0x800006c8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800006c8
      0x800006cc jalr    ra, ra, 544            #; ra  = 0x800006c8, (wrb) ra  <-- 0x800006d0, goto 0x800008e8
; norm (various.c:13)
      0x800008e8 li      a2, 1                  #; (wrb) a2  <-- 1
; norm (various.c:15)
      0x800008ec blt     a1, a2, pc + 68        #; a1  = 25, a2  = 1, not taken
      0x800008f0 addi    a2, a1, -1             #; a1  = 25, (wrb) a2  <-- 24
      0x800008f4 slli    a5, a2, 3              #; a2  = 24, (wrb) a5  <-- 192
      0x800008f8 add     a4, a5, a0             #; a5  = 192, a0  = 0x00100000, (wrb) a4  <-- 0x001000c0
      0x800008fc srli    a3, a0, 20             #; a0  = 0x00100000, (wrb) a3  <-- 1
      0x80000900 snez    a3, a3                 #; a3  = 1, (wrb) a3  <-- 1
      0x80000904 bgeu    a4, a5, pc + 52        #; a4  = 0x001000c0, a5  = 192, taken, goto 0x80000938
; norm (various.c:0)
      0x80000938 lui     a5, 0x120              #; (wrb) a5  <-- 0x00120000
      0x8000093c addi    a5, a5, 1              #; a5  = 0x00120000, (wrb) a5  <-- 0x00120001
      0x80000940 sltu    a4, a4, a5             #; a4  = 0x001000c0, a5  = 0x00120001, (wrb) a4  <-- 1
; norm (various.c:15)
      0x80000944 and     a3, a3, a4             #; a3  = 1, a4  = 1, (wrb) a3  <-- 1
      0x80000948 beqz    a3, pc - 52            #; a3  = 1, not taken
; norm (various.c:0)
      0x8000094c li      a3, 8                  #; (wrb) a3  <-- 8
; norm (various.c:15)
      0x80000950 li      a4, 64                 #; (wrb) a4  <-- 64
      0x80000954 li      a5, 192                #; (wrb) a5  <-- 192
      0x80000958 scfgw   a2, a4                 #; a2  = 24, a4  = 64
      0x8000095c scfgw   a3, a5                 #; a3  = 8, a5  = 192
      0x80000960 li      a2, 32                 #; (wrb) a2  <-- 32
      0x80000964 scfgw   zero, a2               #; a2  = 32
      0x80000968 scfgwi  a0, 768                #; a0  = 0x00100000
      0x8000096c csrrsi  a0, ssr, 1             #; 
      0x80000974 addi    a1, a1, -1             #; a1  = 25, (wrb) a1  <-- 24
      0x80000970 fcvt.d.w fa0, zero             #; ac1  = 0
                                                #; (f:fpu) fa0  <-- 0.0
      0x8000097c bnez    a1, pc - 8             #; a1  = 24, taken, goto 0x80000974
      0x80000974 addi    a1, a1, -1             #; a1  = 24, (wrb) a1  <-- 23
      0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 0.0, ft0  = 0.0, fa0  = 0.0
      0x8000097c bnez    a1, pc - 8             #; a1  = 23, taken, goto 0x80000974
      0x80000974 addi    a1, a1, -1             #; a1  = 23, (wrb) a1  <-- 22
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 0.0
; norm (various.c:16)
      0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 1.4142, ft0  = 1.4142, fa0  = 0.0
; norm (various.c:15)
      0x8000097c bnez    a1, pc - 8             #; a1  = 22, taken, goto 0x80000974
      0x80000974 addi    a1, a1, -1             #; a1  = 22, (wrb) a1  <-- 21
                                                #; (f:fpu) fa0  <-- 1.9999616
      0x8000097c bnez    a1, pc - 8             #; a1  = 21, taken, goto 0x80000974
      0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 2.8284, ft0  = 2.8284, fa0  = 1.9999616
      0x80000974 addi    a1, a1, -1             #; a1  = 21, (wrb) a1  <-- 20
      0x8000097c bnez    a1, pc - 8             #; a1  = 20, taken, goto 0x80000974
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 9.9998082
; norm (various.c:15)
      0x80000974 addi    a1, a1, -1             #; a1  = 20, (wrb) a1  <-- 19
      0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 4.2426000, ft0  = 4.2426000, fa0  = 9.9998082
      0x8000097c bnez    a1, pc - 8             #; a1  = 19, taken, goto 0x80000974
      0x80000974 addi    a1, a1, -1             #; a1  = 19, (wrb) a1  <-- 18
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 27.9994630
; norm (various.c:16)
      0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 5.6568, ft0  = 5.6568, fa0  = 27.9994630
; norm (various.c:15)
      0x8000097c bnez    a1, pc - 8             #; a1  = 18, taken, goto 0x80000974
      0x80000974 addi    a1, a1, -1             #; a1  = 18, (wrb) a1  <-- 17
                                                #; (f:fpu) fa0  <-- 59.9988492
      0x8000097c bnez    a1, pc - 8             #; a1  = 17, taken, goto 0x80000974
      0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 7.071, ft0  = 7.071, fa0  = 59.9988492
      0x80000974 addi    a1, a1, -1             #; a1  = 17, (wrb) a1  <-- 16
      0x8000097c bnez    a1, pc - 8             #; a1  = 16, taken, goto 0x80000974
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 109.9978902
; norm (various.c:15)
      0x80000974 addi    a1, a1, -1             #; a1  = 16, (wrb) a1  <-- 15
      0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 8.4852000, ft0  = 8.4852000, fa0  = 109.9978902
      0x8000097c bnez    a1, pc - 8             #; a1  = 15, taken, goto 0x80000974
      0x80000974 addi    a1, a1, -1             #; a1  = 15, (wrb) a1  <-- 14
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 181.9965092
; norm (various.c:16)
      0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 9.8994, ft0  = 9.8994, fa0  = 181.9965092
; norm (various.c:15)
      0x8000097c bnez    a1, pc - 8             #; a1  = 14, taken, goto 0x80000974
      0x80000974 addi    a1, a1, -1             #; a1  = 14, (wrb) a1  <-- 13
                                                #; (f:fpu) fa0  <-- 279.9946296
      0x8000097c bnez    a1, pc - 8             #; a1  = 13, taken, goto 0x80000974
      0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 11.3136, ft0  = 11.3136, fa0  = 279.9946296
      0x80000974 addi    a1, a1, -1             #; a1  = 13, (wrb) a1  <-- 12
      0x8000097c bnez    a1, pc - 8             #; a1  = 12, taken, goto 0x80000974
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 407.9921746
; norm (various.c:15)
      0x80000974 addi    a1, a1, -1             #; a1  = 12, (wrb) a1  <-- 11
      0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 12.7278000, ft0  = 12.7278000, fa0  = 407.9921746
      0x8000097c bnez    a1, pc - 8             #; a1  = 11, taken, goto 0x80000974
      0x80000974 addi    a1, a1, -1             #; a1  = 11, (wrb) a1  <-- 10
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 569.9890674
; norm (various.c:16)
      0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 14.142, ft0  = 14.142, fa0  = 569.9890674
; norm (various.c:15)
      0x8000097c bnez    a1, pc - 8             #; a1  = 10, taken, goto 0x80000974
      0x80000974 addi    a1, a1, -1             #; a1  = 10, (wrb) a1  <-- 9
                                                #; (f:fpu) fa0  <-- 769.9852314
      0x8000097c bnez    a1, pc - 8             #; a1  = 9, taken, goto 0x80000974
      0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 15.5562000, ft0  = 15.5562000, fa0  = 769.9852314
      0x80000974 addi    a1, a1, -1             #; a1  = 9, (wrb) a1  <-- 8
      0x8000097c bnez    a1, pc - 8             #; a1  = 8, taken, goto 0x80000974
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 1011.9805898
; norm (various.c:15)
      0x80000974 addi    a1, a1, -1             #; a1  = 8, (wrb) a1  <-- 7
      0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 16.9704000, ft0  = 16.9704000, fa0  = 1011.9805898
      0x8000097c bnez    a1, pc - 8             #; a1  = 7, taken, goto 0x80000974
      0x80000974 addi    a1, a1, -1             #; a1  = 7, (wrb) a1  <-- 6
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 1299.9750660
; norm (various.c:16)
      0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 18.3846, ft0  = 18.3846, fa0  = 1299.9750660
; norm (various.c:15)
      0x8000097c bnez    a1, pc - 8             #; a1  = 6, taken, goto 0x80000974
      0x80000974 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
                                                #; (f:fpu) fa0  <-- 1637.9685832
      0x8000097c bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80000974
      0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 19.7988, ft0  = 19.7988, fa0  = 1637.9685832
      0x80000974 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
      0x8000097c bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80000974
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 2029.9610646
; norm (various.c:15)
      0x80000974 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
      0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 21.2130000, ft0  = 21.2130000, fa0  = 2029.9610646
      0x8000097c bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80000974
      0x80000974 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 2479.9524336
; norm (various.c:16)
      0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 22.6272, ft0  = 22.6272, fa0  = 2479.9524336
; norm (various.c:15)
      0x8000097c bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80000974
      0x80000974 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
                                                #; (f:fpu) fa0  <-- 2991.9426134
      0x8000097c bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80000974
      0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 24.0414, ft0  = 24.0414, fa0  = 2991.9426134
      0x80000974 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
      0x8000097c bnez    a1, pc - 8             #; a1  = 0, not taken
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 3569.9315274
; norm (various.c:16)
      0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 25.4556000, ft0  = 25.4556000, fa0  = 3569.9315274
                                                #; (f:fpu) fa0  <-- 4217.9190988
      0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 26.8698000, ft0  = 26.8698000, fa0  = 4217.9190988
                                                #; (f:fpu) fa0  <-- 4939.9052508
      0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 28.284, ft0  = 28.284, fa0  = 4939.9052508
                                                #; (f:fpu) fa0  <-- 5739.8899068
; norm (various.c:18)
      0x80000984 ret                            #; ra  = 0x800006d0, goto 0x800006d0
      0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 29.6982000, ft0  = 29.6982000, fa0  = 5739.8899068
                                                #; (f:fpu) fa0  <-- 6621.8729900
; norm (various.c:16)
      0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 31.1124000, ft0  = 31.1124000, fa0  = 6621.8729900
                                                #; (f:fpu) fa0  <-- 7589.8544238
      0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 32.5266000, ft0  = 32.5266000, fa0  = 7589.8544238
                                                #; (f:fpu) fa0  <-- 8647.8341314
      0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 33.9408000, ft0  = 33.9408000, fa0  = 8647.8341314
; various (various.c:0)
      0x800006d0 li      a0, 1                  #; (wrb) a0  <-- 1
      0x80000980 csrrci  a0, ssr, 1             #; 
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x800006d8 blt     s0, a0, pc + 52        #; s0  = 25, a0  = 1, not taken
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 9799.8120360
; notOnAllCFPaths (various.c:0)
;  in various (various.c:47)
      0x800006dc li      a0, 0                  #; (wrb) a0  <-- 0
      0x800006d4 fsgnj.d fs0, fa0, fa0          #; fa0  = 9799.8120360, fa0  = 9799.8120360
                                                #; (f:fpu) fs0  <-- 9799.8120360
      0x800006e4 mv      a1, s1                 #; s1  = 0x00100000, (wrb) a1  <-- 0x00100000
      0x800006e0 fcvt.d.w fs2, zero             #; ac1  = 0
      0x800006e8 j       pc + 0x10              #; goto 0x800006f8
                                                #; (f:fpu) fs2  <-- 0.0
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x800006f8 andi    a2, a0, 1              #; a0  = 0, (wrb) a2  <-- 0
      0x800006fc bnez    a2, pc - 16            #; a2  = 0, not taken
; notOnAllCFPaths (various.c:0)
;  in various (various.c:47)
      0x80000708 j       pc - 0x1c              #; goto 0x800006ec
      0x80000700 fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100000]
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x800006ec addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
                                                #; (f:lsu) ft0  <-- 0.0
      0x800006f0 addi    a1, a1, 8              #; a1  = 0x00100000, (wrb) a1  <-- 0x00100008
      0x80000704 fadd.d  fs2, ft0, fs2          #; ft0  = 0.0, fs2  = 0.0
      0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 1, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x800006f8 andi    a2, a0, 1              #; a0  = 1, (wrb) a2  <-- 1
      0x800006fc bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800006ec
                                                #; (f:fpu) fs2  <-- 0.0
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x800006ec addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
      0x800006f0 addi    a1, a1, 8              #; a1  = 0x00100008, (wrb) a1  <-- 0x00100010
      0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 2, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x800006f8 andi    a2, a0, 1              #; a0  = 2, (wrb) a2  <-- 0
      0x800006fc bnez    a2, pc - 16            #; a2  = 0, not taken
; notOnAllCFPaths (various.c:0)
;  in various (various.c:47)
      0x80000708 j       pc - 0x1c              #; goto 0x800006ec
      0x80000700 fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100010]
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x800006ec addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
                                                #; (f:lsu) ft0  <-- 2.8284
      0x800006f0 addi    a1, a1, 8              #; a1  = 0x00100010, (wrb) a1  <-- 0x00100018
      0x80000704 fadd.d  fs2, ft0, fs2          #; ft0  = 2.8284, fs2  = 0.0
      0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 3, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x800006f8 andi    a2, a0, 1              #; a0  = 3, (wrb) a2  <-- 1
      0x800006fc bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800006ec
                                                #; (f:fpu) fs2  <-- 2.8284
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x800006ec addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
      0x800006f0 addi    a1, a1, 8              #; a1  = 0x00100018, (wrb) a1  <-- 0x00100020
      0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 4, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x800006f8 andi    a2, a0, 1              #; a0  = 4, (wrb) a2  <-- 0
      0x800006fc bnez    a2, pc - 16            #; a2  = 0, not taken
; notOnAllCFPaths (various.c:0)
;  in various (various.c:47)
      0x80000708 j       pc - 0x1c              #; goto 0x800006ec
      0x80000700 fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100020]
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x800006ec addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
                                                #; (f:lsu) ft0  <-- 5.6568
      0x800006f0 addi    a1, a1, 8              #; a1  = 0x00100020, (wrb) a1  <-- 0x00100028
      0x80000704 fadd.d  fs2, ft0, fs2          #; ft0  = 5.6568, fs2  = 2.8284
      0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 5, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x800006f8 andi    a2, a0, 1              #; a0  = 5, (wrb) a2  <-- 1
      0x800006fc bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800006ec
                                                #; (f:fpu) fs2  <-- 8.4852000
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x800006ec addi    a0, a0, 1              #; a0  = 5, (wrb) a0  <-- 6
      0x800006f0 addi    a1, a1, 8              #; a1  = 0x00100028, (wrb) a1  <-- 0x00100030
      0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 6, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x800006f8 andi    a2, a0, 1              #; a0  = 6, (wrb) a2  <-- 0
      0x800006fc bnez    a2, pc - 16            #; a2  = 0, not taken
; notOnAllCFPaths (various.c:0)
;  in various (various.c:47)
      0x80000708 j       pc - 0x1c              #; goto 0x800006ec
      0x80000700 fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100030]
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x800006ec addi    a0, a0, 1              #; a0  = 6, (wrb) a0  <-- 7
                                                #; (f:lsu) ft0  <-- 8.4852000
      0x800006f0 addi    a1, a1, 8              #; a1  = 0x00100030, (wrb) a1  <-- 0x00100038
      0x80000704 fadd.d  fs2, ft0, fs2          #; ft0  = 8.4852000, fs2  = 8.4852000
      0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 7, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x800006f8 andi    a2, a0, 1              #; a0  = 7, (wrb) a2  <-- 1
      0x800006fc bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800006ec
                                                #; (f:fpu) fs2  <-- 16.9704000
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x800006ec addi    a0, a0, 1              #; a0  = 7, (wrb) a0  <-- 8
      0x800006f0 addi    a1, a1, 8              #; a1  = 0x00100038, (wrb) a1  <-- 0x00100040
      0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 8, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x800006f8 andi    a2, a0, 1              #; a0  = 8, (wrb) a2  <-- 0
      0x800006fc bnez    a2, pc - 16            #; a2  = 0, not taken
; notOnAllCFPaths (various.c:0)
;  in various (various.c:47)
      0x80000708 j       pc - 0x1c              #; goto 0x800006ec
      0x80000700 fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100040]
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x800006ec addi    a0, a0, 1              #; a0  = 8, (wrb) a0  <-- 9
                                                #; (f:lsu) ft0  <-- 11.3136
      0x800006f0 addi    a1, a1, 8              #; a1  = 0x00100040, (wrb) a1  <-- 0x00100048
      0x80000704 fadd.d  fs2, ft0, fs2          #; ft0  = 11.3136, fs2  = 16.9704000
      0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 9, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x800006f8 andi    a2, a0, 1              #; a0  = 9, (wrb) a2  <-- 1
      0x800006fc bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800006ec
                                                #; (f:fpu) fs2  <-- 28.284
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x800006ec addi    a0, a0, 1              #; a0  = 9, (wrb) a0  <-- 10
      0x800006f0 addi    a1, a1, 8              #; a1  = 0x00100048, (wrb) a1  <-- 0x00100050
      0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 10, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x800006f8 andi    a2, a0, 1              #; a0  = 10, (wrb) a2  <-- 0
      0x800006fc bnez    a2, pc - 16            #; a2  = 0, not taken
; notOnAllCFPaths (various.c:0)
;  in various (various.c:47)
      0x80000708 j       pc - 0x1c              #; goto 0x800006ec
      0x80000700 fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100050]
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x800006ec addi    a0, a0, 1              #; a0  = 10, (wrb) a0  <-- 11
                                                #; (f:lsu) ft0  <-- 14.142
      0x800006f0 addi    a1, a1, 8              #; a1  = 0x00100050, (wrb) a1  <-- 0x00100058
      0x80000704 fadd.d  fs2, ft0, fs2          #; ft0  = 14.142, fs2  = 28.284
      0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 11, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x800006f8 andi    a2, a0, 1              #; a0  = 11, (wrb) a2  <-- 1
      0x800006fc bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800006ec
                                                #; (f:fpu) fs2  <-- 42.426
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x800006ec addi    a0, a0, 1              #; a0  = 11, (wrb) a0  <-- 12
      0x800006f0 addi    a1, a1, 8              #; a1  = 0x00100058, (wrb) a1  <-- 0x00100060
      0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 12, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x800006f8 andi    a2, a0, 1              #; a0  = 12, (wrb) a2  <-- 0
      0x800006fc bnez    a2, pc - 16            #; a2  = 0, not taken
; notOnAllCFPaths (various.c:0)
;  in various (various.c:47)
      0x80000708 j       pc - 0x1c              #; goto 0x800006ec
      0x80000700 fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100060]
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x800006ec addi    a0, a0, 1              #; a0  = 12, (wrb) a0  <-- 13
                                                #; (f:lsu) ft0  <-- 16.9704000
      0x800006f0 addi    a1, a1, 8              #; a1  = 0x00100060, (wrb) a1  <-- 0x00100068
      0x80000704 fadd.d  fs2, ft0, fs2          #; ft0  = 16.9704000, fs2  = 42.426
      0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 13, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x800006f8 andi    a2, a0, 1              #; a0  = 13, (wrb) a2  <-- 1
      0x800006fc bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800006ec
                                                #; (f:fpu) fs2  <-- 59.3964
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x800006ec addi    a0, a0, 1              #; a0  = 13, (wrb) a0  <-- 14
      0x800006f0 addi    a1, a1, 8              #; a1  = 0x00100068, (wrb) a1  <-- 0x00100070
      0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 14, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x800006f8 andi    a2, a0, 1              #; a0  = 14, (wrb) a2  <-- 0
      0x800006fc bnez    a2, pc - 16            #; a2  = 0, not taken
; notOnAllCFPaths (various.c:0)
;  in various (various.c:47)
      0x80000708 j       pc - 0x1c              #; goto 0x800006ec
      0x80000700 fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100070]
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x800006ec addi    a0, a0, 1              #; a0  = 14, (wrb) a0  <-- 15
                                                #; (f:lsu) ft0  <-- 19.7988
      0x800006f0 addi    a1, a1, 8              #; a1  = 0x00100070, (wrb) a1  <-- 0x00100078
      0x80000704 fadd.d  fs2, ft0, fs2          #; ft0  = 19.7988, fs2  = 59.3964
      0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 15, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x800006f8 andi    a2, a0, 1              #; a0  = 15, (wrb) a2  <-- 1
      0x800006fc bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800006ec
                                                #; (f:fpu) fs2  <-- 79.1952
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x800006ec addi    a0, a0, 1              #; a0  = 15, (wrb) a0  <-- 16
      0x800006f0 addi    a1, a1, 8              #; a1  = 0x00100078, (wrb) a1  <-- 0x00100080
      0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 16, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x800006f8 andi    a2, a0, 1              #; a0  = 16, (wrb) a2  <-- 0
      0x800006fc bnez    a2, pc - 16            #; a2  = 0, not taken
; notOnAllCFPaths (various.c:0)
;  in various (various.c:47)
      0x80000708 j       pc - 0x1c              #; goto 0x800006ec
      0x80000700 fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100080]
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x800006ec addi    a0, a0, 1              #; a0  = 16, (wrb) a0  <-- 17
                                                #; (f:lsu) ft0  <-- 22.6272
      0x800006f0 addi    a1, a1, 8              #; a1  = 0x00100080, (wrb) a1  <-- 0x00100088
      0x80000704 fadd.d  fs2, ft0, fs2          #; ft0  = 22.6272, fs2  = 79.1952
      0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 17, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x800006f8 andi    a2, a0, 1              #; a0  = 17, (wrb) a2  <-- 1
      0x800006fc bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800006ec
                                                #; (f:fpu) fs2  <-- 101.8224
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x800006ec addi    a0, a0, 1              #; a0  = 17, (wrb) a0  <-- 18
      0x800006f0 addi    a1, a1, 8              #; a1  = 0x00100088, (wrb) a1  <-- 0x00100090
      0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 18, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x800006f8 andi    a2, a0, 1              #; a0  = 18, (wrb) a2  <-- 0
      0x800006fc bnez    a2, pc - 16            #; a2  = 0, not taken
; notOnAllCFPaths (various.c:0)
;  in various (various.c:47)
      0x80000708 j       pc - 0x1c              #; goto 0x800006ec
      0x80000700 fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100090]
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x800006ec addi    a0, a0, 1              #; a0  = 18, (wrb) a0  <-- 19
                                                #; (f:lsu) ft0  <-- 25.4556000
      0x800006f0 addi    a1, a1, 8              #; a1  = 0x00100090, (wrb) a1  <-- 0x00100098
      0x80000704 fadd.d  fs2, ft0, fs2          #; ft0  = 25.4556000, fs2  = 101.8224
      0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 19, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x800006f8 andi    a2, a0, 1              #; a0  = 19, (wrb) a2  <-- 1
      0x800006fc bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800006ec
                                                #; (f:fpu) fs2  <-- 127.2780000
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x800006ec addi    a0, a0, 1              #; a0  = 19, (wrb) a0  <-- 20
      0x800006f0 addi    a1, a1, 8              #; a1  = 0x00100098, (wrb) a1  <-- 0x001000a0
      0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 20, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x800006f8 andi    a2, a0, 1              #; a0  = 20, (wrb) a2  <-- 0
      0x800006fc bnez    a2, pc - 16            #; a2  = 0, not taken
; notOnAllCFPaths (various.c:0)
;  in various (various.c:47)
      0x80000708 j       pc - 0x1c              #; goto 0x800006ec
      0x80000700 fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x001000a0]
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x800006ec addi    a0, a0, 1              #; a0  = 20, (wrb) a0  <-- 21
                                                #; (f:lsu) ft0  <-- 28.284
      0x800006f0 addi    a1, a1, 8              #; a1  = 0x001000a0, (wrb) a1  <-- 0x001000a8
      0x80000704 fadd.d  fs2, ft0, fs2          #; ft0  = 28.284, fs2  = 127.2780000
      0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 21, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x800006f8 andi    a2, a0, 1              #; a0  = 21, (wrb) a2  <-- 1
      0x800006fc bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800006ec
                                                #; (f:fpu) fs2  <-- 155.5620000
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x800006ec addi    a0, a0, 1              #; a0  = 21, (wrb) a0  <-- 22
      0x800006f0 addi    a1, a1, 8              #; a1  = 0x001000a8, (wrb) a1  <-- 0x001000b0
      0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 22, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x800006f8 andi    a2, a0, 1              #; a0  = 22, (wrb) a2  <-- 0
      0x800006fc bnez    a2, pc - 16            #; a2  = 0, not taken
; notOnAllCFPaths (various.c:0)
;  in various (various.c:47)
      0x80000708 j       pc - 0x1c              #; goto 0x800006ec
      0x80000700 fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x001000b0]
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x800006ec addi    a0, a0, 1              #; a0  = 22, (wrb) a0  <-- 23
                                                #; (f:lsu) ft0  <-- 31.1124000
      0x800006f0 addi    a1, a1, 8              #; a1  = 0x001000b0, (wrb) a1  <-- 0x001000b8
      0x80000704 fadd.d  fs2, ft0, fs2          #; ft0  = 31.1124000, fs2  = 155.5620000
      0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 23, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x800006f8 andi    a2, a0, 1              #; a0  = 23, (wrb) a2  <-- 1
      0x800006fc bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800006ec
                                                #; (f:fpu) fs2  <-- 186.6744
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x800006ec addi    a0, a0, 1              #; a0  = 23, (wrb) a0  <-- 24
      0x800006f0 addi    a1, a1, 8              #; a1  = 0x001000b8, (wrb) a1  <-- 0x001000c0
      0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 24, not taken
; notOnAllCFPaths (various.c:24)
;  in various (various.c:47)
      0x800006f8 andi    a2, a0, 1              #; a0  = 24, (wrb) a2  <-- 0
      0x800006fc bnez    a2, pc - 16            #; a2  = 0, not taken
; notOnAllCFPaths (various.c:0)
;  in various (various.c:47)
      0x80000708 j       pc - 0x1c              #; goto 0x800006ec
      0x80000700 fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x001000c0]
; notOnAllCFPaths (various.c:23)
;  in various (various.c:47)
      0x800006ec addi    a0, a0, 1              #; a0  = 24, (wrb) a0  <-- 25
                                                #; (f:lsu) ft0  <-- 33.9408000
      0x800006f0 addi    a1, a1, 8              #; a1  = 0x001000c0, (wrb) a1  <-- 0x001000c8
      0x80000704 fadd.d  fs2, ft0, fs2          #; ft0  = 33.9408000, fs2  = 186.6744
      0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 25, taken, goto 0x80000710
                                                #; (f:fpu) fs2  <-- 220.6152
; various (various.c:49)
      0x80000710 mv      a0, s1                 #; s1  = 0x00100000, (wrb) a0  <-- 0x00100000
      0x80000714 mv      a1, s0                 #; s0  = 25, (wrb) a1  <-- 25
      0x80000718 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000718
      0x8000071c jalr    ra, ra, 624            #; ra  = 0x80000718, (wrb) ra  <-- 0x80000720, goto 0x80000988
; skipAfterContantNrOfRounds (various.c:29)
      0x80000988 li      a2, 1                  #; (wrb) a2  <-- 1
; skipAfterContantNrOfRounds (various.c:31)
      0x8000098c blt     a1, a2, pc + 84        #; a1  = 25, a2  = 1, not taken
      0x80000990 addi    a1, a1, -1             #; a1  = 25, (wrb) a1  <-- 24
; skipAfterContantNrOfRounds (various.c:0)
      0x80000994 li      a2, 10                 #; (wrb) a2  <-- 10
; skipAfterContantNrOfRounds (various.c:31)
      0x80000998 bltu    a1, a2, pc + 8         #; a1  = 24, a2  = 10, not taken
      0x8000099c li      a1, 10                 #; (wrb) a1  <-- 10
      0x800009a0 slli    a4, a1, 3              #; a1  = 10, (wrb) a4  <-- 80
      0x800009a4 add     a3, a4, a0             #; a4  = 80, a0  = 0x00100000, (wrb) a3  <-- 0x00100050
      0x800009a8 srli    a2, a0, 20             #; a0  = 0x00100000, (wrb) a2  <-- 1
      0x800009ac snez    a2, a2                 #; a2  = 1, (wrb) a2  <-- 1
      0x800009b0 bgeu    a3, a4, pc + 56        #; a3  = 0x00100050, a4  = 80, taken, goto 0x800009e8
; skipAfterContantNrOfRounds (various.c:0)
      0x800009e8 lui     a4, 0x120              #; (wrb) a4  <-- 0x00120000
      0x800009ec addi    a4, a4, 1              #; a4  = 0x00120000, (wrb) a4  <-- 0x00120001
      0x800009f0 sltu    a3, a3, a4             #; a3  = 0x00100050, a4  = 0x00120001, (wrb) a3  <-- 1
; skipAfterContantNrOfRounds (various.c:31)
      0x800009f4 and     a2, a2, a3             #; a2  = 1, a3  = 1, (wrb) a2  <-- 1
      0x800009f8 beqz    a2, pc - 56            #; a2  = 1, not taken
; skipAfterContantNrOfRounds (various.c:0)
      0x800009fc li      a2, 8                  #; (wrb) a2  <-- 8
; skipAfterContantNrOfRounds (various.c:31)
      0x80000a00 li      a3, 64                 #; (wrb) a3  <-- 64
      0x80000a04 li      a4, 192                #; (wrb) a4  <-- 192
      0x80000a08 scfgw   a1, a3                 #; a1  = 10, a3  = 64
      0x80000a0c scfgw   a2, a4                 #; a2  = 8, a4  = 192
      0x80000a10 li      a2, 32                 #; (wrb) a2  <-- 32
      0x80000a14 scfgw   zero, a2               #; a2  = 32
      0x80000a18 scfgwi  a0, 768                #; a0  = 0x00100000
      0x80000a1c csrrsi  a0, ssr, 1             #; 
      0x80000a20 addi    a0, a1, 1              #; a1  = 10, (wrb) a0  <-- 11
; skipAfterContantNrOfRounds (various.c:33)
      0x80000a28 addi    a0, a0, -1             #; a0  = 11, (wrb) a0  <-- 10
      0x80000a24 fcvt.d.w fa0, zero             #; ac1  = 0
                                                #; (f:fpu) fa0  <-- 0.0
; skipAfterContantNrOfRounds (various.c:32)
      0x80000a2c fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
                                                #; (f:fpu) fa0  <-- 0.0
; skipAfterContantNrOfRounds (various.c:33)
      0x80000a30 bnez    a0, pc - 8             #; a0  = 10, taken, goto 0x80000a28
      0x80000a28 addi    a0, a0, -1             #; a0  = 10, (wrb) a0  <-- 9
      0x80000a30 bnez    a0, pc - 8             #; a0  = 9, taken, goto 0x80000a28
      0x80000a28 addi    a0, a0, -1             #; a0  = 9, (wrb) a0  <-- 8
      0x80000a2c fadd.d  fa0, ft0, fa0          #; ft0  = 1.4142, fa0  = 0.0
      0x80000a30 bnez    a0, pc - 8             #; a0  = 8, taken, goto 0x80000a28
      0x80000a28 addi    a0, a0, -1             #; a0  = 8, (wrb) a0  <-- 7
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 1.4142
; skipAfterContantNrOfRounds (various.c:32)
      0x80000a2c fadd.d  fa0, ft0, fa0          #; ft0  = 2.8284, fa0  = 1.4142
; skipAfterContantNrOfRounds (various.c:33)
      0x80000a30 bnez    a0, pc - 8             #; a0  = 7, taken, goto 0x80000a28
      0x80000a28 addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
                                                #; (f:fpu) fa0  <-- 4.2426000
      0x80000a30 bnez    a0, pc - 8             #; a0  = 6, taken, goto 0x80000a28
      0x80000a2c fadd.d  fa0, ft0, fa0          #; ft0  = 4.2426000, fa0  = 4.2426000
      0x80000a28 addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
      0x80000a30 bnez    a0, pc - 8             #; a0  = 5, taken, goto 0x80000a28
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 8.4852000
; skipAfterContantNrOfRounds (various.c:33)
      0x80000a28 addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
      0x80000a2c fadd.d  fa0, ft0, fa0          #; ft0  = 5.6568, fa0  = 8.4852000
      0x80000a30 bnez    a0, pc - 8             #; a0  = 4, taken, goto 0x80000a28
      0x80000a28 addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 14.142
; skipAfterContantNrOfRounds (various.c:32)
      0x80000a2c fadd.d  fa0, ft0, fa0          #; ft0  = 7.071, fa0  = 14.142
; skipAfterContantNrOfRounds (various.c:33)
      0x80000a30 bnez    a0, pc - 8             #; a0  = 3, taken, goto 0x80000a28
      0x80000a28 addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
                                                #; (f:fpu) fa0  <-- 21.213
      0x80000a30 bnez    a0, pc - 8             #; a0  = 2, taken, goto 0x80000a28
      0x80000a2c fadd.d  fa0, ft0, fa0          #; ft0  = 8.4852000, fa0  = 21.213
      0x80000a28 addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
      0x80000a30 bnez    a0, pc - 8             #; a0  = 1, taken, goto 0x80000a28
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 29.6982
; skipAfterContantNrOfRounds (various.c:33)
      0x80000a28 addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
      0x80000a2c fadd.d  fa0, ft0, fa0          #; ft0  = 9.8994, fa0  = 29.6982
      0x80000a30 bnez    a0, pc - 8             #; a0  = 0, not taken
                                                #; (f:fpu) fa0  <-- 39.5976
; skipAfterContantNrOfRounds (various.c:35)
      0x80000a38 ret                            #; ra  = 0x80000720, goto 0x80000720
      0x80000a2c fadd.d  fa0, ft0, fa0          #; ft0  = 11.3136, fa0  = 39.5976
                                                #; (f:fpu) fa0  <-- 50.9112
; skipAfterContantNrOfRounds (various.c:32)
      0x80000a2c fadd.d  fa0, ft0, fa0          #; ft0  = 12.7278000, fa0  = 50.9112
                                                #; (f:fpu) fa0  <-- 63.6390000
      0x80000a2c fadd.d  fa0, ft0, fa0          #; ft0  = 14.142, fa0  = 63.6390000
; skipAfterContantNrOfRounds (various.c:0)
      0x80000a34 csrrci  a0, ssr, 1             #; 
                                                #; (f:fpu) fa0  <-- 77.7810000
; various (various.c:51)
      0x80000724 mv      a0, s1                 #; s1  = 0x00100000, (wrb) a0  <-- 0x00100000
      0x80000728 mv      a1, s1                 #; s1  = 0x00100000, (wrb) a1  <-- 0x00100000
      0x80000720 fsgnj.d fs1, fa0, fa0          #; fa0  = 77.7810000, fa0  = 77.7810000
      0x8000072c mv      a2, s0                 #; s0  = 25, (wrb) a2  <-- 25
                                                #; (f:fpu) fs1  <-- 77.7810000
      0x80000730 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000730
      0x80000734 jalr    ra, ra, 780            #; ra  = 0x80000730, (wrb) ra  <-- 0x80000738, goto 0x80000a3c
; scalarprod (scalarprod.c:4)
      0x80000a3c li      a3, 1                  #; (wrb) a3  <-- 1
; scalarprod (scalarprod.c:6)
      0x80000a40 blt     a2, a3, pc + 48        #; a2  = 25, a3  = 1, not taken
      0x80000a44 addi    a6, a2, -1             #; a2  = 25, (wrb) a6  <-- 24
      0x80000a48 slli    a4, a6, 3              #; a6  = 24, (wrb) a4  <-- 192
      0x80000a4c add     a3, a4, a0             #; a4  = 192, a0  = 0x00100000, (wrb) a3  <-- 0x001000c0
      0x80000a50 add     t1, a4, a1             #; a4  = 192, a1  = 0x00100000, (wrb) t1  <-- 0x001000c0
      0x80000a54 srli    a5, a0, 20             #; a0  = 0x00100000, (wrb) a5  <-- 1
      0x80000a58 snez    t0, a5                 #; a5  = 1, (wrb) t0  <-- 1
      0x80000a5c lui     a5, 0x120              #; (wrb) a5  <-- 0x00120000
      0x80000a60 addi    a7, a5, 1              #; a5  = 0x00120000, (wrb) a7  <-- 0x00120001
      0x80000a64 bgeu    a3, a4, pc + 20        #; a3  = 0x001000c0, a4  = 192, taken, goto 0x80000a78
; scalarprod (scalarprod.c:0)
      0x80000a78 sltu    a3, a3, a7             #; a3  = 0x001000c0, a7  = 0x00120001, (wrb) a3  <-- 1
; scalarprod (scalarprod.c:6)
      0x80000a7c and     t0, t0, a3             #; t0  = 1, a3  = 1, (wrb) t0  <-- 1
      0x80000a80 srli    a3, a1, 20             #; a1  = 0x00100000, (wrb) a3  <-- 1
      0x80000a84 snez    a3, a3                 #; a3  = 1, (wrb) a3  <-- 1
      0x80000a88 bgeu    t1, a4, pc + 12        #; t1  = 0x001000c0, a4  = 192, taken, goto 0x80000a94
; scalarprod (scalarprod.c:0)
      0x80000a94 sltu    a4, t1, a7             #; t1  = 0x001000c0, a7  = 0x00120001, (wrb) a4  <-- 1
; scalarprod (scalarprod.c:6)
      0x80000a98 and     a3, a3, a4             #; a3  = 1, a4  = 1, (wrb) a3  <-- 1
      0x80000a9c and     a3, t0, a3             #; t0  = 1, a3  = 1, (wrb) a3  <-- 1
      0x80000aa0 beqz    a3, pc + 96            #; a3  = 1, not taken
; scalarprod (scalarprod.c:0)
      0x80000aa4 li      a3, 8                  #; (wrb) a3  <-- 8
; scalarprod (scalarprod.c:6)
      0x80000aa8 li      a4, 64                 #; (wrb) a4  <-- 64
      0x80000aac li      a5, 192                #; (wrb) a5  <-- 192
      0x80000ab0 scfgw   a6, a4                 #; a6  = 24, a4  = 64
      0x80000ab4 scfgw   a3, a5                 #; a3  = 8, a5  = 192
      0x80000ab8 li      a4, 32                 #; (wrb) a4  <-- 32
      0x80000abc scfgw   zero, a4               #; a4  = 32, (acc) ra  <-- 0x00e020ab
      0x80000ac0 scfgwi  a0, 768                #; a0  = 0x00100000
      0x80000ac4 li      a0, 1                  #; (wrb) a0  <-- 1
      0x80000ac8 addi    a4, a0, 64             #; a0  = 1, (wrb) a4  <-- 65
      0x80000acc addi    a5, a0, 192            #; a0  = 1, (wrb) a5  <-- 193
      0x80000ad0 scfgw   a6, a4                 #; a6  = 24, a4  = 65
      0x80000ad4 scfgw   a3, a5                 #; a3  = 8, a5  = 193
      0x80000ad8 addi    a0, a0, 32             #; a0  = 1, (wrb) a0  <-- 33
      0x80000adc scfgw   zero, a0               #; a0  = 33, (acc) ra  <-- 0x00a020ab
      0x80000ae0 scfgwi  a1, 769                #; a1  = 0x00100000
      0x80000ae4 csrrsi  a0, ssr, 1             #; 
      0x80000aec addi    a2, a2, -1             #; a2  = 25, (wrb) a2  <-- 24
      0x80000ae8 fcvt.d.w fa0, zero             #; ac1  = 0
                                                #; (f:fpu) fa0  <-- 0.0
      0x80000af4 bnez    a2, pc - 8             #; a2  = 24, taken, goto 0x80000aec
      0x80000aec addi    a2, a2, -1             #; a2  = 24, (wrb) a2  <-- 23
      0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 0.0, ft0  = 0.0, fa0  = 0.0
      0x80000af4 bnez    a2, pc - 8             #; a2  = 23, taken, goto 0x80000aec
      0x80000aec addi    a2, a2, -1             #; a2  = 23, (wrb) a2  <-- 22
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 0.0
; scalarprod (scalarprod.c:7)
      0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 1.4142, ft0  = 1.4142, fa0  = 0.0
; scalarprod (scalarprod.c:6)
      0x80000af4 bnez    a2, pc - 8             #; a2  = 22, taken, goto 0x80000aec
      0x80000aec addi    a2, a2, -1             #; a2  = 22, (wrb) a2  <-- 21
                                                #; (f:fpu) fa0  <-- 1.9999616
      0x80000af4 bnez    a2, pc - 8             #; a2  = 21, taken, goto 0x80000aec
      0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 2.8284, ft0  = 2.8284, fa0  = 1.9999616
      0x80000aec addi    a2, a2, -1             #; a2  = 21, (wrb) a2  <-- 20
      0x80000af4 bnez    a2, pc - 8             #; a2  = 20, taken, goto 0x80000aec
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 9.9998082
; scalarprod (scalarprod.c:6)
      0x80000aec addi    a2, a2, -1             #; a2  = 20, (wrb) a2  <-- 19
      0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 4.2426000, ft0  = 4.2426000, fa0  = 9.9998082
      0x80000af4 bnez    a2, pc - 8             #; a2  = 19, taken, goto 0x80000aec
      0x80000aec addi    a2, a2, -1             #; a2  = 19, (wrb) a2  <-- 18
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 27.9994630
; scalarprod (scalarprod.c:7)
      0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 5.6568, ft0  = 5.6568, fa0  = 27.9994630
; scalarprod (scalarprod.c:6)
      0x80000af4 bnez    a2, pc - 8             #; a2  = 18, taken, goto 0x80000aec
      0x80000aec addi    a2, a2, -1             #; a2  = 18, (wrb) a2  <-- 17
                                                #; (f:fpu) fa0  <-- 59.9988492
      0x80000af4 bnez    a2, pc - 8             #; a2  = 17, taken, goto 0x80000aec
      0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 7.071, ft0  = 7.071, fa0  = 59.9988492
      0x80000aec addi    a2, a2, -1             #; a2  = 17, (wrb) a2  <-- 16
      0x80000af4 bnez    a2, pc - 8             #; a2  = 16, taken, goto 0x80000aec
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 109.9978902
; scalarprod (scalarprod.c:6)
      0x80000aec addi    a2, a2, -1             #; a2  = 16, (wrb) a2  <-- 15
      0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 8.4852000, ft0  = 8.4852000, fa0  = 109.9978902
      0x80000af4 bnez    a2, pc - 8             #; a2  = 15, taken, goto 0x80000aec
      0x80000aec addi    a2, a2, -1             #; a2  = 15, (wrb) a2  <-- 14
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 181.9965092
; scalarprod (scalarprod.c:7)
      0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 9.8994, ft0  = 9.8994, fa0  = 181.9965092
; scalarprod (scalarprod.c:6)
      0x80000af4 bnez    a2, pc - 8             #; a2  = 14, taken, goto 0x80000aec
      0x80000aec addi    a2, a2, -1             #; a2  = 14, (wrb) a2  <-- 13
                                                #; (f:fpu) fa0  <-- 279.9946296
      0x80000af4 bnez    a2, pc - 8             #; a2  = 13, taken, goto 0x80000aec
      0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 11.3136, ft0  = 11.3136, fa0  = 279.9946296
      0x80000aec addi    a2, a2, -1             #; a2  = 13, (wrb) a2  <-- 12
      0x80000af4 bnez    a2, pc - 8             #; a2  = 12, taken, goto 0x80000aec
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 407.9921746
; scalarprod (scalarprod.c:6)
      0x80000aec addi    a2, a2, -1             #; a2  = 12, (wrb) a2  <-- 11
      0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 12.7278000, ft0  = 12.7278000, fa0  = 407.9921746
      0x80000af4 bnez    a2, pc - 8             #; a2  = 11, taken, goto 0x80000aec
      0x80000aec addi    a2, a2, -1             #; a2  = 11, (wrb) a2  <-- 10
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 569.9890674
; scalarprod (scalarprod.c:7)
      0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 14.142, ft0  = 14.142, fa0  = 569.9890674
; scalarprod (scalarprod.c:6)
      0x80000af4 bnez    a2, pc - 8             #; a2  = 10, taken, goto 0x80000aec
      0x80000aec addi    a2, a2, -1             #; a2  = 10, (wrb) a2  <-- 9
                                                #; (f:fpu) fa0  <-- 769.9852314
      0x80000af4 bnez    a2, pc - 8             #; a2  = 9, taken, goto 0x80000aec
      0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 15.5562000, ft0  = 15.5562000, fa0  = 769.9852314
      0x80000aec addi    a2, a2, -1             #; a2  = 9, (wrb) a2  <-- 8
      0x80000af4 bnez    a2, pc - 8             #; a2  = 8, taken, goto 0x80000aec
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 1011.9805898
; scalarprod (scalarprod.c:6)
      0x80000aec addi    a2, a2, -1             #; a2  = 8, (wrb) a2  <-- 7
      0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 16.9704000, ft0  = 16.9704000, fa0  = 1011.9805898
      0x80000af4 bnez    a2, pc - 8             #; a2  = 7, taken, goto 0x80000aec
      0x80000aec addi    a2, a2, -1             #; a2  = 7, (wrb) a2  <-- 6
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 1299.9750660
; scalarprod (scalarprod.c:7)
      0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 18.3846, ft0  = 18.3846, fa0  = 1299.9750660
; scalarprod (scalarprod.c:6)
      0x80000af4 bnez    a2, pc - 8             #; a2  = 6, taken, goto 0x80000aec
      0x80000aec addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                                                #; (f:fpu) fa0  <-- 1637.9685832
      0x80000af4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000aec
      0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 19.7988, ft0  = 19.7988, fa0  = 1637.9685832
      0x80000aec addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
      0x80000af4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000aec
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 2029.9610646
; scalarprod (scalarprod.c:6)
      0x80000aec addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
      0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 21.2130000, ft0  = 21.2130000, fa0  = 2029.9610646
      0x80000af4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000aec
      0x80000aec addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 2479.9524336
; scalarprod (scalarprod.c:7)
      0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 22.6272, ft0  = 22.6272, fa0  = 2479.9524336
; scalarprod (scalarprod.c:6)
      0x80000af4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000aec
      0x80000aec addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                                                #; (f:fpu) fa0  <-- 2991.9426134
      0x80000af4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000aec
      0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 24.0414, ft0  = 24.0414, fa0  = 2991.9426134
      0x80000aec addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
      0x80000af4 bnez    a2, pc - 8             #; a2  = 0, not taken
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 3569.9315274
; scalarprod (scalarprod.c:7)
      0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 25.4556000, ft0  = 25.4556000, fa0  = 3569.9315274
; scalarprod (scalarprod.c:0)
      0x80000afc j       pc + 0x24              #; goto 0x80000b20
                                                #; (f:fpu) fa0  <-- 4217.9190988
; scalarprod (scalarprod.c:7)
      0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 26.8698000, ft0  = 26.8698000, fa0  = 4217.9190988
                                                #; (f:fpu) fa0  <-- 4939.9052508
      0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 28.284, ft0  = 28.284, fa0  = 4939.9052508
                                                #; (f:fpu) fa0  <-- 5739.8899068
; scalarprod (scalarprod.c:9)
      0x80000b20 ret                            #; ra  = 0x80000738, goto 0x80000738
      0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 29.6982000, ft0  = 29.6982000, fa0  = 5739.8899068
                                                #; (f:fpu) fa0  <-- 6621.8729900
; scalarprod (scalarprod.c:7)
      0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 31.1124000, ft0  = 31.1124000, fa0  = 6621.8729900
                                                #; (f:fpu) fa0  <-- 7589.8544238
      0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 32.5266000, ft0  = 32.5266000, fa0  = 7589.8544238
                                                #; (f:fpu) fa0  <-- 8647.8341314
      0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 33.9408000, ft0  = 33.9408000, fa0  = 8647.8341314
; scalarprod (scalarprod.c:0)
      0x80000af8 csrrci  a0, ssr, 1             #; 
; various (various.c:0)
      0x80000738 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003738
      0x8000073c addi    a0, a0, -1632          #; a0  = 0x80003738, (wrb) a0  <-- 0x800030d8
; ?? (??:0)
                                                #; (f:fpu) fa0  <-- 9799.8120360
; various (various.c:0)
      0x80000744 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003744
      0x80000748 addi    a0, a0, -1636          #; a0  = 0x80003744, (wrb) a0  <-- 0x800030e0
      0x80000740 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800030d8]
      0x8000074c fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x800030e0]
                                                #; (f:lsu) ft0  <-- -9799.8120360
      0x80000758 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003758
      0x80000750 fadd.d  ft2, fs0, ft0          #; fs0  = 9799.8120360, ft0  = -9799.8120360, (f:lsu) ft1  <-- -220.6152000
      0x8000075c addi    a0, a0, -1648          #; a0  = 0x80003758, (wrb) a0  <-- 0x800030e8
      0x80000754 fadd.d  ft1, fs2, ft1          #; fs2  = 220.6152, ft1  = -220.6152000
                                                #; (f:fpu) ft2  <-- -0.0000000
                                                #; (f:fpu) ft1  <-- 0.0
      0x80000760 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x800030e8]
; abs (various.c:38)
;  in various (various.c:54)
      0x80000764 fsgnjx.d ft2, ft2, ft2         #; ft2  = -0.0000000, ft2  = -0.0000000
      0x80000768 fsgnjx.d ft1, ft1, ft1         #; ft1  = 0.0, ft1  = 0.0, (f:fpu) ft2  <-- 0.0000000
                                                #; (f:fpu) ft1  <-- 0.0
; various (various.c:54)
      0x8000076c fadd.d  ft1, ft1, ft2          #; ft1  = 0.0, ft2  = 0.0000000
                                                #; (f:fpu) ft1  <-- 0.0000000
                                                #; (f:lsu) ft3  <-- -77.781
      0x80000770 fadd.d  ft2, fs1, ft3          #; fs1  = 77.7810000, ft3  = -77.781
                                                #; (f:fpu) ft2  <-- -0.0000000
; abs (various.c:38)
;  in various (various.c:54)
      0x80000774 fsgnjx.d ft2, ft2, ft2         #; ft2  = -0.0000000, ft2  = -0.0000000
                                                #; (f:fpu) ft2  <-- 0.0000000
; various (various.c:54)
      0x80000778 fadd.d  ft1, ft1, ft2          #; ft1  = 0.0000000, ft2  = 0.0000000
      0x8000077c fadd.d  ft0, fa0, ft0          #; fa0  = 9799.8120360, ft0  = -9799.8120360
                                                #; (f:fpu) ft1  <-- 0.0000000
                                                #; (f:fpu) ft0  <-- -0.0000000
; abs (various.c:38)
;  in various (various.c:54)
      0x80000780 fsgnjx.d ft0, ft0, ft0         #; ft0  = -0.0000000, ft0  = -0.0000000
; various (various.c:56)
      0x8000078c lw      a2, 0(sp)              #; sp  = 0x0011ff30, a2  <~~ Word[0x0011ff30]
                                                #; (f:fpu) ft0  <-- 0.0000000
; various (various.c:54)
      0x80000784 fadd.d  fs0, ft1, ft0          #; ft1  = 0.0000000, ft0  = 0.0000000
                                                #; (lsu) a2  <-- 0
                                                #; (f:fpu) fs0  <-- 0.0000000
; various (various.c:56)
      0x80000788 fsd     fs0, 0(sp)             #; 0.0000000 ~~> Doub[0x0011ff30]
      0x80000790 lw      a3, 4(sp)              #; sp  = 0x0011ff30, a3  <~~ Word[0x0011ff34]
      0x80000794 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002794
      0x80000798 addi    a0, a0, 1729           #; a0  = 0x80002794, (wrb) a0  <-- 0x80002e55
      0x8000079c auipc   ra, 0x0                #; (wrb) ra  <-- 0x8000079c
                                                #; (lsu) a3  <-- 0x3d901000
      0x800007a0 jalr    ra, ra, 904            #; ra  = 0x8000079c, (wrb) ra  <-- 0x800007a4, goto 0x80000b24
; printf_ (printf.c:863)
      0x80000b24 addi    sp, sp, -48            #; sp  = 0x0011ff30, (wrb) sp  <-- 0x0011ff00
      0x80000b28 sw      ra, 12(sp)             #; sp  = 0x0011ff00, 0x800007a4 ~~> Word[0x0011ff0c]
      0x80000b2c mv      t0, a0                 #; a0  = 0x80002e55, (wrb) t0  <-- 0x80002e55
      0x80000b30 sw      a7, 44(sp)             #; sp  = 0x0011ff00, 0x00120001 ~~> Word[0x0011ff2c]
      0x80000b34 sw      a6, 40(sp)             #; sp  = 0x0011ff00, 24 ~~> Word[0x0011ff28]
      0x80000b38 sw      a5, 36(sp)             #; sp  = 0x0011ff00, 193 ~~> Word[0x0011ff24]
      0x80000b3c sw      a4, 32(sp)             #; sp  = 0x0011ff00, 65 ~~> Word[0x0011ff20]
      0x80000b40 sw      a3, 28(sp)             #; sp  = 0x0011ff00, 0x3d901000 ~~> Word[0x0011ff1c]
      0x80000b44 sw      a2, 24(sp)             #; sp  = 0x0011ff00, 0 ~~> Word[0x0011ff18]
      0x80000b48 sw      a1, 20(sp)             #; sp  = 0x0011ff00, 0x00100000 ~~> Word[0x0011ff14]
      0x80000b4c addi    a0, sp, 20             #; sp  = 0x0011ff00, (wrb) a0  <-- 0x0011ff14
; printf_ (printf.c:865)
      0x80000b50 sw      a0, 8(sp)              #; sp  = 0x0011ff00, 0x0011ff14 ~~> Word[0x0011ff08]
; printf_ (printf.c:867)
      0x80000b54 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001b54
      0x80000b58 addi    a0, a0, -988           #; a0  = 0x80001b54, (wrb) a0  <-- 0x80001778
      0x80000b5c addi    a1, sp, 7              #; sp  = 0x0011ff00, (wrb) a1  <-- 0x0011ff07
      0x80000b60 li      a2, -1                 #; (wrb) a2  <-- -1
      0x80000b64 addi    a4, sp, 20             #; sp  = 0x0011ff00, (wrb) a4  <-- 0x0011ff14
      0x80000b68 mv      a3, t0                 #; t0  = 0x80002e55, (wrb) a3  <-- 0x80002e55
      0x80000b6c auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000b6c
      0x80000b70 jalr    ra, ra, 20             #; ra  = 0x80000b6c, (wrb) ra  <-- 0x80000b74, goto 0x80000b80
; _vsnprintf.llvm.1805434900161566649 (printf.c:578)
      0x80000b80 addi    sp, sp, -112           #; sp  = 0x0011ff00, (wrb) sp  <-- 0x0011fe90
      0x80000b84 sw      ra, 108(sp)            #; sp  = 0x0011fe90, 0x80000b74 ~~> Word[0x0011fefc]
      0x80000b88 sw      s0, 104(sp)            #; sp  = 0x0011fe90, 25 ~~> Word[0x0011fef8]
      0x80000b8c sw      s1, 100(sp)            #; sp  = 0x0011fe90, 0x00100000 ~~> Word[0x0011fef4]
      0x80000b90 sw      s2, 96(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fef0]
      0x80000b94 sw      s3, 92(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011feec]
      0x80000b98 sw      s4, 88(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fee8]
      0x80000b9c sw      s5, 84(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fee4]
      0x80000ba0 sw      s6, 80(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fee0]
      0x80000ba4 sw      s7, 76(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fedc]
      0x80000ba8 sw      s8, 72(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fed8]
      0x80000bac sw      s9, 68(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fed4]
      0x80000bb0 sw      s10, 64(sp)            #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fed0]
      0x80000bb4 sw      s11, 60(sp)            #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fecc]
      0x80000bb8 mv      s3, a4                 #; a4  = 0x0011ff14, (wrb) s3  <-- 0x0011ff14
      0x80000bbc mv      s0, a3                 #; a3  = 0x80002e55, (wrb) s0  <-- 0x80002e55
      0x80000bc0 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
      0x80000bc4 mv      s4, a1                 #; a1  = 0x0011ff07, (wrb) s4  <-- 0x0011ff07
; _vsnprintf.llvm.1805434900161566649 (printf.c:582)
      0x80000bc8 beqz    a1, pc + 12            #; a1  = 0x0011ff07, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000bcc mv      s2, a0                 #; a0  = 0x80001778, (wrb) s2  <-- 0x80001778
      0x80000bd0 j       pc + 0xc               #; goto 0x80000bdc
      0x80000bdc li      s8, 0                  #; (wrb) s8  <-- 0
      0x80000be0 li      s6, 37                 #; (wrb) s6  <-- 37
      0x80000be4 li      s11, 16                #; (wrb) s11 <-- 16
      0x80000be8 li      s7, 46                 #; (wrb) s7  <-- 46
      0x80000bec lui     a0, 0x1                #; (wrb) a0  <-- 4096
      0x80000bf0 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
      0x80000bf4 sw      a0, 24(sp)             #; sp  = 0x0011fe90, 2048 ~~> Word[0x0011fea8]
      0x80000bf8 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
      0x80000bfc addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
      0x80000c00 sw      a0, 16(sp)             #; sp  = 0x0011fe90, 65535 ~~> Word[0x0011fea0]
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c04 addi    s10, s0, 2             #; s0  = 0x80002e55, (wrb) s10 <-- 0x80002e57
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c08 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
      0x80000c0c li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c10 lbu     a0, 0(s0)              #; s0  = 0x80002e55, a0  <~~ Byte[0x80002e55]
                                                #; (lsu) a0  <-- 101
      0x80000c14 beqz    a0, pc + 2824          #; a0  = 101, not taken
      0x80000c18 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000c1c addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
      0x80000c20 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80000c24 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
      0x80000c28 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000c2c jalr    s2                     #; s2  = 0x80001778, (wrb) ra  <-- 0x80000c30, goto 0x80001778
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001778 beqz    a0, pc + 168           #; a0  = 101, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000177c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001780 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001784 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001788 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003788
      0x8000178c addi    a3, a3, -1500          #; a3  = 0x80003788, (wrb) a3  <-- 0x800031ac
      0x80001790 add     a1, a2, a3             #; a2  = 0, a3  = 0x800031ac, (wrb) a1  <-- 0x800031ac
      0x80001794 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
                                                #; (lsu) a4  <-- 0
      0x80001798 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
      0x8000179c sw      a5, 0(a1)              #; a1  = 0x800031ac, 1 ~~> Word[0x800031ac]
      0x800017a0 add     a4, a1, a4             #; a1  = 0x800031ac, a4  = 0, (wrb) a4  <-- 0x800031ac
      0x800017a4 sb      a0, 72(a4)             #; a4  = 0x800031ac, 101 ~~> Byte[0x800031f4]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017a8 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
                                                #; (lsu) a4  <-- 1
      0x800017ac addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
      0x800017b0 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
      0x800017b4 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
      0x800017b8 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
      0x800017bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001820
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001820 ret                            #; ra  = 0x80000c30, goto 0x80000c30
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000c30 addi    s0, s0, 1              #; s0  = 0x80002e55, (wrb) s0  <-- 0x80002e56
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000c34 addi    s10, s10, 1            #; s10 = 0x80002e57, (wrb) s10 <-- 0x80002e58
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c38 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c3c lbu     a0, 0(s0)              #; s0  = 0x80002e56, a0  <~~ Byte[0x80002e56]
                                                #; (lsu) a0  <-- 114
      0x80000c40 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000c18
      0x80000c18 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000c1c addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
      0x80000c20 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80000c24 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
      0x80000c28 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000c2c jalr    s2                     #; s2  = 0x80001778, (wrb) ra  <-- 0x80000c30, goto 0x80001778
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001778 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000177c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001780 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001784 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001788 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003788
      0x8000178c addi    a3, a3, -1500          #; a3  = 0x80003788, (wrb) a3  <-- 0x800031ac
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001790 add     a1, a2, a3             #; a2  = 0, a3  = 0x800031ac, (wrb) a1  <-- 0x800031ac
      0x80001794 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
                                                #; (lsu) a4  <-- 1
      0x80001798 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
      0x8000179c sw      a5, 0(a1)              #; a1  = 0x800031ac, 2 ~~> Word[0x800031ac]
      0x800017a0 add     a4, a1, a4             #; a1  = 0x800031ac, a4  = 1, (wrb) a4  <-- 0x800031ad
      0x800017a4 sb      a0, 72(a4)             #; a4  = 0x800031ad, 114 ~~> Byte[0x800031f5]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017a8 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
                                                #; (lsu) a4  <-- 2
      0x800017ac addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
      0x800017b0 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
      0x800017b4 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x800017b8 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x800017bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001820
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001820 ret                            #; ra  = 0x80000c30, goto 0x80000c30
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000c30 addi    s0, s0, 1              #; s0  = 0x80002e56, (wrb) s0  <-- 0x80002e57
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000c34 addi    s10, s10, 1            #; s10 = 0x80002e58, (wrb) s10 <-- 0x80002e59
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c38 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c3c lbu     a0, 0(s0)              #; s0  = 0x80002e57, a0  <~~ Byte[0x80002e57]
                                                #; (lsu) a0  <-- 114
      0x80000c40 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000c18
      0x80000c18 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000c1c addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
      0x80000c20 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80000c24 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
      0x80000c28 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000c2c jalr    s2                     #; s2  = 0x80001778, (wrb) ra  <-- 0x80000c30, goto 0x80001778
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001778 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000177c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001780 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001784 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001788 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003788
      0x8000178c addi    a3, a3, -1500          #; a3  = 0x80003788, (wrb) a3  <-- 0x800031ac
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001790 add     a1, a2, a3             #; a2  = 0, a3  = 0x800031ac, (wrb) a1  <-- 0x800031ac
      0x80001794 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
                                                #; (lsu) a4  <-- 2
      0x80001798 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
      0x8000179c sw      a5, 0(a1)              #; a1  = 0x800031ac, 3 ~~> Word[0x800031ac]
      0x800017a0 add     a4, a1, a4             #; a1  = 0x800031ac, a4  = 2, (wrb) a4  <-- 0x800031ae
      0x800017a4 sb      a0, 72(a4)             #; a4  = 0x800031ae, 114 ~~> Byte[0x800031f6]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017a8 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
                                                #; (lsu) a4  <-- 3
      0x800017ac addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
      0x800017b0 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
      0x800017b4 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x800017b8 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x800017bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001820
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001820 ret                            #; ra  = 0x80000c30, goto 0x80000c30
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000c30 addi    s0, s0, 1              #; s0  = 0x80002e57, (wrb) s0  <-- 0x80002e58
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000c34 addi    s10, s10, 1            #; s10 = 0x80002e59, (wrb) s10 <-- 0x80002e5a
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c38 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c3c lbu     a0, 0(s0)              #; s0  = 0x80002e58, a0  <~~ Byte[0x80002e58]
                                                #; (lsu) a0  <-- 111
      0x80000c40 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000c18
      0x80000c18 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000c1c addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
      0x80000c20 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80000c24 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
      0x80000c28 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000c2c jalr    s2                     #; s2  = 0x80001778, (wrb) ra  <-- 0x80000c30, goto 0x80001778
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001778 beqz    a0, pc + 168           #; a0  = 111, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000177c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001780 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001784 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001788 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003788
      0x8000178c addi    a3, a3, -1500          #; a3  = 0x80003788, (wrb) a3  <-- 0x800031ac
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001790 add     a1, a2, a3             #; a2  = 0, a3  = 0x800031ac, (wrb) a1  <-- 0x800031ac
      0x80001794 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
                                                #; (lsu) a4  <-- 3
      0x80001798 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
      0x8000179c sw      a5, 0(a1)              #; a1  = 0x800031ac, 4 ~~> Word[0x800031ac]
      0x800017a0 add     a4, a1, a4             #; a1  = 0x800031ac, a4  = 3, (wrb) a4  <-- 0x800031af
      0x800017a4 sb      a0, 72(a4)             #; a4  = 0x800031af, 111 ~~> Byte[0x800031f7]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017a8 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
                                                #; (lsu) a4  <-- 4
      0x800017ac addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
      0x800017b0 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
      0x800017b4 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
      0x800017b8 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
      0x800017bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001820
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001820 ret                            #; ra  = 0x80000c30, goto 0x80000c30
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000c30 addi    s0, s0, 1              #; s0  = 0x80002e58, (wrb) s0  <-- 0x80002e59
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000c34 addi    s10, s10, 1            #; s10 = 0x80002e5a, (wrb) s10 <-- 0x80002e5b
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c38 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c3c lbu     a0, 0(s0)              #; s0  = 0x80002e59, a0  <~~ Byte[0x80002e59]
                                                #; (lsu) a0  <-- 114
      0x80000c40 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000c18
      0x80000c18 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000c1c addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
      0x80000c20 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80000c24 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
      0x80000c28 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000c2c jalr    s2                     #; s2  = 0x80001778, (wrb) ra  <-- 0x80000c30, goto 0x80001778
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001778 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000177c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001780 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001784 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001788 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003788
      0x8000178c addi    a3, a3, -1500          #; a3  = 0x80003788, (wrb) a3  <-- 0x800031ac
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001790 add     a1, a2, a3             #; a2  = 0, a3  = 0x800031ac, (wrb) a1  <-- 0x800031ac
      0x80001794 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
                                                #; (lsu) a4  <-- 4
      0x80001798 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
      0x8000179c sw      a5, 0(a1)              #; a1  = 0x800031ac, 5 ~~> Word[0x800031ac]
      0x800017a0 add     a4, a1, a4             #; a1  = 0x800031ac, a4  = 4, (wrb) a4  <-- 0x800031b0
      0x800017a4 sb      a0, 72(a4)             #; a4  = 0x800031b0, 114 ~~> Byte[0x800031f8]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017a8 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
                                                #; (lsu) a4  <-- 5
      0x800017ac addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
      0x800017b0 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
      0x800017b4 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x800017b8 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x800017bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001820
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001820 ret                            #; ra  = 0x80000c30, goto 0x80000c30
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000c30 addi    s0, s0, 1              #; s0  = 0x80002e59, (wrb) s0  <-- 0x80002e5a
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000c34 addi    s10, s10, 1            #; s10 = 0x80002e5b, (wrb) s10 <-- 0x80002e5c
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c38 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c3c lbu     a0, 0(s0)              #; s0  = 0x80002e5a, a0  <~~ Byte[0x80002e5a]
                                                #; (lsu) a0  <-- 32
      0x80000c40 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000c18
      0x80000c18 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000c1c addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
      0x80000c20 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80000c24 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
      0x80000c28 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000c2c jalr    s2                     #; s2  = 0x80001778, (wrb) ra  <-- 0x80000c30, goto 0x80001778
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001778 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000177c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001780 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001784 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001788 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003788
      0x8000178c addi    a3, a3, -1500          #; a3  = 0x80003788, (wrb) a3  <-- 0x800031ac
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001790 add     a1, a2, a3             #; a2  = 0, a3  = 0x800031ac, (wrb) a1  <-- 0x800031ac
      0x80001794 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
                                                #; (lsu) a4  <-- 5
      0x80001798 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
      0x8000179c sw      a5, 0(a1)              #; a1  = 0x800031ac, 6 ~~> Word[0x800031ac]
      0x800017a0 add     a4, a1, a4             #; a1  = 0x800031ac, a4  = 5, (wrb) a4  <-- 0x800031b1
      0x800017a4 sb      a0, 72(a4)             #; a4  = 0x800031b1, 32 ~~> Byte[0x800031f9]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017a8 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
                                                #; (lsu) a4  <-- 6
      0x800017ac addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
      0x800017b0 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
      0x800017b4 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x800017b8 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x800017bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001820
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001820 ret                            #; ra  = 0x80000c30, goto 0x80000c30
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000c30 addi    s0, s0, 1              #; s0  = 0x80002e5a, (wrb) s0  <-- 0x80002e5b
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000c34 addi    s10, s10, 1            #; s10 = 0x80002e5c, (wrb) s10 <-- 0x80002e5d
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c38 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c3c lbu     a0, 0(s0)              #; s0  = 0x80002e5b, a0  <~~ Byte[0x80002e5b]
                                                #; (lsu) a0  <-- 61
      0x80000c40 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000c18
      0x80000c18 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000c1c addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
      0x80000c20 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80000c24 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
      0x80000c28 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000c2c jalr    s2                     #; s2  = 0x80001778, (wrb) ra  <-- 0x80000c30, goto 0x80001778
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001778 beqz    a0, pc + 168           #; a0  = 61, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000177c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001780 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001784 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001788 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003788
      0x8000178c addi    a3, a3, -1500          #; a3  = 0x80003788, (wrb) a3  <-- 0x800031ac
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001790 add     a1, a2, a3             #; a2  = 0, a3  = 0x800031ac, (wrb) a1  <-- 0x800031ac
      0x80001794 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
                                                #; (lsu) a4  <-- 6
      0x80001798 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
      0x8000179c sw      a5, 0(a1)              #; a1  = 0x800031ac, 7 ~~> Word[0x800031ac]
      0x800017a0 add     a4, a1, a4             #; a1  = 0x800031ac, a4  = 6, (wrb) a4  <-- 0x800031b2
      0x800017a4 sb      a0, 72(a4)             #; a4  = 0x800031b2, 61 ~~> Byte[0x800031fa]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017a8 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
                                                #; (lsu) a4  <-- 7
      0x800017ac addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
      0x800017b0 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
      0x800017b4 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
      0x800017b8 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
      0x800017bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001820
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001820 ret                            #; ra  = 0x80000c30, goto 0x80000c30
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000c30 addi    s0, s0, 1              #; s0  = 0x80002e5b, (wrb) s0  <-- 0x80002e5c
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000c34 addi    s10, s10, 1            #; s10 = 0x80002e5d, (wrb) s10 <-- 0x80002e5e
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c38 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c3c lbu     a0, 0(s0)              #; s0  = 0x80002e5c, a0  <~~ Byte[0x80002e5c]
                                                #; (lsu) a0  <-- 32
      0x80000c40 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000c18
      0x80000c18 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000c1c addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
      0x80000c20 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80000c24 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
      0x80000c28 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000c2c jalr    s2                     #; s2  = 0x80001778, (wrb) ra  <-- 0x80000c30, goto 0x80001778
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001778 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000177c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001780 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001784 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001788 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003788
      0x8000178c addi    a3, a3, -1500          #; a3  = 0x80003788, (wrb) a3  <-- 0x800031ac
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001790 add     a1, a2, a3             #; a2  = 0, a3  = 0x800031ac, (wrb) a1  <-- 0x800031ac
      0x80001794 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
                                                #; (lsu) a4  <-- 7
      0x80001798 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
      0x8000179c sw      a5, 0(a1)              #; a1  = 0x800031ac, 8 ~~> Word[0x800031ac]
      0x800017a0 add     a4, a1, a4             #; a1  = 0x800031ac, a4  = 7, (wrb) a4  <-- 0x800031b3
      0x800017a4 sb      a0, 72(a4)             #; a4  = 0x800031b3, 32 ~~> Byte[0x800031fb]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017a8 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
                                                #; (lsu) a4  <-- 8
      0x800017ac addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
      0x800017b0 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
      0x800017b4 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x800017b8 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x800017bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001820
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001820 ret                            #; ra  = 0x80000c30, goto 0x80000c30
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000c30 addi    s0, s0, 1              #; s0  = 0x80002e5c, (wrb) s0  <-- 0x80002e5d
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000c34 addi    s10, s10, 1            #; s10 = 0x80002e5e, (wrb) s10 <-- 0x80002e5f
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c38 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c3c lbu     a0, 0(s0)              #; s0  = 0x80002e5d, a0  <~~ Byte[0x80002e5d]
                                                #; (lsu) a0  <-- 37
      0x80000c40 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000c18
      0x80000c18 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000c48
; _vsnprintf.llvm.1805434900161566649 (printf.c:602)
      0x80000c48 li      s0, 0                  #; (wrb) s0  <-- 0
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c4c j       pc + 0x10              #; goto 0x80000c5c
; _vsnprintf.llvm.1805434900161566649 (printf.c:604)
      0x80000c5c lbu     a0, -1(s10)            #; s10 = 0x80002e5f, a0  <~~ Byte[0x80002e5e]
                                                #; (lsu) a0  <-- 102
      0x80000c60 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
      0x80000c64 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000c9c
; _is_digit (printf.c:183)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000c9c addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
      0x80000ca0 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
; _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000ca4 addi    a1, s10, -1            #; s10 = 0x80002e5f, (wrb) a1  <-- 0x80002e5e
      0x80000ca8 li      a3, 9                  #; (wrb) a3  <-- 9
      0x80000cac bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000d28
; _vsnprintf.llvm.1805434900161566649 (printf.c:619)
      0x80000d28 li      a2, 42                 #; (wrb) a2  <-- 42
      0x80000d2c bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000d7c
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000d7c li      s6, 0                  #; (wrb) s6  <-- 0
      0x80000d80 mv      s10, a1                #; a1  = 0x80002e5e, (wrb) s10 <-- 0x80002e5e
; _vsnprintf.llvm.1805434900161566649 (printf.c:633)
      0x80000d84 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000d88 li      s7, 0                  #; (wrb) s7  <-- 0
      0x80000d8c j       pc + 0xc               #; goto 0x80000d98
; _vsnprintf.llvm.1805434900161566649 (printf.c:647)
      0x80000d98 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
      0x80000d9c srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
      0x80000da0 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
      0x80000da4 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
      0x80000da8 li      a2, 9                  #; (wrb) a2  <-- 9
      0x80000dac bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000e10
; _vsnprintf.llvm.1805434900161566649 (printf.c:683)
      0x80000e10 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
      0x80000e14 li      a2, 83                 #; (wrb) a2  <-- 83
      0x80000e18 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e1c slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
      0x80000e20 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002e20
      0x80000e24 addi    a2, a2, 180            #; a2  = 0x80002e20, (wrb) a2  <-- 0x80002ed4
      0x80000e28 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002ed4, (wrb) a1  <-- 0x80002fd8
      0x80000e2c lw      a2, 0(a1)              #; a1  = 0x80002fd8, a2  <~~ Word[0x80002fd8]
      0x80000e30 li      a1, 8                  #; (wrb) a1  <-- 8
      0x80000e34 li      s8, 16                 #; (wrb) s8  <-- 16
                                                #; (lsu) a2  <-- 0x80000e68
      0x80000e38 jr      a2                     #; a2  = 0x80000e68, goto 0x80000e68
; _vsnprintf.llvm.1805434900161566649 (printf.c:760)
      0x80000e68 li      a1, 70                 #; (wrb) a1  <-- 70
      0x80000e6c bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000e74
; _vsnprintf.llvm.1805434900161566649 (printf.c:761)
      0x80000e74 addi    a0, s3, 7              #; s3  = 0x0011ff14, (wrb) a0  <-- 0x0011ff1b
      0x80000e78 andi    a0, a0, -8             #; a0  = 0x0011ff1b, (wrb) a0  <-- 0x0011ff18
      0x80000e7c fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff18]
                                                #; (f:lsu) fa0  <-- 0.0000000
      0x80000e80 addi    s3, a0, 8              #; a0  = 0x0011ff18, (wrb) s3  <-- 0x0011ff20
      0x80000e84 mv      a0, s2                 #; s2  = 0x80001778, (wrb) a0  <-- 0x80001778
      0x80000e88 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80000e8c mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
      0x80000e90 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000e94 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
      0x80000e98 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
      0x80000e9c mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
      0x80000ea0 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001ea0
      0x80000ea4 jalr    ra, ra, -1656          #; ra  = 0x80001ea0, (wrb) ra  <-- 0x80000ea8, goto 0x80001828
; _ftoa (printf.c:340)
      0x80001828 addi    sp, sp, -112           #; sp  = 0x0011fe90, (wrb) sp  <-- 0x0011fe20
      0x8000182c sw      ra, 108(sp)            #; sp  = 0x0011fe20, 0x80000ea8 ~~> Word[0x0011fe8c]
      0x80001830 sw      s0, 104(sp)            #; sp  = 0x0011fe20, 0 ~~> Word[0x0011fe88]
      0x80001834 sw      s1, 100(sp)            #; sp  = 0x0011fe20, 8 ~~> Word[0x0011fe84]
      0x80001838 sw      s2, 96(sp)             #; sp  = 0x0011fe20, 0x80001778 ~~> Word[0x0011fe80]
      0x8000183c sw      s3, 92(sp)             #; sp  = 0x0011fe20, 0x0011ff20 ~~> Word[0x0011fe7c]
      0x80001840 sw      s4, 88(sp)             #; sp  = 0x0011fe20, 0x0011ff07 ~~> Word[0x0011fe78]
      0x80001844 sw      s5, 84(sp)             #; sp  = 0x0011fe20, -1 ~~> Word[0x0011fe74]
      0x80001848 sw      s6, 80(sp)             #; sp  = 0x0011fe20, 0 ~~> Word[0x0011fe70]
      0x8000184c sw      s7, 76(sp)             #; sp  = 0x0011fe20, 0 ~~> Word[0x0011fe6c]
      0x80001850 sw      s8, 72(sp)             #; sp  = 0x0011fe20, 16 ~~> Word[0x0011fe68]
      0x80001854 sw      s9, 68(sp)             #; sp  = 0x0011fe20, 8 ~~> Word[0x0011fe64]
      0x80001858 sw      s10, 64(sp)            #; sp  = 0x0011fe20, 0x80002e5e ~~> Word[0x0011fe60]
      0x8000185c fsd     fs0, 56(sp)            #; 0.0000000 ~~> Doub[0x0011fe58]
      0x80001868 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003868
      0x80001860 fsd     fs1, 48(sp)            #; 77.7810000 ~~> Doub[0x0011fe50]
      0x8000186c addi    s1, s1, -1896          #; s1  = 0x80003868, (wrb) s1  <-- 0x80003100
      0x80001864 fsd     fs2, 40(sp)            #; 220.6152 ~~> Doub[0x0011fe48]
; _ftoa (printf.c:351)
      0x80001878 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
      0x80001870 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80003100]
; _ftoa (printf.c:0)
      0x8000187c mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                                                #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
      0x80001880 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
      0x80001874 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0000000
      0x80001884 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
      0x80001888 mv      s6, a1                 #; a1  = 0x0011ff07, (wrb) s6  <-- 0x0011ff07
      0x8000188c mv      s7, a0                 #; a0  = 0x80001778, (wrb) s7  <-- 0x80001778
; _ftoa (printf.c:351)
      0x80001890 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001980
; _ftoa (printf.c:0)
      0x80001984 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002984
      0x80001988 addi    a0, a0, 1924           #; a0  = 0x80002984, (wrb) a0  <-- 0x80003108
      0x80001980 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0000000, fa0  = 0.0000000
                                                #; (f:fpu) fs0  <-- 0.0000000
      0x8000198c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003108]
                                                #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
; _ftoa (printf.c:353)
      0x80001990 fle.d   a0, fa0, ft0           #; fa0  = 0.0000000, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
                                                #; (acc) t3  <-- 0x00051e63
      0x80001994 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x800019b0
; _ftoa (printf.c:0)
      0x800019b0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800029b0
      0x800019b4 addi    a0, a0, 1888           #; a0  = 0x800029b0, (wrb) a0  <-- 0x80003110
      0x800019bc auipc   a0, 0x1                #; (wrb) a0  <-- 0x800029bc
      0x800019b8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003110]
      0x800019c0 addi    a0, a0, 1884           #; a0  = 0x800029bc, (wrb) a0  <-- 0x80003118
                                                #; (f:lsu) ft0  <-- 1000000000.0000000
      0x800019c4 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003118]
; _ftoa (printf.c:358)
      0x800019c8 fle.d   a0, fs0, ft0           #; fs0  = 0.0000000, ft0  = 1000000000.0000000
                                                #; (f:lsu) ft1  <-- -1000000000.0000000
      0x800019cc fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0000000
                                                #; (acc) a0  <-- 0x00b57533
      0x800019d0 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
      0x800019d4 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001ad0
; _ftoa (printf.c:374)
      0x80001ad0 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
      0x80001ad4 li      s8, 6                  #; (wrb) s8  <-- 6
      0x80001ad8 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001ae0
; _ftoa (printf.c:0)
      0x80001ae0 li      a0, 10                 #; (wrb) a0  <-- 10
; _ftoa (printf.c:378)
      0x80001ae8 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001b20
; _ftoa (printf.c:0)
      0x80001ae4 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0000000, fs0  = 0.0000000
                                                #; (f:fpu) fs2  <-- 0.0000000
      0x80001b20 li      s0, 0                  #; (wrb) s0  <-- 0
; _ftoa (printf.c:384)
      0x80001b24 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
      0x80001b28 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002b28
      0x80001b2c addi    a1, a1, 1280           #; a1  = 0x80002b28, (wrb) a1  <-- 0x80003028
      0x80001b30 add     a0, a0, a1             #; a0  = 48, a1  = 0x80003028, (wrb) a0  <-- 0x80003058
      0x80001b34 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003058]
; _ftoa (printf.c:383)
      0x80001b38 fcvt.w.d s1, fs2               #; fs2  = 0.0000000
; _ftoa (printf.c:384)
      0x80001b3c fcvt.d.w ft0, s1               #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
                                                #; (f:lsu) ft1  <-- 1000000.0000000
; _ftoa (printf.c:0)
      0x80001b48 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002b48
      0x80001b40 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0000000, ft0  = 0.0
      0x80001b4c addi    a0, a0, 1496           #; a0  = 0x80002b48, (wrb) a0  <-- 0x80003120
                                                #; (f:fpu) ft0  <-- 0.0000000
; _ftoa (printf.c:384)
      0x80001b44 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0000000
                                                #; (f:fpu) ft2  <-- 0.0000037
; _ftoa (printf.c:0)
      0x80001b50 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003120]
; _ftoa (printf.c:385)
      0x80001b54 fcvt.wu.d a0, ft2              #; ft2  = 0.0000037
                                                #; (acc) gp  <-- 0xd21501d3
; _ftoa (printf.c:386)
      0x80001b58 fcvt.d.wu ft3, a0              #; ac1  = 0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80001b5c fsub.d  ft2, ft2, ft3          #; ft2  = 0.0000037, ft3  = 0.0
                                                #; (f:lsu) ft0  <-- 0.5
                                                #; (f:fpu) ft2  <-- 0.0000037
; _ftoa (printf.c:388)
      0x80001b60 fle.d   a1, ft2, ft0           #; ft2  = 0.0000037, ft0  = 0.5
      0x80001b64 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001b84
; _ftoa (printf.c:396)
      0x80001b84 flt.d   a1, ft2, ft0           #; ft2  = 0.0000037, ft0  = 0.5
                                                #; (acc) s4  <-- 0x00059a63
      0x80001b88 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001b9c
; _ftoa (printf.c:0)
      0x80001b9c fcvt.d.w fs1, zero             #; ac1  = 0
                                                #; (f:fpu) fs1  <-- 0.0
; _ftoa (printf.c:403)
      0x80001ba0 beqz    s8, pc + 216           #; s8  = 6, not taken
; _ftoa (printf.c:0)
      0x80001ba4 li      a2, 0                  #; (wrb) a2  <-- 0
      0x80001ba8 addi    a1, sp, 8              #; sp  = 0x0011fe20, (wrb) a1  <-- 0x0011fe28
; _ftoa (printf.c:414)
      0x80001bac add     t1, a1, s0             #; a1  = 0x0011fe28, s0  = 0, (wrb) t1  <-- 0x0011fe28
      0x80001bb0 li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001bb4 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
      0x80001bb8 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
      0x80001bbc addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
      0x80001bc0 li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001bc4 li      a7, 9                  #; (wrb) a7  <-- 9
      0x80001bc8 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
; _ftoa (printf.c:0)
      0x80001bcc mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
; _ftoa (printf.c:417)
      0x80001bd0 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80001bd4 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001bd8 mul     a3, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a3  <-- 0x40d586b3
      0x80001bdc sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
; _ftoa (printf.c:416)
      0x80001be0 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
      0x80001be4 add     a5, t1, a2             #; t1  = 0x0011fe28, a2  = 0, (wrb) a5  <-- 0x0011fe28
      0x80001be8 sb      a3, 0(a5)              #; a5  = 0x0011fe28, 48 ~~> Byte[0x0011fe28]
; _ftoa (printf.c:417)
      0x80001bec addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
      0x80001bf0 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
; _ftoa (printf.c:422)
      0x80001bf4 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
      0x80001bf8 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
      0x80001bfc li      a3, 30                 #; (wrb) a3  <-- 30
      0x80001c00 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
      0x80001c04 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
      0x80001c08 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
      0x80001c0c or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
      0x80001c10 bnez    a3, pc + 136           #; a3  = 0, not taken
; _ftoa (printf.c:0)
      0x80001c14 addi    a0, sp, 8              #; sp  = 0x0011fe20, (wrb) a0  <-- 0x0011fe28
; _ftoa (printf.c:422)
      0x80001c18 add     a0, a0, s0             #; a0  = 0x0011fe28, s0  = 0, (wrb) a0  <-- 0x0011fe28
      0x80001c1c not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
      0x80001c20 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
      0x80001c24 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
      0x80001c28 li      a1, 31                 #; (wrb) a1  <-- 31
      0x80001c2c sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
      0x80001c30 add     a0, a0, a2             #; a0  = 0x0011fe28, a2  = 1, (wrb) a0  <-- 0x0011fe29
      0x80001c34 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
      0x80001c38 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001c40
      0x80001c40 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
; _ftoa (printf.c:423)
      0x80001c44 li      a1, 48                 #; (wrb) a1  <-- 48
      0x80001c48 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000c48
      0x80001c4c jalr    ra, ra, -1776          #; ra  = 0x80000c48, (wrb) ra  <-- 0x80001c50, goto 0x80000558
; memset (memset.S:30)
      0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
; memset (memset.S:31)
      0x8000055c mv      a4, a0                 #; a0  = 0x0011fe29, (wrb) a4  <-- 0x0011fe29
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
      0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fe29, 48 ~~> Byte[0x0011fe2d]
; memset (memset.S:80)
      0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fe29, 48 ~~> Byte[0x0011fe2c]
; memset (memset.S:81)
      0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fe29, 48 ~~> Byte[0x0011fe2b]
; memset (memset.S:82)
      0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fe29, 48 ~~> Byte[0x0011fe2a]
; memset (memset.S:83)
      0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fe29, 48 ~~> Byte[0x0011fe29]
; memset (memset.S:85)
      0x800005ec ret                            #; ra  = 0x80001c50, goto 0x80001c50
; _ftoa (printf.c:0)
      0x80001c50 li      a0, 0                  #; (wrb) a0  <-- 0
; _ftoa (printf.c:422)
      0x80001c54 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
      0x80001c58 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
      0x80001c5c xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
      0x80001c60 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
      0x80001c64 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001c68 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x80001c6c bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001c54
      0x80001c54 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
      0x80001c58 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
      0x80001c5c xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
      0x80001c60 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
      0x80001c64 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001c68 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
      0x80001c6c bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001c54
      0x80001c54 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
      0x80001c58 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
      0x80001c5c xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
      0x80001c60 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
      0x80001c64 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001c68 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
      0x80001c6c bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001c54
      0x80001c54 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
      0x80001c58 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
      0x80001c5c xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
      0x80001c60 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
      0x80001c64 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001c68 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
      0x80001c6c bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001c54
      0x80001c54 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
      0x80001c58 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
      0x80001c5c xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
      0x80001c60 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
      0x80001c64 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
      0x80001c68 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
      0x80001c6c bnez    a2, pc - 24            #; a2  = 0, not taken
; _ftoa (printf.c:425)
      0x80001c70 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
      0x80001c74 j       pc + 0x28              #; goto 0x80001c9c
      0x80001c9c beqz    a1, pc + 28            #; a1  = 1, not taken
; _ftoa (printf.c:427)
      0x80001ca0 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
; _ftoa (printf.c:0)
      0x80001ca4 addi    a1, sp, 8              #; sp  = 0x0011fe20, (wrb) a1  <-- 0x0011fe28
; _ftoa (printf.c:427)
      0x80001ca8 add     a0, a1, a0             #; a1  = 0x0011fe28, a0  = 6, (wrb) a0  <-- 0x0011fe2e
      0x80001cac li      a1, 46                 #; (wrb) a1  <-- 46
      0x80001cb0 sb      a1, 0(a0)              #; a0  = 0x0011fe2e, 46 ~~> Byte[0x0011fe2e]
      0x80001cb4 j       pc + 0x8               #; goto 0x80001cbc
; _ftoa (printf.c:0)
      0x80001cbc li      a0, 32                 #; (wrb) a0  <-- 32
; _ftoa (printf.c:432)
      0x80001cc0 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
      0x80001cc4 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
; _ftoa (printf.c:0)
      0x80001cc8 li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001ccc flt.d   s9, fs0, fs1           #; fs0  = 0.0000000, fs1  = 0.0
      0x80001cd0 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
      0x80001cd4 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
      0x80001cd8 li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001cdc addi    a3, sp, 8              #; sp  = 0x0011fe20, (wrb) a3  <-- 0x0011fe28
      0x80001ce0 li      a4, 18                 #; (wrb) a4  <-- 18
; _ftoa (printf.c:432)
      0x80001ce4 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
; _ftoa (printf.c:434)
      0x80001ce8 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
                                                #; (acc) a5  <-- 0x01f55793
      0x80001cec srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
      0x80001cf0 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
      0x80001cf4 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001cf8 mul     a5, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f487b3
      0x80001cfc sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
; _ftoa (printf.c:433)
      0x80001d00 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
      0x80001d04 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
      0x80001d08 add     s0, a3, s0             #; a3  = 0x0011fe28, s0  = 7, (wrb) s0  <-- 0x0011fe2f
; _ftoa (printf.c:434)
      0x80001d0c addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
; _ftoa (printf.c:433)
      0x80001d10 sb      a5, 0(s0)              #; s0  = 0x0011fe2f, 48 ~~> Byte[0x0011fe2f]
; _ftoa (printf.c:0)
      0x80001d14 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
      0x80001d18 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:434)
      0x80001d1c bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
      0x80001d20 j       pc + 0x8               #; goto 0x80001d28
; _ftoa (printf.c:440)
      0x80001d28 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:0)
      0x80001d2c li      a0, 1                  #; (wrb) a0  <-- 1
; _ftoa (printf.c:440)
      0x80001d30 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001d9c
; _ftoa (printf.c:0)
      0x80001d9c li      a0, 31                 #; (wrb) a0  <-- 31
; _ftoa (printf.c:449)
      0x80001da0 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
; _ftoa (printf.c:450)
      0x80001da4 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001dbc
; _ftoa (printf.c:453)
      0x80001dbc andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
      0x80001dc0 bnez    a0, pc + 32            #; a0  = 0, not taken
; _ftoa (printf.c:456)
      0x80001dc4 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
      0x80001dc8 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001df4
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001df4 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
      0x80001df8 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
      0x80001dfc xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x80001e00 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
; _ftoa (printf.c:0)
      0x80001e04 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
      0x80001e08 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001e0c bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001e38
; _ftoa (printf.c:0)
      0x80001e38 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001e3c beqz    s8, pc + 56            #; s8  = 8, not taken
      0x80001e40 addi    s9, sp, 7              #; sp  = 0x0011fe20, (wrb) s9  <-- 0x0011fe27
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001e44 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 8, (wrb) a0  <-- 0x0011fe2f
      0x80001e48 lbu     a0, 0(a0)              #; a0  = 0x0011fe2f, a0  <~~ Byte[0x0011fe2f]
      0x80001e4c addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
                                                #; (lsu) a0  <-- 48
      0x80001e50 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
      0x80001e54 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80001e58 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
      0x80001e5c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001e60 jalr    s7                     #; s7  = 0x80001778, (wrb) ra  <-- 0x80001e64, goto 0x80001778
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001778 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000177c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001780 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001784 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001788 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003788
      0x8000178c addi    a3, a3, -1500          #; a3  = 0x80003788, (wrb) a3  <-- 0x800031ac
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001790 add     a1, a2, a3             #; a2  = 0, a3  = 0x800031ac, (wrb) a1  <-- 0x800031ac
      0x80001794 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
                                                #; (lsu) a4  <-- 8
      0x80001798 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
      0x8000179c sw      a5, 0(a1)              #; a1  = 0x800031ac, 9 ~~> Word[0x800031ac]
      0x800017a0 add     a4, a1, a4             #; a1  = 0x800031ac, a4  = 8, (wrb) a4  <-- 0x800031b4
      0x800017a4 sb      a0, 72(a4)             #; a4  = 0x800031b4, 48 ~~> Byte[0x800031fc]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017a8 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
                                                #; (lsu) a4  <-- 9
      0x800017ac addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
      0x800017b0 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
      0x800017b4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800017b8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800017bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001820
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001820 ret                            #; ra  = 0x80001e64, goto 0x80001e64
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001e64 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
      0x80001e68 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001e6c bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001e44
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001e44 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 7, (wrb) a0  <-- 0x0011fe2e
      0x80001e48 lbu     a0, 0(a0)              #; a0  = 0x0011fe2e, a0  <~~ Byte[0x0011fe2e]
      0x80001e4c addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
      0x80001e50 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
      0x80001e54 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80001e58 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
      0x80001e5c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001e60 jalr    s7                     #; s7  = 0x80001778, (wrb) ra  <-- 0x80001e64, goto 0x80001778
                                                #; (lsu) a0  <-- 46
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001778 beqz    a0, pc + 168           #; a0  = 46, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000177c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001780 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001784 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001788 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003788
      0x8000178c addi    a3, a3, -1500          #; a3  = 0x80003788, (wrb) a3  <-- 0x800031ac
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001790 add     a1, a2, a3             #; a2  = 0, a3  = 0x800031ac, (wrb) a1  <-- 0x800031ac
      0x80001794 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
                                                #; (lsu) a4  <-- 9
      0x80001798 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
      0x8000179c sw      a5, 0(a1)              #; a1  = 0x800031ac, 10 ~~> Word[0x800031ac]
      0x800017a0 add     a4, a1, a4             #; a1  = 0x800031ac, a4  = 9, (wrb) a4  <-- 0x800031b5
      0x800017a4 sb      a0, 72(a4)             #; a4  = 0x800031b5, 46 ~~> Byte[0x800031fd]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017a8 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
                                                #; (lsu) a4  <-- 10
      0x800017ac addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
      0x800017b0 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
      0x800017b4 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
      0x800017b8 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
      0x800017bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001820
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001820 ret                            #; ra  = 0x80001e64, goto 0x80001e64
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001e64 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
      0x80001e68 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001e6c bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001e44
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001e44 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 6, (wrb) a0  <-- 0x0011fe2d
      0x80001e48 lbu     a0, 0(a0)              #; a0  = 0x0011fe2d, a0  <~~ Byte[0x0011fe2d]
      0x80001e4c addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
      0x80001e50 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
      0x80001e54 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80001e58 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
      0x80001e5c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001e60 jalr    s7                     #; s7  = 0x80001778, (wrb) ra  <-- 0x80001e64, goto 0x80001778
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001778 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000177c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001780 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001784 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001788 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003788
      0x8000178c addi    a3, a3, -1500          #; a3  = 0x80003788, (wrb) a3  <-- 0x800031ac
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001790 add     a1, a2, a3             #; a2  = 0, a3  = 0x800031ac, (wrb) a1  <-- 0x800031ac
      0x80001794 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
                                                #; (lsu) a4  <-- 10
      0x80001798 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
      0x8000179c sw      a5, 0(a1)              #; a1  = 0x800031ac, 11 ~~> Word[0x800031ac]
      0x800017a0 add     a4, a1, a4             #; a1  = 0x800031ac, a4  = 10, (wrb) a4  <-- 0x800031b6
      0x800017a4 sb      a0, 72(a4)             #; a4  = 0x800031b6, 48 ~~> Byte[0x800031fe]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017a8 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
                                                #; (lsu) a4  <-- 11
      0x800017ac addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
      0x800017b0 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
      0x800017b4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800017b8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800017bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001820
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001820 ret                            #; ra  = 0x80001e64, goto 0x80001e64
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001e64 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
      0x80001e68 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001e6c bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001e44
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001e44 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 5, (wrb) a0  <-- 0x0011fe2c
      0x80001e48 lbu     a0, 0(a0)              #; a0  = 0x0011fe2c, a0  <~~ Byte[0x0011fe2c]
      0x80001e4c addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
      0x80001e50 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
      0x80001e54 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80001e58 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
      0x80001e5c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001e60 jalr    s7                     #; s7  = 0x80001778, (wrb) ra  <-- 0x80001e64, goto 0x80001778
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001778 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000177c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001780 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001784 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001788 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003788
      0x8000178c addi    a3, a3, -1500          #; a3  = 0x80003788, (wrb) a3  <-- 0x800031ac
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001790 add     a1, a2, a3             #; a2  = 0, a3  = 0x800031ac, (wrb) a1  <-- 0x800031ac
      0x80001794 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
                                                #; (lsu) a4  <-- 11
      0x80001798 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
      0x8000179c sw      a5, 0(a1)              #; a1  = 0x800031ac, 12 ~~> Word[0x800031ac]
      0x800017a0 add     a4, a1, a4             #; a1  = 0x800031ac, a4  = 11, (wrb) a4  <-- 0x800031b7
      0x800017a4 sb      a0, 72(a4)             #; a4  = 0x800031b7, 48 ~~> Byte[0x800031ff]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017a8 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
                                                #; (lsu) a4  <-- 12
      0x800017ac addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
      0x800017b0 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
      0x800017b4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800017b8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800017bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001820
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001820 ret                            #; ra  = 0x80001e64, goto 0x80001e64
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001e64 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
      0x80001e68 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001e6c bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001e44
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001e44 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 4, (wrb) a0  <-- 0x0011fe2b
      0x80001e48 lbu     a0, 0(a0)              #; a0  = 0x0011fe2b, a0  <~~ Byte[0x0011fe2b]
      0x80001e4c addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
      0x80001e50 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
      0x80001e54 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80001e58 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
      0x80001e5c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001e60 jalr    s7                     #; s7  = 0x80001778, (wrb) ra  <-- 0x80001e64, goto 0x80001778
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001778 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000177c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001780 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001784 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001788 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003788
      0x8000178c addi    a3, a3, -1500          #; a3  = 0x80003788, (wrb) a3  <-- 0x800031ac
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001790 add     a1, a2, a3             #; a2  = 0, a3  = 0x800031ac, (wrb) a1  <-- 0x800031ac
      0x80001794 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
                                                #; (lsu) a4  <-- 12
      0x80001798 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
      0x8000179c sw      a5, 0(a1)              #; a1  = 0x800031ac, 13 ~~> Word[0x800031ac]
      0x800017a0 add     a4, a1, a4             #; a1  = 0x800031ac, a4  = 12, (wrb) a4  <-- 0x800031b8
      0x800017a4 sb      a0, 72(a4)             #; a4  = 0x800031b8, 48 ~~> Byte[0x80003200]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017a8 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
                                                #; (lsu) a4  <-- 13
      0x800017ac addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
      0x800017b0 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
      0x800017b4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800017b8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800017bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001820
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001820 ret                            #; ra  = 0x80001e64, goto 0x80001e64
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001e64 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
      0x80001e68 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001e6c bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001e44
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001e44 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 3, (wrb) a0  <-- 0x0011fe2a
      0x80001e48 lbu     a0, 0(a0)              #; a0  = 0x0011fe2a, a0  <~~ Byte[0x0011fe2a]
      0x80001e4c addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
      0x80001e50 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
      0x80001e54 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80001e58 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
      0x80001e5c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001e60 jalr    s7                     #; s7  = 0x80001778, (wrb) ra  <-- 0x80001e64, goto 0x80001778
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001778 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000177c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001780 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001784 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001788 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003788
      0x8000178c addi    a3, a3, -1500          #; a3  = 0x80003788, (wrb) a3  <-- 0x800031ac
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001790 add     a1, a2, a3             #; a2  = 0, a3  = 0x800031ac, (wrb) a1  <-- 0x800031ac
      0x80001794 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
                                                #; (lsu) a4  <-- 13
      0x80001798 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
      0x8000179c sw      a5, 0(a1)              #; a1  = 0x800031ac, 14 ~~> Word[0x800031ac]
      0x800017a0 add     a4, a1, a4             #; a1  = 0x800031ac, a4  = 13, (wrb) a4  <-- 0x800031b9
      0x800017a4 sb      a0, 72(a4)             #; a4  = 0x800031b9, 48 ~~> Byte[0x80003201]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017a8 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
                                                #; (lsu) a4  <-- 14
      0x800017ac addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
      0x800017b0 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
      0x800017b4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800017b8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800017bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001820
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001820 ret                            #; ra  = 0x80001e64, goto 0x80001e64
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001e64 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
      0x80001e68 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001e6c bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001e44
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001e44 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 2, (wrb) a0  <-- 0x0011fe29
      0x80001e48 lbu     a0, 0(a0)              #; a0  = 0x0011fe29, a0  <~~ Byte[0x0011fe29]
      0x80001e4c addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
      0x80001e50 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
      0x80001e54 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80001e58 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
      0x80001e5c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001e60 jalr    s7                     #; s7  = 0x80001778, (wrb) ra  <-- 0x80001e64, goto 0x80001778
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001778 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000177c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001780 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001784 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001788 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003788
      0x8000178c addi    a3, a3, -1500          #; a3  = 0x80003788, (wrb) a3  <-- 0x800031ac
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001790 add     a1, a2, a3             #; a2  = 0, a3  = 0x800031ac, (wrb) a1  <-- 0x800031ac
      0x80001794 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
                                                #; (lsu) a4  <-- 14
      0x80001798 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
      0x8000179c sw      a5, 0(a1)              #; a1  = 0x800031ac, 15 ~~> Word[0x800031ac]
      0x800017a0 add     a4, a1, a4             #; a1  = 0x800031ac, a4  = 14, (wrb) a4  <-- 0x800031ba
      0x800017a4 sb      a0, 72(a4)             #; a4  = 0x800031ba, 48 ~~> Byte[0x80003202]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017a8 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
                                                #; (lsu) a4  <-- 15
      0x800017ac addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
      0x800017b0 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
      0x800017b4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800017b8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800017bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001820
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001820 ret                            #; ra  = 0x80001e64, goto 0x80001e64
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001e64 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
      0x80001e68 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001e6c bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001e44
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001e44 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 1, (wrb) a0  <-- 0x0011fe28
      0x80001e48 lbu     a0, 0(a0)              #; a0  = 0x0011fe28, a0  <~~ Byte[0x0011fe28]
      0x80001e4c addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
      0x80001e50 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
      0x80001e54 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80001e58 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
      0x80001e5c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001e60 jalr    s7                     #; s7  = 0x80001778, (wrb) ra  <-- 0x80001e64, goto 0x80001778
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001778 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000177c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001780 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001784 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001788 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003788
      0x8000178c addi    a3, a3, -1500          #; a3  = 0x80003788, (wrb) a3  <-- 0x800031ac
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001790 add     a1, a2, a3             #; a2  = 0, a3  = 0x800031ac, (wrb) a1  <-- 0x800031ac
      0x80001794 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
                                                #; (lsu) a4  <-- 15
      0x80001798 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
      0x8000179c sw      a5, 0(a1)              #; a1  = 0x800031ac, 16 ~~> Word[0x800031ac]
      0x800017a0 add     a4, a1, a4             #; a1  = 0x800031ac, a4  = 15, (wrb) a4  <-- 0x800031bb
      0x800017a4 sb      a0, 72(a4)             #; a4  = 0x800031bb, 48 ~~> Byte[0x80003203]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017a8 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
                                                #; (lsu) a4  <-- 16
      0x800017ac addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
      0x800017b0 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
      0x800017b4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800017b8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800017bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001820
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001820 ret                            #; ra  = 0x80001e64, goto 0x80001e64
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001e64 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
      0x80001e68 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001e6c bnez    s10, pc - 40           #; s10 = 0, not taken
      0x80001e70 j       pc + 0x8               #; goto 0x80001e78
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001e78 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
      0x80001e7c sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
      0x80001e80 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
; _out_rev (printf.c:216)
;  in _ftoa (printf.c:461)
      0x80001e84 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
      0x80001e88 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x80001e8c bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001ebc
; _ftoa (printf.c:0)
      0x80001ebc mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
; _ftoa (printf.c:462)
      0x80001ec0 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
      0x80001ec4 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe48]
      0x80001ec8 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe50], (f:lsu) fs2  <-- 220.6152
      0x80001ecc fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe58], (f:lsu) fs1  <-- 77.7810000
                                                #; (f:lsu) fs0  <-- 0.0000000
      0x80001ed0 lw      s10, 64(sp)            #; sp  = 0x0011fe20, s10 <~~ Word[0x0011fe60]
                                                #; (lsu) s10 <-- 0x80002e5e
      0x80001ed4 lw      s9, 68(sp)             #; sp  = 0x0011fe20, s9  <~~ Word[0x0011fe64]
                                                #; (lsu) s9  <-- 8
      0x80001ed8 lw      s8, 72(sp)             #; sp  = 0x0011fe20, s8  <~~ Word[0x0011fe68]
                                                #; (lsu) s8  <-- 16
      0x80001edc lw      s7, 76(sp)             #; sp  = 0x0011fe20, s7  <~~ Word[0x0011fe6c]
                                                #; (lsu) s7  <-- 0
      0x80001ee0 lw      s6, 80(sp)             #; sp  = 0x0011fe20, s6  <~~ Word[0x0011fe70]
                                                #; (lsu) s6  <-- 0
      0x80001ee4 lw      s5, 84(sp)             #; sp  = 0x0011fe20, s5  <~~ Word[0x0011fe74]
                                                #; (lsu) s5  <-- -1
      0x80001ee8 lw      s4, 88(sp)             #; sp  = 0x0011fe20, s4  <~~ Word[0x0011fe78]
                                                #; (lsu) s4  <-- 0x0011ff07
      0x80001eec lw      s3, 92(sp)             #; sp  = 0x0011fe20, s3  <~~ Word[0x0011fe7c]
                                                #; (lsu) s3  <-- 0x0011ff20
      0x80001ef0 lw      s2, 96(sp)             #; sp  = 0x0011fe20, s2  <~~ Word[0x0011fe80]
                                                #; (lsu) s2  <-- 0x80001778
      0x80001ef4 lw      s1, 100(sp)            #; sp  = 0x0011fe20, s1  <~~ Word[0x0011fe84]
                                                #; (lsu) s1  <-- 8
      0x80001ef8 lw      s0, 104(sp)            #; sp  = 0x0011fe20, s0  <~~ Word[0x0011fe88]
                                                #; (lsu) s0  <-- 0
      0x80001efc lw      ra, 108(sp)            #; sp  = 0x0011fe20, ra  <~~ Word[0x0011fe8c]
      0x80001f00 addi    sp, sp, 112            #; sp  = 0x0011fe20, (wrb) sp  <-- 0x0011fe90
                                                #; (lsu) ra  <-- 0x80000ea8
      0x80001f04 ret                            #; ra  = 0x80000ea8, goto 0x80000ea8
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000ea8 j       pc + 0x7c0             #; goto 0x80001668
      0x80001668 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
      0x8000166c li      s6, 37                 #; (wrb) s6  <-- 37
      0x80001670 li      s7, 46                 #; (wrb) s7  <-- 46
      0x80001674 addi    s0, s10, 1             #; s10 = 0x80002e5e, (wrb) s0  <-- 0x80002e5f
      0x80001678 j       pc - 0xa74             #; goto 0x80000c04
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c04 addi    s10, s0, 2             #; s0  = 0x80002e5f, (wrb) s10 <-- 0x80002e61
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c08 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
      0x80000c0c li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c10 lbu     a0, 0(s0)              #; s0  = 0x80002e5f, a0  <~~ Byte[0x80002e5f]
                                                #; (lsu) a0  <-- 10
      0x80000c14 beqz    a0, pc + 2824          #; a0  = 10, not taken
      0x80000c18 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000c1c addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
      0x80000c20 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80000c24 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
      0x80000c28 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000c2c jalr    s2                     #; s2  = 0x80001778, (wrb) ra  <-- 0x80000c30, goto 0x80001778
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001778 beqz    a0, pc + 168           #; a0  = 10, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000177c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001780 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001784 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001788 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003788
      0x8000178c addi    a3, a3, -1500          #; a3  = 0x80003788, (wrb) a3  <-- 0x800031ac
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001790 add     a1, a2, a3             #; a2  = 0, a3  = 0x800031ac, (wrb) a1  <-- 0x800031ac
      0x80001794 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
                                                #; (lsu) a4  <-- 16
      0x80001798 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
      0x8000179c sw      a5, 0(a1)              #; a1  = 0x800031ac, 17 ~~> Word[0x800031ac]
      0x800017a0 add     a4, a1, a4             #; a1  = 0x800031ac, a4  = 16, (wrb) a4  <-- 0x800031bc
      0x800017a4 sb      a0, 72(a4)             #; a4  = 0x800031bc, 10 ~~> Byte[0x80003204]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017a8 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
                                                #; (lsu) a4  <-- 17
      0x800017ac addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
      0x800017b0 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
      0x800017b4 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
      0x800017b8 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
      0x800017bc and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
      0x800017c0 bnez    a0, pc + 96            #; a0  = 0, not taken
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017c4 add     a0, a3, a2             #; a3  = 0x800031ac, a2  = 0, (wrb) a0  <-- 0x800031ac
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017c8 addi    a2, a0, 72             #; a0  = 0x800031ac, (wrb) a2  <-- 0x800031f4
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017cc sw      zero, 12(a0)           #; a0  = 0x800031ac, 0 ~~> Word[0x800031b8]
      0x800017d0 li      a3, 64                 #; (wrb) a3  <-- 64
      0x800017d4 sw      a3, 8(a0)              #; a0  = 0x800031ac, 64 ~~> Word[0x800031b4]
; snrt_putchar (putchar.c:26)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017d8 sw      zero, 20(a0)           #; a0  = 0x800031ac, 0 ~~> Word[0x800031c0]
      0x800017dc li      a3, 1                  #; (wrb) a3  <-- 1
      0x800017e0 sw      a3, 16(a0)             #; a0  = 0x800031ac, 1 ~~> Word[0x800031bc]
; snrt_putchar (putchar.c:27)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017e4 sw      zero, 28(a0)           #; a0  = 0x800031ac, 0 ~~> Word[0x800031c8]
      0x800017e8 sw      a2, 24(a0)             #; a0  = 0x800031ac, 0x800031f4 ~~> Word[0x800031c4]
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017ec lw      a2, 0(a1)              #; a1  = 0x800031ac, a2  <~~ Word[0x800031ac]
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017f0 addi    a3, a0, 8              #; a0  = 0x800031ac, (wrb) a3  <-- 0x800031b4
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017f4 sw      zero, 36(a0)           #; a0  = 0x800031ac, 0 ~~> Word[0x800031d0]
                                                #; (lsu) a2  <-- 17
      0x800017f8 sw      a2, 32(a0)             #; a0  = 0x800031ac, 17 ~~> Word[0x800031cc]
; snrt_putchar (putchar.c:30)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017fc auipc   a0, 0x2                #; (wrb) a0  <-- 0x800037fc
      0x80001800 addi    a0, a0, -1916          #; a0  = 0x800037fc, (wrb) a0  <-- 0x80003080
      0x80001804 sw      a3, 0(a0)              #; a0  = 0x80003080, 0x800031b4 ~~> Word[0x80003080]
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001808 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003808
      0x8000180c addi    a0, a0, -1864          #; a0  = 0x80003808, (wrb) a0  <-- 0x800030c0
; snrt_putchar (putchar.c:31)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001810 lw      a2, 0(a0)              #; a0  = 0x800030c0, a2  <~~ Word[0x800030c0]
                                                #; (lsu) a2  <-- 0
      0x80001814 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001810
      0x80001810 lw      a2, 0(a0)              #; a0  = 0x800030c0, a2  <~~ Word[0x800030c0]
                                                #; (lsu) a2  <-- 0
      0x80001814 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001810
      0x80001810 lw      a2, 0(a0)              #; a0  = 0x800030c0, a2  <~~ Word[0x800030c0]
                                                #; (lsu) a2  <-- 1
      0x80001814 beqz    a2, pc - 4             #; a2  = 1, not taken
; snrt_putchar (putchar.c:33)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001818 sw      zero, 0(a0)            #; a0  = 0x800030c0, 0 ~~> Word[0x800030c0]
; snrt_putchar (putchar.c:35)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000181c sw      zero, 0(a1)            #; a1  = 0x800031ac, 0 ~~> Word[0x800031ac]
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001820 ret                            #; ra  = 0x80000c30, goto 0x80000c30
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000c30 addi    s0, s0, 1              #; s0  = 0x80002e5f, (wrb) s0  <-- 0x80002e60
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000c34 addi    s10, s10, 1            #; s10 = 0x80002e61, (wrb) s10 <-- 0x80002e62
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c38 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c3c lbu     a0, 0(s0)              #; s0  = 0x80002e60, a0  <~~ Byte[0x80002e60]
                                                #; (lsu) a0  <-- 0
      0x80000c40 bnez    a0, pc - 40            #; a0  = 0, not taken
      0x80000c44 j       pc + 0xad8             #; goto 0x8000171c
; _vsnprintf.llvm.1805434900161566649 (printf.c:853)
      0x8000171c mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
      0x80001720 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x80001728
      0x80001728 li      a0, 0                  #; (wrb) a0  <-- 0
      0x8000172c mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
      0x80001730 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80001734 jalr    s2                     #; s2  = 0x80001778, (wrb) ra  <-- 0x80001738, goto 0x80001778
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001778 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001820
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001820 ret                            #; ra  = 0x80001738, goto 0x80001738
; _vsnprintf.llvm.1805434900161566649 (printf.c:856)
      0x80001738 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
      0x8000173c lw      s11, 60(sp)            #; sp  = 0x0011fe90, s11 <~~ Word[0x0011fecc]
                                                #; (lsu) s11 <-- 0
      0x80001740 lw      s10, 64(sp)            #; sp  = 0x0011fe90, s10 <~~ Word[0x0011fed0]
                                                #; (lsu) s10 <-- 0
      0x80001744 lw      s9, 68(sp)             #; sp  = 0x0011fe90, s9  <~~ Word[0x0011fed4]
                                                #; (lsu) s9  <-- 0
      0x80001748 lw      s8, 72(sp)             #; sp  = 0x0011fe90, s8  <~~ Word[0x0011fed8]
                                                #; (lsu) s8  <-- 0
      0x8000174c lw      s7, 76(sp)             #; sp  = 0x0011fe90, s7  <~~ Word[0x0011fedc]
                                                #; (lsu) s7  <-- 0
      0x80001750 lw      s6, 80(sp)             #; sp  = 0x0011fe90, s6  <~~ Word[0x0011fee0]
                                                #; (lsu) s6  <-- 0
      0x80001754 lw      s5, 84(sp)             #; sp  = 0x0011fe90, s5  <~~ Word[0x0011fee4]
                                                #; (lsu) s5  <-- 0
      0x80001758 lw      s4, 88(sp)             #; sp  = 0x0011fe90, s4  <~~ Word[0x0011fee8]
                                                #; (lsu) s4  <-- 0
      0x8000175c lw      s3, 92(sp)             #; sp  = 0x0011fe90, s3  <~~ Word[0x0011feec]
                                                #; (lsu) s3  <-- 0
      0x80001760 lw      s2, 96(sp)             #; sp  = 0x0011fe90, s2  <~~ Word[0x0011fef0]
                                                #; (lsu) s2  <-- 0
      0x80001764 lw      s1, 100(sp)            #; sp  = 0x0011fe90, s1  <~~ Word[0x0011fef4]
                                                #; (lsu) s1  <-- 0x00100000
      0x80001768 lw      s0, 104(sp)            #; sp  = 0x0011fe90, s0  <~~ Word[0x0011fef8]
                                                #; (lsu) s0  <-- 25
      0x8000176c lw      ra, 108(sp)            #; sp  = 0x0011fe90, ra  <~~ Word[0x0011fefc]
      0x80001770 addi    sp, sp, 112            #; sp  = 0x0011fe90, (wrb) sp  <-- 0x0011ff00
                                                #; (lsu) ra  <-- 0x80000b74
      0x80001774 ret                            #; ra  = 0x80000b74, goto 0x80000b74
; printf_ (printf.c:869)
      0x80000b74 lw      ra, 12(sp)             #; sp  = 0x0011ff00, ra  <~~ Word[0x0011ff0c]
      0x80000b78 addi    sp, sp, 48             #; sp  = 0x0011ff00, (wrb) sp  <-- 0x0011ff30
                                                #; (lsu) ra  <-- 0x800007a4
      0x80000b7c ret                            #; ra  = 0x800007a4, goto 0x800007a4
; various (various.c:0)
      0x800007a4 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800037a4
      0x800007a8 addi    a0, a0, -1716          #; a0  = 0x800037a4, (wrb) a0  <-- 0x800030f0
      0x800007ac fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800030f0]
                                                #; (f:lsu) ft0  <-- 0.0001
; various (various.c:58)
      0x800007b0 flt.d   a0, ft0, fs0           #; ft0  = 0.0001, fs0  = 0.0000000
                                                #; (acc) s0  <-- 0x01813407
      0x800007b4 fld     fs2, 8(sp)             #; fs2  <~~ Doub[0x0011ff38]
      0x800007c0 lw      s1, 36(sp)             #; sp  = 0x0011ff30, s1  <~~ Word[0x0011ff54]
      0x800007b8 fld     fs1, 16(sp)            #; fs1  <~~ Doub[0x0011ff40], (f:lsu) fs2  <-- 0.0
      0x800007bc fld     fs0, 24(sp)            #; fs0  <~~ Doub[0x0011ff48], (f:lsu) fs1  <-- 0.0
                                                #; (f:lsu) fs0  <-- 0.0
                                                #; (lsu) s1  <-- 0
      0x800007c4 lw      s0, 40(sp)             #; sp  = 0x0011ff30, s0  <~~ Word[0x0011ff58]
                                                #; (lsu) s0  <-- 0
      0x800007c8 lw      ra, 44(sp)             #; sp  = 0x0011ff30, ra  <~~ Word[0x0011ff5c]
      0x800007cc addi    sp, sp, 48             #; sp  = 0x0011ff30, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002bd0
      0x800007d0 ret                            #; ra  = 0x80002bd0, goto 0x80002bd0
; ?? (start.S:184)
      0x80002bd0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:191)
      0x80002bd4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002bd4
      0x80002bd8 jalr    ra, ra, 524            #; ra  = 0x80002bd4, (wrb) ra  <-- 0x80002bdc, goto 0x80002de0
; ?? (start_snitch.S:33)
      0x80002de0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002de4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002bdc ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002de8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002de8
      0x80002dec jalr    ra, ra, -1256          #; ra  = 0x80002de8, (wrb) ra  <-- 0x80002df0, goto 0x80002900
; _snrt_barrier_reg_ptr (team.c:80)
      0x80002900 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002904 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002908 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x8000290c lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002910 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x80002914 ret                            #; ra  = 0x80002df0, goto 0x80002df0
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002df0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002df4 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002df8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002dfc addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002bdc
; ?? (start_snitch.S:40)
      0x80002e00 ret                            #; ra  = 0x80002bdc, goto 0x80002bdc
; ?? (start.S:195)
      0x80002bdc mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:196)
      0x80002be0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002be0
      0x80002be4 jalr    ra, ra, 556            #; ra  = 0x80002be0, (wrb) ra  <-- 0x80002be8, goto 0x80002e0c
; ?? (start_snitch.S:15)
      0x80002e0c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
; ?? (start_snitch.S:16)
      0x80002e10 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
; ?? (start_snitch.S:17)
      0x80002e14 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002be8 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:18)
      0x80002e18 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002e18
      0x80002e1c jalr    ra, ra, -1336          #; ra  = 0x80002e18, (wrb) ra  <-- 0x80002e20, goto 0x800028e0
; snrt_global_core_idx (team.c:32)
      0x800028e0 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800028e4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800028e8 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800028ec lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800028f0 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
; snrt_hartid (snrt.h:181)
;  in snrt_global_core_idx (team.c:32)
      0x800028f4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 0
; snrt_global_core_idx (team.c:32)
      0x800028f8 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
      0x800028fc ret                            #; ra  = 0x80002e20, goto 0x80002e20
; ?? (start_snitch.S:20)
      0x80002e20 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:21)
      0x80002e24 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:22)
      0x80002e28 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
; ?? (start_snitch.S:27)
      0x80002e2c bnez    a0, pc + 24            #; a0  = 0, not taken
                                                #; (lsu) ra  <-- 0x80002be8
; ?? (start_snitch.S:28)
      0x80002e30 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
; ?? (start_snitch.S:29)
      0x80002e34 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
; ?? (start_snitch.S:30)
      0x80002e38 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002e38
      0x80002e3c addi    t1, t1, 584            #; t1  = 0x80002e38, (wrb) t1  <-- 0x80003080
; ?? (start_snitch.S:31)
      0x80002e40 sw      t0, 0(t1)              #; t1  = 0x80003080, 1 ~~> Word[0x80003080]
; ?? (start_snitch.S:32)
      0x80002e44 ret                            #; ra  = 0x80002be8, goto 0x80002be8
; ?? (start.S:198)
      0x80002be8 wfi                            #; 
                        tion 0 @ (12, 6564):
                          138
                          144
                            7
                           31
                      11.6014
                       0.2875
                       0.1221
                          1.0
                          1.0
                            0
                       1.9630
                       3.8387
                       0.0400
                       0.0330
                       0.8244
                         6553
                       0.3275
