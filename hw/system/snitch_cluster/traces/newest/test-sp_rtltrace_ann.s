; ?? (??:0)
      0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
      0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
      0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
      0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
      0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
                                                #; (lsu) t0  <-- 0x80002a10
      0x00001014 jalr    t0                     #; t0  = 0x80002a10, (wrb) ra  <-- 4120, goto 0x80002a10
; ?? (start.S:20)
      0x80002a10 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80003a10
; ?? (start.S:21)
      0x80002a14 addi    gp, gp, -264           #; gp  = 0x80003a10, (wrb) gp  <-- 0x80003908
; ?? (start.S:28)
      0x80002a18 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a18
      0x80002a1c jalr    ra, ra, 964            #; ra  = 0x80002a18, (wrb) ra  <-- 0x80002a20, goto 0x80002ddc
; ?? (start_snitch.S:16)
      0x80002ddc mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
; ?? (start_snitch.S:17)
      0x80002de0 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
                                                #; (lsu) a1  <-- 8
; ?? (start_snitch.S:18)
      0x80002de4 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:19)
      0x80002de8 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start_snitch.S:20)
      0x80002dec lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
                                                #; (lsu) t1  <-- 0x00020000
; ?? (start_snitch.S:21)
      0x80002df0 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
; ?? (start_snitch.S:22)
      0x80002df4 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
; ?? (start_snitch.S:23)
      0x80002df8 div     t3, a0, a1             #; a0  = 0, a1  = 8
                                                #; (acc) t4  <-- 0x027e0eb3
                                                #; (lsu) t2  <-- 0
; ?? (start_snitch.S:24)
      0x80002dfc mul     t4, t3, t2             #; t3  = 0, t2  = 0
                                                #; (acc) a2  <-- 0x01d60633
; ?? (start_snitch.S:25)
      0x80002e00 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
; ?? (start_snitch.S:26)
      0x80002e04 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
; ?? (start_snitch.S:27)
      0x80002e08 remu    a0, a0, a1             #; a0  = 0, a1  = 8
; ?? (start_snitch.S:28)
      0x80002e0c ret                            #; ra  = 0x80002a20, goto 0x80002a20
                                                #; (acc) s0  <-- 0x00050413
; ?? (start.S:39)
      0x80002a20 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:40)
      0x80002a24 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
; ?? (start.S:41)
      0x80002a28 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a28
      0x80002a2c jalr    ra, ra, 1036           #; ra  = 0x80002a28, (wrb) ra  <-- 0x80002a30, goto 0x80002e34
; ?? (start_snitch.S:48)
      0x80002e34 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
; ?? (start_snitch.S:49)
      0x80002e38 ret                            #; ra  = 0x80002a30, goto 0x80002a30
                                                #; (lsu) a0  <-- 0
; ?? (start.S:42)
      0x80002a30 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:43)
      0x80002a34 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:45)
      0x80002a38 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
; ?? (start.S:46)
      0x80002a3c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
; ?? (start.S:47)
      0x80002a40 bnez    t0, pc + 36            #; t0  = 0, not taken
; ?? (start.S:48)
      0x80002a44 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002a44
      0x80002a48 addi    t0, t0, 2012           #; t0  = 0x80002a44, (wrb) t0  <-- 0x80003220
; ?? (start.S:49)
      0x80002a4c auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002a4c
      0x80002a50 addi    t1, t1, 2008           #; t1  = 0x80002a4c, (wrb) t1  <-- 0x80003224
; ?? (start.S:50)
      0x80002a54 bge     t0, t1, pc + 16        #; t0  = 0x80003220, t1  = 0x80003224, not taken
; ?? (start.S:51)
      0x80002a58 sw      zero, 0(t0)            #; t0  = 0x80003220, 0 ~~> Word[0x80003220]
; ?? (start.S:52)
      0x80002a5c addi    t0, t0, 4              #; t0  = 0x80003220, (wrb) t0  <-- 0x80003224
; ?? (start.S:53)
      0x80002a60 blt     t0, t1, pc - 8         #; t0  = 0x80003224, t1  = 0x80003224, not taken
; ?? (start.S:58)
      0x80002a64 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
; ?? (start.S:59)
      0x80002a68 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
; ?? (start.S:60)
      0x80002a6c beqz    t0, pc + 132           #; t0  = 40, not taken
; ?? (start.S:61)
      0x80002a70 fcvt.d.w ft0, zero             #; ac1  = 0
; ?? (start.S:62)
      0x80002a74 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
; ?? (start.S:63)
      0x80002a78 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
; ?? (start.S:64)
      0x80002a7c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
                                                #; (f:fpu) ft3  <-- 0.0
; ?? (start.S:65)
      0x80002a80 fcvt.d.w ft4, zero             #; ac1  = 0
; ?? (start.S:66)
      0x80002a84 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
; ?? (start.S:67)
      0x80002a88 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
; ?? (start.S:68)
      0x80002a8c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
                                                #; (f:fpu) ft7  <-- 0.0
; ?? (start.S:69)
      0x80002a90 fcvt.d.w fs0, zero             #; ac1  = 0
; ?? (start.S:70)
      0x80002a94 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
; ?? (start.S:71)
      0x80002a98 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
; ?? (start.S:72)
      0x80002a9c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
                                                #; (f:fpu) fa1  <-- 0.0
; ?? (start.S:73)
      0x80002aa0 fcvt.d.w fa2, zero             #; ac1  = 0
; ?? (start.S:74)
      0x80002aa4 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
; ?? (start.S:75)
      0x80002aa8 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
; ?? (start.S:76)
      0x80002aac fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
                                                #; (f:fpu) fa5  <-- 0.0
; ?? (start.S:77)
      0x80002ab0 fcvt.d.w fa6, zero             #; ac1  = 0
; ?? (start.S:78)
      0x80002ab4 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
; ?? (start.S:79)
      0x80002ab8 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
; ?? (start.S:80)
      0x80002abc fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
                                                #; (f:fpu) fs3  <-- 0.0
; ?? (start.S:81)
      0x80002ac0 fcvt.d.w fs4, zero             #; ac1  = 0
; ?? (start.S:82)
      0x80002ac4 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
; ?? (start.S:83)
      0x80002ac8 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
; ?? (start.S:84)
      0x80002acc fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
                                                #; (f:fpu) fs7  <-- 0.0
; ?? (start.S:85)
      0x80002ad0 fcvt.d.w fs8, zero             #; ac1  = 0
; ?? (start.S:86)
      0x80002ad4 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
; ?? (start.S:87)
      0x80002ad8 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
; ?? (start.S:88)
      0x80002adc fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
                                                #; (f:fpu) fs11 <-- 0.0
; ?? (start.S:89)
      0x80002ae0 fcvt.d.w ft8, zero             #; ac1  = 0
; ?? (start.S:90)
      0x80002ae4 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
; ?? (start.S:91)
      0x80002ae8 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
; ?? (start.S:92)
      0x80002aec fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
                                                #; (f:fpu) ft11 <-- 0.0
; ?? (start.S:99)
      0x80002af0 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
; ?? (start.S:100)
      0x80002af4 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
; ?? (start.S:103)
      0x80002af8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002af8
      0x80002afc lw      t0, 900(t0)            #; t0  = 0x80002af8, t0  <~~ Word[0x80002e7c]
                                                #; (lsu) t0  <-- 136
; ?? (start.S:104)
      0x80002b00 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
; ?? (start.S:105)
      0x80002b04 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
; ?? (start.S:108)
      0x80002b08 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002b08
      0x80002b0c lw      t2, 880(t2)            #; t2  = 0x80002b08, t2  <~~ Word[0x80002e78]
                                                #; (lsu) t2  <-- 10
; ?? (start.S:110)
      0x80002b10 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
; ?? (start.S:111)
      0x80002b14 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
; ?? (start.S:112)
      0x80002b18 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:113)
      0x80002b1c sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
; ?? (start.S:116)
      0x80002b20 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:117)
      0x80002b24 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
; ?? (start.S:118)
      0x80002b28 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:119)
      0x80002b2c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
; ?? (start.S:124)
      0x80002b30 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002b30
      0x80002b34 addi    t0, t0, 1496           #; t0  = 0x80002b30, (wrb) t0  <-- 0x80003108
; ?? (start.S:125)
      0x80002b38 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002b38
      0x80002b3c addi    t1, t1, 1488           #; t1  = 0x80002b38, (wrb) t1  <-- 0x80003108
; ?? (start.S:126)
      0x80002b40 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002b40
      0x80002b44 addi    t2, t2, 1480           #; t2  = 0x80002b40, (wrb) t2  <-- 0x80003108
; ?? (start.S:127)
      0x80002b48 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002b48
      0x80002b4c addi    t3, t3, 1488           #; t3  = 0x80002b48, (wrb) t3  <-- 0x80003118
; ?? (start.S:128)
      0x80002b50 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80003108, (wrb) sp  <-- 0x80123078
; ?? (start.S:129)
      0x80002b54 sub     sp, sp, t1             #; sp  = 0x80123078, t1  = 0x80003108, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:130)
      0x80002b58 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80003108, (wrb) sp  <-- 0x80123078
; ?? (start.S:131)
      0x80002b5c sub     sp, sp, t3             #; sp  = 0x80123078, t3  = 0x80003118, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:132)
      0x80002b60 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:133)
      0x80002b64 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
; ?? (start.S:134)
      0x80002b68 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:137)
      0x80002b6c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
; ?? (start.S:138)
      0x80002b70 bge     t0, t1, pc + 24        #; t0  = 0x80003108, t1  = 0x80003108, taken, goto 0x80002b88
; ?? (start.S:147)
      0x80002b88 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002b88
      0x80002b8c addi    t0, t0, 1408           #; t0  = 0x80002b88, (wrb) t0  <-- 0x80003108
; ?? (start.S:148)
      0x80002b90 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002b90
      0x80002b94 addi    t1, t1, 1416           #; t1  = 0x80002b90, (wrb) t1  <-- 0x80003118
; ?? (start.S:149)
      0x80002b98 bge     t0, t1, pc + 20        #; t0  = 0x80003108, t1  = 0x80003118, not taken
; ?? (start.S:150)
      0x80002b9c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
; ?? (start.S:151)
      0x80002ba0 addi    t0, t0, 4              #; t0  = 0x80003108, (wrb) t0  <-- 0x8000310c
; ?? (start.S:152)
      0x80002ba4 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
; ?? (start.S:153)
      0x80002ba8 blt     t0, t2, pc - 12        #; t0  = 0x8000310c, t2  = 0x80003108, not taken
; ?? (start.S:158)
      0x80002bac addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
; ?? (start.S:159)
      0x80002bb0 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
; ?? (start.S:160)
      0x80002bb4 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
; ?? (start.S:161)
      0x80002bb8 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
; ?? (start.S:162)
      0x80002bbc sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
; ?? (start.S:163)
      0x80002bc0 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
; ?? (start.S:164)
      0x80002bc4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002bc4
      0x80002bc8 jalr    ra, ra, -1056          #; ra  = 0x80002bc4, (wrb) ra  <-- 0x80002bcc, goto 0x800027a4
; _snrt_init_team (start.c:49)
      0x800027a4 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
; _snrt_init_team (start.c:50)
      0x800027a8 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
; _snrt_init_team (start.c:51)
      0x800027ac lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
                                                #; (lsu) t1  <-- 0
      0x800027b0 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
; _snrt_init_team (start.c:52)
      0x800027b4 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
                                                #; (lsu) a6  <-- 1
; _snrt_init_team (start.c:53)
      0x800027b8 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
                                                #; (lsu) a7  <-- 1
; _snrt_init_team (start.c:52)
      0x800027bc lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
      0x800027c0 mul     a6, a7, a6             #; a7  = 1, a6  = 1
                                                #; (acc) a0  <-- 0x02580533
                                                #; (lsu) t0  <-- 8
      0x800027c4 mul     a0, a6, t0             #; a6  = 1, t0  = 8
                                                #; (acc) a2  <-- 0x00a7a623
      0x800027c8 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
; snrt_hartid (snrt.h:181)
;  in _snrt_init_team (start.c:55)
      0x800027cc csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
; _snrt_init_team (start.c:55)
      0x800027d0 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
      0x800027d4 divu    a0, a0, t0             #; a0  = 0, t0  = 8
                                                #; (acc) a6  <-- 0x00a7a823
; _snrt_init_team (start.c:54)
      0x800027d8 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
; _snrt_init_team (start.c:56)
      0x800027dc sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
