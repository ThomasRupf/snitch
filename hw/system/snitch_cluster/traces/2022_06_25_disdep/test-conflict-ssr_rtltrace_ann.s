; ?? (??:0)
      0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
      0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
      0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
      0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
      0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
                                                #; (lsu) t0  <-- 0x800029d0
      0x00001014 jalr    t0                     #; t0  = 0x800029d0, (wrb) ra  <-- 4120, goto 0x800029d0
; ?? (start.S:20)
      0x800029d0 auipc   gp, 0x1                #; (wrb) gp  <-- 0x800039d0
; ?? (start.S:21)
      0x800029d4 addi    gp, gp, -264           #; gp  = 0x800039d0, (wrb) gp  <-- 0x800038c8
; ?? (start.S:28)
      0x800029d8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029d8
      0x800029dc jalr    ra, ra, 964            #; ra  = 0x800029d8, (wrb) ra  <-- 0x800029e0, goto 0x80002d9c
; ?? (start_snitch.S:16)
      0x80002d9c mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
; ?? (start_snitch.S:17)
      0x80002da0 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
                                                #; (lsu) a1  <-- 8
; ?? (start_snitch.S:18)
      0x80002da4 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:19)
      0x80002da8 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start_snitch.S:20)
      0x80002dac lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
                                                #; (lsu) t1  <-- 0x00020000
; ?? (start_snitch.S:21)
      0x80002db0 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
; ?? (start_snitch.S:22)
      0x80002db4 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
; ?? (start_snitch.S:23)
      0x80002db8 div     t3, a0, a1             #; a0  = 0, a1  = 8
                                                #; (acc) t4  <-- 0x027e0eb3
                                                #; (lsu) t2  <-- 0
; ?? (start_snitch.S:24)
      0x80002dbc mul     t4, t3, t2             #; t3  = 0, t2  = 0
                                                #; (acc) a2  <-- 0x01d60633
; ?? (start_snitch.S:25)
      0x80002dc0 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
; ?? (start_snitch.S:26)
      0x80002dc4 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
; ?? (start_snitch.S:27)
      0x80002dc8 remu    a0, a0, a1             #; a0  = 0, a1  = 8
; ?? (start_snitch.S:28)
      0x80002dcc ret                            #; ra  = 0x800029e0, goto 0x800029e0
                                                #; (acc) s0  <-- 0x00050413
; ?? (start.S:39)
      0x800029e0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:40)
      0x800029e4 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
; ?? (start.S:41)
      0x800029e8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029e8
      0x800029ec jalr    ra, ra, 1036           #; ra  = 0x800029e8, (wrb) ra  <-- 0x800029f0, goto 0x80002df4
; ?? (start_snitch.S:48)
      0x80002df4 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
; ?? (start_snitch.S:49)
      0x80002df8 ret                            #; ra  = 0x800029f0, goto 0x800029f0
                                                #; (lsu) a0  <-- 0
; ?? (start.S:42)
      0x800029f0 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:43)
      0x800029f4 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:45)
      0x800029f8 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
; ?? (start.S:46)
      0x800029fc sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
; ?? (start.S:47)
      0x80002a00 bnez    t0, pc + 36            #; t0  = 0, not taken
; ?? (start.S:48)
      0x80002a04 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002a04
      0x80002a08 addi    t0, t0, 1940           #; t0  = 0x80002a04, (wrb) t0  <-- 0x80003198
; ?? (start.S:49)
      0x80002a0c auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002a0c
      0x80002a10 addi    t1, t1, 1936           #; t1  = 0x80002a0c, (wrb) t1  <-- 0x8000319c
; ?? (start.S:50)
      0x80002a14 bge     t0, t1, pc + 16        #; t0  = 0x80003198, t1  = 0x8000319c, not taken
; ?? (start.S:51)
      0x80002a18 sw      zero, 0(t0)            #; t0  = 0x80003198, 0 ~~> Word[0x80003198]
; ?? (start.S:52)
      0x80002a1c addi    t0, t0, 4              #; t0  = 0x80003198, (wrb) t0  <-- 0x8000319c
; ?? (start.S:53)
      0x80002a20 blt     t0, t1, pc - 8         #; t0  = 0x8000319c, t1  = 0x8000319c, not taken
; ?? (start.S:58)
      0x80002a24 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
; ?? (start.S:59)
      0x80002a28 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
; ?? (start.S:60)
      0x80002a2c beqz    t0, pc + 132           #; t0  = 40, not taken
; ?? (start.S:61)
      0x80002a30 fcvt.d.w ft0, zero             #; ac1  = 0
; ?? (start.S:62)
      0x80002a34 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
; ?? (start.S:63)
      0x80002a38 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
; ?? (start.S:64)
      0x80002a3c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
                                                #; (f:fpu) ft3  <-- 0.0
; ?? (start.S:65)
      0x80002a40 fcvt.d.w ft4, zero             #; ac1  = 0
; ?? (start.S:66)
      0x80002a44 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
; ?? (start.S:67)
      0x80002a48 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
; ?? (start.S:68)
      0x80002a4c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
                                                #; (f:fpu) ft7  <-- 0.0
; ?? (start.S:69)
      0x80002a50 fcvt.d.w fs0, zero             #; ac1  = 0
; ?? (start.S:70)
      0x80002a54 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
; ?? (start.S:71)
      0x80002a58 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
; ?? (start.S:72)
      0x80002a5c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
                                                #; (f:fpu) fa1  <-- 0.0
; ?? (start.S:73)
      0x80002a60 fcvt.d.w fa2, zero             #; ac1  = 0
; ?? (start.S:74)
      0x80002a64 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
; ?? (start.S:75)
      0x80002a68 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
; ?? (start.S:76)
      0x80002a6c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
                                                #; (f:fpu) fa5  <-- 0.0
; ?? (start.S:77)
      0x80002a70 fcvt.d.w fa6, zero             #; ac1  = 0
; ?? (start.S:78)
      0x80002a74 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
; ?? (start.S:79)
      0x80002a78 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
; ?? (start.S:80)
      0x80002a7c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
                                                #; (f:fpu) fs3  <-- 0.0
; ?? (start.S:81)
      0x80002a80 fcvt.d.w fs4, zero             #; ac1  = 0
; ?? (start.S:82)
      0x80002a84 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
; ?? (start.S:83)
      0x80002a88 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
; ?? (start.S:84)
      0x80002a8c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
                                                #; (f:fpu) fs7  <-- 0.0
; ?? (start.S:85)
      0x80002a90 fcvt.d.w fs8, zero             #; ac1  = 0
; ?? (start.S:86)
      0x80002a94 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
; ?? (start.S:87)
      0x80002a98 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
; ?? (start.S:88)
      0x80002a9c fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
                                                #; (f:fpu) fs11 <-- 0.0
; ?? (start.S:89)
      0x80002aa0 fcvt.d.w ft8, zero             #; ac1  = 0
; ?? (start.S:90)
      0x80002aa4 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
; ?? (start.S:91)
      0x80002aa8 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
; ?? (start.S:92)
      0x80002aac fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
                                                #; (f:fpu) ft11 <-- 0.0
; ?? (start.S:99)
      0x80002ab0 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
; ?? (start.S:100)
      0x80002ab4 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
; ?? (start.S:103)
      0x80002ab8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002ab8
      0x80002abc lw      t0, 900(t0)            #; t0  = 0x80002ab8, t0  <~~ Word[0x80002e3c]
                                                #; (lsu) t0  <-- 136
; ?? (start.S:104)
      0x80002ac0 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
; ?? (start.S:105)
      0x80002ac4 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
; ?? (start.S:108)
      0x80002ac8 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002ac8
      0x80002acc lw      t2, 880(t2)            #; t2  = 0x80002ac8, t2  <~~ Word[0x80002e38]
                                                #; (lsu) t2  <-- 10
; ?? (start.S:110)
      0x80002ad0 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
; ?? (start.S:111)
      0x80002ad4 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
; ?? (start.S:112)
      0x80002ad8 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:113)
      0x80002adc sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
; ?? (start.S:116)
      0x80002ae0 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:117)
      0x80002ae4 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
; ?? (start.S:118)
      0x80002ae8 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:119)
      0x80002aec sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
; ?? (start.S:124)
      0x80002af0 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002af0
      0x80002af4 addi    t0, t0, 1496           #; t0  = 0x80002af0, (wrb) t0  <-- 0x800030c8
; ?? (start.S:125)
      0x80002af8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002af8
      0x80002afc addi    t1, t1, 1488           #; t1  = 0x80002af8, (wrb) t1  <-- 0x800030c8
; ?? (start.S:126)
      0x80002b00 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002b00
      0x80002b04 addi    t2, t2, 1480           #; t2  = 0x80002b00, (wrb) t2  <-- 0x800030c8
; ?? (start.S:127)
      0x80002b08 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002b08
      0x80002b0c addi    t3, t3, 1488           #; t3  = 0x80002b08, (wrb) t3  <-- 0x800030d8
; ?? (start.S:128)
      0x80002b10 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x800030c8, (wrb) sp  <-- 0x80123038
; ?? (start.S:129)
      0x80002b14 sub     sp, sp, t1             #; sp  = 0x80123038, t1  = 0x800030c8, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:130)
      0x80002b18 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x800030c8, (wrb) sp  <-- 0x80123038
; ?? (start.S:131)
      0x80002b1c sub     sp, sp, t3             #; sp  = 0x80123038, t3  = 0x800030d8, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:132)
      0x80002b20 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:133)
      0x80002b24 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
; ?? (start.S:134)
      0x80002b28 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:137)
      0x80002b2c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
; ?? (start.S:138)
      0x80002b30 bge     t0, t1, pc + 24        #; t0  = 0x800030c8, t1  = 0x800030c8, taken, goto 0x80002b48
; ?? (start.S:147)
      0x80002b48 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002b48
      0x80002b4c addi    t0, t0, 1408           #; t0  = 0x80002b48, (wrb) t0  <-- 0x800030c8
; ?? (start.S:148)
      0x80002b50 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002b50
      0x80002b54 addi    t1, t1, 1416           #; t1  = 0x80002b50, (wrb) t1  <-- 0x800030d8
; ?? (start.S:149)
      0x80002b58 bge     t0, t1, pc + 20        #; t0  = 0x800030c8, t1  = 0x800030d8, not taken
; ?? (start.S:150)
      0x80002b5c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
; ?? (start.S:151)
      0x80002b60 addi    t0, t0, 4              #; t0  = 0x800030c8, (wrb) t0  <-- 0x800030cc
; ?? (start.S:152)
      0x80002b64 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
; ?? (start.S:153)
      0x80002b68 blt     t0, t2, pc - 12        #; t0  = 0x800030cc, t2  = 0x800030c8, not taken
; ?? (start.S:158)
      0x80002b6c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
; ?? (start.S:159)
      0x80002b70 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
; ?? (start.S:160)
      0x80002b74 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
; ?? (start.S:161)
      0x80002b78 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
; ?? (start.S:162)
      0x80002b7c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
; ?? (start.S:163)
      0x80002b80 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
; ?? (start.S:164)
      0x80002b84 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b84
      0x80002b88 jalr    ra, ra, -1052          #; ra  = 0x80002b84, (wrb) ra  <-- 0x80002b8c, goto 0x80002768
; _snrt_init_team (start.c:49)
      0x80002768 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
; _snrt_init_team (start.c:50)
      0x8000276c sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
; _snrt_init_team (start.c:51)
      0x80002770 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
                                                #; (lsu) t1  <-- 0
      0x80002774 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
; _snrt_init_team (start.c:52)
      0x80002778 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
                                                #; (lsu) a6  <-- 1
; _snrt_init_team (start.c:53)
      0x8000277c lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
                                                #; (lsu) a7  <-- 1
; _snrt_init_team (start.c:52)
      0x80002780 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
      0x80002784 mul     a6, a7, a6             #; a7  = 1, a6  = 1
                                                #; (acc) a0  <-- 0x02580533
                                                #; (lsu) t0  <-- 8
      0x80002788 mul     a0, a6, t0             #; a6  = 1, t0  = 8
                                                #; (acc) a2  <-- 0x00a7a623
      0x8000278c sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
; snrt_hartid (snrt.h:181)
;  in _snrt_init_team (start.c:55)
      0x80002790 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
; _snrt_init_team (start.c:55)
      0x80002794 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
      0x80002798 divu    a0, a0, t0             #; a0  = 0, t0  = 8
                                                #; (acc) a6  <-- 0x00a7a823
; _snrt_init_team (start.c:54)
      0x8000279c sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
; _snrt_init_team (start.c:56)
      0x800027a0 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
; _snrt_init_team (start.c:57)
      0x800027a4 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
; _snrt_init_team (start.c:58)
      0x800027a8 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
; _snrt_init_team (start.c:60)
      0x800027ac lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
      0x800027b0 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
                                                #; (lsu) a0  <-- 0x80000000
      0x800027b4 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
; _snrt_init_team (start.c:59)
      0x800027b8 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
      0x800027bc sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
; _snrt_init_team (start.c:61)
      0x800027c0 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
                                                #; (lsu) a0  <-- 0
      0x800027c4 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
      0x800027c8 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
                                                #; (lsu) a1  <-- 1
      0x800027cc sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
; _snrt_init_team (start.c:62)
      0x800027d0 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
      0x800027d4 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
; _snrt_init_team (start.c:63)
      0x800027d8 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
      0x800027dc sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
; _snrt_init_team (start.c:64)
      0x800027e0 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
                                                #; (lsu) a0  <-- 0x00020000
      0x800027e4 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
      0x800027e8 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
      0x800027ec sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
; _snrt_init_team (start.c:67)
      0x800027f0 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
      0x800027f4 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
      0x800027f8 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
      0x800027fc sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
      0x80002800 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
; _snrt_init_team (start.c:66)
      0x80002804 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
      0x80002808 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
; _snrt_init_team (start.c:68)
      0x8000280c slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
      0x80002810 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
      0x80002814 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
      0x80002818 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
      0x8000281c sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
; _snrt_init_team (start.c:71)
      0x80002820 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
; _snrt_init_team (start.c:72)
      0x80002824 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
; _snrt_init_team (start.c:75)
      0x80002828 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x8000282c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002830 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
; _snrt_init_team (start.c:77)
      0x80002834 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002838 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
                                                #; (lsu) a1  <-- 0
; _snrt_init_team (start.c:78)
      0x8000283c lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
; _snrt_init_team (start.c:77)
      0x80002840 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 8
      0x80002844 remu    a0, a1, a0             #; a1  = 0, a0  = 8
; _snrt_init_team (start.c:76)
      0x80002848 lui     a1, 0x0                #; (wrb) a1  <-- 0
      0x8000284c add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
      0x80002850 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
      0x80002854 li      a0, 1096               #; (wrb) a0  <-- 1096
; _snrt_init_team (start.c:83)
      0x80002858 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
      0x8000285c auipc   a1, 0x1                #; (wrb) a1  <-- 0x8000385c
      0x80002860 addi    a1, a1, -1728          #; a1  = 0x8000385c, (wrb) a1  <-- 0x8000319c
      0x80002864 add     a0, a0, a1             #; a0  = 0, a1  = 0x8000319c, (wrb) a0  <-- 0x8000319c
      0x80002868 sw      zero, 0(a0)            #; a0  = 0x8000319c, 0 ~~> Word[0x8000319c]
; _snrt_init_team (start.c:86)
      0x8000286c lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
                                                #; (lsu) a7  <-- 0xffff0000
      0x80002870 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
; _snrt_init_team (start.c:87)
      0x80002874 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
; _snrt_init_team (start.c:91)
      0x80002878 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
; _snrt_init_team (start.c:93)
      0x8000287c addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
; _snrt_init_team (start.c:92)
      0x80002880 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      0x80002884 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
      0x80002888 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
; snrt_alloc_init (alloc.c:64)
;  in _snrt_init_team (start.c:97)
      0x8000288c sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
; snrt_alloc_init (alloc.c:67)
;  in _snrt_init_team (start.c:97)
      0x80002890 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
; snrt_alloc_init (alloc.c:66)
;  in _snrt_init_team (start.c:97)
      0x80002894 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
; snrt_alloc_init (alloc.c:68)
;  in _snrt_init_team (start.c:97)
      0x80002898 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      0x8000289c lw      a0, 0(a1)              #; a1  = 0x8000319c, a0  <~~ Word[0x8000319c]
                                                #; (lsu) a0  <-- 0
      0x800028a0 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
      0x800028a4 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
; snrt_alloc_init (alloc.c:71)
;  in _snrt_init_team (start.c:97)
      0x800028a8 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
; snrt_alloc_init (alloc.c:74)
;  in _snrt_init_team (start.c:97)
      0x800028ac sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
; snrt_alloc_init (alloc.c:75)
;  in _snrt_init_team (start.c:97)
      0x800028b0 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      0x800028b4 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800028b8 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800028bc sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      0x800028c0 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800028c4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800028c8 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
; _snrt_init_team (start.c:99)
      0x800028cc ret                            #; ra  = 0x80002b8c, goto 0x80002b8c
; ?? (start.S:165)
      0x80002b8c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
                                                #; (lsu) a0  <-- 0
; ?? (start.S:166)
      0x80002b90 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
                                                #; (lsu) a1  <-- 8
; ?? (start.S:167)
      0x80002b94 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start.S:168)
      0x80002b98 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
                                                #; (lsu) a3  <-- 0x0011df30
; ?? (start.S:169)
      0x80002b9c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
; ?? (start.S:170)
      0x80002ba0 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:174)
      0x80002ba4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002ba4
      0x80002ba8 addi    t0, t0, 60             #; t0  = 0x80002ba4, (wrb) t0  <-- 0x80002be0
; ?? (start.S:175)
      0x80002bac csrw    mtvec, t0              #; t0  = 0x80002be0, (lsu) a4  <-- 4132
; ?? (start.S:179)
      0x80002bb0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002bb0
      0x80002bb4 jalr    ra, ra, 544            #; ra  = 0x80002bb0, (wrb) ra  <-- 0x80002bb8, goto 0x80002dd0
; ?? (start_snitch.S:33)
      0x80002dd0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002dd4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002bb8 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002dd8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002dd8
      0x80002ddc jalr    ra, ra, -1256          #; ra  = 0x80002dd8, (wrb) ra  <-- 0x80002de0, goto 0x800028f0
; _snrt_barrier_reg_ptr (team.c:80)
      0x800028f0 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800028f4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800028f8 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800028fc lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002900 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x80002904 ret                            #; ra  = 0x80002de0, goto 0x80002de0
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002de0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002de4 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002de8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002dec addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002bb8
; ?? (start_snitch.S:40)
      0x80002df0 ret                            #; ra  = 0x80002bb8, goto 0x80002bb8
; ?? (start.S:183)
      0x80002bb8 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000bb8
      0x80002bbc jalr    ra, ra, -892           #; ra  = 0x80000bb8, (wrb) ra  <-- 0x80002bc0, goto 0x8000083c
; main (test_conflict.c:13)
      0x8000083c addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (test_conflict.c:14)
      0x80000840 sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x80002bc0 ~~> Word[0x0011ff5c]
      0x80000844 sw      s0, 24(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff58]
      0x80000848 sw      s1, 20(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff54]
      0x8000084c sw      s2, 16(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff50]
      0x80000854 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000858 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80000850 fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff48]
      0x8000085c lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
                                                #; (lsu) a1  <-- 0