; _snrt_init_team (start.c:57)
      0x800027e0 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
; _snrt_init_team (start.c:58)
      0x800027e4 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
; _snrt_init_team (start.c:60)
      0x800027e8 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
      0x800027ec lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
                                                #; (lsu) a0  <-- 0x80000000
      0x800027f0 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
; _snrt_init_team (start.c:59)
      0x800027f4 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
      0x800027f8 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
; _snrt_init_team (start.c:61)
      0x800027fc lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
                                                #; (lsu) a0  <-- 0
      0x80002800 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
      0x80002804 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
                                                #; (lsu) a1  <-- 1
      0x80002808 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
; _snrt_init_team (start.c:62)
      0x8000280c sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
      0x80002810 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
; _snrt_init_team (start.c:63)
      0x80002814 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
      0x80002818 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
; _snrt_init_team (start.c:64)
      0x8000281c lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
                                                #; (lsu) a0  <-- 0x00020000
      0x80002820 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
      0x80002824 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
      0x80002828 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
; _snrt_init_team (start.c:67)
      0x8000282c sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
      0x80002830 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
      0x80002834 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
      0x80002838 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
      0x8000283c add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
; _snrt_init_team (start.c:66)
      0x80002840 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
      0x80002844 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
; _snrt_init_team (start.c:68)
      0x80002848 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
      0x8000284c add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
      0x80002850 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
      0x80002854 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
      0x80002858 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
; _snrt_init_team (start.c:71)
      0x8000285c sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
; _snrt_init_team (start.c:72)
      0x80002860 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
; _snrt_init_team (start.c:75)
      0x80002864 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002868 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000286c sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
; _snrt_init_team (start.c:77)
      0x80002870 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002874 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
                                                #; (lsu) a1  <-- 0
; _snrt_init_team (start.c:78)
      0x80002878 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
; _snrt_init_team (start.c:77)
      0x8000287c sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 8
      0x80002880 remu    a0, a1, a0             #; a1  = 0, a0  = 8
; _snrt_init_team (start.c:76)
      0x80002884 lui     a1, 0x0                #; (wrb) a1  <-- 0
      0x80002888 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
                                                #; (acc) tp  <-- 0x00a5a223
      0x8000288c sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
      0x80002890 li      a0, 1096               #; (wrb) a0  <-- 1096
; _snrt_init_team (start.c:83)
      0x80002894 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
      0x80002898 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80003898
      0x8000289c addi    a1, a1, -1652          #; a1  = 0x80003898, (wrb) a1  <-- 0x80003224
      0x800028a0 add     a0, a0, a1             #; a0  = 0, a1  = 0x80003224, (wrb) a0  <-- 0x80003224
      0x800028a4 sw      zero, 0(a0)            #; a0  = 0x80003224, 0 ~~> Word[0x80003224]
; _snrt_init_team (start.c:86)
      0x800028a8 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
                                                #; (lsu) a7  <-- 0xffff0000
      0x800028ac sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
; _snrt_init_team (start.c:87)
      0x800028b0 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
; _snrt_init_team (start.c:91)
      0x800028b4 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
; _snrt_init_team (start.c:93)
      0x800028b8 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
; _snrt_init_team (start.c:92)
      0x800028bc sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      0x800028c0 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
      0x800028c4 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
; snrt_alloc_init (alloc.c:64)
;  in _snrt_init_team (start.c:97)
      0x800028c8 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
; snrt_alloc_init (alloc.c:67)
;  in _snrt_init_team (start.c:97)
      0x800028cc sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
; snrt_alloc_init (alloc.c:66)
;  in _snrt_init_team (start.c:97)
      0x800028d0 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
; snrt_alloc_init (alloc.c:68)
;  in _snrt_init_team (start.c:97)
      0x800028d4 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      0x800028d8 lw      a0, 0(a1)              #; a1  = 0x80003224, a0  <~~ Word[0x80003224]
                                                #; (lsu) a0  <-- 0
      0x800028dc addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
      0x800028e0 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
; snrt_alloc_init (alloc.c:71)
;  in _snrt_init_team (start.c:97)
      0x800028e4 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
; snrt_alloc_init (alloc.c:74)
;  in _snrt_init_team (start.c:97)
      0x800028e8 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
; snrt_alloc_init (alloc.c:75)
;  in _snrt_init_team (start.c:97)
      0x800028ec sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      0x800028f0 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800028f4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800028f8 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      0x800028fc lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002900 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002904 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
; _snrt_init_team (start.c:99)
      0x80002908 ret                            #; ra  = 0x80002bcc, goto 0x80002bcc
; ?? (start.S:165)
      0x80002bcc lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
                                                #; (lsu) a0  <-- 0
; ?? (start.S:166)
      0x80002bd0 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
                                                #; (lsu) a1  <-- 8
; ?? (start.S:167)
      0x80002bd4 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start.S:168)
      0x80002bd8 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
                                                #; (lsu) a3  <-- 0x0011df30
; ?? (start.S:169)
      0x80002bdc lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
; ?? (start.S:170)
      0x80002be0 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:174)
      0x80002be4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002be4
      0x80002be8 addi    t0, t0, 60             #; t0  = 0x80002be4, (wrb) t0  <-- 0x80002c20
; ?? (start.S:175)
      0x80002bec csrw    mtvec, t0              #; t0  = 0x80002c20, (lsu) a4  <-- 4132
; ?? (start.S:179)
      0x80002bf0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002bf0
      0x80002bf4 jalr    ra, ra, 544            #; ra  = 0x80002bf0, (wrb) ra  <-- 0x80002bf8, goto 0x80002e10
; ?? (start_snitch.S:33)
      0x80002e10 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002e14 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002bf8 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002e18 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002e18
      0x80002e1c jalr    ra, ra, -1260          #; ra  = 0x80002e18, (wrb) ra  <-- 0x80002e20, goto 0x8000292c
; _snrt_barrier_reg_ptr (team.c:80)
      0x8000292c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002930 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002934 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002938 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x8000293c lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x80002940 ret                            #; ra  = 0x80002e20, goto 0x80002e20
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002e20 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002e24 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002e28 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002e2c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002bf8
; ?? (start_snitch.S:40)
      0x80002e30 ret                            #; ra  = 0x80002bf8, goto 0x80002bf8
; ?? (start.S:183)
      0x80002bf8 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000bf8
      0x80002bfc jalr    ra, ra, -1476          #; ra  = 0x80000bf8, (wrb) ra  <-- 0x80002c00, goto 0x80000634
; main (test_sp.c:14)
      0x80000634 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (test_sp.c:15)
      0x80000638 sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x80002c00 ~~> Word[0x0011ff5c]
      0x80000640 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000644 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000063c fsd     fs0, 16(sp)            #; 0.0 ~~> Doub[0x0011ff50]
      0x80000648 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
; main (test_sp.c:0)
      0x8000064c li      a0, 0                  #; (wrb) a0  <-- 0
                                                #; (lsu) a1  <-- 0
; main (test_sp.c:15)
      0x80000650 bnez    a1, pc + 1264          #; a1  = 0, not taken
; snrt_current_team (team.c:16)
;  in snrt_l1alloc (alloc.c:21)
;  in main (test_sp.c:19)
      0x80000654 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000658 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000065c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80000660 lw      a2, 0(a0)              #; a0  = 0x0011ff70, a2  <~~ Word[0x0011ff70]
                                                #; (lsu) a2  <-- 0x0011ff70
; snrt_l1alloc (alloc.c:25)
;  in main (test_sp.c:19)
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
;  in main (test_sp.c:19)
      0x80000690 mv      a1, a0                 #; a0  = 0x00100000, (wrb) a1  <-- 0x00100000
; snrt_l1alloc (alloc.c:34)
;  in main (test_sp.c:19)
      0x80000694 sw      a4, 88(a2)             #; a2  = 0x0011ff70, 0x00100050 ~~> Word[0x0011ffc8]
; snrt_l1alloc (alloc.c:25)
;  in main (test_sp.c:20)
      0x80000698 addi    a5, a0, 160            #; a0  = 0x00100000, (wrb) a5  <-- 0x001000a0
      0x8000069c mv      a0, a4                 #; a4  = 0x00100050, (wrb) a0  <-- 0x00100050
      0x800006a0 bgeu    a3, a5, pc - 24        #; a3  = 0x0011df30, a5  = 0x001000a0, taken, goto 0x80000688
; snrt_l1alloc (alloc.c:34)
;  in main (test_sp.c:20)
      0x80000688 sw      a5, 88(a2)             #; a2  = 0x0011ff70, 0x001000a0 ~~> Word[0x0011ffc8]
      0x8000068c j       pc + 0x1c              #; goto 0x800006a8
; init_data (test_sp.c:8)
;  in main (test_sp.c:22)
      0x800006a8 srli    a2, a1, 20             #; a1  = 0x00100000, (wrb) a2  <-- 1
      0x800006ac snez    a2, a2                 #; a2  = 1, (wrb) a2  <-- 1
      0x800006b0 lui     a3, 0x120              #; (wrb) a3  <-- 0x00120000
      0x800006b4 addi    a3, a3, -71            #; a3  = 0x00120000, (wrb) a3  <-- 0x0011ffb9
      0x800006b8 sltu    a3, a1, a3             #; a1  = 0x00100000, a3  = 0x0011ffb9, (wrb) a3  <-- 1
      0x800006bc and     a6, a2, a3             #; a2  = 1, a3  = 1, (wrb) a6  <-- 1
      0x800006c0 beqz    a6, pc + 212           #; a6  = 1, not taken
; init_data (test_sp.c:0)
;  in main (test_sp.c:22)
      0x800006c4 li      a2, 8                  #; (wrb) a2  <-- 8
      0x800006c8 li      a3, 9                  #; (wrb) a3  <-- 9
; init_data (test_sp.c:8)
;  in main (test_sp.c:22)
      0x800006cc li      a4, 64                 #; (wrb) a4  <-- 64
      0x800006d0 li      a5, 192                #; (wrb) a5  <-- 192
      0x800006d4 scfgw   a3, a4                 #; a3  = 9, a4  = 64
      0x800006d8 scfgw   a2, a5                 #; a2  = 8, a5  = 192
      0x800006dc li      a2, 32                 #; (wrb) a2  <-- 32
      0x800006e0 scfgw   zero, a2               #; a2  = 32
      0x800006e4 scfgwi  a1, 896                #; a1  = 0x00100000
; init_data (test_sp.c:0)
;  in main (test_sp.c:22)
      0x800006e8 auipc   a2, 0x3                #; (wrb) a2  <-- 0x800036e8
      0x800006ec addi    a2, a2, -1488          #; a2  = 0x800036e8, (wrb) a2  <-- 0x80003118
      0x800006f4 auipc   a2, 0x3                #; (wrb) a2  <-- 0x800036f4
      0x800006f8 addi    a2, a2, -1492          #; a2  = 0x800036f4, (wrb) a2  <-- 0x80003120
      0x800006f0 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x80003118]
      0x800006fc fld     ft4, 0(a2)             #; ft4  <~~ Doub[0x80003120]
                                                #; (f:lsu) ft3  <-- 3.141
; init_data (test_sp.c:8)
;  in main (test_sp.c:22)
      0x80000700 csrrsi  a2, ssr, 1             #; 
                                                #; (f:lsu) ft4  <-- 6.282
; init_data (test_sp.c:0)
;  in main (test_sp.c:22)
      0x8000070c auipc   a2, 0x3                #; (wrb) a2  <-- 0x8000370c
      0x80000704 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.141, ft3  = 3.141
; init_data (test_sp.c:9)
;  in main (test_sp.c:22)
      0x80000708 fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282, (f:fpu) ft0  <-- 3.141
                                                #; (f:fpu) ft0  <-- 6.282
; init_data (test_sp.c:0)
;  in main (test_sp.c:22)
      0x80000710 addi    a2, a2, -1508          #; a2  = 0x8000370c, (wrb) a2  <-- 0x80003128
      0x80000718 auipc   a2, 0x3                #; (wrb) a2  <-- 0x80003718
      0x8000071c addi    a2, a2, -1512          #; a2  = 0x80003718, (wrb) a2  <-- 0x80003130
      0x80000714 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x80003128]
                                                #; (f:lsu) ft3  <-- 9.423
      0x80000724 auipc   a2, 0x3                #; (wrb) a2  <-- 0x80003724
      0x80000728 addi    a2, a2, -1516          #; a2  = 0x80003724, (wrb) a2  <-- 0x80003138
      0x80000720 fld     ft4, 0(a2)             #; ft4  <~~ Doub[0x80003130]
      0x8000072c fld     ft5, 0(a2)             #; ft5  <~~ Doub[0x80003138]
                                                #; (f:lsu) ft4  <-- 12.564
      0x80000730 auipc   a2, 0x3                #; (wrb) a2  <-- 0x80003730
      0x80000734 addi    a2, a2, -1520          #; a2  = 0x80003730, (wrb) a2  <-- 0x80003140
                                                #; (f:lsu) ft5  <-- 15.705
      0x80000738 fld     ft6, 0(a2)             #; ft6  <~~ Doub[0x80003140]
; init_data (test_sp.c:9)
;  in main (test_sp.c:22)
      0x8000073c fsgnj.d ft0, ft3, ft3          #; ft3  = 9.423, ft3  = 9.423
                                                #; (f:fpu) ft0  <-- 9.423
                                                #; (f:lsu) ft6  <-- 18.846
      0x80000740 fsgnj.d ft0, ft4, ft4          #; ft4  = 12.564, ft4  = 12.564
; init_data (test_sp.c:0)
;  in main (test_sp.c:22)
      0x8000074c auipc   a2, 0x3                #; (wrb) a2  <-- 0x8000374c
      0x80000744 fsgnj.d ft0, ft5, ft5          #; ft5  = 15.705, ft5  = 15.705, (f:fpu) ft0  <-- 12.564
; init_data (test_sp.c:9)
;  in main (test_sp.c:22)
      0x80000748 fsgnj.d ft0, ft6, ft6          #; ft6  = 18.846, ft6  = 18.846, (f:fpu) ft0  <-- 15.705
                                                #; (f:fpu) ft0  <-- 18.846
; init_data (test_sp.c:0)
;  in main (test_sp.c:22)
      0x80000750 addi    a2, a2, -1540          #; a2  = 0x8000374c, (wrb) a2  <-- 0x80003148
      0x80000758 auipc   a2, 0x3                #; (wrb) a2  <-- 0x80003758
      0x8000075c addi    a2, a2, -1544          #; a2  = 0x80003758, (wrb) a2  <-- 0x80003150
      0x80000754 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x80003148]
                                                #; (f:lsu) ft3  <-- 21.9870000
      0x80000764 auipc   a2, 0x3                #; (wrb) a2  <-- 0x80003764
      0x80000768 addi    a2, a2, -1548          #; a2  = 0x80003764, (wrb) a2  <-- 0x80003158
      0x80000760 fld     ft4, 0(a2)             #; ft4  <~~ Doub[0x80003150]
      0x8000076c fld     ft5, 0(a2)             #; ft5  <~~ Doub[0x80003158]
                                                #; (f:lsu) ft4  <-- 25.128
      0x80000770 auipc   a2, 0x3                #; (wrb) a2  <-- 0x80003770
      0x80000774 addi    a2, a2, -1552          #; a2  = 0x80003770, (wrb) a2  <-- 0x80003160
                                                #; (f:lsu) ft5  <-- 28.269
      0x80000778 fld     ft6, 0(a2)             #; ft6  <~~ Doub[0x80003160]
; init_data (test_sp.c:9)
;  in main (test_sp.c:22)
      0x8000077c fsgnj.d ft0, ft3, ft3          #; ft3  = 21.9870000, ft3  = 21.9870000
                                                #; (f:fpu) ft0  <-- 21.9870000
                                                #; (f:lsu) ft6  <-- 31.41
      0x80000780 fsgnj.d ft0, ft4, ft4          #; ft4  = 25.128, ft4  = 25.128
      0x80000784 fsgnj.d ft0, ft5, ft5          #; ft5  = 28.269, ft5  = 28.269, (f:fpu) ft0  <-- 25.128
      0x80000788 fsgnj.d ft0, ft6, ft6          #; ft6  = 31.41, ft6  = 31.41, (f:fpu) ft0  <-- 28.269
; init_data (test_sp.c:0)
;  in main (test_sp.c:22)
      0x8000078c csrrci  a2, ssr, 1             #; (f:fpu) ft0  <-- 31.41
      0x80000790 j       pc + 0xcc              #; goto 0x8000085c
; init_data (test_sp.c:8)
;  in main (test_sp.c:23)
      0x8000085c srli    a2, a0, 20             #; a0  = 0x00100050, (wrb) a2  <-- 1
      0x80000860 snez    a2, a2                 #; a2  = 1, (wrb) a2  <-- 1
      0x80000864 lui     a3, 0x120              #; (wrb) a3  <-- 0x00120000
      0x80000868 addi    a3, a3, -71            #; a3  = 0x00120000, (wrb) a3  <-- 0x0011ffb9
      0x8000086c sltu    a3, a0, a3             #; a0  = 0x00100050, a3  = 0x0011ffb9, (wrb) a3  <-- 1
      0x80000870 and     a5, a2, a3             #; a2  = 1, a3  = 1, (wrb) a5  <-- 1
      0x80000874 beqz    a5, pc + 332           #; a5  = 1, not taken
; init_data (test_sp.c:0)
;  in main (test_sp.c:23)
      0x80000878 li      a7, 8                  #; (wrb) a7  <-- 8
      0x8000087c li      a4, 9                  #; (wrb) a4  <-- 9
; init_data (test_sp.c:8)
;  in main (test_sp.c:23)
      0x80000880 li      a2, 64                 #; (wrb) a2  <-- 64
      0x80000884 li      a3, 192                #; (wrb) a3  <-- 192
      0x80000888 scfgw   a4, a2                 #; a4  = 9, a2  = 64
      0x8000088c scfgw   a7, a3                 #; a7  = 8, a3  = 192
      0x80000890 li      a2, 32                 #; (wrb) a2  <-- 32
      0x80000894 scfgw   zero, a2               #; a2  = 32
      0x80000898 scfgwi  a0, 896                #; a0  = 0x00100050
; init_data (test_sp.c:0)
;  in main (test_sp.c:23)
      0x8000089c auipc   a2, 0x3                #; (wrb) a2  <-- 0x8000389c
      0x800008a0 addi    a2, a2, -1924          #; a2  = 0x8000389c, (wrb) a2  <-- 0x80003118
      0x800008a8 auipc   a2, 0x3                #; (wrb) a2  <-- 0x800038a8
      0x800008ac addi    a2, a2, -1928          #; a2  = 0x800038a8, (wrb) a2  <-- 0x80003120
      0x800008a4 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x80003118]
                                                #; (f:lsu) ft3  <-- 3.141
      0x800008b0 fld     ft4, 0(a2)             #; ft4  <~~ Doub[0x80003120]
; init_data (test_sp.c:8)
;  in main (test_sp.c:23)
      0x800008b4 csrrsi  a2, ssr, 1             #; 
; init_data (test_sp.c:9)
;  in main (test_sp.c:23)
      0x800008b8 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.141, ft3  = 3.141
                                                #; (f:fpu) ft0  <-- 3.141
                                                #; (f:lsu) ft4  <-- 6.282
; init_data (test_sp.c:0)
;  in main (test_sp.c:23)
      0x800008c0 auipc   a2, 0x3                #; (wrb) a2  <-- 0x800038c0
      0x800008bc fsgnj.d ft0, ft4, ft4          #; ft4  = 6.282, ft4  = 6.282
      0x800008c4 addi    a2, a2, -1944          #; a2  = 0x800038c0, (wrb) a2  <-- 0x80003128
                                                #; (f:fpu) ft0  <-- 6.282
      0x800008cc auipc   a2, 0x3                #; (wrb) a2  <-- 0x800038cc
      0x800008c8 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x80003128]
      0x800008d0 addi    a2, a2, -1948          #; a2  = 0x800038cc, (wrb) a2  <-- 0x80003130
                                                #; (f:lsu) ft3  <-- 9.423
      0x800008d8 auipc   a2, 0x3                #; (wrb) a2  <-- 0x800038d8
      0x800008dc addi    a2, a2, -1952          #; a2  = 0x800038d8, (wrb) a2  <-- 0x80003138
      0x800008d4 fld     ft4, 0(a2)             #; ft4  <~~ Doub[0x80003130]
                                                #; (f:lsu) ft4  <-- 12.564
      0x800008e4 auipc   a2, 0x3                #; (wrb) a2  <-- 0x800038e4
      0x800008e8 addi    a2, a2, -1956          #; a2  = 0x800038e4, (wrb) a2  <-- 0x80003140
      0x800008e0 fld     ft5, 0(a2)             #; ft5  <~~ Doub[0x80003138]
      0x800008ec fld     ft6, 0(a2)             #; ft6  <~~ Doub[0x80003140]
                                                #; (f:lsu) ft5  <-- 15.705
; init_data (test_sp.c:9)
;  in main (test_sp.c:23)
      0x800008f0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.423, ft3  = 9.423, (f:lsu) ft6  <-- 18.846
      0x800008f4 fsgnj.d ft0, ft4, ft4          #; ft4  = 12.564, ft4  = 12.564, (f:fpu) ft0  <-- 9.423
      0x800008f8 fsgnj.d ft0, ft5, ft5          #; ft5  = 15.705, ft5  = 15.705, (f:fpu) ft0  <-- 12.564
      0x800008fc fsgnj.d ft0, ft6, ft6          #; ft6  = 18.846, ft6  = 18.846, (f:fpu) ft0  <-- 15.705
                                                #; (f:fpu) ft0  <-- 18.846
; init_data (test_sp.c:0)
;  in main (test_sp.c:23)
      0x80000900 auipc   a2, 0x3                #; (wrb) a2  <-- 0x80003900
      0x80000904 addi    a2, a2, -1976          #; a2  = 0x80003900, (wrb) a2  <-- 0x80003148
      0x8000090c auipc   a2, 0x3                #; (wrb) a2  <-- 0x8000390c
      0x80000908 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x80003148]
      0x80000910 addi    a2, a2, -1980          #; a2  = 0x8000390c, (wrb) a2  <-- 0x80003150
                                                #; (f:lsu) ft3  <-- 21.9870000
      0x80000918 auipc   a2, 0x3                #; (wrb) a2  <-- 0x80003918
      0x8000091c addi    a2, a2, -1984          #; a2  = 0x80003918, (wrb) a2  <-- 0x80003158
      0x80000914 fld     ft4, 0(a2)             #; ft4  <~~ Doub[0x80003150]
                                                #; (f:lsu) ft4  <-- 25.128
      0x80000924 auipc   a2, 0x3                #; (wrb) a2  <-- 0x80003924
      0x80000928 addi    a2, a2, -1988          #; a2  = 0x80003924, (wrb) a2  <-- 0x80003160
      0x80000920 fld     ft5, 0(a2)             #; ft5  <~~ Doub[0x80003158]
      0x8000092c fld     ft6, 0(a2)             #; ft6  <~~ Doub[0x80003160]
                                                #; (f:lsu) ft5  <-- 28.269
; init_data (test_sp.c:9)
;  in main (test_sp.c:23)
      0x80000930 fsgnj.d ft0, ft3, ft3          #; ft3  = 21.9870000, ft3  = 21.9870000, (f:lsu) ft6  <-- 31.41
      0x80000934 fsgnj.d ft0, ft4, ft4          #; ft4  = 25.128, ft4  = 25.128, (f:fpu) ft0  <-- 21.9870000
      0x80000938 fsgnj.d ft0, ft5, ft5          #; ft5  = 28.269, ft5  = 28.269, (f:fpu) ft0  <-- 25.128
      0x8000093c fsgnj.d ft0, ft6, ft6          #; ft6  = 31.41, ft6  = 31.41, (f:fpu) ft0  <-- 28.269
                                                #; (f:fpu) ft0  <-- 31.41
; scalarprod (scalarprod.c:6)
;  in main (test_sp.c:25)
      0x80000940 and     a2, a6, a5             #; a6  = 1, a5  = 1, (wrb) a2  <-- 1
; scalarprod (scalarprod.c:0)
;  in main (test_sp.c:25)
      0x80000948 beqz    a2, pc + 320           #; a2  = 1, not taken
      0x80000944 csrrci  a3, ssr, 1             #; 