; main (test_conflict.c:0)
      0x80000860 li      a0, 0                  #; (wrb) a0  <-- 0
; main (test_conflict.c:14)
      0x80000864 bnez    a1, pc + 640           #; a1  = 0, not taken
; snrt_current_team (team.c:16)
;  in snrt_l1alloc (alloc.c:21)
;  in main (test_conflict.c:18)
      0x80000868 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x8000086c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80000870 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80000874 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
; snrt_l1alloc (alloc.c:25)
;  in main (test_conflict.c:18)
      0x80000878 lw      s0, 88(a0)             #; a0  = 0x0011ff70, s0  <~~ Word[0x0011ffc8]
                                                #; (lsu) s0  <-- 0x00100000
      0x8000087c lw      a1, 80(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ffc0]
                                                #; (lsu) a1  <-- 0x00100000
      0x80000880 lw      a2, 84(a0)             #; a0  = 0x0011ff70, a2  <~~ Word[0x0011ffc4]
      0x80000884 addi    a3, s0, 80             #; s0  = 0x00100000, (wrb) a3  <-- 0x00100050
                                                #; (lsu) a2  <-- 0x0001df30
      0x80000888 add     a1, a2, a1             #; a2  = 0x0001df30, a1  = 0x00100000, (wrb) a1  <-- 0x0011df30
      0x8000088c bgeu    a1, a3, pc + 44        #; a1  = 0x0011df30, a3  = 0x00100050, taken, goto 0x800008b8
; snrt_l1alloc (alloc.c:34)
;  in main (test_conflict.c:18)
      0x800008b8 sw      a3, 88(a0)             #; a0  = 0x0011ff70, 0x00100050 ~~> Word[0x0011ffc8]
      0x800008bc mv      s2, s0                 #; s0  = 0x00100000, (wrb) s2  <-- 0x00100000
; snrt_l1alloc (alloc.c:25)
;  in main (test_conflict.c:19)
      0x800008c0 addi    a2, s0, 160            #; s0  = 0x00100000, (wrb) a2  <-- 0x001000a0
      0x800008c4 mv      s0, a3                 #; a3  = 0x00100050, (wrb) s0  <-- 0x00100050
      0x800008c8 bgeu    a1, a2, pc - 44        #; a1  = 0x0011df30, a2  = 0x001000a0, taken, goto 0x8000089c
; snrt_l1alloc (alloc.c:34)
;  in main (test_conflict.c:19)
      0x8000089c sw      a2, 88(a0)             #; a0  = 0x0011ff70, 0x001000a0 ~~> Word[0x0011ffc8]
      0x800008a0 mv      s1, s0                 #; s0  = 0x00100050, (wrb) s1  <-- 0x00100050
; snrt_l1alloc (alloc.c:25)
;  in main (test_conflict.c:20)
      0x800008a4 addi    a3, a2, 80             #; a2  = 0x001000a0, (wrb) a3  <-- 0x001000f0
      0x800008a8 mv      s0, a2                 #; a2  = 0x001000a0, (wrb) s0  <-- 0x001000a0
      0x800008ac bltu    a1, a3, pc + 44        #; a1  = 0x0011df30, a3  = 0x001000f0, not taken
; snrt_l1alloc (alloc.c:34)
;  in main (test_conflict.c:20)
      0x800008b0 sw      a3, 88(a0)             #; a0  = 0x0011ff70, 0x001000f0 ~~> Word[0x0011ffc8]
      0x800008b4 j       pc + 0x28              #; goto 0x800008dc
; main (test_conflict.c:22)
      0x800008dc li      a1, 1                  #; (wrb) a1  <-- 1
      0x800008e0 mv      a0, s2                 #; s2  = 0x00100000, (wrb) a0  <-- 0x00100000
      0x800008e4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800008e4
      0x800008e8 jalr    ra, ra, -688           #; ra  = 0x800008e4, (wrb) ra  <-- 0x800008ec, goto 0x80000634
; init_data (test_conflict.c:7)
      0x80000634 addi    sp, sp, -96            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011fee0
; init_data (test_conflict.c:0)
      0x80000638 fsd     fs0, 88(sp)            #; 0.0 ~~> Doub[0x0011ff38]
      0x8000063c fsd     fs1, 80(sp)            #; 0.0 ~~> Doub[0x0011ff30]
      0x80000640 fsd     fs2, 72(sp)            #; 0.0 ~~> Doub[0x0011ff28]
      0x80000644 fsd     fs3, 64(sp)            #; 0.0 ~~> Doub[0x0011ff20]
      0x80000648 fsd     fs4, 56(sp)            #; 0.0 ~~> Doub[0x0011ff18]
      0x8000064c fsd     fs5, 48(sp)            #; 0.0 ~~> Doub[0x0011ff10]
      0x80000650 fsd     fs6, 40(sp)            #; 0.0 ~~> Doub[0x0011ff08]
      0x80000654 fsd     fs7, 32(sp)            #; 0.0 ~~> Doub[0x0011ff00]
      0x80000658 fsd     fs8, 24(sp)            #; 0.0 ~~> Doub[0x0011fef8]
      0x8000065c fsd     fs9, 16(sp)            #; 0.0 ~~> Doub[0x0011fef0]
; init_data (test_conflict.c:8)
      0x80000668 srli    a2, a0, 20             #; a0  = 0x00100000, (wrb) a2  <-- 1
      0x80000660 fsd     fs10, 8(sp)            #; 0.0 ~~> Doub[0x0011fee8]
      0x8000066c snez    a2, a2                 #; a2  = 1, (wrb) a2  <-- 1
      0x80000664 fsd     fs11, 0(sp)            #; 0.0 ~~> Doub[0x0011fee0]
      0x80000670 lui     a3, 0x120              #; (wrb) a3  <-- 0x00120000
      0x80000674 addi    a3, a3, -71            #; a3  = 0x00120000, (wrb) a3  <-- 0x0011ffb9
      0x80000678 sltu    a3, a0, a3             #; a0  = 0x00100000, a3  = 0x0011ffb9, (wrb) a3  <-- 1
      0x8000067c and     a2, a2, a3             #; a2  = 1, a3  = 1, (wrb) a2  <-- 1
      0x80000680 beqz    a2, pc + 220           #; a2  = 1, not taken
; init_data (test_conflict.c:0)
      0x80000684 li      a2, 8                  #; (wrb) a2  <-- 8
      0x80000688 li      a3, 9                  #; (wrb) a3  <-- 9
; init_data (test_conflict.c:8)
      0x8000068c li      a4, 64                 #; (wrb) a4  <-- 64
      0x80000690 li      a5, 192                #; (wrb) a5  <-- 192
      0x80000694 scfgw   a3, a4                 #; a3  = 9, a4  = 64
      0x80000698 scfgw   a2, a5                 #; a2  = 8, a5  = 192
      0x8000069c li      a2, 32                 #; (wrb) a2  <-- 32
      0x800006a0 scfgw   zero, a2               #; a2  = 32
; init_data (test_conflict.c:0)
      0x800006a4 auipc   a2, 0x3                #; (wrb) a2  <-- 0x800036a4
      0x800006a8 addi    a2, a2, -1484          #; a2  = 0x800036a4, (wrb) a2  <-- 0x800030d8
                                                #; (acc) gp  <-- 0x00063187
      0x800006ac fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x800030d8]
; init_data (test_conflict.c:8)
      0x800006b0 scfgwi  a0, 896                #; a0  = 0x00100000
      0x800006b4 csrrsi  a0, ssr, 1             #; (f:lsu) ft3  <-- 1.4142
                                                #; (acc) tp  <-- 0x12327253
      0x800006b8 fcvt.d.wu ft4, a1              #; ac1  = 1
                                                #; (f:fpu) ft4  <-- 1.0
; init_data (test_conflict.c:9)
      0x800006bc fmul.d  ft4, ft4, ft3          #; ft4  = 1.0, ft3  = 1.4142
                                                #; (f:fpu) ft4  <-- 1.4142
      0x800006c4 addi    a0, a1, 1              #; a1  = 1, (wrb) a0  <-- 2
      0x800006c0 fsgnj.d ft0, ft4, ft4          #; ft4  = 1.4142, ft4  = 1.4142
      0x800006c8 fcvt.d.wu ft4, a0              #; ac1  = 2, (f:fpu) ft0  <-- 1.4142
                                                #; (f:fpu) ft4  <-- 2.0
      0x800006cc fmul.d  ft4, ft4, ft3          #; ft4  = 2.0, ft3  = 1.4142
                                                #; (f:fpu) ft4  <-- 2.8284
      0x800006d4 addi    a0, a1, 2              #; a1  = 1, (wrb) a0  <-- 3
      0x800006d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 2.8284, ft4  = 2.8284
      0x800006d8 fcvt.d.wu ft4, a0              #; ac1  = 3, (f:fpu) ft0  <-- 2.8284
                                                #; (f:fpu) ft4  <-- 3.0
      0x800006dc fmul.d  ft4, ft4, ft3          #; ft4  = 3.0, ft3  = 1.4142
                                                #; (f:fpu) ft4  <-- 4.2426000
      0x800006e4 addi    a0, a1, 3              #; a1  = 1, (wrb) a0  <-- 4
      0x800006e0 fsgnj.d ft0, ft4, ft4          #; ft4  = 4.2426000, ft4  = 4.2426000
      0x800006e8 fcvt.d.wu ft4, a0              #; ac1  = 4, (f:fpu) ft0  <-- 4.2426000
                                                #; (f:fpu) ft4  <-- 4.0
      0x800006ec fmul.d  ft4, ft4, ft3          #; ft4  = 4.0, ft3  = 1.4142
                                                #; (f:fpu) ft4  <-- 5.6568
      0x800006f4 addi    a0, a1, 4              #; a1  = 1, (wrb) a0  <-- 5
      0x800006f0 fsgnj.d ft0, ft4, ft4          #; ft4  = 5.6568, ft4  = 5.6568
      0x800006f8 fcvt.d.wu ft4, a0              #; ac1  = 5, (f:fpu) ft0  <-- 5.6568
                                                #; (f:fpu) ft4  <-- 5.0
      0x800006fc fmul.d  ft4, ft4, ft3          #; ft4  = 5.0, ft3  = 1.4142
                                                #; (f:fpu) ft4  <-- 7.071
      0x80000704 addi    a0, a1, 5              #; a1  = 1, (wrb) a0  <-- 6
      0x80000700 fsgnj.d ft0, ft4, ft4          #; ft4  = 7.071, ft4  = 7.071
      0x80000708 fcvt.d.wu ft4, a0              #; ac1  = 6, (f:fpu) ft0  <-- 7.071
                                                #; (f:fpu) ft4  <-- 6.0
      0x8000070c fmul.d  ft4, ft4, ft3          #; ft4  = 6.0, ft3  = 1.4142
                                                #; (f:fpu) ft4  <-- 8.4852000
      0x80000714 addi    a0, a1, 6              #; a1  = 1, (wrb) a0  <-- 7
      0x80000710 fsgnj.d ft0, ft4, ft4          #; ft4  = 8.4852000, ft4  = 8.4852000
      0x80000718 fcvt.d.wu ft4, a0              #; ac1  = 7, (f:fpu) ft0  <-- 8.4852000
                                                #; (f:fpu) ft4  <-- 7.0
      0x8000071c fmul.d  ft4, ft4, ft3          #; ft4  = 7.0, ft3  = 1.4142
                                                #; (f:fpu) ft4  <-- 9.8994
      0x80000724 addi    a0, a1, 7              #; a1  = 1, (wrb) a0  <-- 8
      0x80000720 fsgnj.d ft0, ft4, ft4          #; ft4  = 9.8994, ft4  = 9.8994
      0x80000728 fcvt.d.wu ft4, a0              #; ac1  = 8, (f:fpu) ft0  <-- 9.8994
                                                #; (f:fpu) ft4  <-- 8.0
      0x8000072c fmul.d  ft4, ft4, ft3          #; ft4  = 8.0, ft3  = 1.4142
                                                #; (f:fpu) ft4  <-- 11.3136
      0x80000734 addi    a0, a1, 8              #; a1  = 1, (wrb) a0  <-- 9
      0x80000730 fsgnj.d ft0, ft4, ft4          #; ft4  = 11.3136, ft4  = 11.3136
      0x80000738 fcvt.d.wu ft4, a0              #; ac1  = 9, (f:fpu) ft0  <-- 11.3136
                                                #; (f:fpu) ft4  <-- 9.0
      0x8000073c fmul.d  ft4, ft4, ft3          #; ft4  = 9.0, ft3  = 1.4142
                                                #; (f:fpu) ft4  <-- 12.7278000
      0x80000744 addi    a0, a1, 9              #; a1  = 1, (wrb) a0  <-- 10
      0x80000740 fsgnj.d ft0, ft4, ft4          #; ft4  = 12.7278000, ft4  = 12.7278000
      0x80000748 fcvt.d.wu ft4, a0              #; ac1  = 10, (f:fpu) ft0  <-- 12.7278000
                                                #; (f:fpu) ft4  <-- 10.0
      0x8000074c fmul.d  ft3, ft4, ft3          #; ft4  = 10.0, ft3  = 1.4142
                                                #; (f:fpu) ft3  <-- 14.142
; init_data (test_conflict.c:0)
      0x80000758 j       pc + 0xac              #; goto 0x80000804
      0x80000750 fsgnj.d ft0, ft3, ft3          #; ft3  = 14.142, ft3  = 14.142
      0x80000754 csrrci  a0, ssr, 1             #; (f:fpu) ft0  <-- 14.142
; init_data (test_conflict.c:11)
      0x80000804 fld     fs11, 0(sp)            #; fs11 <~~ Doub[0x0011fee0]
      0x80000808 fld     fs10, 8(sp)            #; fs10 <~~ Doub[0x0011fee8], (f:lsu) fs11 <-- 0.0
      0x8000080c fld     fs9, 16(sp)            #; fs9  <~~ Doub[0x0011fef0], (f:lsu) fs10 <-- 0.0
                                                #; (f:lsu) fs9  <-- 0.0
      0x80000810 fld     fs8, 24(sp)            #; fs8  <~~ Doub[0x0011fef8]
      0x80000814 fld     fs7, 32(sp)            #; fs7  <~~ Doub[0x0011ff00], (f:lsu) fs8  <-- 0.0
      0x80000818 fld     fs6, 40(sp)            #; fs6  <~~ Doub[0x0011ff08], (f:lsu) fs7  <-- 0.0
      0x8000081c fld     fs5, 48(sp)            #; fs5  <~~ Doub[0x0011ff10], (f:lsu) fs6  <-- 0.0
                                                #; (f:lsu) fs5  <-- 0.0
      0x80000820 fld     fs4, 56(sp)            #; fs4  <~~ Doub[0x0011ff18]
      0x80000824 fld     fs3, 64(sp)            #; fs3  <~~ Doub[0x0011ff20], (f:lsu) fs4  <-- 0.0
      0x80000828 fld     fs2, 72(sp)            #; fs2  <~~ Doub[0x0011ff28], (f:lsu) fs3  <-- 0.0
      0x80000834 addi    sp, sp, 96             #; sp  = 0x0011fee0, (wrb) sp  <-- 0x0011ff40
      0x8000082c fld     fs1, 80(sp)            #; fs1  <~~ Doub[0x0011ff30], (f:lsu) fs2  <-- 0.0
      0x80000838 ret                            #; ra  = 0x800008ec, goto 0x800008ec
      0x80000830 fld     fs0, 88(sp)            #; fs0  <~~ Doub[0x0011ff38], (f:lsu) fs1  <-- 0.0
                                                #; (f:lsu) fs0  <-- 0.0
; main (test_conflict.c:23)
      0x800008ec li      a1, 2                  #; (wrb) a1  <-- 2
      0x800008f0 mv      a0, s1                 #; s1  = 0x00100050, (wrb) a0  <-- 0x00100050
      0x800008f4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800008f4
      0x800008f8 jalr    ra, ra, -704           #; ra  = 0x800008f4, (wrb) ra  <-- 0x800008fc, goto 0x80000634
; init_data (test_conflict.c:7)
      0x80000634 addi    sp, sp, -96            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011fee0
; init_data (test_conflict.c:0)
      0x80000638 fsd     fs0, 88(sp)            #; 0.0 ~~> Doub[0x0011ff38]
      0x8000063c fsd     fs1, 80(sp)            #; 0.0 ~~> Doub[0x0011ff30]
      0x80000640 fsd     fs2, 72(sp)            #; 0.0 ~~> Doub[0x0011ff28]
      0x80000644 fsd     fs3, 64(sp)            #; 0.0 ~~> Doub[0x0011ff20]
      0x80000648 fsd     fs4, 56(sp)            #; 0.0 ~~> Doub[0x0011ff18]
      0x8000064c fsd     fs5, 48(sp)            #; 0.0 ~~> Doub[0x0011ff10]
      0x80000650 fsd     fs6, 40(sp)            #; 0.0 ~~> Doub[0x0011ff08]
      0x80000654 fsd     fs7, 32(sp)            #; 0.0 ~~> Doub[0x0011ff00]
      0x80000658 fsd     fs8, 24(sp)            #; 0.0 ~~> Doub[0x0011fef8]
      0x8000065c fsd     fs9, 16(sp)            #; 0.0 ~~> Doub[0x0011fef0]
; init_data (test_conflict.c:8)
      0x80000668 srli    a2, a0, 20             #; a0  = 0x00100050, (wrb) a2  <-- 1
      0x80000660 fsd     fs10, 8(sp)            #; 0.0 ~~> Doub[0x0011fee8]
      0x8000066c snez    a2, a2                 #; a2  = 1, (wrb) a2  <-- 1
      0x80000664 fsd     fs11, 0(sp)            #; 0.0 ~~> Doub[0x0011fee0]
      0x80000670 lui     a3, 0x120              #; (wrb) a3  <-- 0x00120000
      0x80000674 addi    a3, a3, -71            #; a3  = 0x00120000, (wrb) a3  <-- 0x0011ffb9
      0x80000678 sltu    a3, a0, a3             #; a0  = 0x00100050, a3  = 0x0011ffb9, (wrb) a3  <-- 1
      0x8000067c and     a2, a2, a3             #; a2  = 1, a3  = 1, (wrb) a2  <-- 1
      0x80000680 beqz    a2, pc + 220           #; a2  = 1, not taken
; init_data (test_conflict.c:0)
      0x80000684 li      a2, 8                  #; (wrb) a2  <-- 8
      0x80000688 li      a3, 9                  #; (wrb) a3  <-- 9
; init_data (test_conflict.c:8)
      0x8000068c li      a4, 64                 #; (wrb) a4  <-- 64
      0x80000690 li      a5, 192                #; (wrb) a5  <-- 192
      0x80000694 scfgw   a3, a4                 #; a3  = 9, a4  = 64
      0x80000698 scfgw   a2, a5                 #; a2  = 8, a5  = 192
      0x8000069c li      a2, 32                 #; (wrb) a2  <-- 32
      0x800006a0 scfgw   zero, a2               #; a2  = 32, (acc) ra  <-- 0x00c020ab