; scalarprod (scalarprod.c:6)
;  in main (test_sp.c:25)
      0x8000094c li      a2, 64                 #; (wrb) a2  <-- 64
      0x80000950 li      a3, 192                #; (wrb) a3  <-- 192
      0x80000954 scfgw   a4, a2                 #; a4  = 9, a2  = 64
      0x80000958 scfgw   a7, a3                 #; a7  = 8, a3  = 192
      0x8000095c li      a2, 32                 #; (wrb) a2  <-- 32
      0x80000960 scfgw   zero, a2               #; a2  = 32
      0x80000964 scfgwi  a1, 768                #; a1  = 0x00100000
      0x80000968 li      a1, 1                  #; (wrb) a1  <-- 1
      0x8000096c addi    a2, a1, 64             #; a1  = 1, (wrb) a2  <-- 65
      0x80000970 addi    a3, a1, 192            #; a1  = 1, (wrb) a3  <-- 193
      0x80000974 scfgw   a4, a2                 #; a4  = 9, a2  = 65
      0x80000978 scfgw   a7, a3                 #; a7  = 8, a3  = 193
      0x8000097c addi    a1, a1, 32             #; a1  = 1, (wrb) a1  <-- 33
      0x80000980 scfgw   zero, a1               #; a1  = 33
      0x80000984 scfgwi  a0, 769                #; a0  = 0x00100050
                                                #; (acc) gp  <-- 0x220001d3
      0x80000988 csrrsi  a0, ssr, 1             #; 
; scalarprod (scalarprod.c:7)
;  in main (test_sp.c:25)
      0x8000098c fsgnj.d ft3, ft0, ft0          #; ft0  = 3.141, ft0  = 3.141
                                                #; (f:fpu) ft3  <-- 3.141
      0x80000990 fmul.d  ft3, ft1, ft3          #; ft1  = 3.141, ft3  = 3.141
                                                #; (f:fpu) ft3  <-- 9.865881
      0x80000994 fmadd.d ft3, ft1, ft0, ft3     #; ft1  = 6.282, ft0  = 6.282, ft3  = 9.865881
                                                #; (f:fpu) ft3  <-- 49.3294050
      0x80000998 fmadd.d ft3, ft1, ft0, ft3     #; ft1  = 9.423, ft0  = 9.423, ft3  = 49.3294050
                                                #; (f:fpu) ft3  <-- 138.1223340
      0x8000099c fmadd.d ft3, ft1, ft0, ft3     #; ft1  = 12.564, ft0  = 12.564, ft3  = 138.1223340
                                                #; (f:fpu) ft3  <-- 295.9764300
      0x800009a0 fmadd.d ft3, ft1, ft0, ft3     #; ft1  = 15.705, ft0  = 15.705, ft3  = 295.9764300
                                                #; (f:fpu) ft3  <-- 542.6234550
      0x800009a4 fmadd.d ft3, ft1, ft0, ft3     #; ft1  = 18.846, ft0  = 18.846, ft3  = 542.6234550
                                                #; (f:fpu) ft3  <-- 897.7951710
      0x800009a8 fmadd.d ft3, ft1, ft0, ft3     #; ft1  = 21.9870000, ft0  = 21.9870000, ft3  = 897.7951710
; scalarprod (scalarprod.c:0)
;  in main (test_sp.c:25)
      0x800009bc j       pc + 0x144             #; goto 0x80000b00
                                                #; (f:fpu) ft3  <-- 1381.2233400
; scalarprod (scalarprod.c:7)
;  in main (test_sp.c:25)
      0x800009ac fmadd.d ft3, ft1, ft0, ft3     #; ft1  = 25.128, ft0  = 25.128, ft3  = 1381.2233400
                                                #; (f:fpu) ft3  <-- 2012.6397240
      0x800009b0 fmadd.d ft3, ft1, ft0, ft3     #; ft1  = 28.269, ft0  = 28.269, ft3  = 2012.6397240
; main (scalarprod.c:0)
      0x80000b00 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002b00
      0x80000b04 addi    a0, a0, 1640           #; a0  = 0x80002b00, (wrb) a0  <-- 0x80003168
                                                #; (f:fpu) ft3  <-- 2811.7760850
; scalarprod (scalarprod.c:7)
;  in main (test_sp.c:25)
      0x800009b4 fmadd.d ft3, ft1, ft0, ft3     #; ft1  = 31.41, ft0  = 31.41, ft3  = 2811.7760850
; scalarprod (scalarprod.c:0)
;  in main (test_sp.c:25)
      0x800009b8 csrrci  a0, ssr, 1             #; 
; main (scalarprod.c:0)
      0x80000b08 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80003168], (f:fpu) ft3  <-- 3798.3641850
; main (test_sp.c:33)
      0x80000b18 lw      a2, 8(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff48]
                                                #; (f:lsu) ft4  <-- -3798.3641850
; main (test_sp.c:30)
      0x80000b0c fadd.d  ft3, ft3, ft4          #; ft3  = 3798.3641850, ft4  = -3798.3641850
                                                #; (lsu) a2  <-- 0
; main (test_sp.c:33)
      0x80000b1c lw      a3, 12(sp)             #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff4c]
                                                #; (f:fpu) ft3  <-- 0.0
; main (test_sp.c:31)
      0x80000b10 fsgnjx.d fs0, ft3, ft3         #; ft3  = 0.0, ft3  = 0.0
                                                #; (f:fpu) fs0  <-- 0.0
                                                #; (lsu) a3  <-- 0
      0x80000b14 fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff48]
; main (test_sp.c:33)
      0x80000b20 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002b20
      0x80000b24 addi    a0, a0, 869            #; a0  = 0x80002b20, (wrb) a0  <-- 0x80002e85
      0x80000b28 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000b28
      0x80000b2c jalr    ra, ra, 40             #; ra  = 0x80000b28, (wrb) ra  <-- 0x80000b30, goto 0x80000b50
; printf_ (printf.c:863)
      0x80000b50 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
      0x80000b54 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x80000b30 ~~> Word[0x0011ff1c]
      0x80000b58 mv      t0, a0                 #; a0  = 0x80002e85, (wrb) t0  <-- 0x80002e85
      0x80000b5c sw      a7, 44(sp)             #; sp  = 0x0011ff10, 8 ~~> Word[0x0011ff3c]
      0x80000b60 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff38]
      0x80000b64 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff34]
      0x80000b68 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 9 ~~> Word[0x0011ff30]
      0x80000b6c sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
      0x80000b70 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
      0x80000b74 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 33 ~~> Word[0x0011ff24]
      0x80000b78 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
; printf_ (printf.c:865)
      0x80000b7c sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
; printf_ (printf.c:867)
      0x80000b80 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001b80
      0x80000b84 addi    a0, a0, -988           #; a0  = 0x80001b80, (wrb) a0  <-- 0x800017a4
      0x80000b88 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
      0x80000b8c li      a2, -1                 #; (wrb) a2  <-- -1
      0x80000b90 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
      0x80000b94 mv      a3, t0                 #; t0  = 0x80002e85, (wrb) a3  <-- 0x80002e85
      0x80000b98 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000b98
      0x80000b9c jalr    ra, ra, 20             #; ra  = 0x80000b98, (wrb) ra  <-- 0x80000ba0, goto 0x80000bac
; _vsnprintf.llvm.1805434900161566649 (printf.c:578)
      0x80000bac addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
      0x80000bb0 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x80000ba0 ~~> Word[0x0011ff0c]
      0x80000bb4 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff08]
      0x80000bb8 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
      0x80000bbc sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
      0x80000bc0 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
      0x80000bc4 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
      0x80000bc8 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
      0x80000bcc sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
      0x80000bd0 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
      0x80000bd4 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
      0x80000bd8 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
      0x80000bdc sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
      0x80000be0 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
      0x80000be4 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
      0x80000be8 mv      s0, a3                 #; a3  = 0x80002e85, (wrb) s0  <-- 0x80002e85
      0x80000bec mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
      0x80000bf0 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
; _vsnprintf.llvm.1805434900161566649 (printf.c:582)
      0x80000bf4 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000bf8 mv      s2, a0                 #; a0  = 0x800017a4, (wrb) s2  <-- 0x800017a4
      0x80000bfc j       pc + 0xc               #; goto 0x80000c08
      0x80000c08 li      s8, 0                  #; (wrb) s8  <-- 0
      0x80000c0c li      s6, 37                 #; (wrb) s6  <-- 37
      0x80000c10 li      s11, 16                #; (wrb) s11 <-- 16
      0x80000c14 li      s7, 46                 #; (wrb) s7  <-- 46
      0x80000c18 lui     a0, 0x1                #; (wrb) a0  <-- 4096
      0x80000c1c addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
      0x80000c20 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
      0x80000c24 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
      0x80000c28 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
      0x80000c2c sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c30 addi    s10, s0, 2             #; s0  = 0x80002e85, (wrb) s10 <-- 0x80002e87
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c34 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
      0x80000c38 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c3c lbu     a0, 0(s0)              #; s0  = 0x80002e85, a0  <~~ Byte[0x80002e85]
                                                #; (lsu) a0  <-- 101
      0x80000c40 beqz    a0, pc + 2824          #; a0  = 101, not taken
      0x80000c44 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000c48 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
      0x80000c4c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000c50 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
      0x80000c54 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000c58 jalr    s2                     #; s2  = 0x800017a4, (wrb) ra  <-- 0x80000c5c, goto 0x800017a4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800017a4 beqz    a0, pc + 168           #; a0  = 101, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017ac li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800017b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800037b4
      0x800017b8 addi    a3, a3, -1424          #; a3  = 0x800037b4, (wrb) a3  <-- 0x80003224
                                                #; (acc) a1  <-- 0x00d605b3
      0x800017bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003224, (wrb) a1  <-- 0x80003224
      0x800017c0 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
                                                #; (lsu) a4  <-- 0
      0x800017c4 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
      0x800017c8 sw      a5, 0(a1)              #; a1  = 0x80003224, 1 ~~> Word[0x80003224]
      0x800017cc add     a4, a1, a4             #; a1  = 0x80003224, a4  = 0, (wrb) a4  <-- 0x80003224
      0x800017d0 sb      a0, 72(a4)             #; a4  = 0x80003224, 101 ~~> Byte[0x8000326c]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017d4 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
                                                #; (lsu) a4  <-- 1
      0x800017d8 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
      0x800017dc snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
      0x800017e0 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
      0x800017e4 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
      0x800017e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000184c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000184c ret                            #; ra  = 0x80000c5c, goto 0x80000c5c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000c5c addi    s0, s0, 1              #; s0  = 0x80002e85, (wrb) s0  <-- 0x80002e86
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000c60 addi    s10, s10, 1            #; s10 = 0x80002e87, (wrb) s10 <-- 0x80002e88
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c64 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c68 lbu     a0, 0(s0)              #; s0  = 0x80002e86, a0  <~~ Byte[0x80002e86]
                                                #; (lsu) a0  <-- 114
      0x80000c6c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000c44
      0x80000c44 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000c48 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
      0x80000c4c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000c50 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
      0x80000c54 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000c58 jalr    s2                     #; s2  = 0x800017a4, (wrb) ra  <-- 0x80000c5c, goto 0x800017a4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800017a4 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017ac li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800017b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800037b4
      0x800017b8 addi    a3, a3, -1424          #; a3  = 0x800037b4, (wrb) a3  <-- 0x80003224
                                                #; (acc) a1  <-- 0x00d605b3
      0x800017bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003224, (wrb) a1  <-- 0x80003224
      0x800017c0 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
                                                #; (lsu) a4  <-- 1
      0x800017c4 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
      0x800017c8 sw      a5, 0(a1)              #; a1  = 0x80003224, 2 ~~> Word[0x80003224]
      0x800017cc add     a4, a1, a4             #; a1  = 0x80003224, a4  = 1, (wrb) a4  <-- 0x80003225
      0x800017d0 sb      a0, 72(a4)             #; a4  = 0x80003225, 114 ~~> Byte[0x8000326d]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017d4 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
                                                #; (lsu) a4  <-- 2
      0x800017d8 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
      0x800017dc snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
      0x800017e0 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x800017e4 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x800017e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000184c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000184c ret                            #; ra  = 0x80000c5c, goto 0x80000c5c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000c5c addi    s0, s0, 1              #; s0  = 0x80002e86, (wrb) s0  <-- 0x80002e87
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000c60 addi    s10, s10, 1            #; s10 = 0x80002e88, (wrb) s10 <-- 0x80002e89
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c64 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c68 lbu     a0, 0(s0)              #; s0  = 0x80002e87, a0  <~~ Byte[0x80002e87]
                                                #; (lsu) a0  <-- 114
      0x80000c6c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000c44
      0x80000c44 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000c48 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
      0x80000c4c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000c50 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
      0x80000c54 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000c58 jalr    s2                     #; s2  = 0x800017a4, (wrb) ra  <-- 0x80000c5c, goto 0x800017a4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800017a4 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017ac li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800017b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800037b4
      0x800017b8 addi    a3, a3, -1424          #; a3  = 0x800037b4, (wrb) a3  <-- 0x80003224
                                                #; (acc) a1  <-- 0x00d605b3
      0x800017bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003224, (wrb) a1  <-- 0x80003224
      0x800017c0 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
                                                #; (lsu) a4  <-- 2
      0x800017c4 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
      0x800017c8 sw      a5, 0(a1)              #; a1  = 0x80003224, 3 ~~> Word[0x80003224]
      0x800017cc add     a4, a1, a4             #; a1  = 0x80003224, a4  = 2, (wrb) a4  <-- 0x80003226
      0x800017d0 sb      a0, 72(a4)             #; a4  = 0x80003226, 114 ~~> Byte[0x8000326e]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017d4 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
                                                #; (lsu) a4  <-- 3
      0x800017d8 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
      0x800017dc snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
      0x800017e0 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x800017e4 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x800017e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000184c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000184c ret                            #; ra  = 0x80000c5c, goto 0x80000c5c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000c5c addi    s0, s0, 1              #; s0  = 0x80002e87, (wrb) s0  <-- 0x80002e88
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000c60 addi    s10, s10, 1            #; s10 = 0x80002e89, (wrb) s10 <-- 0x80002e8a
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c64 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c68 lbu     a0, 0(s0)              #; s0  = 0x80002e88, a0  <~~ Byte[0x80002e88]
                                                #; (lsu) a0  <-- 111
      0x80000c6c bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000c44
      0x80000c44 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000c48 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
      0x80000c4c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000c50 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
      0x80000c54 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000c58 jalr    s2                     #; s2  = 0x800017a4, (wrb) ra  <-- 0x80000c5c, goto 0x800017a4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800017a4 beqz    a0, pc + 168           #; a0  = 111, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017ac li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800017b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800037b4
      0x800017b8 addi    a3, a3, -1424          #; a3  = 0x800037b4, (wrb) a3  <-- 0x80003224
                                                #; (acc) a1  <-- 0x00d605b3
      0x800017bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003224, (wrb) a1  <-- 0x80003224
      0x800017c0 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
                                                #; (lsu) a4  <-- 3
      0x800017c4 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
      0x800017c8 sw      a5, 0(a1)              #; a1  = 0x80003224, 4 ~~> Word[0x80003224]
      0x800017cc add     a4, a1, a4             #; a1  = 0x80003224, a4  = 3, (wrb) a4  <-- 0x80003227
      0x800017d0 sb      a0, 72(a4)             #; a4  = 0x80003227, 111 ~~> Byte[0x8000326f]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017d4 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
                                                #; (lsu) a4  <-- 4
      0x800017d8 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
      0x800017dc snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
      0x800017e0 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
      0x800017e4 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
      0x800017e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000184c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000184c ret                            #; ra  = 0x80000c5c, goto 0x80000c5c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000c5c addi    s0, s0, 1              #; s0  = 0x80002e88, (wrb) s0  <-- 0x80002e89
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000c60 addi    s10, s10, 1            #; s10 = 0x80002e8a, (wrb) s10 <-- 0x80002e8b
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c64 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c68 lbu     a0, 0(s0)              #; s0  = 0x80002e89, a0  <~~ Byte[0x80002e89]
                                                #; (lsu) a0  <-- 114
      0x80000c6c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000c44
      0x80000c44 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000c48 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
      0x80000c4c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000c50 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
      0x80000c54 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000c58 jalr    s2                     #; s2  = 0x800017a4, (wrb) ra  <-- 0x80000c5c, goto 0x800017a4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800017a4 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017ac li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800017b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800037b4
      0x800017b8 addi    a3, a3, -1424          #; a3  = 0x800037b4, (wrb) a3  <-- 0x80003224
                                                #; (acc) a1  <-- 0x00d605b3
      0x800017bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003224, (wrb) a1  <-- 0x80003224
      0x800017c0 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
                                                #; (lsu) a4  <-- 4
      0x800017c4 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
      0x800017c8 sw      a5, 0(a1)              #; a1  = 0x80003224, 5 ~~> Word[0x80003224]
      0x800017cc add     a4, a1, a4             #; a1  = 0x80003224, a4  = 4, (wrb) a4  <-- 0x80003228
      0x800017d0 sb      a0, 72(a4)             #; a4  = 0x80003228, 114 ~~> Byte[0x80003270]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017d4 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
                                                #; (lsu) a4  <-- 5
      0x800017d8 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
      0x800017dc snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
      0x800017e0 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x800017e4 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x800017e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000184c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000184c ret                            #; ra  = 0x80000c5c, goto 0x80000c5c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000c5c addi    s0, s0, 1              #; s0  = 0x80002e89, (wrb) s0  <-- 0x80002e8a
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000c60 addi    s10, s10, 1            #; s10 = 0x80002e8b, (wrb) s10 <-- 0x80002e8c
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c64 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c68 lbu     a0, 0(s0)              #; s0  = 0x80002e8a, a0  <~~ Byte[0x80002e8a]
                                                #; (lsu) a0  <-- 32
      0x80000c6c bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000c44
      0x80000c44 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000c48 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
      0x80000c4c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000c50 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
      0x80000c54 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000c58 jalr    s2                     #; s2  = 0x800017a4, (wrb) ra  <-- 0x80000c5c, goto 0x800017a4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800017a4 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017ac li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800017b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800037b4
      0x800017b8 addi    a3, a3, -1424          #; a3  = 0x800037b4, (wrb) a3  <-- 0x80003224
                                                #; (acc) a1  <-- 0x00d605b3
      0x800017bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003224, (wrb) a1  <-- 0x80003224
      0x800017c0 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
                                                #; (lsu) a4  <-- 5
      0x800017c4 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
      0x800017c8 sw      a5, 0(a1)              #; a1  = 0x80003224, 6 ~~> Word[0x80003224]
      0x800017cc add     a4, a1, a4             #; a1  = 0x80003224, a4  = 5, (wrb) a4  <-- 0x80003229
      0x800017d0 sb      a0, 72(a4)             #; a4  = 0x80003229, 32 ~~> Byte[0x80003271]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017d4 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
                                                #; (lsu) a4  <-- 6
      0x800017d8 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
      0x800017dc snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
      0x800017e0 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x800017e4 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x800017e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000184c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000184c ret                            #; ra  = 0x80000c5c, goto 0x80000c5c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000c5c addi    s0, s0, 1              #; s0  = 0x80002e8a, (wrb) s0  <-- 0x80002e8b
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000c60 addi    s10, s10, 1            #; s10 = 0x80002e8c, (wrb) s10 <-- 0x80002e8d
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c64 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c68 lbu     a0, 0(s0)              #; s0  = 0x80002e8b, a0  <~~ Byte[0x80002e8b]
                                                #; (lsu) a0  <-- 61
      0x80000c6c bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000c44
      0x80000c44 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000c48 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
      0x80000c4c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000c50 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
      0x80000c54 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000c58 jalr    s2                     #; s2  = 0x800017a4, (wrb) ra  <-- 0x80000c5c, goto 0x800017a4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800017a4 beqz    a0, pc + 168           #; a0  = 61, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017ac li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800017b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800037b4
      0x800017b8 addi    a3, a3, -1424          #; a3  = 0x800037b4, (wrb) a3  <-- 0x80003224
                                                #; (acc) a1  <-- 0x00d605b3
      0x800017bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003224, (wrb) a1  <-- 0x80003224
      0x800017c0 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
                                                #; (lsu) a4  <-- 6
      0x800017c4 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
      0x800017c8 sw      a5, 0(a1)              #; a1  = 0x80003224, 7 ~~> Word[0x80003224]
      0x800017cc add     a4, a1, a4             #; a1  = 0x80003224, a4  = 6, (wrb) a4  <-- 0x8000322a
      0x800017d0 sb      a0, 72(a4)             #; a4  = 0x8000322a, 61 ~~> Byte[0x80003272]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017d4 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
                                                #; (lsu) a4  <-- 7
      0x800017d8 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
      0x800017dc snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
      0x800017e0 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
      0x800017e4 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
      0x800017e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000184c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000184c ret                            #; ra  = 0x80000c5c, goto 0x80000c5c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000c5c addi    s0, s0, 1              #; s0  = 0x80002e8b, (wrb) s0  <-- 0x80002e8c
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000c60 addi    s10, s10, 1            #; s10 = 0x80002e8d, (wrb) s10 <-- 0x80002e8e
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c64 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c68 lbu     a0, 0(s0)              #; s0  = 0x80002e8c, a0  <~~ Byte[0x80002e8c]
                                                #; (lsu) a0  <-- 32
      0x80000c6c bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000c44
      0x80000c44 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000c48 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
      0x80000c4c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000c50 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
      0x80000c54 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000c58 jalr    s2                     #; s2  = 0x800017a4, (wrb) ra  <-- 0x80000c5c, goto 0x800017a4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800017a4 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017ac li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800017b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800037b4
      0x800017b8 addi    a3, a3, -1424          #; a3  = 0x800037b4, (wrb) a3  <-- 0x80003224
                                                #; (acc) a1  <-- 0x00d605b3
      0x800017bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003224, (wrb) a1  <-- 0x80003224
      0x800017c0 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
                                                #; (lsu) a4  <-- 7
      0x800017c4 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
      0x800017c8 sw      a5, 0(a1)              #; a1  = 0x80003224, 8 ~~> Word[0x80003224]
      0x800017cc add     a4, a1, a4             #; a1  = 0x80003224, a4  = 7, (wrb) a4  <-- 0x8000322b
      0x800017d0 sb      a0, 72(a4)             #; a4  = 0x8000322b, 32 ~~> Byte[0x80003273]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017d4 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
                                                #; (lsu) a4  <-- 8
      0x800017d8 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
      0x800017dc snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
      0x800017e0 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x800017e4 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x800017e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000184c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000184c ret                            #; ra  = 0x80000c5c, goto 0x80000c5c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000c5c addi    s0, s0, 1              #; s0  = 0x80002e8c, (wrb) s0  <-- 0x80002e8d
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000c60 addi    s10, s10, 1            #; s10 = 0x80002e8e, (wrb) s10 <-- 0x80002e8f
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c64 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c68 lbu     a0, 0(s0)              #; s0  = 0x80002e8d, a0  <~~ Byte[0x80002e8d]
                                                #; (lsu) a0  <-- 37
      0x80000c6c bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000c44
      0x80000c44 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000c74
; _vsnprintf.llvm.1805434900161566649 (printf.c:602)
      0x80000c74 li      s0, 0                  #; (wrb) s0  <-- 0
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c78 j       pc + 0x10              #; goto 0x80000c88
; _vsnprintf.llvm.1805434900161566649 (printf.c:604)
      0x80000c88 lbu     a0, -1(s10)            #; s10 = 0x80002e8f, a0  <~~ Byte[0x80002e8e]
                                                #; (lsu) a0  <-- 102
      0x80000c8c addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
      0x80000c90 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000cc8
; _is_digit (printf.c:183)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000cc8 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
      0x80000ccc andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
; _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000cd0 addi    a1, s10, -1            #; s10 = 0x80002e8f, (wrb) a1  <-- 0x80002e8e
      0x80000cd4 li      a3, 9                  #; (wrb) a3  <-- 9
      0x80000cd8 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000d54
; _vsnprintf.llvm.1805434900161566649 (printf.c:619)
      0x80000d54 li      a2, 42                 #; (wrb) a2  <-- 42
      0x80000d58 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000da8
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000da8 li      s6, 0                  #; (wrb) s6  <-- 0
      0x80000dac mv      s10, a1                #; a1  = 0x80002e8e, (wrb) s10 <-- 0x80002e8e
; _vsnprintf.llvm.1805434900161566649 (printf.c:633)
      0x80000db0 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000db4 li      s7, 0                  #; (wrb) s7  <-- 0
      0x80000db8 j       pc + 0xc               #; goto 0x80000dc4
; _vsnprintf.llvm.1805434900161566649 (printf.c:647)
      0x80000dc4 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
      0x80000dc8 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
      0x80000dcc slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
      0x80000dd0 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
      0x80000dd4 li      a2, 9                  #; (wrb) a2  <-- 9
      0x80000dd8 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000e3c