; init_data (test_conflict.c:0)
      0x800006a4 auipc   a2, 0x3                #; (wrb) a2  <-- 0x800036a4
      0x800006a8 addi    a2, a2, -1484          #; a2  = 0x800036a4, (wrb) a2  <-- 0x800030d8
                                                #; (acc) gp  <-- 0x00063187
; init_data (test_conflict.c:8)
      0x800006b0 scfgwi  a0, 896                #; a0  = 0x00100050
; init_data (test_conflict.c:0)
      0x800006ac fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x800030d8]
; init_data (test_conflict.c:8)
      0x800006b4 csrrsi  a0, ssr, 1             #; 
                                                #; (acc) tp  <-- 0x12327253
      0x800006b8 fcvt.d.wu ft4, a1              #; ac1  = 2
                                                #; (f:fpu) ft4  <-- 2.0
; init_data (test_conflict.c:9)
      0x800006c4 addi    a0, a1, 1              #; a1  = 2, (wrb) a0  <-- 3
                                                #; (f:lsu) ft3  <-- 1.4142
      0x800006bc fmul.d  ft4, ft4, ft3          #; ft4  = 2.0, ft3  = 1.4142
                                                #; (f:fpu) ft4  <-- 2.8284
      0x800006c0 fsgnj.d ft0, ft4, ft4          #; ft4  = 2.8284, ft4  = 2.8284
      0x800006c8 fcvt.d.wu ft4, a0              #; ac1  = 3, (f:fpu) ft0  <-- 2.8284
                                                #; (f:fpu) ft4  <-- 3.0
      0x800006d4 addi    a0, a1, 2              #; a1  = 2, (wrb) a0  <-- 4
      0x800006cc fmul.d  ft4, ft4, ft3          #; ft4  = 3.0, ft3  = 1.4142
                                                #; (f:fpu) ft4  <-- 4.2426000
      0x800006d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 4.2426000, ft4  = 4.2426000
      0x800006d8 fcvt.d.wu ft4, a0              #; ac1  = 4, (f:fpu) ft0  <-- 4.2426000
                                                #; (f:fpu) ft4  <-- 4.0
      0x800006e4 addi    a0, a1, 3              #; a1  = 2, (wrb) a0  <-- 5
      0x800006dc fmul.d  ft4, ft4, ft3          #; ft4  = 4.0, ft3  = 1.4142
                                                #; (f:fpu) ft4  <-- 5.6568
      0x800006e0 fsgnj.d ft0, ft4, ft4          #; ft4  = 5.6568, ft4  = 5.6568
      0x800006e8 fcvt.d.wu ft4, a0              #; ac1  = 5, (f:fpu) ft0  <-- 5.6568
                                                #; (f:fpu) ft4  <-- 5.0
      0x800006f4 addi    a0, a1, 4              #; a1  = 2, (wrb) a0  <-- 6
      0x800006ec fmul.d  ft4, ft4, ft3          #; ft4  = 5.0, ft3  = 1.4142
                                                #; (f:fpu) ft4  <-- 7.071
      0x800006f0 fsgnj.d ft0, ft4, ft4          #; ft4  = 7.071, ft4  = 7.071
      0x800006f8 fcvt.d.wu ft4, a0              #; ac1  = 6, (f:fpu) ft0  <-- 7.071
                                                #; (f:fpu) ft4  <-- 6.0
      0x80000704 addi    a0, a1, 5              #; a1  = 2, (wrb) a0  <-- 7
      0x800006fc fmul.d  ft4, ft4, ft3          #; ft4  = 6.0, ft3  = 1.4142
                                                #; (f:fpu) ft4  <-- 8.4852000
      0x80000700 fsgnj.d ft0, ft4, ft4          #; ft4  = 8.4852000, ft4  = 8.4852000
      0x80000708 fcvt.d.wu ft4, a0              #; ac1  = 7, (f:fpu) ft0  <-- 8.4852000
                                                #; (f:fpu) ft4  <-- 7.0
      0x80000714 addi    a0, a1, 6              #; a1  = 2, (wrb) a0  <-- 8
      0x8000070c fmul.d  ft4, ft4, ft3          #; ft4  = 7.0, ft3  = 1.4142
                                                #; (f:fpu) ft4  <-- 9.8994
      0x80000710 fsgnj.d ft0, ft4, ft4          #; ft4  = 9.8994, ft4  = 9.8994
      0x80000718 fcvt.d.wu ft4, a0              #; ac1  = 8, (f:fpu) ft0  <-- 9.8994
                                                #; (f:fpu) ft4  <-- 8.0
      0x80000724 addi    a0, a1, 7              #; a1  = 2, (wrb) a0  <-- 9
      0x8000071c fmul.d  ft4, ft4, ft3          #; ft4  = 8.0, ft3  = 1.4142
                                                #; (f:fpu) ft4  <-- 11.3136
      0x80000720 fsgnj.d ft0, ft4, ft4          #; ft4  = 11.3136, ft4  = 11.3136
      0x80000728 fcvt.d.wu ft4, a0              #; ac1  = 9, (f:fpu) ft0  <-- 11.3136
                                                #; (f:fpu) ft4  <-- 9.0
      0x80000734 addi    a0, a1, 8              #; a1  = 2, (wrb) a0  <-- 10
      0x8000072c fmul.d  ft4, ft4, ft3          #; ft4  = 9.0, ft3  = 1.4142
                                                #; (f:fpu) ft4  <-- 12.7278000
      0x80000730 fsgnj.d ft0, ft4, ft4          #; ft4  = 12.7278000, ft4  = 12.7278000
      0x80000738 fcvt.d.wu ft4, a0              #; ac1  = 10, (f:fpu) ft0  <-- 12.7278000
                                                #; (f:fpu) ft4  <-- 10.0
      0x80000744 addi    a0, a1, 9              #; a1  = 2, (wrb) a0  <-- 11
      0x8000073c fmul.d  ft4, ft4, ft3          #; ft4  = 10.0, ft3  = 1.4142
                                                #; (f:fpu) ft4  <-- 14.142
      0x80000740 fsgnj.d ft0, ft4, ft4          #; ft4  = 14.142, ft4  = 14.142
      0x80000748 fcvt.d.wu ft4, a0              #; ac1  = 11, (f:fpu) ft0  <-- 14.142
                                                #; (f:fpu) ft4  <-- 11.0
      0x8000074c fmul.d  ft3, ft4, ft3          #; ft4  = 11.0, ft3  = 1.4142
; init_data (test_conflict.c:0)
      0x80000758 j       pc + 0xac              #; goto 0x80000804
                                                #; (f:fpu) ft3  <-- 15.5562000
; init_data (test_conflict.c:9)
      0x80000750 fsgnj.d ft0, ft3, ft3          #; ft3  = 15.5562000, ft3  = 15.5562000
; init_data (test_conflict.c:0)
      0x80000754 csrrci  a0, ssr, 1             #; (f:fpu) ft0  <-- 15.5562000
; init_data (test_conflict.c:11)
      0x80000804 fld     fs11, 0(sp)            #; fs11 <~~ Doub[0x0011fee0]
      0x80000808 fld     fs10, 8(sp)            #; fs10 <~~ Doub[0x0011fee8], (f:lsu) fs11 <-- 0.0
      0x8000080c fld     fs9, 16(sp)            #; fs9  <~~ Doub[0x0011fef0], (f:lsu) fs10 <-- 0.0
      0x80000810 fld     fs8, 24(sp)            #; fs8  <~~ Doub[0x0011fef8], (f:lsu) fs9  <-- 0.0
      0x80000814 fld     fs7, 32(sp)            #; fs7  <~~ Doub[0x0011ff00], (f:lsu) fs8  <-- 0.0
      0x80000818 fld     fs6, 40(sp)            #; fs6  <~~ Doub[0x0011ff08], (f:lsu) fs7  <-- 0.0
      0x8000081c fld     fs5, 48(sp)            #; fs5  <~~ Doub[0x0011ff10], (f:lsu) fs6  <-- 0.0
      0x80000820 fld     fs4, 56(sp)            #; fs4  <~~ Doub[0x0011ff18], (f:lsu) fs5  <-- 0.0
      0x80000824 fld     fs3, 64(sp)            #; fs3  <~~ Doub[0x0011ff20], (f:lsu) fs4  <-- 0.0
      0x80000828 fld     fs2, 72(sp)            #; fs2  <~~ Doub[0x0011ff28], (f:lsu) fs3  <-- 0.0
      0x80000834 addi    sp, sp, 96             #; sp  = 0x0011fee0, (wrb) sp  <-- 0x0011ff40
      0x8000082c fld     fs1, 80(sp)            #; fs1  <~~ Doub[0x0011ff30], (f:lsu) fs2  <-- 0.0
      0x80000838 ret                            #; ra  = 0x800008fc, goto 0x800008fc
      0x80000830 fld     fs0, 88(sp)            #; fs0  <~~ Doub[0x0011ff38], (f:lsu) fs1  <-- 0.0
                                                #; (f:lsu) fs0  <-- 0.0
; main (test_conflict.c:24)
      0x800008fc li      a1, 3                  #; (wrb) a1  <-- 3
      0x80000900 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
      0x80000904 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000904
      0x80000908 jalr    ra, ra, -720           #; ra  = 0x80000904, (wrb) ra  <-- 0x8000090c, goto 0x80000634
; init_data (test_conflict.c:7)
      0x80000634 addi    sp, sp, -96            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011fee0
; init_data (test_conflict.c:0)
      0x80000638 fsd     fs0, 88(sp)            #; 0.0 ~~> Doub[0x0011ff38]
      0x8000063c fsd     fs1, 80(sp)            #; 0.0 ~~> Doub[0x0011ff30]
      0x80000640 fsd     fs2, 72(sp)            #; 0.0 ~~> Doub[0x0011ff28]
      0x80000644 fsd     fs3, 64(sp)            #; 0.0 ~~> Doub[0x0011ff20]
      0x80000648 fsd     fs4, 56(sp)            #; 0.0 ~~> Doub[0x0011ff18]
      0x8000064c fsd     fs5, 48(sp)            #; 0.0 ~~> Doub[0x0011ff10]
      0x80000650 fsd     fs6, 40(sp)            #; 0.0 ~~> Doub[0x0011ff08]
      0x80000654 fsd     fs7, 32(sp)            #; 0.0 ~~> Doub[0x0011ff00]
      0x80000658 fsd     fs8, 24(sp)            #; 0.0 ~~> Doub[0x0011fef8]
      0x8000065c fsd     fs9, 16(sp)            #; 0.0 ~~> Doub[0x0011fef0]
; init_data (test_conflict.c:8)
      0x80000668 srli    a2, a0, 20             #; a0  = 0x001000a0, (wrb) a2  <-- 1
      0x80000660 fsd     fs10, 8(sp)            #; 0.0 ~~> Doub[0x0011fee8]
      0x8000066c snez    a2, a2                 #; a2  = 1, (wrb) a2  <-- 1
      0x80000664 fsd     fs11, 0(sp)            #; 0.0 ~~> Doub[0x0011fee0]
      0x80000670 lui     a3, 0x120              #; (wrb) a3  <-- 0x00120000
      0x80000674 addi    a3, a3, -71            #; a3  = 0x00120000, (wrb) a3  <-- 0x0011ffb9
      0x80000678 sltu    a3, a0, a3             #; a0  = 0x001000a0, a3  = 0x0011ffb9, (wrb) a3  <-- 1
      0x8000067c and     a2, a2, a3             #; a2  = 1, a3  = 1, (wrb) a2  <-- 1
      0x80000680 beqz    a2, pc + 220           #; a2  = 1, not taken
; init_data (test_conflict.c:0)
      0x80000684 li      a2, 8                  #; (wrb) a2  <-- 8
      0x80000688 li      a3, 9                  #; (wrb) a3  <-- 9
; init_data (test_conflict.c:8)
      0x8000068c li      a4, 64                 #; (wrb) a4  <-- 64
      0x80000690 li      a5, 192                #; (wrb) a5  <-- 192
      0x80000694 scfgw   a3, a4                 #; a3  = 9, a4  = 64
      0x80000698 scfgw   a2, a5                 #; a2  = 8, a5  = 192
      0x8000069c li      a2, 32                 #; (wrb) a2  <-- 32
      0x800006a0 scfgw   zero, a2               #; a2  = 32, (acc) ra  <-- 0x00c020ab
; init_data (test_conflict.c:0)
      0x800006a4 auipc   a2, 0x3                #; (wrb) a2  <-- 0x800036a4
      0x800006a8 addi    a2, a2, -1484          #; a2  = 0x800036a4, (wrb) a2  <-- 0x800030d8
                                                #; (acc) gp  <-- 0x00063187
; init_data (test_conflict.c:8)
      0x800006b0 scfgwi  a0, 896                #; a0  = 0x001000a0
; init_data (test_conflict.c:0)
      0x800006ac fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x800030d8]
; init_data (test_conflict.c:8)
      0x800006b4 csrrsi  a0, ssr, 1             #; 
                                                #; (acc) tp  <-- 0x12327253
      0x800006b8 fcvt.d.wu ft4, a1              #; ac1  = 3
                                                #; (f:fpu) ft4  <-- 3.0
; init_data (test_conflict.c:9)
      0x800006c4 addi    a0, a1, 1              #; a1  = 3, (wrb) a0  <-- 4
                                                #; (f:lsu) ft3  <-- 1.4142
      0x800006bc fmul.d  ft4, ft4, ft3          #; ft4  = 3.0, ft3  = 1.4142
                                                #; (f:fpu) ft4  <-- 4.2426000
      0x800006c0 fsgnj.d ft0, ft4, ft4          #; ft4  = 4.2426000, ft4  = 4.2426000
      0x800006c8 fcvt.d.wu ft4, a0              #; ac1  = 4, (f:fpu) ft0  <-- 4.2426000
                                                #; (f:fpu) ft4  <-- 4.0
      0x800006d4 addi    a0, a1, 2              #; a1  = 3, (wrb) a0  <-- 5
      0x800006cc fmul.d  ft4, ft4, ft3          #; ft4  = 4.0, ft3  = 1.4142
                                                #; (f:fpu) ft4  <-- 5.6568
      0x800006d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 5.6568, ft4  = 5.6568
      0x800006d8 fcvt.d.wu ft4, a0              #; ac1  = 5, (f:fpu) ft0  <-- 5.6568
                                                #; (f:fpu) ft4  <-- 5.0
      0x800006e4 addi    a0, a1, 3              #; a1  = 3, (wrb) a0  <-- 6
      0x800006dc fmul.d  ft4, ft4, ft3          #; ft4  = 5.0, ft3  = 1.4142
                                                #; (f:fpu) ft4  <-- 7.071
      0x800006e0 fsgnj.d ft0, ft4, ft4          #; ft4  = 7.071, ft4  = 7.071
      0x800006e8 fcvt.d.wu ft4, a0              #; ac1  = 6, (f:fpu) ft0  <-- 7.071
                                                #; (f:fpu) ft4  <-- 6.0
      0x800006f4 addi    a0, a1, 4              #; a1  = 3, (wrb) a0  <-- 7
      0x800006ec fmul.d  ft4, ft4, ft3          #; ft4  = 6.0, ft3  = 1.4142
                                                #; (f:fpu) ft4  <-- 8.4852000
      0x800006f0 fsgnj.d ft0, ft4, ft4          #; ft4  = 8.4852000, ft4  = 8.4852000
      0x800006f8 fcvt.d.wu ft4, a0              #; ac1  = 7, (f:fpu) ft0  <-- 8.4852000
                                                #; (f:fpu) ft4  <-- 7.0
      0x80000704 addi    a0, a1, 5              #; a1  = 3, (wrb) a0  <-- 8
      0x800006fc fmul.d  ft4, ft4, ft3          #; ft4  = 7.0, ft3  = 1.4142
                                                #; (f:fpu) ft4  <-- 9.8994
      0x80000700 fsgnj.d ft0, ft4, ft4          #; ft4  = 9.8994, ft4  = 9.8994
      0x80000708 fcvt.d.wu ft4, a0              #; ac1  = 8, (f:fpu) ft0  <-- 9.8994
                                                #; (f:fpu) ft4  <-- 8.0
      0x80000714 addi    a0, a1, 6              #; a1  = 3, (wrb) a0  <-- 9
      0x8000070c fmul.d  ft4, ft4, ft3          #; ft4  = 8.0, ft3  = 1.4142
                                                #; (f:fpu) ft4  <-- 11.3136
      0x80000710 fsgnj.d ft0, ft4, ft4          #; ft4  = 11.3136, ft4  = 11.3136
      0x80000718 fcvt.d.wu ft4, a0              #; ac1  = 9, (f:fpu) ft0  <-- 11.3136
                                                #; (f:fpu) ft4  <-- 9.0
      0x80000724 addi    a0, a1, 7              #; a1  = 3, (wrb) a0  <-- 10
      0x8000071c fmul.d  ft4, ft4, ft3          #; ft4  = 9.0, ft3  = 1.4142
                                                #; (f:fpu) ft4  <-- 12.7278000
      0x80000720 fsgnj.d ft0, ft4, ft4          #; ft4  = 12.7278000, ft4  = 12.7278000
      0x80000728 fcvt.d.wu ft4, a0              #; ac1  = 10, (f:fpu) ft0  <-- 12.7278000
                                                #; (f:fpu) ft4  <-- 10.0
      0x80000734 addi    a0, a1, 8              #; a1  = 3, (wrb) a0  <-- 11
      0x8000072c fmul.d  ft4, ft4, ft3          #; ft4  = 10.0, ft3  = 1.4142
                                                #; (f:fpu) ft4  <-- 14.142
      0x80000730 fsgnj.d ft0, ft4, ft4          #; ft4  = 14.142, ft4  = 14.142
      0x80000738 fcvt.d.wu ft4, a0              #; ac1  = 11, (f:fpu) ft0  <-- 14.142
                                                #; (f:fpu) ft4  <-- 11.0
      0x80000744 addi    a0, a1, 9              #; a1  = 3, (wrb) a0  <-- 12
      0x8000073c fmul.d  ft4, ft4, ft3          #; ft4  = 11.0, ft3  = 1.4142
                                                #; (f:fpu) ft4  <-- 15.5562000
      0x80000740 fsgnj.d ft0, ft4, ft4          #; ft4  = 15.5562000, ft4  = 15.5562000
      0x80000748 fcvt.d.wu ft4, a0              #; ac1  = 12, (f:fpu) ft0  <-- 15.5562000
                                                #; (f:fpu) ft4  <-- 12.0
      0x8000074c fmul.d  ft3, ft4, ft3          #; ft4  = 12.0, ft3  = 1.4142
; init_data (test_conflict.c:0)
      0x80000758 j       pc + 0xac              #; goto 0x80000804
                                                #; (f:fpu) ft3  <-- 16.9704000
; init_data (test_conflict.c:9)
      0x80000750 fsgnj.d ft0, ft3, ft3          #; ft3  = 16.9704000, ft3  = 16.9704000
; init_data (test_conflict.c:0)
      0x80000754 csrrci  a0, ssr, 1             #; (f:fpu) ft0  <-- 16.9704000