; _vsnprintf.llvm.1805434900161566649 (printf.c:683)
      0x80000e3c addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
      0x80000e40 li      a2, 83                 #; (wrb) a2  <-- 83
      0x80000e44 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e48 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
      0x80000e4c auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002e4c
      0x80000e50 addi    a2, a2, 184            #; a2  = 0x80002e4c, (wrb) a2  <-- 0x80002f04
      0x80000e54 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002f04, (wrb) a1  <-- 0x80003008
      0x80000e58 lw      a2, 0(a1)              #; a1  = 0x80003008, a2  <~~ Word[0x80003008]
      0x80000e5c li      a1, 8                  #; (wrb) a1  <-- 8
      0x80000e60 li      s8, 16                 #; (wrb) s8  <-- 16
                                                #; (lsu) a2  <-- 0x80000e94
      0x80000e64 jr      a2                     #; a2  = 0x80000e94, goto 0x80000e94
; _vsnprintf.llvm.1805434900161566649 (printf.c:760)
      0x80000e94 li      a1, 70                 #; (wrb) a1  <-- 70
      0x80000e98 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000ea0
; _vsnprintf.llvm.1805434900161566649 (printf.c:761)
      0x80000ea0 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
      0x80000ea4 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
      0x80000eac addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
      0x80000ea8 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
                                                #; (f:lsu) fa0  <-- 0.0
      0x80000eb0 mv      a0, s2                 #; s2  = 0x800017a4, (wrb) a0  <-- 0x800017a4
      0x80000eb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000eb8 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
      0x80000ebc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000ec0 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
      0x80000ec4 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
      0x80000ec8 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
      0x80000ecc auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001ecc
      0x80000ed0 jalr    ra, ra, -1656          #; ra  = 0x80001ecc, (wrb) ra  <-- 0x80000ed4, goto 0x80001854
; _ftoa (printf.c:340)
      0x80001854 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
      0x80001858 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000ed4 ~~> Word[0x0011fe9c]
      0x8000185c sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
      0x80001860 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
      0x80001864 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x800017a4 ~~> Word[0x0011fe90]
      0x80001868 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
      0x8000186c sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
      0x80001870 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
      0x80001874 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
      0x80001878 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
      0x8000187c sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
      0x80001880 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
      0x80001884 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002e8e ~~> Word[0x0011fe70]
      0x80001888 fsd     fs0, 56(sp)            #; 0.0 ~~> Doub[0x0011fe68]
      0x8000188c fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
      0x80001894 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003894
      0x80001898 addi    s1, s1, -1820          #; s1  = 0x80003894, (wrb) s1  <-- 0x80003178
      0x80001890 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
      0x8000189c fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80003178]
; _ftoa (printf.c:351)
      0x800018a4 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
; _ftoa (printf.c:0)
      0x800018a8 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                                                #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
      0x800018ac mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
      0x800018a0 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
      0x800018b0 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
      0x800018b4 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
      0x800018b8 mv      s7, a0                 #; a0  = 0x800017a4, (wrb) s7  <-- 0x800017a4
; _ftoa (printf.c:351)
      0x800018bc bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x800019ac
; _ftoa (printf.c:0)
      0x800019ac fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
                                                #; (f:fpu) fs0  <-- 0.0
      0x800019b0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800029b0
      0x800019b4 addi    a0, a0, 2000           #; a0  = 0x800029b0, (wrb) a0  <-- 0x80003180
      0x800019b8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003180]
                                                #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
; _ftoa (printf.c:353)
      0x800019bc fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
                                                #; (acc) t3  <-- 0x00051e63
      0x800019c0 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x800019dc
; _ftoa (printf.c:0)
      0x800019dc auipc   a0, 0x1                #; (wrb) a0  <-- 0x800029dc
      0x800019e0 addi    a0, a0, 1964           #; a0  = 0x800029dc, (wrb) a0  <-- 0x80003188
      0x800019e8 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800029e8
      0x800019ec addi    a0, a0, 1960           #; a0  = 0x800029e8, (wrb) a0  <-- 0x80003190
      0x800019e4 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003188]
                                                #; (f:lsu) ft0  <-- 1000000000.0000000
      0x800019f0 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003190]
; _ftoa (printf.c:358)
      0x800019f4 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
                                                #; (acc) a0  <-- 0x00b57533
                                                #; (f:lsu) ft1  <-- -1000000000.0000000
      0x800019f8 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
                                                #; (acc) a0  <-- 0x00b57533
      0x800019fc and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
      0x80001a00 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001afc
; _ftoa (printf.c:374)
      0x80001afc andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
      0x80001b00 li      s8, 6                  #; (wrb) s8  <-- 6
      0x80001b04 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001b0c
; _ftoa (printf.c:0)
      0x80001b0c li      a0, 10                 #; (wrb) a0  <-- 10
; _ftoa (printf.c:378)
      0x80001b14 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001b4c
; _ftoa (printf.c:0)
      0x80001b10 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
                                                #; (f:fpu) fs2  <-- 0.0
      0x80001b4c li      s0, 0                  #; (wrb) s0  <-- 0
; _ftoa (printf.c:384)
      0x80001b50 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
      0x80001b54 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002b54
      0x80001b58 addi    a1, a1, 1284           #; a1  = 0x80002b54, (wrb) a1  <-- 0x80003058
      0x80001b5c add     a0, a0, a1             #; a0  = 48, a1  = 0x80003058, (wrb) a0  <-- 0x80003088
      0x80001b60 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003088]
; _ftoa (printf.c:383)
      0x80001b64 fcvt.w.d s1, fs2               #; fs2  = 0.0
; _ftoa (printf.c:384)
      0x80001b68 fcvt.d.w ft0, s1               #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80001b6c fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
                                                #; (f:lsu) ft1  <-- 1000000.0000000
                                                #; (f:fpu) ft0  <-- 0.0
; _ftoa (printf.c:0)
      0x80001b74 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002b74
      0x80001b78 addi    a0, a0, 1572           #; a0  = 0x80002b74, (wrb) a0  <-- 0x80003198
      0x80001b70 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
      0x80001b7c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003198], (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:385)
      0x80001b80 fcvt.wu.d a0, ft2              #; ft2  = 0.0
                                                #; (f:lsu) ft0  <-- 0.5
                                                #; (acc) gp  <-- 0xd21501d3
; _ftoa (printf.c:386)
      0x80001b84 fcvt.d.wu ft3, a0              #; ac1  = 0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80001b88 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:388)
      0x80001b8c fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
      0x80001b90 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001bb0
; _ftoa (printf.c:396)
      0x80001bb0 flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
                                                #; (acc) s4  <-- 0x00059a63
      0x80001bb4 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001bc8
; _ftoa (printf.c:403)
      0x80001bcc beqz    s8, pc + 216           #; s8  = 6, not taken
      0x80001bc8 fcvt.d.w fs1, zero             #; ac1  = 0
                                                #; (f:fpu) fs1  <-- 0.0
; _ftoa (printf.c:0)
      0x80001bd0 li      a2, 0                  #; (wrb) a2  <-- 0
      0x80001bd4 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:414)
      0x80001bd8 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
      0x80001bdc li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001be0 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
      0x80001be4 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
      0x80001be8 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
      0x80001bec li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001bf0 li      a7, 9                  #; (wrb) a7  <-- 9
      0x80001bf4 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
; _ftoa (printf.c:0)
      0x80001bf8 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
; _ftoa (printf.c:417)
      0x80001bfc mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
      0x80001c00 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001c04 mul     a3, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a3  <-- 0x40d586b3
      0x80001c08 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
; _ftoa (printf.c:416)
      0x80001c0c ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
      0x80001c10 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
      0x80001c14 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
; _ftoa (printf.c:417)
      0x80001c18 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
      0x80001c1c bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
; _ftoa (printf.c:422)
      0x80001c20 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
      0x80001c24 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
      0x80001c28 li      a3, 30                 #; (wrb) a3  <-- 30
      0x80001c2c sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
      0x80001c30 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
      0x80001c34 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
      0x80001c38 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
      0x80001c3c bnez    a3, pc + 136           #; a3  = 0, not taken
; _ftoa (printf.c:0)
      0x80001c40 addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
; _ftoa (printf.c:422)
      0x80001c44 add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
      0x80001c48 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
      0x80001c4c add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
      0x80001c50 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
      0x80001c54 li      a1, 31                 #; (wrb) a1  <-- 31
      0x80001c58 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
      0x80001c5c add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
      0x80001c60 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
      0x80001c64 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001c6c
      0x80001c6c addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
; _ftoa (printf.c:423)
      0x80001c70 li      a1, 48                 #; (wrb) a1  <-- 48
      0x80001c74 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000c74
      0x80001c78 jalr    ra, ra, -1820          #; ra  = 0x80000c74, (wrb) ra  <-- 0x80001c7c, goto 0x80000558
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
      0x800005ec ret                            #; ra  = 0x80001c7c, goto 0x80001c7c
; _ftoa (printf.c:0)
      0x80001c7c li      a0, 0                  #; (wrb) a0  <-- 0
; _ftoa (printf.c:422)
      0x80001c80 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
      0x80001c84 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
      0x80001c88 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
      0x80001c8c snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
      0x80001c90 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001c94 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x80001c98 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001c80
      0x80001c80 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
      0x80001c84 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
      0x80001c88 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
      0x80001c8c snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
      0x80001c90 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001c94 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
      0x80001c98 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001c80
      0x80001c80 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
      0x80001c84 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
      0x80001c88 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
      0x80001c8c snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
      0x80001c90 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001c94 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
      0x80001c98 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001c80
      0x80001c80 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
      0x80001c84 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
      0x80001c88 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
      0x80001c8c snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
      0x80001c90 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001c94 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
      0x80001c98 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001c80
      0x80001c80 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
      0x80001c84 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
      0x80001c88 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
      0x80001c8c snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
      0x80001c90 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
      0x80001c94 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
      0x80001c98 bnez    a2, pc - 24            #; a2  = 0, not taken
; _ftoa (printf.c:425)
      0x80001c9c add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
      0x80001ca0 j       pc + 0x28              #; goto 0x80001cc8
      0x80001cc8 beqz    a1, pc + 28            #; a1  = 1, not taken
; _ftoa (printf.c:427)
      0x80001ccc addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
; _ftoa (printf.c:0)
      0x80001cd0 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:427)
      0x80001cd4 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
      0x80001cd8 li      a1, 46                 #; (wrb) a1  <-- 46
      0x80001cdc sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
      0x80001ce0 j       pc + 0x8               #; goto 0x80001ce8
; _ftoa (printf.c:0)
      0x80001ce8 li      a0, 32                 #; (wrb) a0  <-- 32
; _ftoa (printf.c:432)
      0x80001cec mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
      0x80001cf0 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
; _ftoa (printf.c:0)
      0x80001cf4 li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001cfc lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
      0x80001cf8 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
      0x80001d00 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
      0x80001d04 li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001d08 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
      0x80001d0c li      a4, 18                 #; (wrb) a4  <-- 18
; _ftoa (printf.c:432)
      0x80001d10 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
; _ftoa (printf.c:434)
      0x80001d14 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
                                                #; (acc) a5  <-- 0x01f55793
      0x80001d18 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
      0x80001d1c srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
      0x80001d20 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001d24 mul     a5, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f487b3
      0x80001d28 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
; _ftoa (printf.c:433)
      0x80001d2c addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
      0x80001d30 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
      0x80001d34 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
; _ftoa (printf.c:434)
      0x80001d38 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
; _ftoa (printf.c:433)
      0x80001d3c sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
; _ftoa (printf.c:0)
      0x80001d40 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
      0x80001d44 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:434)
      0x80001d48 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
      0x80001d4c j       pc + 0x8               #; goto 0x80001d54
; _ftoa (printf.c:440)
      0x80001d54 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:0)
      0x80001d58 li      a0, 1                  #; (wrb) a0  <-- 1
; _ftoa (printf.c:440)
      0x80001d5c bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001dc8
; _ftoa (printf.c:0)
      0x80001dc8 li      a0, 31                 #; (wrb) a0  <-- 31
; _ftoa (printf.c:449)
      0x80001dcc bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
; _ftoa (printf.c:450)
      0x80001dd0 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001de8
; _ftoa (printf.c:453)
      0x80001de8 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
      0x80001dec bnez    a0, pc + 32            #; a0  = 0, not taken
; _ftoa (printf.c:456)
      0x80001df0 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
      0x80001df4 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001e20
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001e20 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
      0x80001e24 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
      0x80001e28 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x80001e2c or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
; _ftoa (printf.c:0)
      0x80001e30 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
      0x80001e34 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001e38 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001e64
; _ftoa (printf.c:0)
      0x80001e64 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001e68 beqz    s8, pc + 56            #; s8  = 8, not taken
      0x80001e6c addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001e70 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
      0x80001e74 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
      0x80001e78 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
      0x80001e7c addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
                                                #; (lsu) a0  <-- 48
      0x80001e80 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001e84 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
      0x80001e88 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001e8c jalr    s7                     #; s7  = 0x800017a4, (wrb) ra  <-- 0x80001e90, goto 0x800017a4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800017a4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017ac li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800017b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800037b4
      0x800017b8 addi    a3, a3, -1424          #; a3  = 0x800037b4, (wrb) a3  <-- 0x80003224
                                                #; (acc) a1  <-- 0x00d605b3
      0x800017bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003224, (wrb) a1  <-- 0x80003224
      0x800017c0 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
                                                #; (lsu) a4  <-- 8
      0x800017c4 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
      0x800017c8 sw      a5, 0(a1)              #; a1  = 0x80003224, 9 ~~> Word[0x80003224]
      0x800017cc add     a4, a1, a4             #; a1  = 0x80003224, a4  = 8, (wrb) a4  <-- 0x8000322c
      0x800017d0 sb      a0, 72(a4)             #; a4  = 0x8000322c, 48 ~~> Byte[0x80003274]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017d4 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
                                                #; (lsu) a4  <-- 9
      0x800017d8 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
      0x800017dc snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
      0x800017e0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800017e4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800017e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000184c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000184c ret                            #; ra  = 0x80001e90, goto 0x80001e90
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001e90 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
      0x80001e94 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001e98 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001e70
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001e70 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
      0x80001e74 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
      0x80001e78 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
      0x80001e7c addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
      0x80001e80 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001e84 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
      0x80001e88 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001e8c jalr    s7                     #; s7  = 0x800017a4, (wrb) ra  <-- 0x80001e90, goto 0x800017a4
                                                #; (lsu) a0  <-- 46
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800017a4 beqz    a0, pc + 168           #; a0  = 46, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017ac li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800017b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800037b4
      0x800017b8 addi    a3, a3, -1424          #; a3  = 0x800037b4, (wrb) a3  <-- 0x80003224
                                                #; (acc) a1  <-- 0x00d605b3
      0x800017bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003224, (wrb) a1  <-- 0x80003224
      0x800017c0 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
                                                #; (lsu) a4  <-- 9
      0x800017c4 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
      0x800017c8 sw      a5, 0(a1)              #; a1  = 0x80003224, 10 ~~> Word[0x80003224]
      0x800017cc add     a4, a1, a4             #; a1  = 0x80003224, a4  = 9, (wrb) a4  <-- 0x8000322d
      0x800017d0 sb      a0, 72(a4)             #; a4  = 0x8000322d, 46 ~~> Byte[0x80003275]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017d4 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
                                                #; (lsu) a4  <-- 10
      0x800017d8 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
      0x800017dc snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
      0x800017e0 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
      0x800017e4 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
      0x800017e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000184c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000184c ret                            #; ra  = 0x80001e90, goto 0x80001e90
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001e90 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
      0x80001e94 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001e98 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001e70
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001e70 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
      0x80001e74 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
      0x80001e78 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
      0x80001e7c addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
      0x80001e80 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001e84 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
      0x80001e88 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001e8c jalr    s7                     #; s7  = 0x800017a4, (wrb) ra  <-- 0x80001e90, goto 0x800017a4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800017a4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017ac li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800017b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800037b4
      0x800017b8 addi    a3, a3, -1424          #; a3  = 0x800037b4, (wrb) a3  <-- 0x80003224
                                                #; (acc) a1  <-- 0x00d605b3
      0x800017bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003224, (wrb) a1  <-- 0x80003224
      0x800017c0 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
                                                #; (lsu) a4  <-- 10
      0x800017c4 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
      0x800017c8 sw      a5, 0(a1)              #; a1  = 0x80003224, 11 ~~> Word[0x80003224]
      0x800017cc add     a4, a1, a4             #; a1  = 0x80003224, a4  = 10, (wrb) a4  <-- 0x8000322e
      0x800017d0 sb      a0, 72(a4)             #; a4  = 0x8000322e, 48 ~~> Byte[0x80003276]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017d4 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
                                                #; (lsu) a4  <-- 11
      0x800017d8 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
      0x800017dc snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
      0x800017e0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800017e4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800017e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000184c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000184c ret                            #; ra  = 0x80001e90, goto 0x80001e90
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001e90 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
      0x80001e94 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001e98 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001e70
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001e70 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
      0x80001e74 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
      0x80001e78 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
      0x80001e7c addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
      0x80001e80 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001e84 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
      0x80001e88 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001e8c jalr    s7                     #; s7  = 0x800017a4, (wrb) ra  <-- 0x80001e90, goto 0x800017a4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800017a4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017ac li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800017b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800037b4
      0x800017b8 addi    a3, a3, -1424          #; a3  = 0x800037b4, (wrb) a3  <-- 0x80003224
                                                #; (acc) a1  <-- 0x00d605b3
      0x800017bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003224, (wrb) a1  <-- 0x80003224
      0x800017c0 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
                                                #; (lsu) a4  <-- 11
      0x800017c4 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
      0x800017c8 sw      a5, 0(a1)              #; a1  = 0x80003224, 12 ~~> Word[0x80003224]
      0x800017cc add     a4, a1, a4             #; a1  = 0x80003224, a4  = 11, (wrb) a4  <-- 0x8000322f
      0x800017d0 sb      a0, 72(a4)             #; a4  = 0x8000322f, 48 ~~> Byte[0x80003277]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017d4 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
                                                #; (lsu) a4  <-- 12
      0x800017d8 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
      0x800017dc snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
      0x800017e0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800017e4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800017e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000184c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000184c ret                            #; ra  = 0x80001e90, goto 0x80001e90
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001e90 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
      0x80001e94 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001e98 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001e70
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001e70 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
      0x80001e74 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
      0x80001e78 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
      0x80001e7c addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
      0x80001e80 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001e84 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
      0x80001e88 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001e8c jalr    s7                     #; s7  = 0x800017a4, (wrb) ra  <-- 0x80001e90, goto 0x800017a4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800017a4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017ac li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800017b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800037b4
      0x800017b8 addi    a3, a3, -1424          #; a3  = 0x800037b4, (wrb) a3  <-- 0x80003224
                                                #; (acc) a1  <-- 0x00d605b3
      0x800017bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003224, (wrb) a1  <-- 0x80003224
      0x800017c0 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
                                                #; (lsu) a4  <-- 12
      0x800017c4 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
      0x800017c8 sw      a5, 0(a1)              #; a1  = 0x80003224, 13 ~~> Word[0x80003224]
      0x800017cc add     a4, a1, a4             #; a1  = 0x80003224, a4  = 12, (wrb) a4  <-- 0x80003230
      0x800017d0 sb      a0, 72(a4)             #; a4  = 0x80003230, 48 ~~> Byte[0x80003278]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017d4 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
                                                #; (lsu) a4  <-- 13
      0x800017d8 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
      0x800017dc snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
      0x800017e0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800017e4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800017e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000184c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000184c ret                            #; ra  = 0x80001e90, goto 0x80001e90
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001e90 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
      0x80001e94 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001e98 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001e70
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001e70 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
      0x80001e74 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
      0x80001e78 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
      0x80001e7c addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
      0x80001e80 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001e84 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
      0x80001e88 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001e8c jalr    s7                     #; s7  = 0x800017a4, (wrb) ra  <-- 0x80001e90, goto 0x800017a4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800017a4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017ac li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800017b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800037b4
      0x800017b8 addi    a3, a3, -1424          #; a3  = 0x800037b4, (wrb) a3  <-- 0x80003224
                                                #; (acc) a1  <-- 0x00d605b3
      0x800017bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003224, (wrb) a1  <-- 0x80003224
      0x800017c0 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
                                                #; (lsu) a4  <-- 13
      0x800017c4 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
      0x800017c8 sw      a5, 0(a1)              #; a1  = 0x80003224, 14 ~~> Word[0x80003224]
      0x800017cc add     a4, a1, a4             #; a1  = 0x80003224, a4  = 13, (wrb) a4  <-- 0x80003231
      0x800017d0 sb      a0, 72(a4)             #; a4  = 0x80003231, 48 ~~> Byte[0x80003279]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017d4 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
                                                #; (lsu) a4  <-- 14
      0x800017d8 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
      0x800017dc snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
      0x800017e0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800017e4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800017e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000184c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000184c ret                            #; ra  = 0x80001e90, goto 0x80001e90
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001e90 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
      0x80001e94 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001e98 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001e70
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001e70 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
      0x80001e74 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
      0x80001e78 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
      0x80001e7c addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
      0x80001e80 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001e84 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
      0x80001e88 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001e8c jalr    s7                     #; s7  = 0x800017a4, (wrb) ra  <-- 0x80001e90, goto 0x800017a4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800017a4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017ac li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800017b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800037b4
      0x800017b8 addi    a3, a3, -1424          #; a3  = 0x800037b4, (wrb) a3  <-- 0x80003224
                                                #; (acc) a1  <-- 0x00d605b3
      0x800017bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003224, (wrb) a1  <-- 0x80003224
      0x800017c0 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
                                                #; (lsu) a4  <-- 14
      0x800017c4 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
      0x800017c8 sw      a5, 0(a1)              #; a1  = 0x80003224, 15 ~~> Word[0x80003224]
      0x800017cc add     a4, a1, a4             #; a1  = 0x80003224, a4  = 14, (wrb) a4  <-- 0x80003232
      0x800017d0 sb      a0, 72(a4)             #; a4  = 0x80003232, 48 ~~> Byte[0x8000327a]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017d4 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
                                                #; (lsu) a4  <-- 15
      0x800017d8 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
      0x800017dc snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
      0x800017e0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800017e4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800017e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000184c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000184c ret                            #; ra  = 0x80001e90, goto 0x80001e90
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001e90 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
      0x80001e94 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001e98 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001e70
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001e70 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
      0x80001e74 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
      0x80001e78 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
      0x80001e7c addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
      0x80001e80 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001e84 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
      0x80001e88 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001e8c jalr    s7                     #; s7  = 0x800017a4, (wrb) ra  <-- 0x80001e90, goto 0x800017a4
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800017a4 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017ac li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800017b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800037b4
      0x800017b8 addi    a3, a3, -1424          #; a3  = 0x800037b4, (wrb) a3  <-- 0x80003224
                                                #; (acc) a1  <-- 0x00d605b3
      0x800017bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003224, (wrb) a1  <-- 0x80003224
      0x800017c0 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
                                                #; (lsu) a4  <-- 15
      0x800017c4 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
      0x800017c8 sw      a5, 0(a1)              #; a1  = 0x80003224, 16 ~~> Word[0x80003224]
      0x800017cc add     a4, a1, a4             #; a1  = 0x80003224, a4  = 15, (wrb) a4  <-- 0x80003233
      0x800017d0 sb      a0, 72(a4)             #; a4  = 0x80003233, 48 ~~> Byte[0x8000327b]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017d4 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
                                                #; (lsu) a4  <-- 16
      0x800017d8 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
      0x800017dc snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
      0x800017e0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x800017e4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x800017e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x800017ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000184c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000184c ret                            #; ra  = 0x80001e90, goto 0x80001e90
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001e90 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
      0x80001e94 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001e98 bnez    s10, pc - 40           #; s10 = 0, not taken
      0x80001e9c j       pc + 0x8               #; goto 0x80001ea4
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001ea4 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
      0x80001ea8 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
      0x80001eac xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
; _out_rev (printf.c:216)
;  in _ftoa (printf.c:461)
      0x80001eb0 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
      0x80001eb4 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x80001eb8 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001ee8
; _ftoa (printf.c:0)
      0x80001ee8 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