; init_data (test_conflict.c:11)
      0x80000804 fld     fs11, 0(sp)            #; fs11 <~~ Doub[0x0011fee0]
      0x80000808 fld     fs10, 8(sp)            #; fs10 <~~ Doub[0x0011fee8], (f:lsu) fs11 <-- 0.0
      0x8000080c fld     fs9, 16(sp)            #; fs9  <~~ Doub[0x0011fef0], (f:lsu) fs10 <-- 0.0
      0x80000810 fld     fs8, 24(sp)            #; fs8  <~~ Doub[0x0011fef8], (f:lsu) fs9  <-- 0.0
      0x80000814 fld     fs7, 32(sp)            #; fs7  <~~ Doub[0x0011ff00], (f:lsu) fs8  <-- 0.0
      0x80000818 fld     fs6, 40(sp)            #; fs6  <~~ Doub[0x0011ff08], (f:lsu) fs7  <-- 0.0
      0x8000081c fld     fs5, 48(sp)            #; fs5  <~~ Doub[0x0011ff10], (f:lsu) fs6  <-- 0.0
      0x80000820 fld     fs4, 56(sp)            #; fs4  <~~ Doub[0x0011ff18], (f:lsu) fs5  <-- 0.0
      0x80000824 fld     fs3, 64(sp)            #; fs3  <~~ Doub[0x0011ff20], (f:lsu) fs4  <-- 0.0
      0x80000828 fld     fs2, 72(sp)            #; fs2  <~~ Doub[0x0011ff28], (f:lsu) fs3  <-- 0.0
      0x80000834 addi    sp, sp, 96             #; sp  = 0x0011fee0, (wrb) sp  <-- 0x0011ff40
      0x8000082c fld     fs1, 80(sp)            #; fs1  <~~ Doub[0x0011ff30], (f:lsu) fs2  <-- 0.0
      0x80000838 ret                            #; ra  = 0x8000090c, goto 0x8000090c
      0x80000830 fld     fs0, 88(sp)            #; fs0  <~~ Doub[0x0011ff38], (f:lsu) fs1  <-- 0.0
                                                #; (f:lsu) fs0  <-- 0.0
; conflict (conflict.c:13)
;  in main (test_conflict.c:26)
      0x8000090c mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
      0x80000910 li      a1, 0                  #; (wrb) a1  <-- 0
      0x80000914 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000914
      0x80000918 jalr    ra, ra, 492            #; ra  = 0x80000914, (wrb) ra  <-- 0x8000091c, goto 0x80000b00
; change_c.llvm.14194602124631391890 (conflict.c:5)
      0x80000b00 slli    a1, a1, 3              #; a1  = 0, (wrb) a1  <-- 0
      0x80000b04 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 0, (wrb) a0  <-- 0x001000a0
      0x80000b08 sw      zero, 4(a0)            #; a0  = 0x001000a0, 0 ~~> Word[0x001000a4]
      0x80000b0c sw      zero, 0(a0)            #; a0  = 0x001000a0, 0 ~~> Word[0x001000a0]
; change_c.llvm.14194602124631391890 (conflict.c:6)
      0x80000b10 ret                            #; ra  = 0x8000091c, goto 0x8000091c
; conflict (conflict.c:14)
;  in main (test_conflict.c:26)
      0x8000091c fld     ft0, 0(s2)             #; ft0  <~~ Doub[0x00100000]
      0x80000920 fld     ft1, 0(s1)             #; ft1  <~~ Doub[0x00100050], (f:lsu) ft0  <-- 1.4142
      0x80000924 fld     ft2, 0(s0)             #; ft2  <~~ Doub[0x001000a0], (f:lsu) ft1  <-- 2.8284
      0x80000928 fadd.d  ft0, ft0, ft1          #; ft0  = 1.4142, ft1  = 2.8284, (f:lsu) ft2  <-- 0.0
                                                #; (f:fpu) ft0  <-- 4.2426000
      0x8000092c fadd.d  fs0, ft0, ft2          #; ft0  = 4.2426000, ft2  = 0.0
                                                #; (f:fpu) fs0  <-- 4.2426000
; conflict (conflict.c:13)
;  in main (test_conflict.c:26)
      0x80000930 li      a1, 1                  #; (wrb) a1  <-- 1
      0x80000934 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
      0x80000938 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000938
      0x8000093c jalr    ra, ra, 456            #; ra  = 0x80000938, (wrb) ra  <-- 0x80000940, goto 0x80000b00
; change_c.llvm.14194602124631391890 (conflict.c:5)
      0x80000b00 slli    a1, a1, 3              #; a1  = 1, (wrb) a1  <-- 8
      0x80000b04 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 8, (wrb) a0  <-- 0x001000a8
      0x80000b08 sw      zero, 4(a0)            #; a0  = 0x001000a8, 0 ~~> Word[0x001000ac]
      0x80000b0c sw      zero, 0(a0)            #; a0  = 0x001000a8, 0 ~~> Word[0x001000a8]
; change_c.llvm.14194602124631391890 (conflict.c:6)
      0x80000b10 ret                            #; ra  = 0x80000940, goto 0x80000940
; conflict (conflict.c:14)
;  in main (test_conflict.c:26)
      0x80000940 fld     ft0, 8(s2)             #; ft0  <~~ Doub[0x00100008]
      0x80000944 fld     ft1, 8(s1)             #; ft1  <~~ Doub[0x00100058], (f:lsu) ft0  <-- 2.8284
      0x80000948 fld     ft2, 8(s0)             #; ft2  <~~ Doub[0x001000a8], (f:lsu) ft1  <-- 4.2426000
      0x8000094c fadd.d  ft0, ft0, fs0          #; ft0  = 2.8284, fs0  = 4.2426000, (f:lsu) ft2  <-- 0.0
                                                #; (f:fpu) ft0  <-- 7.071
; conflict (conflict.c:13)
;  in main (test_conflict.c:26)
      0x80000958 li      a1, 2                  #; (wrb) a1  <-- 2
      0x80000950 fadd.d  ft0, ft0, ft1          #; ft0  = 7.071, ft1  = 4.2426000
      0x8000095c mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
                                                #; (f:fpu) ft0  <-- 11.3136
; conflict (conflict.c:14)
;  in main (test_conflict.c:26)
      0x80000954 fadd.d  fs0, ft0, ft2          #; ft0  = 11.3136, ft2  = 0.0
                                                #; (f:fpu) fs0  <-- 11.3136
; conflict (conflict.c:13)
;  in main (test_conflict.c:26)
      0x80000960 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000960
      0x80000964 jalr    ra, ra, 416            #; ra  = 0x80000960, (wrb) ra  <-- 0x80000968, goto 0x80000b00
; change_c.llvm.14194602124631391890 (conflict.c:5)
      0x80000b00 slli    a1, a1, 3              #; a1  = 2, (wrb) a1  <-- 16
      0x80000b04 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 16, (wrb) a0  <-- 0x001000b0
      0x80000b08 sw      zero, 4(a0)            #; a0  = 0x001000b0, 0 ~~> Word[0x001000b4]
      0x80000b0c sw      zero, 0(a0)            #; a0  = 0x001000b0, 0 ~~> Word[0x001000b0]
; change_c.llvm.14194602124631391890 (conflict.c:6)
      0x80000b10 ret                            #; ra  = 0x80000968, goto 0x80000968
; conflict (conflict.c:14)
;  in main (test_conflict.c:26)
      0x80000968 fld     ft0, 16(s2)            #; ft0  <~~ Doub[0x00100010]
      0x8000096c fld     ft1, 16(s1)            #; ft1  <~~ Doub[0x00100060], (f:lsu) ft0  <-- 4.2426000
                                                #; (f:lsu) ft1  <-- 5.6568
      0x80000970 fld     ft2, 16(s0)            #; ft2  <~~ Doub[0x001000b0]
      0x80000974 fadd.d  ft0, ft0, fs0          #; ft0  = 4.2426000, fs0  = 11.3136, (f:lsu) ft2  <-- 0.0
                                                #; (f:fpu) ft0  <-- 15.5562000
      0x80000978 fadd.d  ft0, ft0, ft1          #; ft0  = 15.5562000, ft1  = 5.6568
                                                #; (f:fpu) ft0  <-- 21.2130000
      0x8000097c fadd.d  fs0, ft0, ft2          #; ft0  = 21.2130000, ft2  = 0.0
; conflict (conflict.c:13)
;  in main (test_conflict.c:26)
      0x80000980 li      a1, 3                  #; (wrb) a1  <-- 3
      0x80000984 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
      0x80000988 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000988
                                                #; (f:fpu) fs0  <-- 21.2130000
      0x8000098c jalr    ra, ra, 376            #; ra  = 0x80000988, (wrb) ra  <-- 0x80000990, goto 0x80000b00
; change_c.llvm.14194602124631391890 (conflict.c:5)
      0x80000b00 slli    a1, a1, 3              #; a1  = 3, (wrb) a1  <-- 24
      0x80000b04 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 24, (wrb) a0  <-- 0x001000b8
      0x80000b08 sw      zero, 4(a0)            #; a0  = 0x001000b8, 0 ~~> Word[0x001000bc]
      0x80000b0c sw      zero, 0(a0)            #; a0  = 0x001000b8, 0 ~~> Word[0x001000b8]
; change_c.llvm.14194602124631391890 (conflict.c:6)
      0x80000b10 ret                            #; ra  = 0x80000990, goto 0x80000990
; conflict (conflict.c:14)
;  in main (test_conflict.c:26)
      0x80000990 fld     ft0, 24(s2)            #; ft0  <~~ Doub[0x00100018]
      0x80000994 fld     ft1, 24(s1)            #; ft1  <~~ Doub[0x00100068], (f:lsu) ft0  <-- 5.6568
      0x80000998 fld     ft2, 24(s0)            #; ft2  <~~ Doub[0x001000b8], (f:lsu) ft1  <-- 7.071
      0x8000099c fadd.d  ft0, ft0, fs0          #; ft0  = 5.6568, fs0  = 21.2130000, (f:lsu) ft2  <-- 0.0
                                                #; (f:fpu) ft0  <-- 26.8698000
; conflict (conflict.c:13)
;  in main (test_conflict.c:26)
      0x800009a8 li      a1, 4                  #; (wrb) a1  <-- 4
      0x800009a0 fadd.d  ft0, ft0, ft1          #; ft0  = 26.8698000, ft1  = 7.071
      0x800009ac mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
                                                #; (f:fpu) ft0  <-- 33.9408000
; conflict (conflict.c:14)
;  in main (test_conflict.c:26)
      0x800009a4 fadd.d  fs0, ft0, ft2          #; ft0  = 33.9408000, ft2  = 0.0
                                                #; (f:fpu) fs0  <-- 33.9408000
; conflict (conflict.c:13)
;  in main (test_conflict.c:26)
      0x800009b0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800009b0
      0x800009b4 jalr    ra, ra, 336            #; ra  = 0x800009b0, (wrb) ra  <-- 0x800009b8, goto 0x80000b00
; change_c.llvm.14194602124631391890 (conflict.c:5)
      0x80000b00 slli    a1, a1, 3              #; a1  = 4, (wrb) a1  <-- 32
      0x80000b04 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 32, (wrb) a0  <-- 0x001000c0
      0x80000b08 sw      zero, 4(a0)            #; a0  = 0x001000c0, 0 ~~> Word[0x001000c4]
      0x80000b0c sw      zero, 0(a0)            #; a0  = 0x001000c0, 0 ~~> Word[0x001000c0]
; change_c.llvm.14194602124631391890 (conflict.c:6)
      0x80000b10 ret                            #; ra  = 0x800009b8, goto 0x800009b8
; conflict (conflict.c:14)
;  in main (test_conflict.c:26)
      0x800009b8 fld     ft0, 32(s2)            #; ft0  <~~ Doub[0x00100020]
      0x800009bc fld     ft1, 32(s1)            #; ft1  <~~ Doub[0x00100070], (f:lsu) ft0  <-- 7.071
                                                #; (f:lsu) ft1  <-- 8.4852000
      0x800009c0 fld     ft2, 32(s0)            #; ft2  <~~ Doub[0x001000c0]
      0x800009c4 fadd.d  ft0, ft0, fs0          #; ft0  = 7.071, fs0  = 33.9408000, (f:lsu) ft2  <-- 0.0
                                                #; (f:fpu) ft0  <-- 41.0118000
      0x800009c8 fadd.d  ft0, ft0, ft1          #; ft0  = 41.0118000, ft1  = 8.4852000
                                                #; (f:fpu) ft0  <-- 49.4970000
      0x800009cc fadd.d  fs0, ft0, ft2          #; ft0  = 49.4970000, ft2  = 0.0
; conflict (conflict.c:13)
;  in main (test_conflict.c:26)
      0x800009d0 li      a1, 5                  #; (wrb) a1  <-- 5
      0x800009d4 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
      0x800009d8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800009d8
                                                #; (f:fpu) fs0  <-- 49.4970000
      0x800009dc jalr    ra, ra, 296            #; ra  = 0x800009d8, (wrb) ra  <-- 0x800009e0, goto 0x80000b00
; change_c.llvm.14194602124631391890 (conflict.c:5)
      0x80000b00 slli    a1, a1, 3              #; a1  = 5, (wrb) a1  <-- 40
      0x80000b04 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 40, (wrb) a0  <-- 0x001000c8
      0x80000b08 sw      zero, 4(a0)            #; a0  = 0x001000c8, 0 ~~> Word[0x001000cc]
      0x80000b0c sw      zero, 0(a0)            #; a0  = 0x001000c8, 0 ~~> Word[0x001000c8]
; change_c.llvm.14194602124631391890 (conflict.c:6)
      0x80000b10 ret                            #; ra  = 0x800009e0, goto 0x800009e0
; conflict (conflict.c:14)
;  in main (test_conflict.c:26)
      0x800009e0 fld     ft0, 40(s2)            #; ft0  <~~ Doub[0x00100028]
      0x800009e4 fld     ft1, 40(s1)            #; ft1  <~~ Doub[0x00100078], (f:lsu) ft0  <-- 8.4852000
      0x800009e8 fld     ft2, 40(s0)            #; ft2  <~~ Doub[0x001000c8], (f:lsu) ft1  <-- 9.8994
      0x800009ec fadd.d  ft0, ft0, fs0          #; ft0  = 8.4852000, fs0  = 49.4970000, (f:lsu) ft2  <-- 0.0
                                                #; (f:fpu) ft0  <-- 57.9822000
; conflict (conflict.c:13)
;  in main (test_conflict.c:26)
      0x800009f8 li      a1, 6                  #; (wrb) a1  <-- 6
      0x800009f0 fadd.d  ft0, ft0, ft1          #; ft0  = 57.9822000, ft1  = 9.8994
      0x800009fc mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
                                                #; (f:fpu) ft0  <-- 67.8816000
; conflict (conflict.c:14)
;  in main (test_conflict.c:26)
      0x800009f4 fadd.d  fs0, ft0, ft2          #; ft0  = 67.8816000, ft2  = 0.0
                                                #; (f:fpu) fs0  <-- 67.8816000
; conflict (conflict.c:13)
;  in main (test_conflict.c:26)
      0x80000a00 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000a00
      0x80000a04 jalr    ra, ra, 256            #; ra  = 0x80000a00, (wrb) ra  <-- 0x80000a08, goto 0x80000b00
; change_c.llvm.14194602124631391890 (conflict.c:5)
      0x80000b00 slli    a1, a1, 3              #; a1  = 6, (wrb) a1  <-- 48
      0x80000b04 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 48, (wrb) a0  <-- 0x001000d0
      0x80000b08 sw      zero, 4(a0)            #; a0  = 0x001000d0, 0 ~~> Word[0x001000d4]
      0x80000b0c sw      zero, 0(a0)            #; a0  = 0x001000d0, 0 ~~> Word[0x001000d0]
; change_c.llvm.14194602124631391890 (conflict.c:6)
      0x80000b10 ret                            #; ra  = 0x80000a08, goto 0x80000a08
; conflict (conflict.c:14)
;  in main (test_conflict.c:26)
      0x80000a08 fld     ft0, 48(s2)            #; ft0  <~~ Doub[0x00100030]
      0x80000a0c fld     ft1, 48(s1)            #; ft1  <~~ Doub[0x00100080], (f:lsu) ft0  <-- 9.8994
      0x80000a10 fld     ft2, 48(s0)            #; ft2  <~~ Doub[0x001000d0], (f:lsu) ft1  <-- 11.3136
      0x80000a14 fadd.d  ft0, ft0, fs0          #; ft0  = 9.8994, fs0  = 67.8816000, (f:lsu) ft2  <-- 0.0
                                                #; (f:fpu) ft0  <-- 77.7810000
      0x80000a18 fadd.d  ft0, ft0, ft1          #; ft0  = 77.7810000, ft1  = 11.3136
                                                #; (f:fpu) ft0  <-- 89.0946000
      0x80000a1c fadd.d  fs0, ft0, ft2          #; ft0  = 89.0946000, ft2  = 0.0
; conflict (conflict.c:13)
;  in main (test_conflict.c:26)
      0x80000a20 li      a1, 7                  #; (wrb) a1  <-- 7
      0x80000a24 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
      0x80000a28 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000a28
                                                #; (f:fpu) fs0  <-- 89.0946000
      0x80000a2c jalr    ra, ra, 216            #; ra  = 0x80000a28, (wrb) ra  <-- 0x80000a30, goto 0x80000b00
; change_c.llvm.14194602124631391890 (conflict.c:5)
      0x80000b00 slli    a1, a1, 3              #; a1  = 7, (wrb) a1  <-- 56
      0x80000b04 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 56, (wrb) a0  <-- 0x001000d8
      0x80000b08 sw      zero, 4(a0)            #; a0  = 0x001000d8, 0 ~~> Word[0x001000dc]
      0x80000b0c sw      zero, 0(a0)            #; a0  = 0x001000d8, 0 ~~> Word[0x001000d8]
; change_c.llvm.14194602124631391890 (conflict.c:6)
      0x80000b10 ret                            #; ra  = 0x80000a30, goto 0x80000a30
; conflict (conflict.c:14)
;  in main (test_conflict.c:26)
      0x80000a30 fld     ft0, 56(s2)            #; ft0  <~~ Doub[0x00100038]
      0x80000a34 fld     ft1, 56(s1)            #; ft1  <~~ Doub[0x00100088], (f:lsu) ft0  <-- 11.3136
      0x80000a38 fld     ft2, 56(s0)            #; ft2  <~~ Doub[0x001000d8], (f:lsu) ft1  <-- 12.7278000
      0x80000a3c fadd.d  ft0, ft0, fs0          #; ft0  = 11.3136, fs0  = 89.0946000, (f:lsu) ft2  <-- 0.0
                                                #; (f:fpu) ft0  <-- 100.4082000
; conflict (conflict.c:13)
;  in main (test_conflict.c:26)
      0x80000a48 li      a1, 8                  #; (wrb) a1  <-- 8
      0x80000a40 fadd.d  ft0, ft0, ft1          #; ft0  = 100.4082000, ft1  = 12.7278000
      0x80000a4c mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
                                                #; (f:fpu) ft0  <-- 113.1360000
; conflict (conflict.c:14)
;  in main (test_conflict.c:26)
      0x80000a44 fadd.d  fs0, ft0, ft2          #; ft0  = 113.1360000, ft2  = 0.0
                                                #; (f:fpu) fs0  <-- 113.1360000