; _ftoa (printf.c:462)
      0x80001eec mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
      0x80001ef0 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
      0x80001efc lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
      0x80001ef4 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
      0x80001ef8 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
                                                #; (f:lsu) fs0  <-- 0.0
                                                #; (lsu) s10 <-- 0x80002e8e
      0x80001f00 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
                                                #; (lsu) s9  <-- 8
      0x80001f04 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
                                                #; (lsu) s8  <-- 16
      0x80001f08 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
                                                #; (lsu) s7  <-- 0
      0x80001f0c lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
                                                #; (lsu) s6  <-- 0
      0x80001f10 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
                                                #; (lsu) s5  <-- -1
      0x80001f14 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
                                                #; (lsu) s4  <-- 0x0011ff17
      0x80001f18 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
                                                #; (lsu) s3  <-- 0x0011ff30
      0x80001f1c lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
                                                #; (lsu) s2  <-- 0x800017a4
      0x80001f20 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
                                                #; (lsu) s1  <-- 8
      0x80001f24 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
                                                #; (lsu) s0  <-- 0
      0x80001f28 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
      0x80001f2c addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
                                                #; (lsu) ra  <-- 0x80000ed4
      0x80001f30 ret                            #; ra  = 0x80000ed4, goto 0x80000ed4
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000ed4 j       pc + 0x7c0             #; goto 0x80001694
      0x80001694 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
      0x80001698 li      s6, 37                 #; (wrb) s6  <-- 37
      0x8000169c li      s7, 46                 #; (wrb) s7  <-- 46
      0x800016a0 addi    s0, s10, 1             #; s10 = 0x80002e8e, (wrb) s0  <-- 0x80002e8f
      0x800016a4 j       pc - 0xa74             #; goto 0x80000c30
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c30 addi    s10, s0, 2             #; s0  = 0x80002e8f, (wrb) s10 <-- 0x80002e91
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c34 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
      0x80000c38 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c3c lbu     a0, 0(s0)              #; s0  = 0x80002e8f, a0  <~~ Byte[0x80002e8f]
                                                #; (lsu) a0  <-- 10
      0x80000c40 beqz    a0, pc + 2824          #; a0  = 10, not taken
      0x80000c44 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000c48 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
      0x80000c4c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000c50 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
      0x80000c54 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000c58 jalr    s2                     #; s2  = 0x800017a4, (wrb) ra  <-- 0x80000c5c, goto 0x800017a4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800017a4 beqz    a0, pc + 168           #; a0  = 10, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017ac li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x800017b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800037b4
      0x800017b8 addi    a3, a3, -1424          #; a3  = 0x800037b4, (wrb) a3  <-- 0x80003224
                                                #; (acc) a1  <-- 0x00d605b3
      0x800017bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80003224, (wrb) a1  <-- 0x80003224
      0x800017c0 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
                                                #; (lsu) a4  <-- 16
      0x800017c4 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
      0x800017c8 sw      a5, 0(a1)              #; a1  = 0x80003224, 17 ~~> Word[0x80003224]
      0x800017cc add     a4, a1, a4             #; a1  = 0x80003224, a4  = 16, (wrb) a4  <-- 0x80003234
      0x800017d0 sb      a0, 72(a4)             #; a4  = 0x80003234, 10 ~~> Byte[0x8000327c]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017d4 lw      a4, 0(a1)              #; a1  = 0x80003224, a4  <~~ Word[0x80003224]
                                                #; (lsu) a4  <-- 17
      0x800017d8 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
      0x800017dc snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
      0x800017e0 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
      0x800017e4 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
      0x800017e8 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
      0x800017ec bnez    a0, pc + 96            #; a0  = 0, not taken
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017f0 add     a0, a3, a2             #; a3  = 0x80003224, a2  = 0, (wrb) a0  <-- 0x80003224
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017f4 addi    a2, a0, 72             #; a0  = 0x80003224, (wrb) a2  <-- 0x8000326c
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800017f8 sw      zero, 12(a0)           #; a0  = 0x80003224, 0 ~~> Word[0x80003230]
      0x800017fc li      a3, 64                 #; (wrb) a3  <-- 64
      0x80001800 sw      a3, 8(a0)              #; a0  = 0x80003224, 64 ~~> Word[0x8000322c]
; snrt_putchar (putchar.c:26)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001804 sw      zero, 20(a0)           #; a0  = 0x80003224, 0 ~~> Word[0x80003238]
      0x80001808 li      a3, 1                  #; (wrb) a3  <-- 1
      0x8000180c sw      a3, 16(a0)             #; a0  = 0x80003224, 1 ~~> Word[0x80003234]
; snrt_putchar (putchar.c:27)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001810 sw      zero, 28(a0)           #; a0  = 0x80003224, 0 ~~> Word[0x80003240]
      0x80001814 sw      a2, 24(a0)             #; a0  = 0x80003224, 0x8000326c ~~> Word[0x8000323c]
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001818 lw      a2, 0(a1)              #; a1  = 0x80003224, a2  <~~ Word[0x80003224]
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000181c addi    a3, a0, 8              #; a0  = 0x80003224, (wrb) a3  <-- 0x8000322c
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001820 sw      zero, 36(a0)           #; a0  = 0x80003224, 0 ~~> Word[0x80003248]
                                                #; (lsu) a2  <-- 17
      0x80001824 sw      a2, 32(a0)             #; a0  = 0x80003224, 17 ~~> Word[0x80003244]
; snrt_putchar (putchar.c:30)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001828 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003828
      0x8000182c addi    a0, a0, -1896          #; a0  = 0x80003828, (wrb) a0  <-- 0x800030c0
      0x80001830 sw      a3, 0(a0)              #; a0  = 0x800030c0, 0x8000322c ~~> Word[0x800030c0]
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001834 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003834
      0x80001838 addi    a0, a0, -1844          #; a0  = 0x80003834, (wrb) a0  <-- 0x80003100
; snrt_putchar (putchar.c:31)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000183c lw      a2, 0(a0)              #; a0  = 0x80003100, a2  <~~ Word[0x80003100]
                                                #; (lsu) a2  <-- 1
      0x80001840 beqz    a2, pc - 4             #; a2  = 1, not taken
; snrt_putchar (putchar.c:33)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001844 sw      zero, 0(a0)            #; a0  = 0x80003100, 0 ~~> Word[0x80003100]
; snrt_putchar (putchar.c:35)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001848 sw      zero, 0(a1)            #; a1  = 0x80003224, 0 ~~> Word[0x80003224]
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000184c ret                            #; ra  = 0x80000c5c, goto 0x80000c5c
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000c5c addi    s0, s0, 1              #; s0  = 0x80002e8f, (wrb) s0  <-- 0x80002e90
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000c60 addi    s10, s10, 1            #; s10 = 0x80002e91, (wrb) s10 <-- 0x80002e92
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c64 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c68 lbu     a0, 0(s0)              #; s0  = 0x80002e90, a0  <~~ Byte[0x80002e90]
                                                #; (lsu) a0  <-- 0
      0x80000c6c bnez    a0, pc - 40            #; a0  = 0, not taken
      0x80000c70 j       pc + 0xad8             #; goto 0x80001748
; _vsnprintf.llvm.1805434900161566649 (printf.c:853)
      0x80001748 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
      0x8000174c bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x80001754
      0x80001754 li      a0, 0                  #; (wrb) a0  <-- 0
      0x80001758 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x8000175c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80001760 jalr    s2                     #; s2  = 0x800017a4, (wrb) ra  <-- 0x80001764, goto 0x800017a4
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x800017a4 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x8000184c
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x8000184c ret                            #; ra  = 0x80001764, goto 0x80001764
; _vsnprintf.llvm.1805434900161566649 (printf.c:856)
      0x80001764 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
      0x80001768 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
                                                #; (lsu) s11 <-- 0
      0x8000176c lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
                                                #; (lsu) s10 <-- 0
      0x80001770 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
                                                #; (lsu) s9  <-- 0
      0x80001774 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
                                                #; (lsu) s8  <-- 0
      0x80001778 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
                                                #; (lsu) s7  <-- 0
      0x8000177c lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
                                                #; (lsu) s6  <-- 0
      0x80001780 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
                                                #; (lsu) s5  <-- 0
      0x80001784 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
                                                #; (lsu) s4  <-- 0
      0x80001788 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
                                                #; (lsu) s3  <-- 0
      0x8000178c lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
                                                #; (lsu) s2  <-- 0
      0x80001790 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
                                                #; (lsu) s1  <-- 0
      0x80001794 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
                                                #; (lsu) s0  <-- 0
      0x80001798 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
      0x8000179c addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
                                                #; (lsu) ra  <-- 0x80000ba0
      0x800017a0 ret                            #; ra  = 0x80000ba0, goto 0x80000ba0
; printf_ (printf.c:869)
      0x80000ba0 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
      0x80000ba4 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
                                                #; (lsu) ra  <-- 0x80000b30
      0x80000ba8 ret                            #; ra  = 0x80000b30, goto 0x80000b30
; main (test_sp.c:0)
      0x80000b30 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002b30
      0x80000b34 addi    a0, a0, 1600           #; a0  = 0x80002b30, (wrb) a0  <-- 0x80003170
      0x80000b38 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003170]
; main (test_sp.c:36)
      0x80000b44 lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
                                                #; (f:lsu) ft3  <-- 0.0001
      0x80000b48 addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
      0x80000b3c flt.d   a0, ft3, fs0           #; ft3  = 0.0001, fs0  = 0.0
                                                #; (lsu) ra  <-- 0x80002c00
      0x80000b40 fld     fs0, 16(sp)            #; fs0  <~~ Doub[0x0011ff50]
      0x80000b4c ret                            #; ra  = 0x80002c00, goto 0x80002c00
                                                #; (f:lsu) fs0  <-- 0.0
; ?? (start.S:184)
      0x80002c00 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:191)
      0x80002c04 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c04
      0x80002c08 jalr    ra, ra, 524            #; ra  = 0x80002c04, (wrb) ra  <-- 0x80002c0c, goto 0x80002e10
; ?? (start_snitch.S:33)
      0x80002e10 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002e14 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002c0c ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002e18 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002e18
      0x80002e1c jalr    ra, ra, -1260          #; ra  = 0x80002e18, (wrb) ra  <-- 0x80002e20, goto 0x8000292c
; _snrt_barrier_reg_ptr (team.c:80)
      0x8000292c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002930 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002934 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002938 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x8000293c lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x80002940 ret                            #; ra  = 0x80002e20, goto 0x80002e20
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002e20 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002e24 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002e28 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002e2c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002c0c
; ?? (start_snitch.S:40)
      0x80002e30 ret                            #; ra  = 0x80002c0c, goto 0x80002c0c
; ?? (start.S:195)
      0x80002c0c mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:196)
      0x80002c10 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c10
      0x80002c14 jalr    ra, ra, 556            #; ra  = 0x80002c10, (wrb) ra  <-- 0x80002c18, goto 0x80002e3c
; ?? (start_snitch.S:15)
      0x80002e3c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
; ?? (start_snitch.S:16)
      0x80002e40 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
; ?? (start_snitch.S:17)
      0x80002e44 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002c18 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:18)
      0x80002e48 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002e48
      0x80002e4c jalr    ra, ra, -1340          #; ra  = 0x80002e48, (wrb) ra  <-- 0x80002e50, goto 0x8000290c
; snrt_global_core_idx (team.c:32)
      0x8000290c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002910 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002914 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002918 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x8000291c lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
; snrt_hartid (snrt.h:181)
;  in snrt_global_core_idx (team.c:32)
      0x80002920 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 0
; snrt_global_core_idx (team.c:32)
      0x80002924 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
      0x80002928 ret                            #; ra  = 0x80002e50, goto 0x80002e50
; ?? (start_snitch.S:20)
      0x80002e50 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:21)
      0x80002e54 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:22)
      0x80002e58 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
; ?? (start_snitch.S:27)
      0x80002e5c bnez    a0, pc + 24            #; a0  = 0, not taken
                                                #; (lsu) ra  <-- 0x80002c18
; ?? (start_snitch.S:28)
      0x80002e60 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
; ?? (start_snitch.S:29)
      0x80002e64 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
; ?? (start_snitch.S:30)
      0x80002e68 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002e68
      0x80002e6c addi    t1, t1, 600            #; t1  = 0x80002e68, (wrb) t1  <-- 0x800030c0
; ?? (start_snitch.S:31)
      0x80002e70 sw      t0, 0(t1)              #; t1  = 0x800030c0, 1 ~~> Word[0x800030c0]
; ?? (start_snitch.S:32)
      0x80002e74 ret                            #; ra  = 0x80002c18, goto 0x80002c18
; ?? (start.S:198)
      0x80002c18 wfi                            #; 
                        tion 0 @ (12, 5549):
                          134
                          143
                            5
                           33
                      12.0149
                       0.2338
                       0.0893
                          1.0
                          1.0
                            0
                       1.2169
                       7.7879
                       0.0229
                       0.0150
                       0.6535
                         5538
                       0.2568