; conflict (conflict.c:13)
;  in main (test_conflict.c:26)
      0x80000a50 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000a50
      0x80000a54 jalr    ra, ra, 176            #; ra  = 0x80000a50, (wrb) ra  <-- 0x80000a58, goto 0x80000b00
; change_c.llvm.14194602124631391890 (conflict.c:5)
      0x80000b00 slli    a1, a1, 3              #; a1  = 8, (wrb) a1  <-- 64
      0x80000b04 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 64, (wrb) a0  <-- 0x001000e0
      0x80000b08 sw      zero, 4(a0)            #; a0  = 0x001000e0, 0 ~~> Word[0x001000e4]
      0x80000b0c sw      zero, 0(a0)            #; a0  = 0x001000e0, 0 ~~> Word[0x001000e0]
; change_c.llvm.14194602124631391890 (conflict.c:6)
      0x80000b10 ret                            #; ra  = 0x80000a58, goto 0x80000a58
; conflict (conflict.c:14)
;  in main (test_conflict.c:26)
      0x80000a58 fld     ft0, 64(s2)            #; ft0  <~~ Doub[0x00100040]
      0x80000a5c fld     ft1, 64(s1)            #; ft1  <~~ Doub[0x00100090], (f:lsu) ft0  <-- 12.7278000
                                                #; (f:lsu) ft1  <-- 14.142
      0x80000a60 fld     ft2, 64(s0)            #; ft2  <~~ Doub[0x001000e0]
      0x80000a64 fadd.d  ft0, ft0, fs0          #; ft0  = 12.7278000, fs0  = 113.1360000, (f:lsu) ft2  <-- 0.0
                                                #; (f:fpu) ft0  <-- 125.8638000
      0x80000a68 fadd.d  ft0, ft0, ft1          #; ft0  = 125.8638000, ft1  = 14.142
                                                #; (f:fpu) ft0  <-- 140.0058
      0x80000a6c fadd.d  fs0, ft0, ft2          #; ft0  = 140.0058, ft2  = 0.0
; conflict (conflict.c:13)
;  in main (test_conflict.c:26)
      0x80000a70 li      a1, 9                  #; (wrb) a1  <-- 9
      0x80000a74 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
      0x80000a78 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000a78
                                                #; (f:fpu) fs0  <-- 140.0058
      0x80000a7c jalr    ra, ra, 136            #; ra  = 0x80000a78, (wrb) ra  <-- 0x80000a80, goto 0x80000b00
; change_c.llvm.14194602124631391890 (conflict.c:5)
      0x80000b00 slli    a1, a1, 3              #; a1  = 9, (wrb) a1  <-- 72
      0x80000b04 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 72, (wrb) a0  <-- 0x001000e8
      0x80000b08 sw      zero, 4(a0)            #; a0  = 0x001000e8, 0 ~~> Word[0x001000ec]
      0x80000b0c sw      zero, 0(a0)            #; a0  = 0x001000e8, 0 ~~> Word[0x001000e8]
; change_c.llvm.14194602124631391890 (conflict.c:6)
      0x80000b10 ret                            #; ra  = 0x80000a80, goto 0x80000a80
; conflict (conflict.c:14)
;  in main (test_conflict.c:26)
      0x80000a80 fld     ft0, 72(s2)            #; ft0  <~~ Doub[0x00100048]
; conflict (conflict.c:0)
;  in main (test_conflict.c:26)
      0x80000a8c auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002a8c
      0x80000a84 fld     ft1, 72(s1)            #; ft1  <~~ Doub[0x00100098], (f:lsu) ft0  <-- 14.142
; conflict (conflict.c:14)
;  in main (test_conflict.c:26)
      0x80000a88 fld     ft2, 72(s0)            #; ft2  <~~ Doub[0x001000e8], (f:lsu) ft1  <-- 15.5562000
                                                #; (f:lsu) ft2  <-- 0.0
; conflict (conflict.c:0)
;  in main (test_conflict.c:26)
      0x80000a90 addi    a0, a0, 1620           #; a0  = 0x80002a8c, (wrb) a0  <-- 0x800030e0
      0x80000a94 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x800030e0]
; conflict (conflict.c:14)
;  in main (test_conflict.c:26)
      0x80000a98 fadd.d  ft0, ft0, fs0          #; ft0  = 14.142, fs0  = 140.0058
                                                #; (f:fpu) ft0  <-- 154.1478
      0x80000a9c fadd.d  ft0, ft0, ft1          #; ft0  = 154.1478, ft1  = 15.5562000
                                                #; (f:fpu) ft0  <-- 169.7040000
                                                #; (f:lsu) ft3  <-- -169.704
      0x80000aa0 fadd.d  ft0, ft0, ft2          #; ft0  = 169.7040000, ft2  = 0.0
                                                #; (f:fpu) ft0  <-- 169.7040000
; main (test_conflict.c:29)
      0x80000aa4 fadd.d  ft1, ft0, ft3          #; ft0  = 169.7040000, ft3  = -169.704
                                                #; (f:fpu) ft1  <-- -0.0000000
; main (test_conflict.c:30)
      0x80000aa8 fsgnjx.d fs0, ft1, ft1         #; ft1  = -0.0000000, ft1  = -0.0000000
; main (test_conflict.c:32)
      0x80000aac fsd     ft0, 0(sp)             #; 169.7040000 ~~> Doub[0x0011ff40], (f:fpu) fs0  <-- 0.0000000
      0x80000ab0 lw      a2, 0(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff40]
                                                #; (lsu) a2  <-- 0x2b020c49
      0x80000ab4 lw      a3, 4(sp)              #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff44]
                                                #; (lsu) a3  <-- 0x40653687
      0x80000ab8 fsd     fs0, 0(sp)             #; 0.0000000 ~~> Doub[0x0011ff40]
      0x80000abc lw      a4, 0(sp)              #; sp  = 0x0011ff40, a4  <~~ Word[0x0011ff40]
                                                #; (lsu) a4  <-- 0
      0x80000ac0 lw      a5, 4(sp)              #; sp  = 0x0011ff40, a5  <~~ Word[0x0011ff44]
      0x80000ac4 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002ac4
      0x80000ac8 addi    a0, a0, 897            #; a0  = 0x80002ac4, (wrb) a0  <-- 0x80002e45
      0x80000acc auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000acc
                                                #; (lsu) a5  <-- 0x3d200000
      0x80000ad0 jalr    ra, ra, 72             #; ra  = 0x80000acc, (wrb) ra  <-- 0x80000ad4, goto 0x80000b14
; printf_ (printf.c:863)
      0x80000b14 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
      0x80000b18 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x80000ad4 ~~> Word[0x0011ff1c]
      0x80000b1c mv      t0, a0                 #; a0  = 0x80002e45, (wrb) t0  <-- 0x80002e45
      0x80000b20 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 0xffff0000 ~~> Word[0x0011ff3c]
      0x80000b24 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 0x00120000 ~~> Word[0x0011ff38]
      0x80000b28 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 0x3d200000 ~~> Word[0x0011ff34]
      0x80000b2c sw      a4, 32(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff30]
      0x80000b30 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0x40653687 ~~> Word[0x0011ff2c]
      0x80000b34 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0x2b020c49 ~~> Word[0x0011ff28]
      0x80000b38 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 72 ~~> Word[0x0011ff24]
      0x80000b3c addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
; printf_ (printf.c:865)
      0x80000b40 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
; printf_ (printf.c:867)
      0x80000b44 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001b44
      0x80000b48 addi    a0, a0, -988           #; a0  = 0x80001b44, (wrb) a0  <-- 0x80001768
      0x80000b4c addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
      0x80000b50 li      a2, -1                 #; (wrb) a2  <-- -1
      0x80000b54 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
      0x80000b58 mv      a3, t0                 #; t0  = 0x80002e45, (wrb) a3  <-- 0x80002e45
      0x80000b5c auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000b5c
      0x80000b60 jalr    ra, ra, 20             #; ra  = 0x80000b5c, (wrb) ra  <-- 0x80000b64, goto 0x80000b70
; _vsnprintf.llvm.1805434900161566649 (printf.c:578)
      0x80000b70 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
      0x80000b74 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x80000b64 ~~> Word[0x0011ff0c]
      0x80000b78 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0x001000a0 ~~> Word[0x0011ff08]
      0x80000b7c sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0x00100050 ~~> Word[0x0011ff04]
      0x80000b80 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0x00100000 ~~> Word[0x0011ff00]
      0x80000b84 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
      0x80000b88 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
      0x80000b8c sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
      0x80000b90 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
      0x80000b94 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
      0x80000b98 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
      0x80000b9c sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
      0x80000ba0 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
      0x80000ba4 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
      0x80000ba8 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
      0x80000bac mv      s0, a3                 #; a3  = 0x80002e45, (wrb) s0  <-- 0x80002e45
      0x80000bb0 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
      0x80000bb4 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
; _vsnprintf.llvm.1805434900161566649 (printf.c:582)
      0x80000bb8 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000bbc mv      s2, a0                 #; a0  = 0x80001768, (wrb) s2  <-- 0x80001768
      0x80000bc0 j       pc + 0xc               #; goto 0x80000bcc
      0x80000bcc li      s8, 0                  #; (wrb) s8  <-- 0
      0x80000bd0 li      s6, 37                 #; (wrb) s6  <-- 37
      0x80000bd4 li      s11, 16                #; (wrb) s11 <-- 16
      0x80000bd8 li      s7, 46                 #; (wrb) s7  <-- 46
      0x80000bdc lui     a0, 0x1                #; (wrb) a0  <-- 4096
      0x80000be0 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
      0x80000be4 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
      0x80000be8 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
      0x80000bec addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
      0x80000bf0 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000bf4 addi    s10, s0, 2             #; s0  = 0x80002e45, (wrb) s10 <-- 0x80002e47
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000bf8 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
      0x80000bfc li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c00 lbu     a0, 0(s0)              #; s0  = 0x80002e45, a0  <~~ Byte[0x80002e45]
                                                #; (lsu) a0  <-- 101
      0x80000c04 beqz    a0, pc + 2824          #; a0  = 101, not taken
      0x80000c08 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000c0c addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
      0x80000c10 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000c14 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
      0x80000c18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000c1c jalr    s2                     #; s2  = 0x80001768, (wrb) ra  <-- 0x80000c20, goto 0x80001768
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001768 beqz    a0, pc + 168           #; a0  = 101, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000176c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001770 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001774 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001778 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003778
      0x8000177c addi    a3, a3, -1500          #; a3  = 0x80003778, (wrb) a3  <-- 0x8000319c
      0x80001780 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001784 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 0
      0x80001788 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
      0x8000178c sw      a5, 0(a1)              #; a1  = 0x8000319c, 1 ~~> Word[0x8000319c]
      0x80001790 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 0, (wrb) a4  <-- 0x8000319c
      0x80001794 sb      a0, 72(a4)             #; a4  = 0x8000319c, 101 ~~> Byte[0x800031e4]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001798 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 1
      0x8000179c addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
      0x800017a0 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
      0x800017a4 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
      0x800017a8 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
      0x800017ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001810
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001810 ret                            #; ra  = 0x80000c20, goto 0x80000c20
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000c20 addi    s0, s0, 1              #; s0  = 0x80002e45, (wrb) s0  <-- 0x80002e46
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000c24 addi    s10, s10, 1            #; s10 = 0x80002e47, (wrb) s10 <-- 0x80002e48
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c28 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c2c lbu     a0, 0(s0)              #; s0  = 0x80002e46, a0  <~~ Byte[0x80002e46]
                                                #; (lsu) a0  <-- 114
      0x80000c30 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000c08
      0x80000c08 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000c0c addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
      0x80000c10 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000c14 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
      0x80000c18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000c1c jalr    s2                     #; s2  = 0x80001768, (wrb) ra  <-- 0x80000c20, goto 0x80001768
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001768 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000176c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001770 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001774 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001778 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003778
      0x8000177c addi    a3, a3, -1500          #; a3  = 0x80003778, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001780 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001784 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 1
      0x80001788 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
      0x8000178c sw      a5, 0(a1)              #; a1  = 0x8000319c, 2 ~~> Word[0x8000319c]
      0x80001790 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 1, (wrb) a4  <-- 0x8000319d
      0x80001794 sb      a0, 72(a4)             #; a4  = 0x8000319d, 114 ~~> Byte[0x800031e5]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001798 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 2
      0x8000179c addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
      0x800017a0 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
      0x800017a4 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x800017a8 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x800017ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001810
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001810 ret                            #; ra  = 0x80000c20, goto 0x80000c20
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000c20 addi    s0, s0, 1              #; s0  = 0x80002e46, (wrb) s0  <-- 0x80002e47
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000c24 addi    s10, s10, 1            #; s10 = 0x80002e48, (wrb) s10 <-- 0x80002e49
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c28 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c2c lbu     a0, 0(s0)              #; s0  = 0x80002e47, a0  <~~ Byte[0x80002e47]
                                                #; (lsu) a0  <-- 114
      0x80000c30 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000c08
      0x80000c08 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000c0c addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
      0x80000c10 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000c14 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
      0x80000c18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000c1c jalr    s2                     #; s2  = 0x80001768, (wrb) ra  <-- 0x80000c20, goto 0x80001768
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001768 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000176c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001770 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001774 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001778 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003778
      0x8000177c addi    a3, a3, -1500          #; a3  = 0x80003778, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001780 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001784 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 2
      0x80001788 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
      0x8000178c sw      a5, 0(a1)              #; a1  = 0x8000319c, 3 ~~> Word[0x8000319c]
      0x80001790 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 2, (wrb) a4  <-- 0x8000319e
      0x80001794 sb      a0, 72(a4)             #; a4  = 0x8000319e, 114 ~~> Byte[0x800031e6]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001798 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 3
      0x8000179c addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
      0x800017a0 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
      0x800017a4 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x800017a8 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x800017ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001810
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001810 ret                            #; ra  = 0x80000c20, goto 0x80000c20
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000c20 addi    s0, s0, 1              #; s0  = 0x80002e47, (wrb) s0  <-- 0x80002e48
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000c24 addi    s10, s10, 1            #; s10 = 0x80002e49, (wrb) s10 <-- 0x80002e4a
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c28 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c2c lbu     a0, 0(s0)              #; s0  = 0x80002e48, a0  <~~ Byte[0x80002e48]
                                                #; (lsu) a0  <-- 111
      0x80000c30 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000c08
      0x80000c08 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000c0c addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
      0x80000c10 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000c14 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
      0x80000c18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000c1c jalr    s2                     #; s2  = 0x80001768, (wrb) ra  <-- 0x80000c20, goto 0x80001768
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001768 beqz    a0, pc + 168           #; a0  = 111, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000176c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001770 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001774 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001778 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003778
      0x8000177c addi    a3, a3, -1500          #; a3  = 0x80003778, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001780 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001784 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 3
      0x80001788 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
      0x8000178c sw      a5, 0(a1)              #; a1  = 0x8000319c, 4 ~~> Word[0x8000319c]
      0x80001790 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 3, (wrb) a4  <-- 0x8000319f
      0x80001794 sb      a0, 72(a4)             #; a4  = 0x8000319f, 111 ~~> Byte[0x800031e7]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001798 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 4
      0x8000179c addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
      0x800017a0 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
      0x800017a4 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
      0x800017a8 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
      0x800017ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001810
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001810 ret                            #; ra  = 0x80000c20, goto 0x80000c20
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000c20 addi    s0, s0, 1              #; s0  = 0x80002e48, (wrb) s0  <-- 0x80002e49
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000c24 addi    s10, s10, 1            #; s10 = 0x80002e4a, (wrb) s10 <-- 0x80002e4b
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c28 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c2c lbu     a0, 0(s0)              #; s0  = 0x80002e49, a0  <~~ Byte[0x80002e49]
                                                #; (lsu) a0  <-- 114
      0x80000c30 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000c08
      0x80000c08 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000c0c addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
      0x80000c10 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000c14 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
      0x80000c18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000c1c jalr    s2                     #; s2  = 0x80001768, (wrb) ra  <-- 0x80000c20, goto 0x80001768
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001768 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000176c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001770 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001774 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001778 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003778
      0x8000177c addi    a3, a3, -1500          #; a3  = 0x80003778, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001780 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001784 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 4
      0x80001788 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
      0x8000178c sw      a5, 0(a1)              #; a1  = 0x8000319c, 5 ~~> Word[0x8000319c]
      0x80001790 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 4, (wrb) a4  <-- 0x800031a0
      0x80001794 sb      a0, 72(a4)             #; a4  = 0x800031a0, 114 ~~> Byte[0x800031e8]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001798 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 5
      0x8000179c addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
      0x800017a0 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
      0x800017a4 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x800017a8 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x800017ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001810
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001810 ret                            #; ra  = 0x80000c20, goto 0x80000c20
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000c20 addi    s0, s0, 1              #; s0  = 0x80002e49, (wrb) s0  <-- 0x80002e4a
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000c24 addi    s10, s10, 1            #; s10 = 0x80002e4b, (wrb) s10 <-- 0x80002e4c
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c28 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c2c lbu     a0, 0(s0)              #; s0  = 0x80002e4a, a0  <~~ Byte[0x80002e4a]
                                                #; (lsu) a0  <-- 32
      0x80000c30 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000c08
      0x80000c08 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000c0c addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
      0x80000c10 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000c14 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
      0x80000c18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000c1c jalr    s2                     #; s2  = 0x80001768, (wrb) ra  <-- 0x80000c20, goto 0x80001768
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001768 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000176c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001770 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001774 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001778 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003778
      0x8000177c addi    a3, a3, -1500          #; a3  = 0x80003778, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001780 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001784 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 5
      0x80001788 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
      0x8000178c sw      a5, 0(a1)              #; a1  = 0x8000319c, 6 ~~> Word[0x8000319c]
      0x80001790 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 5, (wrb) a4  <-- 0x800031a1
      0x80001794 sb      a0, 72(a4)             #; a4  = 0x800031a1, 32 ~~> Byte[0x800031e9]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001798 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 6
      0x8000179c addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
      0x800017a0 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
      0x800017a4 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x800017a8 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x800017ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001810
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001810 ret                            #; ra  = 0x80000c20, goto 0x80000c20
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000c20 addi    s0, s0, 1              #; s0  = 0x80002e4a, (wrb) s0  <-- 0x80002e4b
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000c24 addi    s10, s10, 1            #; s10 = 0x80002e4c, (wrb) s10 <-- 0x80002e4d
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c28 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c2c lbu     a0, 0(s0)              #; s0  = 0x80002e4b, a0  <~~ Byte[0x80002e4b]
                                                #; (lsu) a0  <-- 61
      0x80000c30 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000c08
      0x80000c08 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000c0c addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
      0x80000c10 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000c14 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
      0x80000c18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000c1c jalr    s2                     #; s2  = 0x80001768, (wrb) ra  <-- 0x80000c20, goto 0x80001768
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001768 beqz    a0, pc + 168           #; a0  = 61, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000176c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001770 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001774 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001778 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003778
      0x8000177c addi    a3, a3, -1500          #; a3  = 0x80003778, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001780 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001784 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 6
      0x80001788 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
      0x8000178c sw      a5, 0(a1)              #; a1  = 0x8000319c, 7 ~~> Word[0x8000319c]
      0x80001790 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 6, (wrb) a4  <-- 0x800031a2
      0x80001794 sb      a0, 72(a4)             #; a4  = 0x800031a2, 61 ~~> Byte[0x800031ea]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001798 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 7
      0x8000179c addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
      0x800017a0 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
      0x800017a4 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
      0x800017a8 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
      0x800017ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001810
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001810 ret                            #; ra  = 0x80000c20, goto 0x80000c20
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000c20 addi    s0, s0, 1              #; s0  = 0x80002e4b, (wrb) s0  <-- 0x80002e4c
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000c24 addi    s10, s10, 1            #; s10 = 0x80002e4d, (wrb) s10 <-- 0x80002e4e
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c28 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c2c lbu     a0, 0(s0)              #; s0  = 0x80002e4c, a0  <~~ Byte[0x80002e4c]
                                                #; (lsu) a0  <-- 32
      0x80000c30 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000c08
      0x80000c08 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000c0c addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
      0x80000c10 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000c14 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
      0x80000c18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000c1c jalr    s2                     #; s2  = 0x80001768, (wrb) ra  <-- 0x80000c20, goto 0x80001768
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001768 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000176c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001770 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001774 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001778 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003778
      0x8000177c addi    a3, a3, -1500          #; a3  = 0x80003778, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001780 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001784 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 7
      0x80001788 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
      0x8000178c sw      a5, 0(a1)              #; a1  = 0x8000319c, 8 ~~> Word[0x8000319c]
      0x80001790 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 7, (wrb) a4  <-- 0x800031a3
      0x80001794 sb      a0, 72(a4)             #; a4  = 0x800031a3, 32 ~~> Byte[0x800031eb]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001798 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 8
      0x8000179c addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
      0x800017a0 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
      0x800017a4 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x800017a8 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x800017ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001810
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001810 ret                            #; ra  = 0x80000c20, goto 0x80000c20
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000c20 addi    s0, s0, 1              #; s0  = 0x80002e4c, (wrb) s0  <-- 0x80002e4d
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000c24 addi    s10, s10, 1            #; s10 = 0x80002e4e, (wrb) s10 <-- 0x80002e4f
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c28 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c2c lbu     a0, 0(s0)              #; s0  = 0x80002e4d, a0  <~~ Byte[0x80002e4d]
                                                #; (lsu) a0  <-- 37
      0x80000c30 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000c08
      0x80000c08 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000c38
; _vsnprintf.llvm.1805434900161566649 (printf.c:602)
      0x80000c38 li      s0, 0                  #; (wrb) s0  <-- 0
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c3c j       pc + 0x10              #; goto 0x80000c4c
; _vsnprintf.llvm.1805434900161566649 (printf.c:604)
      0x80000c4c lbu     a0, -1(s10)            #; s10 = 0x80002e4f, a0  <~~ Byte[0x80002e4e]
                                                #; (lsu) a0  <-- 102
      0x80000c50 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
      0x80000c54 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000c8c
; _is_digit (printf.c:183)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000c8c addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
      0x80000c90 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
; _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000c94 addi    a1, s10, -1            #; s10 = 0x80002e4f, (wrb) a1  <-- 0x80002e4e
      0x80000c98 li      a3, 9                  #; (wrb) a3  <-- 9
      0x80000c9c bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000d18
; _vsnprintf.llvm.1805434900161566649 (printf.c:619)
      0x80000d18 li      a2, 42                 #; (wrb) a2  <-- 42
      0x80000d1c bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000d6c
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000d6c li      s6, 0                  #; (wrb) s6  <-- 0
      0x80000d70 mv      s10, a1                #; a1  = 0x80002e4e, (wrb) s10 <-- 0x80002e4e
; _vsnprintf.llvm.1805434900161566649 (printf.c:633)
      0x80000d74 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000d78 li      s7, 0                  #; (wrb) s7  <-- 0
      0x80000d7c j       pc + 0xc               #; goto 0x80000d88
; _vsnprintf.llvm.1805434900161566649 (printf.c:647)
      0x80000d88 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
      0x80000d8c srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
      0x80000d90 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
      0x80000d94 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
      0x80000d98 li      a2, 9                  #; (wrb) a2  <-- 9
      0x80000d9c bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000e00
; _vsnprintf.llvm.1805434900161566649 (printf.c:683)
      0x80000e00 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
      0x80000e04 li      a2, 83                 #; (wrb) a2  <-- 83
      0x80000e08 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e0c slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
      0x80000e10 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002e10
      0x80000e14 addi    a2, a2, 180            #; a2  = 0x80002e10, (wrb) a2  <-- 0x80002ec4
      0x80000e18 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002ec4, (wrb) a1  <-- 0x80002fc8
      0x80000e1c lw      a2, 0(a1)              #; a1  = 0x80002fc8, a2  <~~ Word[0x80002fc8]
      0x80000e20 li      a1, 8                  #; (wrb) a1  <-- 8
      0x80000e24 li      s8, 16                 #; (wrb) s8  <-- 16
                                                #; (lsu) a2  <-- 0x80000e58
      0x80000e28 jr      a2                     #; a2  = 0x80000e58, goto 0x80000e58
; _vsnprintf.llvm.1805434900161566649 (printf.c:760)
      0x80000e58 li      a1, 70                 #; (wrb) a1  <-- 70
      0x80000e5c bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000e64
; _vsnprintf.llvm.1805434900161566649 (printf.c:761)
      0x80000e64 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
      0x80000e68 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
      0x80000e6c fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
                                                #; (f:lsu) fa0  <-- 169.7040000
      0x80000e70 addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
      0x80000e74 mv      a0, s2                 #; s2  = 0x80001768, (wrb) a0  <-- 0x80001768
      0x80000e78 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000e7c mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
      0x80000e80 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000e84 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
      0x80000e88 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
      0x80000e8c mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
      0x80000e90 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001e90
      0x80000e94 jalr    ra, ra, -1656          #; ra  = 0x80001e90, (wrb) ra  <-- 0x80000e98, goto 0x80001818
; _ftoa (printf.c:340)
      0x80001818 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
      0x8000181c sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000e98 ~~> Word[0x0011fe9c]
      0x80001820 sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
      0x80001824 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
      0x80001828 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x80001768 ~~> Word[0x0011fe90]
      0x8000182c sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
      0x80001830 sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
      0x80001834 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
      0x80001838 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
      0x8000183c sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
      0x80001840 sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
      0x80001844 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
      0x80001848 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002e4e ~~> Word[0x0011fe70]
      0x8000184c fsd     fs0, 56(sp)            #; 0.0000000 ~~> Doub[0x0011fe68]
      0x80001858 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003858
      0x80001850 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
      0x8000185c addi    s1, s1, -1896          #; s1  = 0x80003858, (wrb) s1  <-- 0x800030f0
      0x80001854 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
; _ftoa (printf.c:351)
      0x80001868 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
      0x80001860 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x800030f0]
; _ftoa (printf.c:0)
      0x8000186c mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                                                #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
      0x80001870 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
      0x80001864 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 169.7040000
      0x80001874 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
      0x80001878 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
      0x8000187c mv      s7, a0                 #; a0  = 0x80001768, (wrb) s7  <-- 0x80001768
; _ftoa (printf.c:351)
      0x80001880 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001970
; _ftoa (printf.c:0)
      0x80001974 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002974
      0x80001978 addi    a0, a0, 1924           #; a0  = 0x80002974, (wrb) a0  <-- 0x800030f8
      0x80001970 fsgnj.d fs0, fa0, fa0          #; fa0  = 169.7040000, fa0  = 169.7040000
                                                #; (f:fpu) fs0  <-- 169.7040000
      0x8000197c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800030f8]
                                                #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
; _ftoa (printf.c:353)
      0x80001980 fle.d   a0, fa0, ft0           #; fa0  = 169.7040000, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
                                                #; (acc) t3  <-- 0x00051e63
      0x80001984 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x800019a0
; _ftoa (printf.c:0)
      0x800019a0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800029a0
      0x800019a4 addi    a0, a0, 1888           #; a0  = 0x800029a0, (wrb) a0  <-- 0x80003100
      0x800019ac auipc   a0, 0x1                #; (wrb) a0  <-- 0x800029ac
      0x800019a8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003100]
      0x800019b0 addi    a0, a0, 1884           #; a0  = 0x800029ac, (wrb) a0  <-- 0x80003108
                                                #; (f:lsu) ft0  <-- 1000000000.0000000
      0x800019b4 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003108]
; _ftoa (printf.c:358)
      0x800019b8 fle.d   a0, fs0, ft0           #; fs0  = 169.7040000, ft0  = 1000000000.0000000
                                                #; (f:lsu) ft1  <-- -1000000000.0000000
      0x800019bc fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 169.7040000
                                                #; (acc) a0  <-- 0x00b57533
      0x800019c0 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
      0x800019c4 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001ac0
; _ftoa (printf.c:374)
      0x80001ac0 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
      0x80001ac4 li      s8, 6                  #; (wrb) s8  <-- 6
      0x80001ac8 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001ad0
; _ftoa (printf.c:0)
      0x80001ad0 li      a0, 10                 #; (wrb) a0  <-- 10
; _ftoa (printf.c:378)
      0x80001ad8 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001b10
; _ftoa (printf.c:0)
      0x80001ad4 fsgnjx.d fs2, fs0, fs0         #; fs0  = 169.7040000, fs0  = 169.7040000
                                                #; (f:fpu) fs2  <-- 169.7040000
      0x80001b10 li      s0, 0                  #; (wrb) s0  <-- 0
; _ftoa (printf.c:384)
      0x80001b14 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
      0x80001b18 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002b18
      0x80001b1c addi    a1, a1, 1280           #; a1  = 0x80002b18, (wrb) a1  <-- 0x80003018
      0x80001b20 add     a0, a0, a1             #; a0  = 48, a1  = 0x80003018, (wrb) a0  <-- 0x80003048
      0x80001b24 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003048]
; _ftoa (printf.c:383)
      0x80001b28 fcvt.w.d s1, fs2               #; fs2  = 169.7040000
; _ftoa (printf.c:384)
      0x80001b2c fcvt.d.w ft0, s1               #; ac1  = 169
                                                #; (f:fpu) ft0  <-- 169.0
                                                #; (f:lsu) ft1  <-- 1000000.0000000
; _ftoa (printf.c:0)
      0x80001b38 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002b38
      0x80001b30 fsub.d  ft0, fs2, ft0          #; fs2  = 169.7040000, ft0  = 169.0
      0x80001b3c addi    a0, a0, 1496           #; a0  = 0x80002b38, (wrb) a0  <-- 0x80003110
                                                #; (f:fpu) ft0  <-- 0.7040000
; _ftoa (printf.c:384)
      0x80001b34 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.7040000
                                                #; (f:fpu) ft2  <-- 704000.0000000
; _ftoa (printf.c:0)
      0x80001b40 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003110]
; _ftoa (printf.c:385)
      0x80001b44 fcvt.wu.d a0, ft2              #; ft2  = 704000.0000000
                                                #; (acc) gp  <-- 0xd21501d3
; _ftoa (printf.c:386)
      0x80001b48 fcvt.d.wu ft3, a0              #; ac1  = 0x000abdff
                                                #; (f:fpu) ft3  <-- 703999.0
      0x80001b4c fsub.d  ft2, ft2, ft3          #; ft2  = 704000.0000000, ft3  = 703999.0
                                                #; (f:lsu) ft0  <-- 0.5
                                                #; (f:fpu) ft2  <-- 1.0000000
; _ftoa (printf.c:388)
      0x80001b50 fle.d   a1, ft2, ft0           #; ft2  = 1.0000000, ft0  = 0.5
      0x80001b54 bnez    a1, pc + 32            #; a1  = 0, not taken
; _ftoa (printf.c:389)
      0x80001b58 addi    a0, a0, 1              #; a0  = 0x000abdff, (wrb) a0  <-- 0x000abe00
; _ftoa (printf.c:391)
      0x80001b5c fcvt.d.wu ft2, a0              #; ac1  = 0x000abe00
                                                #; (f:fpu) ft2  <-- 704000.0
      0x80001b60 flt.d   a1, ft2, ft1           #; ft2  = 704000.0, ft1  = 1000000.0000000
                                                #; (acc) s0  <-- 0x02059463
      0x80001b64 bnez    a1, pc + 40            #; a1  = 1, taken, goto 0x80001b8c
; _ftoa (printf.c:0)
      0x80001b8c fcvt.d.w fs1, zero             #; ac1  = 0
                                                #; (f:fpu) fs1  <-- 0.0
; _ftoa (printf.c:403)
      0x80001b90 beqz    s8, pc + 216           #; s8  = 6, not taken
; _ftoa (printf.c:0)
      0x80001b94 li      a2, 0                  #; (wrb) a2  <-- 0
      0x80001b98 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:414)
      0x80001b9c add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
      0x80001ba0 li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001ba4 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
      0x80001ba8 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
      0x80001bac addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
      0x80001bb0 li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001bb4 li      a7, 9                  #; (wrb) a7  <-- 9
      0x80001bb8 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
; _ftoa (printf.c:0)
      0x80001bbc mv      a1, a0                 #; a0  = 0x000abe00, (wrb) a1  <-- 0x000abe00
; _ftoa (printf.c:417)
      0x80001bc0 mulhu   a0, a0, t2             #; a0  = 0x000abe00, t2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80001bc4 srli    a0, a0, 3              #; a0  = 0x00089800, (wrb) a0  <-- 0x00011300
; _ftoa (printf.c:0)
      0x80001bc8 mul     a3, a0, a6             #; a0  = 0x00011300, a6  = 10
                                                #; (acc) a3  <-- 0x40d586b3
      0x80001bcc sub     a3, a1, a3             #; a1  = 0x000abe00, a3  = 0x000abe00, (wrb) a3  <-- 0
; _ftoa (printf.c:416)
      0x80001bd0 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
      0x80001bd4 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
      0x80001bd8 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
; _ftoa (printf.c:417)
      0x80001bdc addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
      0x80001be0 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0x000abe00, taken, goto 0x80001bb8
; _ftoa (printf.c:414)
      0x80001bb8 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 1, not taken
; _ftoa (printf.c:0)
      0x80001bbc mv      a1, a0                 #; a0  = 0x00011300, (wrb) a1  <-- 0x00011300
; _ftoa (printf.c:417)
      0x80001bc0 mulhu   a0, a0, t2             #; a0  = 0x00011300, t2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80001bc4 srli    a0, a0, 3              #; a0  = 56320, (wrb) a0  <-- 7040
; _ftoa (printf.c:0)
      0x80001bc8 mul     a3, a0, a6             #; a0  = 7040, a6  = 10
                                                #; (acc) a3  <-- 0x40d586b3
      0x80001bcc sub     a3, a1, a3             #; a1  = 0x00011300, a3  = 0x00011300, (wrb) a3  <-- 0
; _ftoa (printf.c:416)
      0x80001bd0 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
      0x80001bd4 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 1, (wrb) a5  <-- 0x0011fe39
      0x80001bd8 sb      a3, 0(a5)              #; a5  = 0x0011fe39, 48 ~~> Byte[0x0011fe39]
; _ftoa (printf.c:417)
      0x80001bdc addi    a2, a2, 1              #; a2  = 1, (wrb) a2  <-- 2
      0x80001be0 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0x00011300, taken, goto 0x80001bb8
; _ftoa (printf.c:414)
      0x80001bb8 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 2, not taken
; _ftoa (printf.c:0)
      0x80001bbc mv      a1, a0                 #; a0  = 7040, (wrb) a1  <-- 7040
; _ftoa (printf.c:417)
      0x80001bc0 mulhu   a0, a0, t2             #; a0  = 7040, t2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80001bc4 srli    a0, a0, 3              #; a0  = 5632, (wrb) a0  <-- 704
; _ftoa (printf.c:0)
      0x80001bc8 mul     a3, a0, a6             #; a0  = 704, a6  = 10
                                                #; (acc) a3  <-- 0x40d586b3
      0x80001bcc sub     a3, a1, a3             #; a1  = 7040, a3  = 7040, (wrb) a3  <-- 0
; _ftoa (printf.c:416)
      0x80001bd0 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
      0x80001bd4 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 2, (wrb) a5  <-- 0x0011fe3a
      0x80001bd8 sb      a3, 0(a5)              #; a5  = 0x0011fe3a, 48 ~~> Byte[0x0011fe3a]
; _ftoa (printf.c:417)
      0x80001bdc addi    a2, a2, 1              #; a2  = 2, (wrb) a2  <-- 3
      0x80001be0 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 7040, taken, goto 0x80001bb8
; _ftoa (printf.c:414)
      0x80001bb8 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 3, not taken
; _ftoa (printf.c:0)
      0x80001bbc mv      a1, a0                 #; a0  = 704, (wrb) a1  <-- 704
; _ftoa (printf.c:417)
      0x80001bc0 mulhu   a0, a0, t2             #; a0  = 704, t2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80001bc4 srli    a0, a0, 3              #; a0  = 563, (wrb) a0  <-- 70
; _ftoa (printf.c:0)
      0x80001bc8 mul     a3, a0, a6             #; a0  = 70, a6  = 10
                                                #; (acc) a3  <-- 0x40d586b3
      0x80001bcc sub     a3, a1, a3             #; a1  = 704, a3  = 700, (wrb) a3  <-- 4
; _ftoa (printf.c:416)
      0x80001bd0 ori     a3, a3, 48             #; a3  = 4, (wrb) a3  <-- 52
      0x80001bd4 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 3, (wrb) a5  <-- 0x0011fe3b
      0x80001bd8 sb      a3, 0(a5)              #; a5  = 0x0011fe3b, 52 ~~> Byte[0x0011fe3b]
; _ftoa (printf.c:417)
      0x80001bdc addi    a2, a2, 1              #; a2  = 3, (wrb) a2  <-- 4
      0x80001be0 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 704, taken, goto 0x80001bb8
; _ftoa (printf.c:414)
      0x80001bb8 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 4, not taken
; _ftoa (printf.c:0)
      0x80001bbc mv      a1, a0                 #; a0  = 70, (wrb) a1  <-- 70
; _ftoa (printf.c:417)
      0x80001bc0 mulhu   a0, a0, t2             #; a0  = 70, t2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80001bc4 srli    a0, a0, 3              #; a0  = 56, (wrb) a0  <-- 7
; _ftoa (printf.c:0)
      0x80001bc8 mul     a3, a0, a6             #; a0  = 7, a6  = 10
                                                #; (acc) a3  <-- 0x40d586b3
      0x80001bcc sub     a3, a1, a3             #; a1  = 70, a3  = 70, (wrb) a3  <-- 0
; _ftoa (printf.c:416)
      0x80001bd0 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
      0x80001bd4 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 4, (wrb) a5  <-- 0x0011fe3c
      0x80001bd8 sb      a3, 0(a5)              #; a5  = 0x0011fe3c, 48 ~~> Byte[0x0011fe3c]
; _ftoa (printf.c:417)
      0x80001bdc addi    a2, a2, 1              #; a2  = 4, (wrb) a2  <-- 5
      0x80001be0 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 70, taken, goto 0x80001bb8
; _ftoa (printf.c:414)
      0x80001bb8 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 5, not taken
; _ftoa (printf.c:0)
      0x80001bbc mv      a1, a0                 #; a0  = 7, (wrb) a1  <-- 7
; _ftoa (printf.c:417)
      0x80001bc0 mulhu   a0, a0, t2             #; a0  = 7, t2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80001bc4 srli    a0, a0, 3              #; a0  = 5, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001bc8 mul     a3, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a3  <-- 0x40d586b3
      0x80001bcc sub     a3, a1, a3             #; a1  = 7, a3  = 0, (wrb) a3  <-- 7
; _ftoa (printf.c:416)
      0x80001bd0 ori     a3, a3, 48             #; a3  = 7, (wrb) a3  <-- 55
      0x80001bd4 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 5, (wrb) a5  <-- 0x0011fe3d
      0x80001bd8 sb      a3, 0(a5)              #; a5  = 0x0011fe3d, 55 ~~> Byte[0x0011fe3d]
; _ftoa (printf.c:417)
      0x80001bdc addi    a2, a2, 1              #; a2  = 5, (wrb) a2  <-- 6
      0x80001be0 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 7, not taken
; _ftoa (printf.c:422)
      0x80001be4 add     a0, s0, a2             #; s0  = 0, a2  = 6, (wrb) a0  <-- 6
      0x80001be8 addi    a1, a0, -1             #; a0  = 6, (wrb) a1  <-- 5
      0x80001bec li      a3, 30                 #; (wrb) a3  <-- 30
      0x80001bf0 sltu    a3, a3, a1             #; a3  = 30, a1  = 5, (wrb) a3  <-- 0
      0x80001bf4 xor     a4, s8, a2             #; s8  = 6, a2  = 6, (wrb) a4  <-- 0
      0x80001bf8 seqz    a4, a4                 #; a4  = 0, (wrb) a4  <-- 1
      0x80001bfc or      a3, a3, a4             #; a3  = 0, a4  = 1, (wrb) a3  <-- 1
      0x80001c00 bnez    a3, pc + 136           #; a3  = 1, taken, goto 0x80001c88
; _ftoa (printf.c:0)
      0x80001c88 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
; _ftoa (printf.c:425)
      0x80001c8c beqz    a1, pc + 28            #; a1  = 1, not taken
; _ftoa (printf.c:427)
      0x80001c90 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
; _ftoa (printf.c:0)
      0x80001c94 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:427)
      0x80001c98 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
      0x80001c9c li      a1, 46                 #; (wrb) a1  <-- 46
      0x80001ca0 sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
      0x80001ca4 j       pc + 0x8               #; goto 0x80001cac
; _ftoa (printf.c:0)
      0x80001cac li      a0, 32                 #; (wrb) a0  <-- 32
; _ftoa (printf.c:432)
      0x80001cb0 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
      0x80001cb4 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
; _ftoa (printf.c:0)
      0x80001cb8 li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001cbc flt.d   s9, fs0, fs1           #; fs0  = 169.7040000, fs1  = 0.0
      0x80001cc0 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
      0x80001cc4 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
      0x80001cc8 li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001ccc addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
      0x80001cd0 li      a4, 18                 #; (wrb) a4  <-- 18
; _ftoa (printf.c:432)
      0x80001cd4 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
; _ftoa (printf.c:434)
      0x80001cd8 mulh    a0, s1, a1             #; s1  = 169, a1  = 0x66666667
                                                #; (acc) a5  <-- 0x01f55793
      0x80001cdc srli    a5, a0, 31             #; a0  = 67, (wrb) a5  <-- 0
      0x80001ce0 srai    a0, a0, 2              #; a0  = 67, (wrb) a0  <-- 16
      0x80001ce4 add     a0, a0, a5             #; a0  = 16, a5  = 0, (wrb) a0  <-- 16
; _ftoa (printf.c:0)
      0x80001ce8 mul     a5, a0, a6             #; a0  = 16, a6  = 10
                                                #; (acc) a5  <-- 0x40f487b3
      0x80001cec sub     a5, s1, a5             #; s1  = 169, a5  = 160, (wrb) a5  <-- 9
; _ftoa (printf.c:433)
      0x80001cf0 addi    a5, a5, 48             #; a5  = 9, (wrb) a5  <-- 57
      0x80001cf4 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
      0x80001cf8 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
; _ftoa (printf.c:434)
      0x80001cfc addi    a2, s1, 9              #; s1  = 169, (wrb) a2  <-- 178
; _ftoa (printf.c:433)
      0x80001d00 sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 57 ~~> Byte[0x0011fe3f]
; _ftoa (printf.c:0)
      0x80001d04 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
      0x80001d08 mv      s1, a0                 #; a0  = 16, (wrb) s1  <-- 16
; _ftoa (printf.c:434)
      0x80001d0c bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 178, taken, goto 0x80001cd4
; _ftoa (printf.c:432)
      0x80001cd4 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 8, not taken
; _ftoa (printf.c:434)
      0x80001cd8 mulh    a0, s1, a1             #; s1  = 16, a1  = 0x66666667
                                                #; (acc) a5  <-- 0x01f55793
      0x80001cdc srli    a5, a0, 31             #; a0  = 6, (wrb) a5  <-- 0
      0x80001ce0 srai    a0, a0, 2              #; a0  = 6, (wrb) a0  <-- 1
      0x80001ce4 add     a0, a0, a5             #; a0  = 1, a5  = 0, (wrb) a0  <-- 1
; _ftoa (printf.c:0)
      0x80001ce8 mul     a5, a0, a6             #; a0  = 1, a6  = 10
                                                #; (acc) a5  <-- 0x40f487b3
      0x80001cec sub     a5, s1, a5             #; s1  = 16, a5  = 10, (wrb) a5  <-- 6
; _ftoa (printf.c:433)
      0x80001cf0 addi    a5, a5, 48             #; a5  = 6, (wrb) a5  <-- 54
      0x80001cf4 addi    s8, s0, 1              #; s0  = 8, (wrb) s8  <-- 9
      0x80001cf8 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 8, (wrb) s0  <-- 0x0011fe40
; _ftoa (printf.c:434)
      0x80001cfc addi    a2, s1, 9              #; s1  = 16, (wrb) a2  <-- 25
; _ftoa (printf.c:433)
      0x80001d00 sb      a5, 0(s0)              #; s0  = 0x0011fe40, 54 ~~> Byte[0x0011fe40]
; _ftoa (printf.c:0)
      0x80001d04 mv      s0, s8                 #; s8  = 9, (wrb) s0  <-- 9
      0x80001d08 mv      s1, a0                 #; a0  = 1, (wrb) s1  <-- 1
; _ftoa (printf.c:434)
      0x80001d0c bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 25, taken, goto 0x80001cd4
; _ftoa (printf.c:432)
      0x80001cd4 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 9, not taken
; _ftoa (printf.c:434)
      0x80001cd8 mulh    a0, s1, a1             #; s1  = 1, a1  = 0x66666667
                                                #; (acc) a5  <-- 0x01f55793
      0x80001cdc srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
      0x80001ce0 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
      0x80001ce4 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001ce8 mul     a5, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f487b3
      0x80001cec sub     a5, s1, a5             #; s1  = 1, a5  = 0, (wrb) a5  <-- 1
; _ftoa (printf.c:433)
      0x80001cf0 addi    a5, a5, 48             #; a5  = 1, (wrb) a5  <-- 49
      0x80001cf4 addi    s8, s0, 1              #; s0  = 9, (wrb) s8  <-- 10
      0x80001cf8 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 9, (wrb) s0  <-- 0x0011fe41
; _ftoa (printf.c:434)
      0x80001cfc addi    a2, s1, 9              #; s1  = 1, (wrb) a2  <-- 10
; _ftoa (printf.c:433)
      0x80001d00 sb      a5, 0(s0)              #; s0  = 0x0011fe41, 49 ~~> Byte[0x0011fe41]
; _ftoa (printf.c:0)
      0x80001d04 mv      s0, s8                 #; s8  = 10, (wrb) s0  <-- 10
      0x80001d08 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:434)
      0x80001d0c bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 10, not taken
      0x80001d10 j       pc + 0x8               #; goto 0x80001d18
; _ftoa (printf.c:440)
      0x80001d18 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:0)
      0x80001d1c li      a0, 1                  #; (wrb) a0  <-- 1
; _ftoa (printf.c:440)
      0x80001d20 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001d8c
; _ftoa (printf.c:0)
      0x80001d8c li      a0, 31                 #; (wrb) a0  <-- 31
; _ftoa (printf.c:449)
      0x80001d90 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 10, not taken
; _ftoa (printf.c:450)
      0x80001d94 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001dac
; _ftoa (printf.c:453)
      0x80001dac andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
      0x80001db0 bnez    a0, pc + 32            #; a0  = 0, not taken
; _ftoa (printf.c:456)
      0x80001db4 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
      0x80001db8 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001de4
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001de4 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
      0x80001de8 sltu    a1, s8, s2             #; s8  = 10, s2  = 0, (wrb) a1  <-- 0
      0x80001dec xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x80001df0 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
; _ftoa (printf.c:0)
      0x80001df4 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
      0x80001df8 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001dfc bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001e28
; _ftoa (printf.c:0)
      0x80001e28 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001e2c beqz    s8, pc + 56            #; s8  = 10, not taken
      0x80001e30 addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001e34 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 10, (wrb) a0  <-- 0x0011fe41
      0x80001e38 lbu     a0, 0(a0)              #; a0  = 0x0011fe41, a0  <~~ Byte[0x0011fe41]
      0x80001e3c addi    s10, s8, -1            #; s8  = 10, (wrb) s10 <-- 9
                                                #; (lsu) a0  <-- 49
      0x80001e40 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
      0x80001e44 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001e48 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
      0x80001e4c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001e50 jalr    s7                     #; s7  = 0x80001768, (wrb) ra  <-- 0x80001e54, goto 0x80001768
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001768 beqz    a0, pc + 168           #; a0  = 49, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000176c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001770 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001774 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001778 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003778
      0x8000177c addi    a3, a3, -1500          #; a3  = 0x80003778, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001780 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001784 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 8
      0x80001788 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
      0x8000178c sw      a5, 0(a1)              #; a1  = 0x8000319c, 9 ~~> Word[0x8000319c]
      0x80001790 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 8, (wrb) a4  <-- 0x800031a4
      0x80001794 sb      a0, 72(a4)             #; a4  = 0x800031a4, 49 ~~> Byte[0x800031ec]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001798 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 9
      0x8000179c addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
      0x800017a0 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
      0x800017a4 addi    a0, a0, -10            #; a0  = 49, (wrb) a0  <-- 39
      0x800017a8 snez    a0, a0                 #; a0  = 39, (wrb) a0  <-- 1
      0x800017ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001810
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001810 ret                            #; ra  = 0x80001e54, goto 0x80001e54
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001e54 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
      0x80001e58 mv      s8, s10                #; s10 = 9, (wrb) s8  <-- 9
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001e5c bnez    s10, pc - 40           #; s10 = 9, taken, goto 0x80001e34
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001e34 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 9, (wrb) a0  <-- 0x0011fe40
      0x80001e38 lbu     a0, 0(a0)              #; a0  = 0x0011fe40, a0  <~~ Byte[0x0011fe40]
      0x80001e3c addi    s10, s8, -1            #; s8  = 9, (wrb) s10 <-- 8
      0x80001e40 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
      0x80001e44 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001e48 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
      0x80001e4c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001e50 jalr    s7                     #; s7  = 0x80001768, (wrb) ra  <-- 0x80001e54, goto 0x80001768
                                                #; (lsu) a0  <-- 54
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001768 beqz    a0, pc + 168           #; a0  = 54, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000176c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001770 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001774 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001778 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003778
      0x8000177c addi    a3, a3, -1500          #; a3  = 0x80003778, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001780 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001784 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 9
      0x80001788 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
      0x8000178c sw      a5, 0(a1)              #; a1  = 0x8000319c, 10 ~~> Word[0x8000319c]
      0x80001790 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 9, (wrb) a4  <-- 0x800031a5
      0x80001794 sb      a0, 72(a4)             #; a4  = 0x800031a5, 54 ~~> Byte[0x800031ed]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001798 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 10
      0x8000179c addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
      0x800017a0 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
      0x800017a4 addi    a0, a0, -10            #; a0  = 54, (wrb) a0  <-- 44
      0x800017a8 snez    a0, a0                 #; a0  = 44, (wrb) a0  <-- 1
      0x800017ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001810
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001810 ret                            #; ra  = 0x80001e54, goto 0x80001e54
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001e54 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
      0x80001e58 mv      s8, s10                #; s10 = 8, (wrb) s8  <-- 8
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001e5c bnez    s10, pc - 40           #; s10 = 8, taken, goto 0x80001e34
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001e34 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
      0x80001e38 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
      0x80001e3c addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
      0x80001e40 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
      0x80001e44 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001e48 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
      0x80001e4c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001e50 jalr    s7                     #; s7  = 0x80001768, (wrb) ra  <-- 0x80001e54, goto 0x80001768
                                                #; (lsu) a0  <-- 57
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001768 beqz    a0, pc + 168           #; a0  = 57, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000176c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001770 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001774 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001778 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003778
      0x8000177c addi    a3, a3, -1500          #; a3  = 0x80003778, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001780 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001784 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 10
      0x80001788 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
      0x8000178c sw      a5, 0(a1)              #; a1  = 0x8000319c, 11 ~~> Word[0x8000319c]
      0x80001790 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 10, (wrb) a4  <-- 0x800031a6
      0x80001794 sb      a0, 72(a4)             #; a4  = 0x800031a6, 57 ~~> Byte[0x800031ee]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001798 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 11
      0x8000179c addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
      0x800017a0 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
      0x800017a4 addi    a0, a0, -10            #; a0  = 57, (wrb) a0  <-- 47
      0x800017a8 snez    a0, a0                 #; a0  = 47, (wrb) a0  <-- 1
      0x800017ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001810
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001810 ret                            #; ra  = 0x80001e54, goto 0x80001e54
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001e54 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
      0x80001e58 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001e5c bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001e34
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001e34 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
      0x80001e38 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
      0x80001e3c addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
      0x80001e40 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
      0x80001e44 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001e48 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
      0x80001e4c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001e50 jalr    s7                     #; s7  = 0x80001768, (wrb) ra  <-- 0x80001e54, goto 0x80001768
                                                #; (lsu) a0  <-- 46
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001768 beqz    a0, pc + 168           #; a0  = 46, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000176c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001770 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001774 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001778 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003778
      0x8000177c addi    a3, a3, -1500          #; a3  = 0x80003778, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001780 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001784 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 11
      0x80001788 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
      0x8000178c sw      a5, 0(a1)              #; a1  = 0x8000319c, 12 ~~> Word[0x8000319c]
      0x80001790 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 11, (wrb) a4  <-- 0x800031a7
      0x80001794 sb      a0, 72(a4)             #; a4  = 0x800031a7, 46 ~~> Byte[0x800031ef]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001798 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 12
      0x8000179c addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
      0x800017a0 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
      0x800017a4 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
      0x800017a8 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
      0x800017ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001810
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001810 ret                            #; ra  = 0x80001e54, goto 0x80001e54
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001e54 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
      0x80001e58 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001e5c bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001e34
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001e34 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
      0x80001e38 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
      0x80001e3c addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
      0x80001e40 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
      0x80001e44 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001e48 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
      0x80001e4c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001e50 jalr    s7                     #; s7  = 0x80001768, (wrb) ra  <-- 0x80001e54, goto 0x80001768
                                                #; (lsu) a0  <-- 55
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001768 beqz    a0, pc + 168           #; a0  = 55, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000176c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001770 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001774 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001778 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003778
      0x8000177c addi    a3, a3, -1500          #; a3  = 0x80003778, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001780 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001784 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 12
      0x80001788 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
      0x8000178c sw      a5, 0(a1)              #; a1  = 0x8000319c, 13 ~~> Word[0x8000319c]
      0x80001790 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 12, (wrb) a4  <-- 0x800031a8
      0x80001794 sb      a0, 72(a4)             #; a4  = 0x800031a8, 55 ~~> Byte[0x800031f0]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001798 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 13
      0x8000179c addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
      0x800017a0 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
      0x800017a4 addi    a0, a0, -10            #; a0  = 55, (wrb) a0  <-- 45
      0x800017a8 snez    a0, a0                 #; a0  = 45, (wrb) a0  <-- 1
      0x800017ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001810
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001810 ret                            #; ra  = 0x80001e54, goto 0x80001e54
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001e54 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
      0x80001e58 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001e5c bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001e34
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001e34 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
      0x80001e38 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
      0x80001e3c addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
      0x80001e40 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
      0x80001e44 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001e48 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
      0x80001e4c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001e50 jalr    s7                     #; s7  = 0x80001768, (wrb) ra  <-- 0x80001e54, goto 0x80001768
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001768 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000176c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001770 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001774 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001778 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003778
      0x8000177c addi    a3, a3, -1500          #; a3  = 0x80003778, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001780 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001784 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 13
      0x80001788 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
      0x8000178c sw      a5, 0(a1)              #; a1  = 0x8000319c, 14 ~~> Word[0x8000319c]
      0x80001790 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 13, (wrb) a4  <-- 0x800031a9
      0x80001794 sb      a0, 72(a4)             #; a4  = 0x800031a9, 48 ~~> Byte[0x800031f1]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001798 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 14
      0x8000179c addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
      0x800017a0 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
      0x800017a4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800017a8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800017ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001810
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001810 ret                            #; ra  = 0x80001e54, goto 0x80001e54
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001e54 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
      0x80001e58 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001e5c bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001e34
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001e34 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
      0x80001e38 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
      0x80001e3c addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
      0x80001e40 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
      0x80001e44 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001e48 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
      0x80001e4c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001e50 jalr    s7                     #; s7  = 0x80001768, (wrb) ra  <-- 0x80001e54, goto 0x80001768
                                                #; (lsu) a0  <-- 52
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001768 beqz    a0, pc + 168           #; a0  = 52, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000176c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001770 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001774 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001778 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003778
      0x8000177c addi    a3, a3, -1500          #; a3  = 0x80003778, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001780 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001784 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 14
      0x80001788 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
      0x8000178c sw      a5, 0(a1)              #; a1  = 0x8000319c, 15 ~~> Word[0x8000319c]
      0x80001790 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 14, (wrb) a4  <-- 0x800031aa
      0x80001794 sb      a0, 72(a4)             #; a4  = 0x800031aa, 52 ~~> Byte[0x800031f2]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001798 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 15
      0x8000179c addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
      0x800017a0 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
      0x800017a4 addi    a0, a0, -10            #; a0  = 52, (wrb) a0  <-- 42
      0x800017a8 snez    a0, a0                 #; a0  = 42, (wrb) a0  <-- 1
      0x800017ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001810
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001810 ret                            #; ra  = 0x80001e54, goto 0x80001e54
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001e54 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
      0x80001e58 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001e5c bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001e34
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001e34 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
      0x80001e38 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
      0x80001e3c addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
      0x80001e40 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
      0x80001e44 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001e48 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
      0x80001e4c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001e50 jalr    s7                     #; s7  = 0x80001768, (wrb) ra  <-- 0x80001e54, goto 0x80001768
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001768 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000176c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001770 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001774 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001778 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003778
      0x8000177c addi    a3, a3, -1500          #; a3  = 0x80003778, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001780 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001784 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 15
      0x80001788 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
      0x8000178c sw      a5, 0(a1)              #; a1  = 0x8000319c, 16 ~~> Word[0x8000319c]
      0x80001790 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 15, (wrb) a4  <-- 0x800031ab
      0x80001794 sb      a0, 72(a4)             #; a4  = 0x800031ab, 48 ~~> Byte[0x800031f3]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001798 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 16
      0x8000179c addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
      0x800017a0 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
      0x800017a4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800017a8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800017ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001810
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001810 ret                            #; ra  = 0x80001e54, goto 0x80001e54
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001e54 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
      0x80001e58 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001e5c bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001e34
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001e34 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
      0x80001e38 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
      0x80001e3c addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
      0x80001e40 addi    s1, s0, 1              #; s0  = 16, (wrb) s1  <-- 17
      0x80001e44 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001e48 mv      a2, s0                 #; s0  = 16, (wrb) a2  <-- 16
      0x80001e4c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001e50 jalr    s7                     #; s7  = 0x80001768, (wrb) ra  <-- 0x80001e54, goto 0x80001768
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001768 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000176c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001770 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001774 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001778 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003778
      0x8000177c addi    a3, a3, -1500          #; a3  = 0x80003778, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001780 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001784 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 16
      0x80001788 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
      0x8000178c sw      a5, 0(a1)              #; a1  = 0x8000319c, 17 ~~> Word[0x8000319c]
      0x80001790 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 16, (wrb) a4  <-- 0x800031ac
      0x80001794 sb      a0, 72(a4)             #; a4  = 0x800031ac, 48 ~~> Byte[0x800031f4]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001798 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 17
      0x8000179c addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
      0x800017a0 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
      0x800017a4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800017a8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800017ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001810
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001810 ret                            #; ra  = 0x80001e54, goto 0x80001e54
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001e54 mv      s0, s1                 #; s1  = 17, (wrb) s0  <-- 17
      0x80001e58 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001e5c bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001e34
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001e34 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
      0x80001e38 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
      0x80001e3c addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
      0x80001e40 addi    s1, s0, 1              #; s0  = 17, (wrb) s1  <-- 18
      0x80001e44 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001e48 mv      a2, s0                 #; s0  = 17, (wrb) a2  <-- 17
      0x80001e4c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001e50 jalr    s7                     #; s7  = 0x80001768, (wrb) ra  <-- 0x80001e54, goto 0x80001768
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001768 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000176c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001770 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001774 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001778 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003778
      0x8000177c addi    a3, a3, -1500          #; a3  = 0x80003778, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001780 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001784 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 17
      0x80001788 addi    a5, a4, 1              #; a4  = 17, (wrb) a5  <-- 18
      0x8000178c sw      a5, 0(a1)              #; a1  = 0x8000319c, 18 ~~> Word[0x8000319c]
      0x80001790 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 17, (wrb) a4  <-- 0x800031ad
      0x80001794 sb      a0, 72(a4)             #; a4  = 0x800031ad, 48 ~~> Byte[0x800031f5]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001798 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 18
      0x8000179c addi    a4, a4, -1020          #; a4  = 18, (wrb) a4  <-- -1002
      0x800017a0 snez    a4, a4                 #; a4  = -1002, (wrb) a4  <-- 1
      0x800017a4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800017a8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800017ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001810
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001810 ret                            #; ra  = 0x80001e54, goto 0x80001e54
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001e54 mv      s0, s1                 #; s1  = 18, (wrb) s0  <-- 18
      0x80001e58 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001e5c bnez    s10, pc - 40           #; s10 = 0, not taken
      0x80001e60 j       pc + 0x8               #; goto 0x80001e68
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001e68 sub     a0, s1, s4             #; s1  = 18, s4  = 8, (wrb) a0  <-- 10
      0x80001e6c sltu    a0, a0, s2             #; a0  = 10, s2  = 0, (wrb) a0  <-- 0
      0x80001e70 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
; _out_rev (printf.c:216)
;  in _ftoa (printf.c:461)
      0x80001e74 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
      0x80001e78 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x80001e7c bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001eac
; _ftoa (printf.c:0)
      0x80001eac mv      s0, s1                 #; s1  = 18, (wrb) s0  <-- 18
; _ftoa (printf.c:462)
      0x80001eb0 mv      a0, s0                 #; s0  = 18, (wrb) a0  <-- 18
      0x80001eb4 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
      0x80001eb8 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
      0x80001ebc fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
                                                #; (f:lsu) fs0  <-- 0.0000000
      0x80001ec0 lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
                                                #; (lsu) s10 <-- 0x80002e4e
      0x80001ec4 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
                                                #; (lsu) s9  <-- 8
      0x80001ec8 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
                                                #; (lsu) s8  <-- 16
      0x80001ecc lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
                                                #; (lsu) s7  <-- 0
      0x80001ed0 lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
                                                #; (lsu) s6  <-- 0
      0x80001ed4 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
                                                #; (lsu) s5  <-- -1
      0x80001ed8 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
                                                #; (lsu) s4  <-- 0x0011ff17
      0x80001edc lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
                                                #; (lsu) s3  <-- 0x0011ff30
      0x80001ee0 lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
                                                #; (lsu) s2  <-- 0x80001768
      0x80001ee4 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
                                                #; (lsu) s1  <-- 8
      0x80001ee8 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
                                                #; (lsu) s0  <-- 0
      0x80001eec lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
      0x80001ef0 addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
                                                #; (lsu) ra  <-- 0x80000e98
      0x80001ef4 ret                            #; ra  = 0x80000e98, goto 0x80000e98
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e98 j       pc + 0x7c0             #; goto 0x80001658
      0x80001658 mv      s8, a0                 #; a0  = 18, (wrb) s8  <-- 18
      0x8000165c li      s6, 37                 #; (wrb) s6  <-- 37
      0x80001660 li      s7, 46                 #; (wrb) s7  <-- 46
      0x80001664 addi    s0, s10, 1             #; s10 = 0x80002e4e, (wrb) s0  <-- 0x80002e4f
      0x80001668 j       pc - 0xa74             #; goto 0x80000bf4
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000bf4 addi    s10, s0, 2             #; s0  = 0x80002e4f, (wrb) s10 <-- 0x80002e51
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000bf8 mv      s9, s8                 #; s8  = 18, (wrb) s9  <-- 18
      0x80000bfc li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c00 lbu     a0, 0(s0)              #; s0  = 0x80002e4f, a0  <~~ Byte[0x80002e4f]
                                                #; (lsu) a0  <-- 10
      0x80000c04 beqz    a0, pc + 2824          #; a0  = 10, not taken
      0x80000c08 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000c0c addi    s1, s9, 1              #; s9  = 18, (wrb) s1  <-- 19
      0x80000c10 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000c14 mv      a2, s9                 #; s9  = 18, (wrb) a2  <-- 18
      0x80000c18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000c1c jalr    s2                     #; s2  = 0x80001768, (wrb) ra  <-- 0x80000c20, goto 0x80001768
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001768 beqz    a0, pc + 168           #; a0  = 10, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000176c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001770 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001774 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001778 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003778
      0x8000177c addi    a3, a3, -1500          #; a3  = 0x80003778, (wrb) a3  <-- 0x8000319c
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001780 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
      0x80001784 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 18
      0x80001788 addi    a5, a4, 1              #; a4  = 18, (wrb) a5  <-- 19
      0x8000178c sw      a5, 0(a1)              #; a1  = 0x8000319c, 19 ~~> Word[0x8000319c]
      0x80001790 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 18, (wrb) a4  <-- 0x800031ae
      0x80001794 sb      a0, 72(a4)             #; a4  = 0x800031ae, 10 ~~> Byte[0x800031f6]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001798 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
                                                #; (lsu) a4  <-- 19
      0x8000179c addi    a4, a4, -1020          #; a4  = 19, (wrb) a4  <-- -1001
      0x800017a0 snez    a4, a4                 #; a4  = -1001, (wrb) a4  <-- 1
      0x800017a4 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
      0x800017a8 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
      0x800017ac and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
      0x800017b0 bnez    a0, pc + 96            #; a0  = 0, not taken
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017b4 add     a0, a3, a2             #; a3  = 0x8000319c, a2  = 0, (wrb) a0  <-- 0x8000319c
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017b8 addi    a2, a0, 72             #; a0  = 0x8000319c, (wrb) a2  <-- 0x800031e4
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017bc sw      zero, 12(a0)           #; a0  = 0x8000319c, 0 ~~> Word[0x800031a8]
      0x800017c0 li      a3, 64                 #; (wrb) a3  <-- 64
      0x800017c4 sw      a3, 8(a0)              #; a0  = 0x8000319c, 64 ~~> Word[0x800031a4]
; snrt_putchar (putchar.c:26)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017c8 sw      zero, 20(a0)           #; a0  = 0x8000319c, 0 ~~> Word[0x800031b0]
      0x800017cc li      a3, 1                  #; (wrb) a3  <-- 1
      0x800017d0 sw      a3, 16(a0)             #; a0  = 0x8000319c, 1 ~~> Word[0x800031ac]
; snrt_putchar (putchar.c:27)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017d4 sw      zero, 28(a0)           #; a0  = 0x8000319c, 0 ~~> Word[0x800031b8]
      0x800017d8 sw      a2, 24(a0)             #; a0  = 0x8000319c, 0x800031e4 ~~> Word[0x800031b4]
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017dc lw      a2, 0(a1)              #; a1  = 0x8000319c, a2  <~~ Word[0x8000319c]
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017e0 addi    a3, a0, 8              #; a0  = 0x8000319c, (wrb) a3  <-- 0x800031a4
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017e4 sw      zero, 36(a0)           #; a0  = 0x8000319c, 0 ~~> Word[0x800031c0]
                                                #; (lsu) a2  <-- 19
      0x800017e8 sw      a2, 32(a0)             #; a0  = 0x8000319c, 19 ~~> Word[0x800031bc]
; snrt_putchar (putchar.c:30)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017ec auipc   a0, 0x2                #; (wrb) a0  <-- 0x800037ec
      0x800017f0 addi    a0, a0, -1900          #; a0  = 0x800037ec, (wrb) a0  <-- 0x80003080
      0x800017f4 sw      a3, 0(a0)              #; a0  = 0x80003080, 0x800031a4 ~~> Word[0x80003080]
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017f8 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800037f8
      0x800017fc addi    a0, a0, -1848          #; a0  = 0x800037f8, (wrb) a0  <-- 0x800030c0
; snrt_putchar (putchar.c:31)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001800 lw      a2, 0(a0)              #; a0  = 0x800030c0, a2  <~~ Word[0x800030c0]
                                                #; (lsu) a2  <-- 0
      0x80001804 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001800
      0x80001800 lw      a2, 0(a0)              #; a0  = 0x800030c0, a2  <~~ Word[0x800030c0]
                                                #; (lsu) a2  <-- 0
      0x80001804 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001800
      0x80001800 lw      a2, 0(a0)              #; a0  = 0x800030c0, a2  <~~ Word[0x800030c0]
                                                #; (lsu) a2  <-- 0
      0x80001804 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001800
      0x80001800 lw      a2, 0(a0)              #; a0  = 0x800030c0, a2  <~~ Word[0x800030c0]
                                                #; (lsu) a2  <-- 0
      0x80001804 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001800
      0x80001800 lw      a2, 0(a0)              #; a0  = 0x800030c0, a2  <~~ Word[0x800030c0]
                                                #; (lsu) a2  <-- 1
      0x80001804 beqz    a2, pc - 4             #; a2  = 1, not taken
; snrt_putchar (putchar.c:33)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001808 sw      zero, 0(a0)            #; a0  = 0x800030c0, 0 ~~> Word[0x800030c0]
; snrt_putchar (putchar.c:35)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000180c sw      zero, 0(a1)            #; a1  = 0x8000319c, 0 ~~> Word[0x8000319c]
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001810 ret                            #; ra  = 0x80000c20, goto 0x80000c20
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000c20 addi    s0, s0, 1              #; s0  = 0x80002e4f, (wrb) s0  <-- 0x80002e50
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000c24 addi    s10, s10, 1            #; s10 = 0x80002e51, (wrb) s10 <-- 0x80002e52
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c28 mv      s9, s1                 #; s1  = 19, (wrb) s9  <-- 19
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c2c lbu     a0, 0(s0)              #; s0  = 0x80002e50, a0  <~~ Byte[0x80002e50]
                                                #; (lsu) a0  <-- 0
      0x80000c30 bnez    a0, pc - 40            #; a0  = 0, not taken
      0x80000c34 j       pc + 0xad8             #; goto 0x8000170c
; _vsnprintf.llvm.1805434900161566649 (printf.c:853)
      0x8000170c mv      a2, s9                 #; s9  = 19, (wrb) a2  <-- 19
      0x80001710 bltu    s9, s5, pc + 8         #; s9  = 19, s5  = -1, taken, goto 0x80001718
      0x80001718 li      a0, 0                  #; (wrb) a0  <-- 0
      0x8000171c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001720 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80001724 jalr    s2                     #; s2  = 0x80001768, (wrb) ra  <-- 0x80001728, goto 0x80001768
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001768 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001810
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x80001810 ret                            #; ra  = 0x80001728, goto 0x80001728
; _vsnprintf.llvm.1805434900161566649 (printf.c:856)
      0x80001728 mv      a0, s9                 #; s9  = 19, (wrb) a0  <-- 19
      0x8000172c lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
                                                #; (lsu) s11 <-- 0
      0x80001730 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
                                                #; (lsu) s10 <-- 0
      0x80001734 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
                                                #; (lsu) s9  <-- 0
      0x80001738 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
                                                #; (lsu) s8  <-- 0
      0x8000173c lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
                                                #; (lsu) s7  <-- 0
      0x80001740 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
                                                #; (lsu) s6  <-- 0
      0x80001744 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
                                                #; (lsu) s5  <-- 0
      0x80001748 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
                                                #; (lsu) s4  <-- 0
      0x8000174c lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
                                                #; (lsu) s3  <-- 0
      0x80001750 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
                                                #; (lsu) s2  <-- 0x00100000
      0x80001754 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
                                                #; (lsu) s1  <-- 0x00100050
      0x80001758 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
                                                #; (lsu) s0  <-- 0x001000a0
      0x8000175c lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
      0x80001760 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
                                                #; (lsu) ra  <-- 0x80000b64
      0x80001764 ret                            #; ra  = 0x80000b64, goto 0x80000b64
; printf_ (printf.c:869)
      0x80000b64 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
      0x80000b68 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
                                                #; (lsu) ra  <-- 0x80000ad4
      0x80000b6c ret                            #; ra  = 0x80000ad4, goto 0x80000ad4
; main (test_conflict.c:0)
      0x80000ad4 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002ad4
      0x80000ad8 addi    a0, a0, 1556           #; a0  = 0x80002ad4, (wrb) a0  <-- 0x800030e8
      0x80000adc fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800030e8]
                                                #; (f:lsu) ft0  <-- 0.0001
; main (test_conflict.c:35)
      0x80000ae8 lw      s2, 16(sp)             #; sp  = 0x0011ff40, s2  <~~ Word[0x0011ff50]
      0x80000ae0 flt.d   a0, ft0, fs0           #; ft0  = 0.0001, fs0  = 0.0000000
                                                #; (acc) s1  <-- 0x01412483
      0x80000ae4 fld     fs0, 8(sp)             #; fs0  <~~ Doub[0x0011ff48]
                                                #; (lsu) s2  <-- 0
                                                #; (f:lsu) fs0  <-- 0.0
      0x80000aec lw      s1, 20(sp)             #; sp  = 0x0011ff40, s1  <~~ Word[0x0011ff54]
                                                #; (lsu) s1  <-- 0
      0x80000af0 lw      s0, 24(sp)             #; sp  = 0x0011ff40, s0  <~~ Word[0x0011ff58]
                                                #; (lsu) s0  <-- 0
      0x80000af4 lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
      0x80000af8 addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002bc0
      0x80000afc ret                            #; ra  = 0x80002bc0, goto 0x80002bc0
; ?? (start.S:184)
      0x80002bc0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:191)
      0x80002bc4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002bc4
      0x80002bc8 jalr    ra, ra, 524            #; ra  = 0x80002bc4, (wrb) ra  <-- 0x80002bcc, goto 0x80002dd0
; ?? (start_snitch.S:33)
      0x80002dd0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002dd4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002bcc ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002dd8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002dd8
      0x80002ddc jalr    ra, ra, -1256          #; ra  = 0x80002dd8, (wrb) ra  <-- 0x80002de0, goto 0x800028f0
; _snrt_barrier_reg_ptr (team.c:80)
      0x800028f0 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800028f4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800028f8 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800028fc lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002900 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x80002904 ret                            #; ra  = 0x80002de0, goto 0x80002de0
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002de0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002de4 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002de8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002dec addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002bcc
; ?? (start_snitch.S:40)
      0x80002df0 ret                            #; ra  = 0x80002bcc, goto 0x80002bcc
; ?? (start.S:195)
      0x80002bcc mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:196)
      0x80002bd0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002bd0
      0x80002bd4 jalr    ra, ra, 556            #; ra  = 0x80002bd0, (wrb) ra  <-- 0x80002bd8, goto 0x80002dfc
; ?? (start_snitch.S:15)
      0x80002dfc addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
; ?? (start_snitch.S:16)
      0x80002e00 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
; ?? (start_snitch.S:17)
      0x80002e04 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002bd8 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:18)
      0x80002e08 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002e08
      0x80002e0c jalr    ra, ra, -1336          #; ra  = 0x80002e08, (wrb) ra  <-- 0x80002e10, goto 0x800028d0
; snrt_global_core_idx (team.c:32)
      0x800028d0 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800028d4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800028d8 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800028dc lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800028e0 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
; snrt_hartid (snrt.h:181)
;  in snrt_global_core_idx (team.c:32)
      0x800028e4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 0
; snrt_global_core_idx (team.c:32)
      0x800028e8 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
      0x800028ec ret                            #; ra  = 0x80002e10, goto 0x80002e10
; ?? (start_snitch.S:20)
      0x80002e10 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:21)
      0x80002e14 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:22)
      0x80002e18 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
; ?? (start_snitch.S:27)
      0x80002e1c bnez    a0, pc + 24            #; a0  = 0, not taken
                                                #; (lsu) ra  <-- 0x80002bd8
; ?? (start_snitch.S:28)
      0x80002e20 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
; ?? (start_snitch.S:29)
      0x80002e24 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
; ?? (start_snitch.S:30)
      0x80002e28 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002e28
      0x80002e2c addi    t1, t1, 600            #; t1  = 0x80002e28, (wrb) t1  <-- 0x80003080
; ?? (start_snitch.S:31)
      0x80002e30 sw      t0, 0(t1)              #; t1  = 0x80003080, 1 ~~> Word[0x80003080]
; ?? (start_snitch.S:32)
      0x80002e34 ret                            #; ra  = 0x80002bd8, goto 0x80002bd8
; ?? (start.S:198)
      0x80002bd8 wfi                            #; 
                        tion 0 @ (12, 6154):
                          149
                          173
                           42
                           82
                      11.4765
                       0.2447
                       0.1673
                          1.0
                          1.0
                            0
                       1.6744
                       2.0732
                       0.0492
                       0.0280
                       0.5695
                         6143
                       0.2938
