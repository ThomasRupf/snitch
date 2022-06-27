; ?? (??:0)
      0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
      0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
      0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
      0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
      0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
                                                #; (lsu) t0  <-- 0x80002a70
      0x00001014 jalr    t0                     #; t0  = 0x80002a70, (wrb) ra  <-- 4120, goto 0x80002a70
; ?? (start.S:20)
      0x80002a70 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80003a70
; ?? (start.S:21)
      0x80002a74 addi    gp, gp, -232           #; gp  = 0x80003a70, (wrb) gp  <-- 0x80003988
; ?? (start.S:28)
      0x80002a78 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a78
      0x80002a7c jalr    ra, ra, 964            #; ra  = 0x80002a78, (wrb) ra  <-- 0x80002a80, goto 0x80002e3c
; ?? (start_snitch.S:16)
      0x80002e3c mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
; ?? (start_snitch.S:17)
      0x80002e40 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
                                                #; (lsu) a1  <-- 8
; ?? (start_snitch.S:18)
      0x80002e44 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:19)
      0x80002e48 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start_snitch.S:20)
      0x80002e4c lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
                                                #; (lsu) t1  <-- 0x00020000
; ?? (start_snitch.S:21)
      0x80002e50 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
; ?? (start_snitch.S:22)
      0x80002e54 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
; ?? (start_snitch.S:23)
      0x80002e58 div     t3, a0, a1             #; a0  = 0, a1  = 8
                                                #; (acc) t4  <-- 0x027e0eb3
                                                #; (lsu) t2  <-- 0
; ?? (start_snitch.S:24)
      0x80002e5c mul     t4, t3, t2             #; t3  = 0, t2  = 0
                                                #; (acc) a2  <-- 0x01d60633
; ?? (start_snitch.S:25)
      0x80002e60 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
; ?? (start_snitch.S:26)
      0x80002e64 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
; ?? (start_snitch.S:27)
      0x80002e68 remu    a0, a0, a1             #; a0  = 0, a1  = 8
; ?? (start_snitch.S:28)
      0x80002e6c ret                            #; ra  = 0x80002a80, goto 0x80002a80
                                                #; (acc) s0  <-- 0x00050413
; ?? (start.S:39)
      0x80002a80 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:40)
      0x80002a84 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
; ?? (start.S:41)
      0x80002a88 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a88
      0x80002a8c jalr    ra, ra, 1036           #; ra  = 0x80002a88, (wrb) ra  <-- 0x80002a90, goto 0x80002e94
; ?? (start_snitch.S:48)
      0x80002e94 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
; ?? (start_snitch.S:49)
      0x80002e98 ret                            #; ra  = 0x80002a90, goto 0x80002a90
                                                #; (lsu) a0  <-- 0
; ?? (start.S:42)
      0x80002a90 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:43)
      0x80002a94 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:45)
      0x80002a98 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
; ?? (start.S:46)
      0x80002a9c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
; ?? (start.S:47)
      0x80002aa0 bnez    t0, pc + 36            #; t0  = 0, not taken
; ?? (start.S:48)
      0x80002aa4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002aa4
      0x80002aa8 addi    t0, t0, 1980           #; t0  = 0x80002aa4, (wrb) t0  <-- 0x80003260
; ?? (start.S:49)
      0x80002aac auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002aac
      0x80002ab0 addi    t1, t1, 1976           #; t1  = 0x80002aac, (wrb) t1  <-- 0x80003264
; ?? (start.S:50)
      0x80002ab4 bge     t0, t1, pc + 16        #; t0  = 0x80003260, t1  = 0x80003264, not taken
; ?? (start.S:51)
      0x80002ab8 sw      zero, 0(t0)            #; t0  = 0x80003260, 0 ~~> Word[0x80003260]
; ?? (start.S:52)
      0x80002abc addi    t0, t0, 4              #; t0  = 0x80003260, (wrb) t0  <-- 0x80003264
; ?? (start.S:53)
      0x80002ac0 blt     t0, t1, pc - 8         #; t0  = 0x80003264, t1  = 0x80003264, not taken
; ?? (start.S:58)
      0x80002ac4 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
; ?? (start.S:59)
      0x80002ac8 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
; ?? (start.S:60)
      0x80002acc beqz    t0, pc + 132           #; t0  = 40, not taken
; ?? (start.S:61)
      0x80002ad0 fcvt.d.w ft0, zero             #; ac1  = 0
; ?? (start.S:62)
      0x80002ad4 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
; ?? (start.S:63)
      0x80002ad8 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
; ?? (start.S:64)
      0x80002adc fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
                                                #; (f:fpu) ft3  <-- 0.0
; ?? (start.S:65)
      0x80002ae0 fcvt.d.w ft4, zero             #; ac1  = 0
; ?? (start.S:66)
      0x80002ae4 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
; ?? (start.S:67)
      0x80002ae8 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
; ?? (start.S:68)
      0x80002aec fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
                                                #; (f:fpu) ft7  <-- 0.0
; ?? (start.S:69)
      0x80002af0 fcvt.d.w fs0, zero             #; ac1  = 0
; ?? (start.S:70)
      0x80002af4 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
; ?? (start.S:71)
      0x80002af8 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
; ?? (start.S:72)
      0x80002afc fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
                                                #; (f:fpu) fa1  <-- 0.0
; ?? (start.S:73)
      0x80002b00 fcvt.d.w fa2, zero             #; ac1  = 0
; ?? (start.S:74)
      0x80002b04 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
; ?? (start.S:75)
      0x80002b08 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
; ?? (start.S:76)
      0x80002b0c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
                                                #; (f:fpu) fa5  <-- 0.0
; ?? (start.S:77)
      0x80002b10 fcvt.d.w fa6, zero             #; ac1  = 0
; ?? (start.S:78)
      0x80002b14 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
; ?? (start.S:79)
      0x80002b18 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
; ?? (start.S:80)
      0x80002b1c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
                                                #; (f:fpu) fs3  <-- 0.0
; ?? (start.S:81)
      0x80002b20 fcvt.d.w fs4, zero             #; ac1  = 0
; ?? (start.S:82)
      0x80002b24 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
; ?? (start.S:83)
      0x80002b28 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
; ?? (start.S:84)
      0x80002b2c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
                                                #; (f:fpu) fs7  <-- 0.0
; ?? (start.S:85)
      0x80002b30 fcvt.d.w fs8, zero             #; ac1  = 0
; ?? (start.S:86)
      0x80002b34 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
; ?? (start.S:87)
      0x80002b38 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
; ?? (start.S:88)
      0x80002b3c fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
                                                #; (f:fpu) fs11 <-- 0.0
; ?? (start.S:89)
      0x80002b40 fcvt.d.w ft8, zero             #; ac1  = 0
; ?? (start.S:90)
      0x80002b44 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
; ?? (start.S:91)
      0x80002b48 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
; ?? (start.S:92)
      0x80002b4c fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
                                                #; (f:fpu) ft11 <-- 0.0
; ?? (start.S:99)
      0x80002b50 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
; ?? (start.S:100)
      0x80002b54 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
; ?? (start.S:103)
      0x80002b58 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002b58
      0x80002b5c lw      t0, 900(t0)            #; t0  = 0x80002b58, t0  <~~ Word[0x80002edc]
                                                #; (lsu) t0  <-- 136
; ?? (start.S:104)
      0x80002b60 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
; ?? (start.S:105)
      0x80002b64 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
; ?? (start.S:108)
      0x80002b68 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002b68
      0x80002b6c lw      t2, 880(t2)            #; t2  = 0x80002b68, t2  <~~ Word[0x80002ed8]
                                                #; (lsu) t2  <-- 10
; ?? (start.S:110)
      0x80002b70 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
; ?? (start.S:111)
      0x80002b74 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
; ?? (start.S:112)
      0x80002b78 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:113)
      0x80002b7c sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
; ?? (start.S:116)
      0x80002b80 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
; ?? (start.S:117)
      0x80002b84 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
; ?? (start.S:118)
      0x80002b88 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:119)
      0x80002b8c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
; ?? (start.S:124)
      0x80002b90 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002b90
      0x80002b94 addi    t0, t0, 1528           #; t0  = 0x80002b90, (wrb) t0  <-- 0x80003188
; ?? (start.S:125)
      0x80002b98 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002b98
      0x80002b9c addi    t1, t1, 1520           #; t1  = 0x80002b98, (wrb) t1  <-- 0x80003188
; ?? (start.S:126)
      0x80002ba0 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002ba0
      0x80002ba4 addi    t2, t2, 1512           #; t2  = 0x80002ba0, (wrb) t2  <-- 0x80003188
; ?? (start.S:127)
      0x80002ba8 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002ba8
      0x80002bac addi    t3, t3, 1520           #; t3  = 0x80002ba8, (wrb) t3  <-- 0x80003198
; ?? (start.S:128)
      0x80002bb0 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80003188, (wrb) sp  <-- 0x801230f8
; ?? (start.S:129)
      0x80002bb4 sub     sp, sp, t1             #; sp  = 0x801230f8, t1  = 0x80003188, (wrb) sp  <-- 0x0011ff70
; ?? (start.S:130)
      0x80002bb8 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80003188, (wrb) sp  <-- 0x801230f8
; ?? (start.S:131)
      0x80002bbc sub     sp, sp, t3             #; sp  = 0x801230f8, t3  = 0x80003198, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:132)
      0x80002bc0 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:133)
      0x80002bc4 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
; ?? (start.S:134)
      0x80002bc8 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:137)
      0x80002bcc mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
; ?? (start.S:138)
      0x80002bd0 bge     t0, t1, pc + 24        #; t0  = 0x80003188, t1  = 0x80003188, taken, goto 0x80002be8
; ?? (start.S:147)
      0x80002be8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002be8
      0x80002bec addi    t0, t0, 1440           #; t0  = 0x80002be8, (wrb) t0  <-- 0x80003188
; ?? (start.S:148)
      0x80002bf0 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002bf0
      0x80002bf4 addi    t1, t1, 1448           #; t1  = 0x80002bf0, (wrb) t1  <-- 0x80003198
; ?? (start.S:149)
      0x80002bf8 bge     t0, t1, pc + 20        #; t0  = 0x80003188, t1  = 0x80003198, not taken
; ?? (start.S:150)
      0x80002bfc sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
; ?? (start.S:151)
      0x80002c00 addi    t0, t0, 4              #; t0  = 0x80003188, (wrb) t0  <-- 0x8000318c
; ?? (start.S:152)
      0x80002c04 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
; ?? (start.S:153)
      0x80002c08 blt     t0, t2, pc - 12        #; t0  = 0x8000318c, t2  = 0x80003188, not taken
; ?? (start.S:158)
      0x80002c0c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
; ?? (start.S:159)
      0x80002c10 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
; ?? (start.S:160)
      0x80002c14 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
; ?? (start.S:161)
      0x80002c18 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
; ?? (start.S:162)
      0x80002c1c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
; ?? (start.S:163)
      0x80002c20 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
; ?? (start.S:164)
      0x80002c24 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c24
      0x80002c28 jalr    ra, ra, -1060          #; ra  = 0x80002c24, (wrb) ra  <-- 0x80002c2c, goto 0x80002800
; _snrt_init_team (start.c:49)
      0x80002800 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
; _snrt_init_team (start.c:50)
      0x80002804 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
; _snrt_init_team (start.c:51)
      0x80002808 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
                                                #; (lsu) t1  <-- 0
      0x8000280c sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
; _snrt_init_team (start.c:52)
      0x80002810 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
                                                #; (lsu) a6  <-- 1
; _snrt_init_team (start.c:53)
      0x80002814 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
                                                #; (lsu) a7  <-- 1
; _snrt_init_team (start.c:52)
      0x80002818 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
      0x8000281c mul     a6, a7, a6             #; a7  = 1, a6  = 1
                                                #; (acc) a0  <-- 0x02580533
                                                #; (lsu) t0  <-- 8
      0x80002820 mul     a0, a6, t0             #; a6  = 1, t0  = 8
                                                #; (acc) a2  <-- 0x00a7a623
      0x80002824 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
; snrt_hartid (snrt.h:181)
;  in _snrt_init_team (start.c:55)
      0x80002828 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
; _snrt_init_team (start.c:55)
      0x8000282c sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
      0x80002830 divu    a0, a0, t0             #; a0  = 0, t0  = 8
                                                #; (acc) a6  <-- 0x00a7a823
; _snrt_init_team (start.c:54)
      0x80002834 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
; _snrt_init_team (start.c:56)
      0x80002838 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
; _snrt_init_team (start.c:57)
      0x8000283c sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
; _snrt_init_team (start.c:58)
      0x80002840 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
; _snrt_init_team (start.c:60)
      0x80002844 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
      0x80002848 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
                                                #; (lsu) a0  <-- 0x80000000
      0x8000284c add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
; _snrt_init_team (start.c:59)
      0x80002850 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
      0x80002854 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
; _snrt_init_team (start.c:61)
      0x80002858 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
                                                #; (lsu) a0  <-- 0
      0x8000285c lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
      0x80002860 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
                                                #; (lsu) a1  <-- 1
      0x80002864 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
; _snrt_init_team (start.c:62)
      0x80002868 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
      0x8000286c sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
; _snrt_init_team (start.c:63)
      0x80002870 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
      0x80002874 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
; _snrt_init_team (start.c:64)
      0x80002878 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
                                                #; (lsu) a0  <-- 0x00020000
      0x8000287c add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
      0x80002880 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
      0x80002884 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
; _snrt_init_team (start.c:67)
      0x80002888 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
      0x8000288c srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
      0x80002890 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
      0x80002894 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
      0x80002898 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
; _snrt_init_team (start.c:66)
      0x8000289c sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
      0x800028a0 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
; _snrt_init_team (start.c:68)
      0x800028a4 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
      0x800028a8 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
      0x800028ac sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
      0x800028b0 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
      0x800028b4 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
; _snrt_init_team (start.c:71)
      0x800028b8 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
; _snrt_init_team (start.c:72)
      0x800028bc sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
; _snrt_init_team (start.c:75)
      0x800028c0 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x800028c4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x800028c8 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
; _snrt_init_team (start.c:77)
      0x800028cc lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x800028d0 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
                                                #; (lsu) a1  <-- 0
; _snrt_init_team (start.c:78)
      0x800028d4 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
; _snrt_init_team (start.c:77)
      0x800028d8 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 8
      0x800028dc remu    a0, a1, a0             #; a1  = 0, a0  = 8
; _snrt_init_team (start.c:76)
      0x800028e0 lui     a1, 0x0                #; (wrb) a1  <-- 0
      0x800028e4 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
                                                #; (acc) tp  <-- 0x00a5a223
      0x800028e8 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
      0x800028ec li      a0, 1096               #; (wrb) a0  <-- 1096
; _snrt_init_team (start.c:83)
      0x800028f0 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
      0x800028f4 auipc   a1, 0x1                #; (wrb) a1  <-- 0x800038f4
      0x800028f8 addi    a1, a1, -1680          #; a1  = 0x800038f4, (wrb) a1  <-- 0x80003264
                                                #; (acc) a0  <-- 0x00b50533
      0x800028fc add     a0, a0, a1             #; a0  = 0, a1  = 0x80003264, (wrb) a0  <-- 0x80003264
      0x80002900 sw      zero, 0(a0)            #; a0  = 0x80003264, 0 ~~> Word[0x80003264]
; _snrt_init_team (start.c:86)
      0x80002904 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
                                                #; (lsu) a7  <-- 0xffff0000
      0x80002908 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
; _snrt_init_team (start.c:87)
      0x8000290c sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
; _snrt_init_team (start.c:91)
      0x80002910 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
; _snrt_init_team (start.c:93)
      0x80002914 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
; _snrt_init_team (start.c:92)
      0x80002918 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      0x8000291c addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
      0x80002920 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
; snrt_alloc_init (alloc.c:64)
;  in _snrt_init_team (start.c:97)
      0x80002924 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
; snrt_alloc_init (alloc.c:67)
;  in _snrt_init_team (start.c:97)
      0x80002928 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
; snrt_alloc_init (alloc.c:66)
;  in _snrt_init_team (start.c:97)
      0x8000292c sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
; snrt_alloc_init (alloc.c:68)
;  in _snrt_init_team (start.c:97)
      0x80002930 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      0x80002934 lw      a0, 0(a1)              #; a1  = 0x80003264, a0  <~~ Word[0x80003264]
                                                #; (lsu) a0  <-- 0
      0x80002938 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
      0x8000293c andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
; snrt_alloc_init (alloc.c:71)
;  in _snrt_init_team (start.c:97)
      0x80002940 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
; snrt_alloc_init (alloc.c:74)
;  in _snrt_init_team (start.c:97)
      0x80002944 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
; snrt_alloc_init (alloc.c:75)
;  in _snrt_init_team (start.c:97)
      0x80002948 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      0x8000294c lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80002950 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002954 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      0x80002958 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x8000295c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002960 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
; _snrt_init_team (start.c:99)
      0x80002964 ret                            #; ra  = 0x80002c2c, goto 0x80002c2c
; ?? (start.S:165)
      0x80002c2c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
                                                #; (lsu) a0  <-- 0
; ?? (start.S:166)
      0x80002c30 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
                                                #; (lsu) a1  <-- 8
; ?? (start.S:167)
      0x80002c34 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
                                                #; (lsu) a2  <-- 0x00100000
; ?? (start.S:168)
      0x80002c38 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
                                                #; (lsu) a3  <-- 0x0011df30
; ?? (start.S:169)
      0x80002c3c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
; ?? (start.S:170)
      0x80002c40 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
; ?? (start.S:174)
      0x80002c44 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002c44
      0x80002c48 addi    t0, t0, 60             #; t0  = 0x80002c44, (wrb) t0  <-- 0x80002c80
; ?? (start.S:175)
      0x80002c4c csrw    mtvec, t0              #; t0  = 0x80002c80, (lsu) a4  <-- 4132
; ?? (start.S:179)
      0x80002c50 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c50
      0x80002c54 jalr    ra, ra, 544            #; ra  = 0x80002c50, (wrb) ra  <-- 0x80002c58, goto 0x80002e70
; ?? (start_snitch.S:33)
      0x80002e70 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002e74 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002c58 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002e78 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002e78
      0x80002e7c jalr    ra, ra, -1264          #; ra  = 0x80002e78, (wrb) ra  <-- 0x80002e80, goto 0x80002988
; _snrt_barrier_reg_ptr (team.c:80)
      0x80002988 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x8000298c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002990 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002994 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002998 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x8000299c ret                            #; ra  = 0x80002e80, goto 0x80002e80
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002e80 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002e84 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002e88 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002e8c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002c58
; ?? (start_snitch.S:40)
      0x80002e90 ret                            #; ra  = 0x80002c58, goto 0x80002c58
; ?? (start.S:183)
      0x80002c58 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000c58
      0x80002c5c jalr    ra, ra, -1572          #; ra  = 0x80000c58, (wrb) ra  <-- 0x80002c60, goto 0x80000634
; main (test_size.c:27)
      0x80000634 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (test_size.c:28)
      0x80000638 sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x80002c60 ~~> Word[0x0011ff5c]
      0x80000640 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000644 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000063c fsd     fs0, 16(sp)            #; 0.0 ~~> Doub[0x0011ff50]
      0x80000648 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
; main (test_size.c:0)
      0x8000064c li      a0, 0                  #; (wrb) a0  <-- 0
                                                #; (lsu) a1  <-- 0
; main (test_size.c:28)
      0x80000650 bnez    a1, pc + 1356          #; a1  = 0, not taken
; snrt_current_team (team.c:16)
;  in snrt_l1alloc (alloc.c:21)
;  in main (test_size.c:38)
      0x80000654 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x80000658 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x8000065c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80000660 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
; snrt_l1alloc (alloc.c:25)
;  in main (test_size.c:38)
      0x80000664 lw      t3, 88(a0)             #; a0  = 0x0011ff70, t3  <~~ Word[0x0011ffc8]
                                                #; (lsu) t3  <-- 0x00100000
      0x80000668 lw      a2, 80(a0)             #; a0  = 0x0011ff70, a2  <~~ Word[0x0011ffc0]
                                                #; (lsu) a2  <-- 0x00100000
      0x8000066c lw      a3, 84(a0)             #; a0  = 0x0011ff70, a3  <~~ Word[0x0011ffc4]
                                                #; (lsu) a3  <-- 0x0001df30
      0x80000670 addi    a1, t3, 2016           #; t3  = 0x00100000, (wrb) a1  <-- 0x001007e0
      0x80000674 addi    a1, a1, 2016           #; a1  = 0x001007e0, (wrb) a1  <-- 0x00100fc0
      0x80000678 add     a2, a3, a2             #; a3  = 0x0001df30, a2  = 0x00100000, (wrb) a2  <-- 0x0011df30
      0x8000067c bgeu    a2, a1, pc + 12        #; a2  = 0x0011df30, a1  = 0x00100fc0, taken, goto 0x80000688
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x80000688 srli    a2, t3, 20             #; t3  = 0x00100000, (wrb) a2  <-- 1
      0x8000068c snez    a2, a2                 #; a2  = 1, (wrb) a2  <-- 1
      0x80000690 lui     a3, 0x11f              #; (wrb) a3  <-- 0x0011f000
      0x80000694 addi    a3, a3, 73             #; a3  = 0x0011f000, (wrb) a3  <-- 0x0011f049
      0x80000698 sltu    a3, t3, a3             #; t3  = 0x00100000, a3  = 0x0011f049, (wrb) a3  <-- 1
      0x8000069c and     a2, a2, a3             #; a2  = 1, a3  = 1, (wrb) a2  <-- 1
; snrt_l1alloc (alloc.c:34)
;  in main (test_size.c:38)
      0x800006a0 sw      a1, 88(a0)             #; a0  = 0x0011ff70, 0x00100fc0 ~~> Word[0x0011ffc8]
; snrt_l1alloc (alloc.c:0)
;  in main (test_size.c:38)
      0x800006a4 beqz    a2, pc + 104           #; a2  = 1, not taken
; main (alloc.c:0)
      0x800006a8 li      a0, 8                  #; (wrb) a0  <-- 8
      0x800006ac li      a1, 503                #; (wrb) a1  <-- 503
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006b0 li      a2, 64                 #; (wrb) a2  <-- 64
      0x800006b4 li      a3, 192                #; (wrb) a3  <-- 192
      0x800006b8 scfgw   a1, a2                 #; a1  = 503, a2  = 64
      0x800006bc scfgw   a0, a3                 #; a0  = 8, a3  = 192
      0x800006c0 li      a0, 32                 #; (wrb) a0  <-- 32
      0x800006c4 scfgw   zero, a0               #; a0  = 32
      0x800006c8 scfgwi  t3, 896                #; t3  = 0x00100000
      0x800006cc csrrsi  a0, ssr, 1             #; 
; init_data (test_size.c:0)
;  in main (test_size.c:40)
      0x800006d0 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036d0
      0x800006d4 addi    a0, a0, -1336          #; a0  = 0x800036d0, (wrb) a0  <-- 0x80003198
      0x800006dc auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036dc
      0x800006d8 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003198]
      0x800006e0 addi    a0, a0, -1340          #; a0  = 0x800036dc, (wrb) a0  <-- 0x800031a0
                                                #; (f:lsu) ft3  <-- 0.001
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006ec li      a0, 504                #; (wrb) a0  <-- 504
      0x800006e4 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x800031a0]
      0x800006e8 fcvt.d.w ft5, zero             #; ac1  = 0
                                                #; (f:fpu) ft5  <-- 0.0
                                                #; (f:lsu) ft4  <-- 1.0
      0x800006f8 addi    a0, a0, -1             #; a0  = 504, (wrb) a0  <-- 503
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 0.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.0
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.0, ft6  = 0.0
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 0.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.0
                                                #; (f:fpu) ft5  <-- 1.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 503, taken, goto 0x800006f0
      0x800006f8 addi    a0, a0, -1             #; a0  = 503, (wrb) a0  <-- 502
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 1.0, ft3  = 0.001
      0x80000700 bnez    a0, pc - 16            #; a0  = 502, taken, goto 0x800006f0
                                                #; (f:fpu) ft6  <-- 0.001
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.001, ft6  = 0.001
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006f8 addi    a0, a0, -1             #; a0  = 502, (wrb) a0  <-- 501
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 1.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.001
      0x80000700 bnez    a0, pc - 16            #; a0  = 501, taken, goto 0x800006f0
                                                #; (f:fpu) ft5  <-- 2.0
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 2.0, ft3  = 0.001
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006f8 addi    a0, a0, -1             #; a0  = 501, (wrb) a0  <-- 500
      0x80000700 bnez    a0, pc - 16            #; a0  = 500, taken, goto 0x800006f0
                                                #; (f:fpu) ft6  <-- 0.002
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.002, ft6  = 0.002
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 2.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.002
      0x800006f8 addi    a0, a0, -1             #; a0  = 500, (wrb) a0  <-- 499
      0x80000700 bnez    a0, pc - 16            #; a0  = 499, taken, goto 0x800006f0
                                                #; (f:fpu) ft5  <-- 3.0
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 3.0, ft3  = 0.001
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006f8 addi    a0, a0, -1             #; a0  = 499, (wrb) a0  <-- 498
                                                #; (f:fpu) ft6  <-- 0.003
      0x80000700 bnez    a0, pc - 16            #; a0  = 498, taken, goto 0x800006f0
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.003, ft6  = 0.003
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 3.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.003
      0x800006f8 addi    a0, a0, -1             #; a0  = 498, (wrb) a0  <-- 497
                                                #; (f:fpu) ft5  <-- 4.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 497, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 4.0, ft3  = 0.001
      0x800006f8 addi    a0, a0, -1             #; a0  = 497, (wrb) a0  <-- 496
                                                #; (f:fpu) ft6  <-- 0.004
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.004, ft6  = 0.004
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x80000700 bnez    a0, pc - 16            #; a0  = 496, taken, goto 0x800006f0
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 4.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.004
      0x800006f8 addi    a0, a0, -1             #; a0  = 496, (wrb) a0  <-- 495
                                                #; (f:fpu) ft5  <-- 5.0
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 5.0, ft3  = 0.001
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x80000700 bnez    a0, pc - 16            #; a0  = 495, taken, goto 0x800006f0
                                                #; (f:fpu) ft6  <-- 0.005
      0x800006f8 addi    a0, a0, -1             #; a0  = 495, (wrb) a0  <-- 494
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.005, ft6  = 0.005
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 5.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.005
      0x80000700 bnez    a0, pc - 16            #; a0  = 494, taken, goto 0x800006f0
                                                #; (f:fpu) ft5  <-- 6.0
      0x800006f8 addi    a0, a0, -1             #; a0  = 494, (wrb) a0  <-- 493
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 6.0, ft3  = 0.001
      0x80000700 bnez    a0, pc - 16            #; a0  = 493, taken, goto 0x800006f0
                                                #; (f:fpu) ft6  <-- 0.006
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.006, ft6  = 0.006
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006f8 addi    a0, a0, -1             #; a0  = 493, (wrb) a0  <-- 492
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 6.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.006
      0x80000700 bnez    a0, pc - 16            #; a0  = 492, taken, goto 0x800006f0
                                                #; (f:fpu) ft5  <-- 7.0
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 7.0, ft3  = 0.001
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006f8 addi    a0, a0, -1             #; a0  = 492, (wrb) a0  <-- 491
      0x80000700 bnez    a0, pc - 16            #; a0  = 491, taken, goto 0x800006f0
                                                #; (f:fpu) ft6  <-- 0.007
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.007, ft6  = 0.007
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 7.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.007
      0x800006f8 addi    a0, a0, -1             #; a0  = 491, (wrb) a0  <-- 490
                                                #; (f:fpu) ft5  <-- 8.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 490, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 8.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.008
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.008, ft6  = 0.008
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 8.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.008
      0x800006f8 addi    a0, a0, -1             #; a0  = 490, (wrb) a0  <-- 489
                                                #; (f:fpu) ft5  <-- 9.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 489, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 9.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.0090000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.0090000, ft6  = 0.0090000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 9.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.0090000
      0x800006f8 addi    a0, a0, -1             #; a0  = 489, (wrb) a0  <-- 488
                                                #; (f:fpu) ft5  <-- 10.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 488, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 10.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.01
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.01, ft6  = 0.01
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 10.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.01
      0x800006f8 addi    a0, a0, -1             #; a0  = 488, (wrb) a0  <-- 487
                                                #; (f:fpu) ft5  <-- 11.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 487, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 11.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.011
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.011, ft6  = 0.011
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 11.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.011
      0x800006f8 addi    a0, a0, -1             #; a0  = 487, (wrb) a0  <-- 486
                                                #; (f:fpu) ft5  <-- 12.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 486, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 12.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.012
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.012, ft6  = 0.012
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 12.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.012
      0x800006f8 addi    a0, a0, -1             #; a0  = 486, (wrb) a0  <-- 485
                                                #; (f:fpu) ft5  <-- 13.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 485, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 13.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.0130000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.0130000, ft6  = 0.0130000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 13.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.0130000
      0x800006f8 addi    a0, a0, -1             #; a0  = 485, (wrb) a0  <-- 484
                                                #; (f:fpu) ft5  <-- 14.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 484, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 14.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.014
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.014, ft6  = 0.014
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 14.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.014
      0x800006f8 addi    a0, a0, -1             #; a0  = 484, (wrb) a0  <-- 483
                                                #; (f:fpu) ft5  <-- 15.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 483, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 15.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.015
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.015, ft6  = 0.015
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 15.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.015
      0x800006f8 addi    a0, a0, -1             #; a0  = 483, (wrb) a0  <-- 482
                                                #; (f:fpu) ft5  <-- 16.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 482, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 16.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.016
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.016, ft6  = 0.016
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 16.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.016
      0x800006f8 addi    a0, a0, -1             #; a0  = 482, (wrb) a0  <-- 481
                                                #; (f:fpu) ft5  <-- 17.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 481, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 17.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.017
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.017, ft6  = 0.017
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 17.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.017
      0x800006f8 addi    a0, a0, -1             #; a0  = 481, (wrb) a0  <-- 480
                                                #; (f:fpu) ft5  <-- 18.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 480, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 18.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.0180000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.0180000, ft6  = 0.0180000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 18.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.0180000
      0x800006f8 addi    a0, a0, -1             #; a0  = 480, (wrb) a0  <-- 479
                                                #; (f:fpu) ft5  <-- 19.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 479, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 19.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.019
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.019, ft6  = 0.019
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 19.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.019
      0x800006f8 addi    a0, a0, -1             #; a0  = 479, (wrb) a0  <-- 478
                                                #; (f:fpu) ft5  <-- 20.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 478, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 20.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.02
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.02, ft6  = 0.02
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 20.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.02
      0x800006f8 addi    a0, a0, -1             #; a0  = 478, (wrb) a0  <-- 477
                                                #; (f:fpu) ft5  <-- 21.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 477, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 21.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.021
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.021, ft6  = 0.021
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 21.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.021
      0x800006f8 addi    a0, a0, -1             #; a0  = 477, (wrb) a0  <-- 476
                                                #; (f:fpu) ft5  <-- 22.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 476, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 22.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.022
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.022, ft6  = 0.022
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 22.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.022
      0x800006f8 addi    a0, a0, -1             #; a0  = 476, (wrb) a0  <-- 475
                                                #; (f:fpu) ft5  <-- 23.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 475, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 23.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.023
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.023, ft6  = 0.023
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 23.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.023
      0x800006f8 addi    a0, a0, -1             #; a0  = 475, (wrb) a0  <-- 474
                                                #; (f:fpu) ft5  <-- 24.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 474, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 24.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.024
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.024, ft6  = 0.024
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 24.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.024
      0x800006f8 addi    a0, a0, -1             #; a0  = 474, (wrb) a0  <-- 473
                                                #; (f:fpu) ft5  <-- 25.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 473, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 25.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.025
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.025, ft6  = 0.025
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 25.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.025
      0x800006f8 addi    a0, a0, -1             #; a0  = 473, (wrb) a0  <-- 472
                                                #; (f:fpu) ft5  <-- 26.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 472, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 26.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.0260000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.0260000, ft6  = 0.0260000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 26.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.0260000
      0x800006f8 addi    a0, a0, -1             #; a0  = 472, (wrb) a0  <-- 471
                                                #; (f:fpu) ft5  <-- 27.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 471, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 27.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.027
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.027, ft6  = 0.027
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 27.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.027
      0x800006f8 addi    a0, a0, -1             #; a0  = 471, (wrb) a0  <-- 470
                                                #; (f:fpu) ft5  <-- 28.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 470, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 28.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.028
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.028, ft6  = 0.028
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 28.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.028
      0x800006f8 addi    a0, a0, -1             #; a0  = 470, (wrb) a0  <-- 469
                                                #; (f:fpu) ft5  <-- 29.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 469, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 29.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.029
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.029, ft6  = 0.029
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 29.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.029
      0x800006f8 addi    a0, a0, -1             #; a0  = 469, (wrb) a0  <-- 468
                                                #; (f:fpu) ft5  <-- 30.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 468, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 30.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.03
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.03, ft6  = 0.03
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 30.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.03
      0x800006f8 addi    a0, a0, -1             #; a0  = 468, (wrb) a0  <-- 467
                                                #; (f:fpu) ft5  <-- 31.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 467, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 31.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.031
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.031, ft6  = 0.031
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 31.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.031
      0x800006f8 addi    a0, a0, -1             #; a0  = 467, (wrb) a0  <-- 466
                                                #; (f:fpu) ft5  <-- 32.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 466, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 32.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.032
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.032, ft6  = 0.032
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 32.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.032
      0x800006f8 addi    a0, a0, -1             #; a0  = 466, (wrb) a0  <-- 465
                                                #; (f:fpu) ft5  <-- 33.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 465, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 33.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.033
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.033, ft6  = 0.033
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 33.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.033
      0x800006f8 addi    a0, a0, -1             #; a0  = 465, (wrb) a0  <-- 464
                                                #; (f:fpu) ft5  <-- 34.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 464, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 34.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.034
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.034, ft6  = 0.034
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 34.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.034
      0x800006f8 addi    a0, a0, -1             #; a0  = 464, (wrb) a0  <-- 463
                                                #; (f:fpu) ft5  <-- 35.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 463, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 35.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.035
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.035, ft6  = 0.035
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 35.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.035
      0x800006f8 addi    a0, a0, -1             #; a0  = 463, (wrb) a0  <-- 462
                                                #; (f:fpu) ft5  <-- 36.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 462, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 36.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.0360000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.0360000, ft6  = 0.0360000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 36.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.0360000
      0x800006f8 addi    a0, a0, -1             #; a0  = 462, (wrb) a0  <-- 461
                                                #; (f:fpu) ft5  <-- 37.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 461, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 37.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.037
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.037, ft6  = 0.037
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 37.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.037
      0x800006f8 addi    a0, a0, -1             #; a0  = 461, (wrb) a0  <-- 460
                                                #; (f:fpu) ft5  <-- 38.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 460, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 38.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.038
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.038, ft6  = 0.038
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 38.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.038
      0x800006f8 addi    a0, a0, -1             #; a0  = 460, (wrb) a0  <-- 459
                                                #; (f:fpu) ft5  <-- 39.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 459, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 39.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.039
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.039, ft6  = 0.039
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 39.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.039
      0x800006f8 addi    a0, a0, -1             #; a0  = 459, (wrb) a0  <-- 458
                                                #; (f:fpu) ft5  <-- 40.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 458, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 40.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.04
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.04, ft6  = 0.04
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 40.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.04
      0x800006f8 addi    a0, a0, -1             #; a0  = 458, (wrb) a0  <-- 457
                                                #; (f:fpu) ft5  <-- 41.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 457, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 41.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.041
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.041, ft6  = 0.041
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 41.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.041
      0x800006f8 addi    a0, a0, -1             #; a0  = 457, (wrb) a0  <-- 456
                                                #; (f:fpu) ft5  <-- 42.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 456, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 42.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.042
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.042, ft6  = 0.042
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 42.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.042
      0x800006f8 addi    a0, a0, -1             #; a0  = 456, (wrb) a0  <-- 455
                                                #; (f:fpu) ft5  <-- 43.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 455, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 43.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.0430000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.0430000, ft6  = 0.0430000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 43.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.0430000
      0x800006f8 addi    a0, a0, -1             #; a0  = 455, (wrb) a0  <-- 454
                                                #; (f:fpu) ft5  <-- 44.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 454, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 44.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.044
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.044, ft6  = 0.044
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 44.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.044
      0x800006f8 addi    a0, a0, -1             #; a0  = 454, (wrb) a0  <-- 453
                                                #; (f:fpu) ft5  <-- 45.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 453, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 45.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.045
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.045, ft6  = 0.045
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 45.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.045
      0x800006f8 addi    a0, a0, -1             #; a0  = 453, (wrb) a0  <-- 452
                                                #; (f:fpu) ft5  <-- 46.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 452, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 46.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.046
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.046, ft6  = 0.046
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 46.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.046
      0x800006f8 addi    a0, a0, -1             #; a0  = 452, (wrb) a0  <-- 451
                                                #; (f:fpu) ft5  <-- 47.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 451, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 47.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.047
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.047, ft6  = 0.047
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 47.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.047
      0x800006f8 addi    a0, a0, -1             #; a0  = 451, (wrb) a0  <-- 450
                                                #; (f:fpu) ft5  <-- 48.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 450, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 48.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.048
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.048, ft6  = 0.048
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 48.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.048
      0x800006f8 addi    a0, a0, -1             #; a0  = 450, (wrb) a0  <-- 449
                                                #; (f:fpu) ft5  <-- 49.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 449, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 49.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.049
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.049, ft6  = 0.049
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 49.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.049
      0x800006f8 addi    a0, a0, -1             #; a0  = 449, (wrb) a0  <-- 448
                                                #; (f:fpu) ft5  <-- 50.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 448, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 50.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.05
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.05, ft6  = 0.05
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 50.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.05
      0x800006f8 addi    a0, a0, -1             #; a0  = 448, (wrb) a0  <-- 447
                                                #; (f:fpu) ft5  <-- 51.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 447, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 51.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.0510000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.0510000, ft6  = 0.0510000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 51.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.0510000
      0x800006f8 addi    a0, a0, -1             #; a0  = 447, (wrb) a0  <-- 446
                                                #; (f:fpu) ft5  <-- 52.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 446, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 52.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.0520000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.0520000, ft6  = 0.0520000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 52.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.0520000
      0x800006f8 addi    a0, a0, -1             #; a0  = 446, (wrb) a0  <-- 445
                                                #; (f:fpu) ft5  <-- 53.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 445, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 53.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.053
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.053, ft6  = 0.053
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 53.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.053
      0x800006f8 addi    a0, a0, -1             #; a0  = 445, (wrb) a0  <-- 444
                                                #; (f:fpu) ft5  <-- 54.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 444, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 54.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.054
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.054, ft6  = 0.054
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 54.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.054
      0x800006f8 addi    a0, a0, -1             #; a0  = 444, (wrb) a0  <-- 443
                                                #; (f:fpu) ft5  <-- 55.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 443, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 55.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.055
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.055, ft6  = 0.055
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 55.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.055
      0x800006f8 addi    a0, a0, -1             #; a0  = 443, (wrb) a0  <-- 442
                                                #; (f:fpu) ft5  <-- 56.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 442, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 56.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.056
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.056, ft6  = 0.056
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 56.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.056
      0x800006f8 addi    a0, a0, -1             #; a0  = 442, (wrb) a0  <-- 441
                                                #; (f:fpu) ft5  <-- 57.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 441, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 57.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.057
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.057, ft6  = 0.057
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 57.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.057
      0x800006f8 addi    a0, a0, -1             #; a0  = 441, (wrb) a0  <-- 440
                                                #; (f:fpu) ft5  <-- 58.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 440, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 58.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.058
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.058, ft6  = 0.058
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 58.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.058
      0x800006f8 addi    a0, a0, -1             #; a0  = 440, (wrb) a0  <-- 439
                                                #; (f:fpu) ft5  <-- 59.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 439, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 59.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.0590000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.0590000, ft6  = 0.0590000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 59.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.0590000
      0x800006f8 addi    a0, a0, -1             #; a0  = 439, (wrb) a0  <-- 438
                                                #; (f:fpu) ft5  <-- 60.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 438, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 60.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.06
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.06, ft6  = 0.06
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 60.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.06
      0x800006f8 addi    a0, a0, -1             #; a0  = 438, (wrb) a0  <-- 437
                                                #; (f:fpu) ft5  <-- 61.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 437, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 61.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.061
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.061, ft6  = 0.061
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 61.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.061
      0x800006f8 addi    a0, a0, -1             #; a0  = 437, (wrb) a0  <-- 436
                                                #; (f:fpu) ft5  <-- 62.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 436, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 62.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.062
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.062, ft6  = 0.062
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 62.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.062
      0x800006f8 addi    a0, a0, -1             #; a0  = 436, (wrb) a0  <-- 435
                                                #; (f:fpu) ft5  <-- 63.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 435, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 63.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.063
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.063, ft6  = 0.063
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 63.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.063
      0x800006f8 addi    a0, a0, -1             #; a0  = 435, (wrb) a0  <-- 434
                                                #; (f:fpu) ft5  <-- 64.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 434, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 64.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.064
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.064, ft6  = 0.064
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 64.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.064
      0x800006f8 addi    a0, a0, -1             #; a0  = 434, (wrb) a0  <-- 433
                                                #; (f:fpu) ft5  <-- 65.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 433, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 65.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.065
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.065, ft6  = 0.065
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 65.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.065
      0x800006f8 addi    a0, a0, -1             #; a0  = 433, (wrb) a0  <-- 432
                                                #; (f:fpu) ft5  <-- 66.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 432, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 66.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.066
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.066, ft6  = 0.066
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 66.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.066
      0x800006f8 addi    a0, a0, -1             #; a0  = 432, (wrb) a0  <-- 431
                                                #; (f:fpu) ft5  <-- 67.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 431, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 67.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.067
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.067, ft6  = 0.067
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 67.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.067
      0x800006f8 addi    a0, a0, -1             #; a0  = 431, (wrb) a0  <-- 430
                                                #; (f:fpu) ft5  <-- 68.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 430, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 68.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.068
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.068, ft6  = 0.068
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 68.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.068
      0x800006f8 addi    a0, a0, -1             #; a0  = 430, (wrb) a0  <-- 429
                                                #; (f:fpu) ft5  <-- 69.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 429, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 69.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.069
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.069, ft6  = 0.069
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 69.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.069
      0x800006f8 addi    a0, a0, -1             #; a0  = 429, (wrb) a0  <-- 428
                                                #; (f:fpu) ft5  <-- 70.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 428, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 70.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.07
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.07, ft6  = 0.07
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 70.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.07
      0x800006f8 addi    a0, a0, -1             #; a0  = 428, (wrb) a0  <-- 427
                                                #; (f:fpu) ft5  <-- 71.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 427, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 71.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.0710000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.0710000, ft6  = 0.0710000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 71.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.0710000
      0x800006f8 addi    a0, a0, -1             #; a0  = 427, (wrb) a0  <-- 426
                                                #; (f:fpu) ft5  <-- 72.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 426, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 72.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.0720000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.0720000, ft6  = 0.0720000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 72.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.0720000
      0x800006f8 addi    a0, a0, -1             #; a0  = 426, (wrb) a0  <-- 425
                                                #; (f:fpu) ft5  <-- 73.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 425, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 73.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.073
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.073, ft6  = 0.073
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 73.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.073
      0x800006f8 addi    a0, a0, -1             #; a0  = 425, (wrb) a0  <-- 424
                                                #; (f:fpu) ft5  <-- 74.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 424, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 74.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.074
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.074, ft6  = 0.074
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 74.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.074
      0x800006f8 addi    a0, a0, -1             #; a0  = 424, (wrb) a0  <-- 423
                                                #; (f:fpu) ft5  <-- 75.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 423, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 75.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.075
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.075, ft6  = 0.075
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 75.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.075
      0x800006f8 addi    a0, a0, -1             #; a0  = 423, (wrb) a0  <-- 422
                                                #; (f:fpu) ft5  <-- 76.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 422, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 76.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.076
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.076, ft6  = 0.076
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 76.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.076
      0x800006f8 addi    a0, a0, -1             #; a0  = 422, (wrb) a0  <-- 421
                                                #; (f:fpu) ft5  <-- 77.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 421, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 77.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.077
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.077, ft6  = 0.077
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 77.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.077
      0x800006f8 addi    a0, a0, -1             #; a0  = 421, (wrb) a0  <-- 420
                                                #; (f:fpu) ft5  <-- 78.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 420, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 78.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.078
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.078, ft6  = 0.078
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 78.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.078
      0x800006f8 addi    a0, a0, -1             #; a0  = 420, (wrb) a0  <-- 419
                                                #; (f:fpu) ft5  <-- 79.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 419, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 79.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.079
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.079, ft6  = 0.079
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 79.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.079
      0x800006f8 addi    a0, a0, -1             #; a0  = 419, (wrb) a0  <-- 418
                                                #; (f:fpu) ft5  <-- 80.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 418, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 80.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.08
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.08, ft6  = 0.08
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 80.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.08
      0x800006f8 addi    a0, a0, -1             #; a0  = 418, (wrb) a0  <-- 417
                                                #; (f:fpu) ft5  <-- 81.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 417, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 81.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.081
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.081, ft6  = 0.081
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 81.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.081
      0x800006f8 addi    a0, a0, -1             #; a0  = 417, (wrb) a0  <-- 416
                                                #; (f:fpu) ft5  <-- 82.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 416, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 82.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.082
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.082, ft6  = 0.082
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 82.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.082
      0x800006f8 addi    a0, a0, -1             #; a0  = 416, (wrb) a0  <-- 415
                                                #; (f:fpu) ft5  <-- 83.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 415, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 83.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.083
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.083, ft6  = 0.083
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 83.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.083
      0x800006f8 addi    a0, a0, -1             #; a0  = 415, (wrb) a0  <-- 414
                                                #; (f:fpu) ft5  <-- 84.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 414, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 84.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.084
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.084, ft6  = 0.084
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 84.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.084
      0x800006f8 addi    a0, a0, -1             #; a0  = 414, (wrb) a0  <-- 413
                                                #; (f:fpu) ft5  <-- 85.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 413, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 85.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.085
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.085, ft6  = 0.085
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 85.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.085
      0x800006f8 addi    a0, a0, -1             #; a0  = 413, (wrb) a0  <-- 412
                                                #; (f:fpu) ft5  <-- 86.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 412, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 86.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.0860000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.0860000, ft6  = 0.0860000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 86.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.0860000
      0x800006f8 addi    a0, a0, -1             #; a0  = 412, (wrb) a0  <-- 411
                                                #; (f:fpu) ft5  <-- 87.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 411, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 87.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.0870000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.0870000, ft6  = 0.0870000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 87.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.0870000
      0x800006f8 addi    a0, a0, -1             #; a0  = 411, (wrb) a0  <-- 410
                                                #; (f:fpu) ft5  <-- 88.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 410, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 88.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.088
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.088, ft6  = 0.088
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 88.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.088
      0x800006f8 addi    a0, a0, -1             #; a0  = 410, (wrb) a0  <-- 409
                                                #; (f:fpu) ft5  <-- 89.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 409, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 89.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.089
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.089, ft6  = 0.089
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 89.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.089
      0x800006f8 addi    a0, a0, -1             #; a0  = 409, (wrb) a0  <-- 408
                                                #; (f:fpu) ft5  <-- 90.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 408, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 90.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.09
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.09, ft6  = 0.09
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 90.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.09
      0x800006f8 addi    a0, a0, -1             #; a0  = 408, (wrb) a0  <-- 407
                                                #; (f:fpu) ft5  <-- 91.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 407, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 91.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.091
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.091, ft6  = 0.091
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 91.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.091
      0x800006f8 addi    a0, a0, -1             #; a0  = 407, (wrb) a0  <-- 406
                                                #; (f:fpu) ft5  <-- 92.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 406, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 92.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.092
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.092, ft6  = 0.092
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 92.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.092
      0x800006f8 addi    a0, a0, -1             #; a0  = 406, (wrb) a0  <-- 405
                                                #; (f:fpu) ft5  <-- 93.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 405, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 93.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.093
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.093, ft6  = 0.093
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 93.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.093
      0x800006f8 addi    a0, a0, -1             #; a0  = 405, (wrb) a0  <-- 404
                                                #; (f:fpu) ft5  <-- 94.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 404, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 94.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.094
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.094, ft6  = 0.094
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 94.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.094
      0x800006f8 addi    a0, a0, -1             #; a0  = 404, (wrb) a0  <-- 403
                                                #; (f:fpu) ft5  <-- 95.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 403, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 95.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.095
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.095, ft6  = 0.095
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 95.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.095
      0x800006f8 addi    a0, a0, -1             #; a0  = 403, (wrb) a0  <-- 402
                                                #; (f:fpu) ft5  <-- 96.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 402, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 96.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.096
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.096, ft6  = 0.096
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 96.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.096
      0x800006f8 addi    a0, a0, -1             #; a0  = 402, (wrb) a0  <-- 401
                                                #; (f:fpu) ft5  <-- 97.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 401, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 97.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.097
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.097, ft6  = 0.097
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 97.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.097
      0x800006f8 addi    a0, a0, -1             #; a0  = 401, (wrb) a0  <-- 400
                                                #; (f:fpu) ft5  <-- 98.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 400, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 98.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.098
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.098, ft6  = 0.098
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 98.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.098
      0x800006f8 addi    a0, a0, -1             #; a0  = 400, (wrb) a0  <-- 399
                                                #; (f:fpu) ft5  <-- 99.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 399, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 99.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.099
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.099, ft6  = 0.099
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 99.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.099
      0x800006f8 addi    a0, a0, -1             #; a0  = 399, (wrb) a0  <-- 398
                                                #; (f:fpu) ft5  <-- 100.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 398, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 100.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.1
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.1, ft6  = 0.1
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 100.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.1
      0x800006f8 addi    a0, a0, -1             #; a0  = 398, (wrb) a0  <-- 397
                                                #; (f:fpu) ft5  <-- 101.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 397, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 101.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.101
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.101, ft6  = 0.101
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 101.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.101
      0x800006f8 addi    a0, a0, -1             #; a0  = 397, (wrb) a0  <-- 396
                                                #; (f:fpu) ft5  <-- 102.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 396, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 102.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.1020000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.1020000, ft6  = 0.1020000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 102.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.1020000
      0x800006f8 addi    a0, a0, -1             #; a0  = 396, (wrb) a0  <-- 395
                                                #; (f:fpu) ft5  <-- 103.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 395, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 103.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.1030000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.1030000, ft6  = 0.1030000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 103.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.1030000
      0x800006f8 addi    a0, a0, -1             #; a0  = 395, (wrb) a0  <-- 394
                                                #; (f:fpu) ft5  <-- 104.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 394, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 104.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.1040000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.1040000, ft6  = 0.1040000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 104.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.1040000
      0x800006f8 addi    a0, a0, -1             #; a0  = 394, (wrb) a0  <-- 393
                                                #; (f:fpu) ft5  <-- 105.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 393, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 105.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.105
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.105, ft6  = 0.105
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 105.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.105
      0x800006f8 addi    a0, a0, -1             #; a0  = 393, (wrb) a0  <-- 392
                                                #; (f:fpu) ft5  <-- 106.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 392, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 106.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.106
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.106, ft6  = 0.106
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 106.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.106
      0x800006f8 addi    a0, a0, -1             #; a0  = 392, (wrb) a0  <-- 391
                                                #; (f:fpu) ft5  <-- 107.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 391, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 107.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.107
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.107, ft6  = 0.107
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 107.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.107
      0x800006f8 addi    a0, a0, -1             #; a0  = 391, (wrb) a0  <-- 390
                                                #; (f:fpu) ft5  <-- 108.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 390, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 108.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.108
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.108, ft6  = 0.108
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 108.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.108
      0x800006f8 addi    a0, a0, -1             #; a0  = 390, (wrb) a0  <-- 389
                                                #; (f:fpu) ft5  <-- 109.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 389, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 109.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.109
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.109, ft6  = 0.109
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 109.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.109
      0x800006f8 addi    a0, a0, -1             #; a0  = 389, (wrb) a0  <-- 388
                                                #; (f:fpu) ft5  <-- 110.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 388, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 110.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.11
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.11, ft6  = 0.11
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 110.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.11
      0x800006f8 addi    a0, a0, -1             #; a0  = 388, (wrb) a0  <-- 387
                                                #; (f:fpu) ft5  <-- 111.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 387, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 111.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.111
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.111, ft6  = 0.111
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 111.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.111
      0x800006f8 addi    a0, a0, -1             #; a0  = 387, (wrb) a0  <-- 386
                                                #; (f:fpu) ft5  <-- 112.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 386, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 112.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.112
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.112, ft6  = 0.112
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 112.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.112
      0x800006f8 addi    a0, a0, -1             #; a0  = 386, (wrb) a0  <-- 385
                                                #; (f:fpu) ft5  <-- 113.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 385, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 113.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.113
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.113, ft6  = 0.113
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 113.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.113
      0x800006f8 addi    a0, a0, -1             #; a0  = 385, (wrb) a0  <-- 384
                                                #; (f:fpu) ft5  <-- 114.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 384, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 114.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.114
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.114, ft6  = 0.114
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 114.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.114
      0x800006f8 addi    a0, a0, -1             #; a0  = 384, (wrb) a0  <-- 383
                                                #; (f:fpu) ft5  <-- 115.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 383, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 115.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.115
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.115, ft6  = 0.115
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 115.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.115
      0x800006f8 addi    a0, a0, -1             #; a0  = 383, (wrb) a0  <-- 382
                                                #; (f:fpu) ft5  <-- 116.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 382, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 116.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.116
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.116, ft6  = 0.116
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 116.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.116
      0x800006f8 addi    a0, a0, -1             #; a0  = 382, (wrb) a0  <-- 381
                                                #; (f:fpu) ft5  <-- 117.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 381, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 117.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.117
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.117, ft6  = 0.117
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 117.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.117
      0x800006f8 addi    a0, a0, -1             #; a0  = 381, (wrb) a0  <-- 380
                                                #; (f:fpu) ft5  <-- 118.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 380, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 118.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.1180000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.1180000, ft6  = 0.1180000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 118.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.1180000
      0x800006f8 addi    a0, a0, -1             #; a0  = 380, (wrb) a0  <-- 379
                                                #; (f:fpu) ft5  <-- 119.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 379, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 119.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.1190000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.1190000, ft6  = 0.1190000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 119.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.1190000
      0x800006f8 addi    a0, a0, -1             #; a0  = 379, (wrb) a0  <-- 378
                                                #; (f:fpu) ft5  <-- 120.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 378, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 120.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.12
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.12, ft6  = 0.12
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 120.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.12
      0x800006f8 addi    a0, a0, -1             #; a0  = 378, (wrb) a0  <-- 377
                                                #; (f:fpu) ft5  <-- 121.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 377, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 121.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.121
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.121, ft6  = 0.121
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 121.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.121
      0x800006f8 addi    a0, a0, -1             #; a0  = 377, (wrb) a0  <-- 376
                                                #; (f:fpu) ft5  <-- 122.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 376, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 122.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.122
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.122, ft6  = 0.122
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 122.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.122
      0x800006f8 addi    a0, a0, -1             #; a0  = 376, (wrb) a0  <-- 375
                                                #; (f:fpu) ft5  <-- 123.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 375, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 123.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.123
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.123, ft6  = 0.123
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 123.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.123
      0x800006f8 addi    a0, a0, -1             #; a0  = 375, (wrb) a0  <-- 374
                                                #; (f:fpu) ft5  <-- 124.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 374, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 124.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.124
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.124, ft6  = 0.124
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 124.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.124
      0x800006f8 addi    a0, a0, -1             #; a0  = 374, (wrb) a0  <-- 373
                                                #; (f:fpu) ft5  <-- 125.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 373, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 125.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.125
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.125, ft6  = 0.125
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 125.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.125
      0x800006f8 addi    a0, a0, -1             #; a0  = 373, (wrb) a0  <-- 372
                                                #; (f:fpu) ft5  <-- 126.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 372, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 126.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.126
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.126, ft6  = 0.126
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 126.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.126
      0x800006f8 addi    a0, a0, -1             #; a0  = 372, (wrb) a0  <-- 371
                                                #; (f:fpu) ft5  <-- 127.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 371, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 127.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.127
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.127, ft6  = 0.127
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 127.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.127
      0x800006f8 addi    a0, a0, -1             #; a0  = 371, (wrb) a0  <-- 370
                                                #; (f:fpu) ft5  <-- 128.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 370, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 128.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.128
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.128, ft6  = 0.128
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 128.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.128
      0x800006f8 addi    a0, a0, -1             #; a0  = 370, (wrb) a0  <-- 369
                                                #; (f:fpu) ft5  <-- 129.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 369, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 129.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.129
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.129, ft6  = 0.129
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 129.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.129
      0x800006f8 addi    a0, a0, -1             #; a0  = 369, (wrb) a0  <-- 368
                                                #; (f:fpu) ft5  <-- 130.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 368, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 130.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.13
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.13, ft6  = 0.13
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 130.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.13
      0x800006f8 addi    a0, a0, -1             #; a0  = 368, (wrb) a0  <-- 367
                                                #; (f:fpu) ft5  <-- 131.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 367, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 131.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.131
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.131, ft6  = 0.131
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 131.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.131
      0x800006f8 addi    a0, a0, -1             #; a0  = 367, (wrb) a0  <-- 366
                                                #; (f:fpu) ft5  <-- 132.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 366, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 132.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.132
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.132, ft6  = 0.132
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 132.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.132
      0x800006f8 addi    a0, a0, -1             #; a0  = 366, (wrb) a0  <-- 365
                                                #; (f:fpu) ft5  <-- 133.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 365, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 133.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.133
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.133, ft6  = 0.133
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 133.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.133
      0x800006f8 addi    a0, a0, -1             #; a0  = 365, (wrb) a0  <-- 364
                                                #; (f:fpu) ft5  <-- 134.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 364, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 134.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.134
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.134, ft6  = 0.134
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 134.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.134
      0x800006f8 addi    a0, a0, -1             #; a0  = 364, (wrb) a0  <-- 363
                                                #; (f:fpu) ft5  <-- 135.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 363, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 135.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.135
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.135, ft6  = 0.135
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 135.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.135
      0x800006f8 addi    a0, a0, -1             #; a0  = 363, (wrb) a0  <-- 362
                                                #; (f:fpu) ft5  <-- 136.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 362, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 136.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.136
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.136, ft6  = 0.136
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 136.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.136
      0x800006f8 addi    a0, a0, -1             #; a0  = 362, (wrb) a0  <-- 361
                                                #; (f:fpu) ft5  <-- 137.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 361, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 137.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.137
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.137, ft6  = 0.137
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 137.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.137
      0x800006f8 addi    a0, a0, -1             #; a0  = 361, (wrb) a0  <-- 360
                                                #; (f:fpu) ft5  <-- 138.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 360, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 138.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.138
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.138, ft6  = 0.138
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 138.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.138
      0x800006f8 addi    a0, a0, -1             #; a0  = 360, (wrb) a0  <-- 359
                                                #; (f:fpu) ft5  <-- 139.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 359, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 139.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.139
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.139, ft6  = 0.139
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 139.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.139
      0x800006f8 addi    a0, a0, -1             #; a0  = 359, (wrb) a0  <-- 358
                                                #; (f:fpu) ft5  <-- 140.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 358, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 140.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.14
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.14, ft6  = 0.14
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 140.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.14
      0x800006f8 addi    a0, a0, -1             #; a0  = 358, (wrb) a0  <-- 357
                                                #; (f:fpu) ft5  <-- 141.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 357, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 141.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.1410000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.1410000, ft6  = 0.1410000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 141.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.1410000
      0x800006f8 addi    a0, a0, -1             #; a0  = 357, (wrb) a0  <-- 356
                                                #; (f:fpu) ft5  <-- 142.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 356, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 142.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.1420000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.1420000, ft6  = 0.1420000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 142.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.1420000
      0x800006f8 addi    a0, a0, -1             #; a0  = 356, (wrb) a0  <-- 355
                                                #; (f:fpu) ft5  <-- 143.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 355, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 143.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.1430000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.1430000, ft6  = 0.1430000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 143.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.1430000
      0x800006f8 addi    a0, a0, -1             #; a0  = 355, (wrb) a0  <-- 354
                                                #; (f:fpu) ft5  <-- 144.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 354, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 144.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.1440000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.1440000, ft6  = 0.1440000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 144.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.1440000
      0x800006f8 addi    a0, a0, -1             #; a0  = 354, (wrb) a0  <-- 353
                                                #; (f:fpu) ft5  <-- 145.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 353, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 145.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.145
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.145, ft6  = 0.145
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 145.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.145
      0x800006f8 addi    a0, a0, -1             #; a0  = 353, (wrb) a0  <-- 352
                                                #; (f:fpu) ft5  <-- 146.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 352, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 146.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.146
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.146, ft6  = 0.146
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 146.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.146
      0x800006f8 addi    a0, a0, -1             #; a0  = 352, (wrb) a0  <-- 351
                                                #; (f:fpu) ft5  <-- 147.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 351, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 147.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.147
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.147, ft6  = 0.147
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 147.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.147
      0x800006f8 addi    a0, a0, -1             #; a0  = 351, (wrb) a0  <-- 350
                                                #; (f:fpu) ft5  <-- 148.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 350, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 148.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.148
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.148, ft6  = 0.148
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 148.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.148
      0x800006f8 addi    a0, a0, -1             #; a0  = 350, (wrb) a0  <-- 349
                                                #; (f:fpu) ft5  <-- 149.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 349, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 149.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.149
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.149, ft6  = 0.149
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 149.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.149
      0x800006f8 addi    a0, a0, -1             #; a0  = 349, (wrb) a0  <-- 348
                                                #; (f:fpu) ft5  <-- 150.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 348, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 150.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.15
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.15, ft6  = 0.15
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 150.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.15
      0x800006f8 addi    a0, a0, -1             #; a0  = 348, (wrb) a0  <-- 347
                                                #; (f:fpu) ft5  <-- 151.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 347, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 151.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.151
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.151, ft6  = 0.151
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 151.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.151
      0x800006f8 addi    a0, a0, -1             #; a0  = 347, (wrb) a0  <-- 346
                                                #; (f:fpu) ft5  <-- 152.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 346, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 152.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.152
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.152, ft6  = 0.152
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 152.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.152
      0x800006f8 addi    a0, a0, -1             #; a0  = 346, (wrb) a0  <-- 345
                                                #; (f:fpu) ft5  <-- 153.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 345, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 153.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.153
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.153, ft6  = 0.153
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 153.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.153
      0x800006f8 addi    a0, a0, -1             #; a0  = 345, (wrb) a0  <-- 344
                                                #; (f:fpu) ft5  <-- 154.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 344, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 154.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.154
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.154, ft6  = 0.154
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 154.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.154
      0x800006f8 addi    a0, a0, -1             #; a0  = 344, (wrb) a0  <-- 343
                                                #; (f:fpu) ft5  <-- 155.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 343, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 155.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.155
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.155, ft6  = 0.155
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 155.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.155
      0x800006f8 addi    a0, a0, -1             #; a0  = 343, (wrb) a0  <-- 342
                                                #; (f:fpu) ft5  <-- 156.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 342, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 156.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.156
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.156, ft6  = 0.156
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 156.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.156
      0x800006f8 addi    a0, a0, -1             #; a0  = 342, (wrb) a0  <-- 341
                                                #; (f:fpu) ft5  <-- 157.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 341, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 157.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.157
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.157, ft6  = 0.157
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 157.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.157
      0x800006f8 addi    a0, a0, -1             #; a0  = 341, (wrb) a0  <-- 340
                                                #; (f:fpu) ft5  <-- 158.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 340, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 158.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.158
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.158, ft6  = 0.158
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 158.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.158
      0x800006f8 addi    a0, a0, -1             #; a0  = 340, (wrb) a0  <-- 339
                                                #; (f:fpu) ft5  <-- 159.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 339, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 159.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.159
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.159, ft6  = 0.159
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 159.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.159
      0x800006f8 addi    a0, a0, -1             #; a0  = 339, (wrb) a0  <-- 338
                                                #; (f:fpu) ft5  <-- 160.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 338, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 160.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.16
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.16, ft6  = 0.16
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 160.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.16
      0x800006f8 addi    a0, a0, -1             #; a0  = 338, (wrb) a0  <-- 337
                                                #; (f:fpu) ft5  <-- 161.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 337, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 161.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.161
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.161, ft6  = 0.161
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 161.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.161
      0x800006f8 addi    a0, a0, -1             #; a0  = 337, (wrb) a0  <-- 336
                                                #; (f:fpu) ft5  <-- 162.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 336, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 162.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.162
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.162, ft6  = 0.162
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 162.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.162
      0x800006f8 addi    a0, a0, -1             #; a0  = 336, (wrb) a0  <-- 335
                                                #; (f:fpu) ft5  <-- 163.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 335, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 163.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.163
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.163, ft6  = 0.163
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 163.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.163
      0x800006f8 addi    a0, a0, -1             #; a0  = 335, (wrb) a0  <-- 334
                                                #; (f:fpu) ft5  <-- 164.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 334, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 164.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.164
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.164, ft6  = 0.164
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 164.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.164
      0x800006f8 addi    a0, a0, -1             #; a0  = 334, (wrb) a0  <-- 333
                                                #; (f:fpu) ft5  <-- 165.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 333, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 165.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.165
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.165, ft6  = 0.165
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 165.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.165
      0x800006f8 addi    a0, a0, -1             #; a0  = 333, (wrb) a0  <-- 332
                                                #; (f:fpu) ft5  <-- 166.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 332, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 166.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.166
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.166, ft6  = 0.166
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 166.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.166
      0x800006f8 addi    a0, a0, -1             #; a0  = 332, (wrb) a0  <-- 331
                                                #; (f:fpu) ft5  <-- 167.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 331, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 167.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.167
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.167, ft6  = 0.167
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 167.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.167
      0x800006f8 addi    a0, a0, -1             #; a0  = 331, (wrb) a0  <-- 330
                                                #; (f:fpu) ft5  <-- 168.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 330, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 168.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.168
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.168, ft6  = 0.168
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 168.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.168
      0x800006f8 addi    a0, a0, -1             #; a0  = 330, (wrb) a0  <-- 329
                                                #; (f:fpu) ft5  <-- 169.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 329, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 169.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.169
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.169, ft6  = 0.169
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 169.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.169
      0x800006f8 addi    a0, a0, -1             #; a0  = 329, (wrb) a0  <-- 328
                                                #; (f:fpu) ft5  <-- 170.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 328, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 170.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.17
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.17, ft6  = 0.17
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 170.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.17
      0x800006f8 addi    a0, a0, -1             #; a0  = 328, (wrb) a0  <-- 327
                                                #; (f:fpu) ft5  <-- 171.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 327, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 171.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.171
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.171, ft6  = 0.171
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 171.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.171
      0x800006f8 addi    a0, a0, -1             #; a0  = 327, (wrb) a0  <-- 326
                                                #; (f:fpu) ft5  <-- 172.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 326, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 172.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.1720000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.1720000, ft6  = 0.1720000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 172.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.1720000
      0x800006f8 addi    a0, a0, -1             #; a0  = 326, (wrb) a0  <-- 325
                                                #; (f:fpu) ft5  <-- 173.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 325, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 173.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.1730000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.1730000, ft6  = 0.1730000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 173.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.1730000
      0x800006f8 addi    a0, a0, -1             #; a0  = 325, (wrb) a0  <-- 324
                                                #; (f:fpu) ft5  <-- 174.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 324, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 174.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.1740000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.1740000, ft6  = 0.1740000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 174.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.1740000
      0x800006f8 addi    a0, a0, -1             #; a0  = 324, (wrb) a0  <-- 323
                                                #; (f:fpu) ft5  <-- 175.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 323, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 175.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.1750000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.1750000, ft6  = 0.1750000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 175.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.1750000
      0x800006f8 addi    a0, a0, -1             #; a0  = 323, (wrb) a0  <-- 322
                                                #; (f:fpu) ft5  <-- 176.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 322, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 176.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.176
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.176, ft6  = 0.176
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 176.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.176
      0x800006f8 addi    a0, a0, -1             #; a0  = 322, (wrb) a0  <-- 321
                                                #; (f:fpu) ft5  <-- 177.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 321, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 177.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.177
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.177, ft6  = 0.177
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 177.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.177
      0x800006f8 addi    a0, a0, -1             #; a0  = 321, (wrb) a0  <-- 320
                                                #; (f:fpu) ft5  <-- 178.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 320, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 178.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.178
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.178, ft6  = 0.178
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 178.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.178
      0x800006f8 addi    a0, a0, -1             #; a0  = 320, (wrb) a0  <-- 319
                                                #; (f:fpu) ft5  <-- 179.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 319, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 179.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.179
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.179, ft6  = 0.179
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 179.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.179
      0x800006f8 addi    a0, a0, -1             #; a0  = 319, (wrb) a0  <-- 318
                                                #; (f:fpu) ft5  <-- 180.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 318, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 180.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.18
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.18, ft6  = 0.18
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 180.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.18
      0x800006f8 addi    a0, a0, -1             #; a0  = 318, (wrb) a0  <-- 317
                                                #; (f:fpu) ft5  <-- 181.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 317, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 181.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.181
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.181, ft6  = 0.181
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 181.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.181
      0x800006f8 addi    a0, a0, -1             #; a0  = 317, (wrb) a0  <-- 316
                                                #; (f:fpu) ft5  <-- 182.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 316, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 182.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.182
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.182, ft6  = 0.182
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 182.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.182
      0x800006f8 addi    a0, a0, -1             #; a0  = 316, (wrb) a0  <-- 315
                                                #; (f:fpu) ft5  <-- 183.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 315, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 183.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.183
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.183, ft6  = 0.183
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 183.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.183
      0x800006f8 addi    a0, a0, -1             #; a0  = 315, (wrb) a0  <-- 314
                                                #; (f:fpu) ft5  <-- 184.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 314, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 184.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.184
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.184, ft6  = 0.184
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 184.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.184
      0x800006f8 addi    a0, a0, -1             #; a0  = 314, (wrb) a0  <-- 313
                                                #; (f:fpu) ft5  <-- 185.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 313, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 185.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.185
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.185, ft6  = 0.185
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 185.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.185
      0x800006f8 addi    a0, a0, -1             #; a0  = 313, (wrb) a0  <-- 312
                                                #; (f:fpu) ft5  <-- 186.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 312, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 186.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.186
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.186, ft6  = 0.186
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 186.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.186
      0x800006f8 addi    a0, a0, -1             #; a0  = 312, (wrb) a0  <-- 311
                                                #; (f:fpu) ft5  <-- 187.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 311, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 187.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.187
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.187, ft6  = 0.187
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 187.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.187
      0x800006f8 addi    a0, a0, -1             #; a0  = 311, (wrb) a0  <-- 310
                                                #; (f:fpu) ft5  <-- 188.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 310, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 188.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.188
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.188, ft6  = 0.188
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 188.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.188
      0x800006f8 addi    a0, a0, -1             #; a0  = 310, (wrb) a0  <-- 309
                                                #; (f:fpu) ft5  <-- 189.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 309, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 189.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.189
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.189, ft6  = 0.189
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 189.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.189
      0x800006f8 addi    a0, a0, -1             #; a0  = 309, (wrb) a0  <-- 308
                                                #; (f:fpu) ft5  <-- 190.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 308, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 190.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.19
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.19, ft6  = 0.19
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 190.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.19
      0x800006f8 addi    a0, a0, -1             #; a0  = 308, (wrb) a0  <-- 307
                                                #; (f:fpu) ft5  <-- 191.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 307, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 191.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.191
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.191, ft6  = 0.191
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 191.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.191
      0x800006f8 addi    a0, a0, -1             #; a0  = 307, (wrb) a0  <-- 306
                                                #; (f:fpu) ft5  <-- 192.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 306, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 192.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.192
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.192, ft6  = 0.192
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 192.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.192
      0x800006f8 addi    a0, a0, -1             #; a0  = 306, (wrb) a0  <-- 305
                                                #; (f:fpu) ft5  <-- 193.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 305, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 193.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.193
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.193, ft6  = 0.193
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 193.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.193
      0x800006f8 addi    a0, a0, -1             #; a0  = 305, (wrb) a0  <-- 304
                                                #; (f:fpu) ft5  <-- 194.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 304, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 194.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.194
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.194, ft6  = 0.194
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 194.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.194
      0x800006f8 addi    a0, a0, -1             #; a0  = 304, (wrb) a0  <-- 303
                                                #; (f:fpu) ft5  <-- 195.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 303, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 195.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.195
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.195, ft6  = 0.195
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 195.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.195
      0x800006f8 addi    a0, a0, -1             #; a0  = 303, (wrb) a0  <-- 302
                                                #; (f:fpu) ft5  <-- 196.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 302, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 196.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.196
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.196, ft6  = 0.196
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 196.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.196
      0x800006f8 addi    a0, a0, -1             #; a0  = 302, (wrb) a0  <-- 301
                                                #; (f:fpu) ft5  <-- 197.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 301, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 197.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.197
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.197, ft6  = 0.197
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 197.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.197
      0x800006f8 addi    a0, a0, -1             #; a0  = 301, (wrb) a0  <-- 300
                                                #; (f:fpu) ft5  <-- 198.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 300, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 198.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.198
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.198, ft6  = 0.198
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 198.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.198
      0x800006f8 addi    a0, a0, -1             #; a0  = 300, (wrb) a0  <-- 299
                                                #; (f:fpu) ft5  <-- 199.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 299, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 199.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.199
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.199, ft6  = 0.199
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 199.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.199
      0x800006f8 addi    a0, a0, -1             #; a0  = 299, (wrb) a0  <-- 298
                                                #; (f:fpu) ft5  <-- 200.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 298, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 200.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.2
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.2, ft6  = 0.2
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 200.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.2
      0x800006f8 addi    a0, a0, -1             #; a0  = 298, (wrb) a0  <-- 297
                                                #; (f:fpu) ft5  <-- 201.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 297, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 201.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.201
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.201, ft6  = 0.201
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 201.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.201
      0x800006f8 addi    a0, a0, -1             #; a0  = 297, (wrb) a0  <-- 296
                                                #; (f:fpu) ft5  <-- 202.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 296, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 202.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.202
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.202, ft6  = 0.202
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 202.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.202
      0x800006f8 addi    a0, a0, -1             #; a0  = 296, (wrb) a0  <-- 295
                                                #; (f:fpu) ft5  <-- 203.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 295, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 203.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.203
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.203, ft6  = 0.203
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 203.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.203
      0x800006f8 addi    a0, a0, -1             #; a0  = 295, (wrb) a0  <-- 294
                                                #; (f:fpu) ft5  <-- 204.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 294, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 204.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.2040000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.2040000, ft6  = 0.2040000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 204.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.2040000
      0x800006f8 addi    a0, a0, -1             #; a0  = 294, (wrb) a0  <-- 293
                                                #; (f:fpu) ft5  <-- 205.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 293, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 205.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.2050000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.2050000, ft6  = 0.2050000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 205.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.2050000
      0x800006f8 addi    a0, a0, -1             #; a0  = 293, (wrb) a0  <-- 292
                                                #; (f:fpu) ft5  <-- 206.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 292, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 206.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.2060000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.2060000, ft6  = 0.2060000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 206.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.2060000
      0x800006f8 addi    a0, a0, -1             #; a0  = 292, (wrb) a0  <-- 291
                                                #; (f:fpu) ft5  <-- 207.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 291, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 207.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.2070000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.2070000, ft6  = 0.2070000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 207.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.2070000
      0x800006f8 addi    a0, a0, -1             #; a0  = 291, (wrb) a0  <-- 290
                                                #; (f:fpu) ft5  <-- 208.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 290, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 208.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.2080000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.2080000, ft6  = 0.2080000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 208.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.2080000
      0x800006f8 addi    a0, a0, -1             #; a0  = 290, (wrb) a0  <-- 289
                                                #; (f:fpu) ft5  <-- 209.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 289, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 209.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.209
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.209, ft6  = 0.209
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 209.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.209
      0x800006f8 addi    a0, a0, -1             #; a0  = 289, (wrb) a0  <-- 288
                                                #; (f:fpu) ft5  <-- 210.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 288, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 210.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.21
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.21, ft6  = 0.21
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 210.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.21
      0x800006f8 addi    a0, a0, -1             #; a0  = 288, (wrb) a0  <-- 287
                                                #; (f:fpu) ft5  <-- 211.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 287, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 211.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.211
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.211, ft6  = 0.211
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 211.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.211
      0x800006f8 addi    a0, a0, -1             #; a0  = 287, (wrb) a0  <-- 286
                                                #; (f:fpu) ft5  <-- 212.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 286, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 212.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.212
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.212, ft6  = 0.212
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 212.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.212
      0x800006f8 addi    a0, a0, -1             #; a0  = 286, (wrb) a0  <-- 285
                                                #; (f:fpu) ft5  <-- 213.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 285, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 213.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.213
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.213, ft6  = 0.213
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 213.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.213
      0x800006f8 addi    a0, a0, -1             #; a0  = 285, (wrb) a0  <-- 284
                                                #; (f:fpu) ft5  <-- 214.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 284, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 214.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.214
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.214, ft6  = 0.214
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 214.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.214
      0x800006f8 addi    a0, a0, -1             #; a0  = 284, (wrb) a0  <-- 283
                                                #; (f:fpu) ft5  <-- 215.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 283, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 215.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.215
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.215, ft6  = 0.215
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 215.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.215
      0x800006f8 addi    a0, a0, -1             #; a0  = 283, (wrb) a0  <-- 282
                                                #; (f:fpu) ft5  <-- 216.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 282, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 216.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.216
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.216, ft6  = 0.216
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 216.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.216
      0x800006f8 addi    a0, a0, -1             #; a0  = 282, (wrb) a0  <-- 281
                                                #; (f:fpu) ft5  <-- 217.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 281, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 217.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.217
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.217, ft6  = 0.217
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 217.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.217
      0x800006f8 addi    a0, a0, -1             #; a0  = 281, (wrb) a0  <-- 280
                                                #; (f:fpu) ft5  <-- 218.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 280, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 218.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.218
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.218, ft6  = 0.218
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 218.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.218
      0x800006f8 addi    a0, a0, -1             #; a0  = 280, (wrb) a0  <-- 279
                                                #; (f:fpu) ft5  <-- 219.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 279, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 219.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.219
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.219, ft6  = 0.219
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 219.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.219
      0x800006f8 addi    a0, a0, -1             #; a0  = 279, (wrb) a0  <-- 278
                                                #; (f:fpu) ft5  <-- 220.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 278, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 220.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.22
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.22, ft6  = 0.22
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 220.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.22
      0x800006f8 addi    a0, a0, -1             #; a0  = 278, (wrb) a0  <-- 277
                                                #; (f:fpu) ft5  <-- 221.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 277, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 221.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.221
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.221, ft6  = 0.221
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 221.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.221
      0x800006f8 addi    a0, a0, -1             #; a0  = 277, (wrb) a0  <-- 276
                                                #; (f:fpu) ft5  <-- 222.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 276, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 222.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.222
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.222, ft6  = 0.222
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 222.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.222
      0x800006f8 addi    a0, a0, -1             #; a0  = 276, (wrb) a0  <-- 275
                                                #; (f:fpu) ft5  <-- 223.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 275, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 223.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.223
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.223, ft6  = 0.223
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 223.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.223
      0x800006f8 addi    a0, a0, -1             #; a0  = 275, (wrb) a0  <-- 274
                                                #; (f:fpu) ft5  <-- 224.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 274, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 224.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.224
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.224, ft6  = 0.224
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 224.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.224
      0x800006f8 addi    a0, a0, -1             #; a0  = 274, (wrb) a0  <-- 273
                                                #; (f:fpu) ft5  <-- 225.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 273, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 225.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.225
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.225, ft6  = 0.225
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 225.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.225
      0x800006f8 addi    a0, a0, -1             #; a0  = 273, (wrb) a0  <-- 272
                                                #; (f:fpu) ft5  <-- 226.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 272, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 226.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.226
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.226, ft6  = 0.226
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 226.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.226
      0x800006f8 addi    a0, a0, -1             #; a0  = 272, (wrb) a0  <-- 271
                                                #; (f:fpu) ft5  <-- 227.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 271, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 227.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.227
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.227, ft6  = 0.227
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 227.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.227
      0x800006f8 addi    a0, a0, -1             #; a0  = 271, (wrb) a0  <-- 270
                                                #; (f:fpu) ft5  <-- 228.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 270, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 228.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.228
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.228, ft6  = 0.228
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 228.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.228
      0x800006f8 addi    a0, a0, -1             #; a0  = 270, (wrb) a0  <-- 269
                                                #; (f:fpu) ft5  <-- 229.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 269, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 229.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.229
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.229, ft6  = 0.229
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 229.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.229
      0x800006f8 addi    a0, a0, -1             #; a0  = 269, (wrb) a0  <-- 268
                                                #; (f:fpu) ft5  <-- 230.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 268, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 230.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.23
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.23, ft6  = 0.23
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 230.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.23
      0x800006f8 addi    a0, a0, -1             #; a0  = 268, (wrb) a0  <-- 267
                                                #; (f:fpu) ft5  <-- 231.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 267, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 231.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.231
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.231, ft6  = 0.231
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 231.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.231
      0x800006f8 addi    a0, a0, -1             #; a0  = 267, (wrb) a0  <-- 266
                                                #; (f:fpu) ft5  <-- 232.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 266, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 232.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.232
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.232, ft6  = 0.232
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 232.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.232
      0x800006f8 addi    a0, a0, -1             #; a0  = 266, (wrb) a0  <-- 265
                                                #; (f:fpu) ft5  <-- 233.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 265, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 233.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.233
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.233, ft6  = 0.233
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 233.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.233
      0x800006f8 addi    a0, a0, -1             #; a0  = 265, (wrb) a0  <-- 264
                                                #; (f:fpu) ft5  <-- 234.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 264, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 234.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.234
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.234, ft6  = 0.234
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 234.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.234
      0x800006f8 addi    a0, a0, -1             #; a0  = 264, (wrb) a0  <-- 263
                                                #; (f:fpu) ft5  <-- 235.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 263, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 235.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.2350000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.2350000, ft6  = 0.2350000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 235.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.2350000
      0x800006f8 addi    a0, a0, -1             #; a0  = 263, (wrb) a0  <-- 262
                                                #; (f:fpu) ft5  <-- 236.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 262, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 236.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.2360000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.2360000, ft6  = 0.2360000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 236.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.2360000
      0x800006f8 addi    a0, a0, -1             #; a0  = 262, (wrb) a0  <-- 261
                                                #; (f:fpu) ft5  <-- 237.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 261, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 237.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.2370000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.2370000, ft6  = 0.2370000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 237.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.2370000
      0x800006f8 addi    a0, a0, -1             #; a0  = 261, (wrb) a0  <-- 260
                                                #; (f:fpu) ft5  <-- 238.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 260, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 238.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.2380000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.2380000, ft6  = 0.2380000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 238.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.2380000
      0x800006f8 addi    a0, a0, -1             #; a0  = 260, (wrb) a0  <-- 259
                                                #; (f:fpu) ft5  <-- 239.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 259, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 239.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.2390000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.2390000, ft6  = 0.2390000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 239.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.2390000
      0x800006f8 addi    a0, a0, -1             #; a0  = 259, (wrb) a0  <-- 258
                                                #; (f:fpu) ft5  <-- 240.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 258, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 240.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.24
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.24, ft6  = 0.24
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 240.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.24
      0x800006f8 addi    a0, a0, -1             #; a0  = 258, (wrb) a0  <-- 257
                                                #; (f:fpu) ft5  <-- 241.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 257, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 241.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.241
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.241, ft6  = 0.241
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 241.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.241
      0x800006f8 addi    a0, a0, -1             #; a0  = 257, (wrb) a0  <-- 256
                                                #; (f:fpu) ft5  <-- 242.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 256, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 242.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.242
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.242, ft6  = 0.242
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 242.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.242
      0x800006f8 addi    a0, a0, -1             #; a0  = 256, (wrb) a0  <-- 255
                                                #; (f:fpu) ft5  <-- 243.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 255, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 243.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.243
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.243, ft6  = 0.243
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 243.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.243
      0x800006f8 addi    a0, a0, -1             #; a0  = 255, (wrb) a0  <-- 254
                                                #; (f:fpu) ft5  <-- 244.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 254, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 244.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.244
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.244, ft6  = 0.244
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 244.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.244
      0x800006f8 addi    a0, a0, -1             #; a0  = 254, (wrb) a0  <-- 253
                                                #; (f:fpu) ft5  <-- 245.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 253, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 245.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.245
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.245, ft6  = 0.245
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 245.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.245
      0x800006f8 addi    a0, a0, -1             #; a0  = 253, (wrb) a0  <-- 252
                                                #; (f:fpu) ft5  <-- 246.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 252, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 246.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.246
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.246, ft6  = 0.246
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 246.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.246
      0x800006f8 addi    a0, a0, -1             #; a0  = 252, (wrb) a0  <-- 251
                                                #; (f:fpu) ft5  <-- 247.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 251, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 247.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.247
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.247, ft6  = 0.247
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 247.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.247
      0x800006f8 addi    a0, a0, -1             #; a0  = 251, (wrb) a0  <-- 250
                                                #; (f:fpu) ft5  <-- 248.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 250, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 248.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.248
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.248, ft6  = 0.248
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 248.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.248
      0x800006f8 addi    a0, a0, -1             #; a0  = 250, (wrb) a0  <-- 249
                                                #; (f:fpu) ft5  <-- 249.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 249, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 249.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.249
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.249, ft6  = 0.249
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 249.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.249
      0x800006f8 addi    a0, a0, -1             #; a0  = 249, (wrb) a0  <-- 248
                                                #; (f:fpu) ft5  <-- 250.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 248, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 250.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.25
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.25, ft6  = 0.25
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 250.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.25
      0x800006f8 addi    a0, a0, -1             #; a0  = 248, (wrb) a0  <-- 247
                                                #; (f:fpu) ft5  <-- 251.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 247, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 251.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.251
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.251, ft6  = 0.251
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 251.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.251
      0x800006f8 addi    a0, a0, -1             #; a0  = 247, (wrb) a0  <-- 246
                                                #; (f:fpu) ft5  <-- 252.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 246, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 252.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.252
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.252, ft6  = 0.252
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 252.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.252
      0x800006f8 addi    a0, a0, -1             #; a0  = 246, (wrb) a0  <-- 245
                                                #; (f:fpu) ft5  <-- 253.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 245, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 253.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.253
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.253, ft6  = 0.253
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 253.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.253
      0x800006f8 addi    a0, a0, -1             #; a0  = 245, (wrb) a0  <-- 244
                                                #; (f:fpu) ft5  <-- 254.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 244, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 254.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.254
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.254, ft6  = 0.254
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 254.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.254
      0x800006f8 addi    a0, a0, -1             #; a0  = 244, (wrb) a0  <-- 243
                                                #; (f:fpu) ft5  <-- 255.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 243, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 255.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.255
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.255, ft6  = 0.255
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 255.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.255
      0x800006f8 addi    a0, a0, -1             #; a0  = 243, (wrb) a0  <-- 242
                                                #; (f:fpu) ft5  <-- 256.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 242, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 256.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.256
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.256, ft6  = 0.256
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 256.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.256
      0x800006f8 addi    a0, a0, -1             #; a0  = 242, (wrb) a0  <-- 241
                                                #; (f:fpu) ft5  <-- 257.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 241, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 257.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.257
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.257, ft6  = 0.257
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 257.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.257
      0x800006f8 addi    a0, a0, -1             #; a0  = 241, (wrb) a0  <-- 240
                                                #; (f:fpu) ft5  <-- 258.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 240, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 258.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.258
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.258, ft6  = 0.258
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 258.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.258
      0x800006f8 addi    a0, a0, -1             #; a0  = 240, (wrb) a0  <-- 239
                                                #; (f:fpu) ft5  <-- 259.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 239, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 259.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.259
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.259, ft6  = 0.259
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 259.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.259
      0x800006f8 addi    a0, a0, -1             #; a0  = 239, (wrb) a0  <-- 238
                                                #; (f:fpu) ft5  <-- 260.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 238, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 260.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.26
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.26, ft6  = 0.26
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 260.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.26
      0x800006f8 addi    a0, a0, -1             #; a0  = 238, (wrb) a0  <-- 237
                                                #; (f:fpu) ft5  <-- 261.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 237, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 261.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.261
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.261, ft6  = 0.261
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 261.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.261
      0x800006f8 addi    a0, a0, -1             #; a0  = 237, (wrb) a0  <-- 236
                                                #; (f:fpu) ft5  <-- 262.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 236, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 262.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.262
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.262, ft6  = 0.262
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 262.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.262
      0x800006f8 addi    a0, a0, -1             #; a0  = 236, (wrb) a0  <-- 235
                                                #; (f:fpu) ft5  <-- 263.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 235, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 263.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.263
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.263, ft6  = 0.263
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 263.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.263
      0x800006f8 addi    a0, a0, -1             #; a0  = 235, (wrb) a0  <-- 234
                                                #; (f:fpu) ft5  <-- 264.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 234, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 264.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.264
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.264, ft6  = 0.264
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 264.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.264
      0x800006f8 addi    a0, a0, -1             #; a0  = 234, (wrb) a0  <-- 233
                                                #; (f:fpu) ft5  <-- 265.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 233, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 265.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.265
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.265, ft6  = 0.265
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 265.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.265
      0x800006f8 addi    a0, a0, -1             #; a0  = 233, (wrb) a0  <-- 232
                                                #; (f:fpu) ft5  <-- 266.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 232, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 266.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.266
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.266, ft6  = 0.266
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 266.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.266
      0x800006f8 addi    a0, a0, -1             #; a0  = 232, (wrb) a0  <-- 231
                                                #; (f:fpu) ft5  <-- 267.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 231, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 267.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.267
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.267, ft6  = 0.267
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 267.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.267
      0x800006f8 addi    a0, a0, -1             #; a0  = 231, (wrb) a0  <-- 230
                                                #; (f:fpu) ft5  <-- 268.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 230, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 268.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.268
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.268, ft6  = 0.268
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 268.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.268
      0x800006f8 addi    a0, a0, -1             #; a0  = 230, (wrb) a0  <-- 229
                                                #; (f:fpu) ft5  <-- 269.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 229, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 269.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.269
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.269, ft6  = 0.269
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 269.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.269
      0x800006f8 addi    a0, a0, -1             #; a0  = 229, (wrb) a0  <-- 228
                                                #; (f:fpu) ft5  <-- 270.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 228, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 270.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.27
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.27, ft6  = 0.27
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 270.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.27
      0x800006f8 addi    a0, a0, -1             #; a0  = 228, (wrb) a0  <-- 227
                                                #; (f:fpu) ft5  <-- 271.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 227, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 271.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.271
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.271, ft6  = 0.271
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 271.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.271
      0x800006f8 addi    a0, a0, -1             #; a0  = 227, (wrb) a0  <-- 226
                                                #; (f:fpu) ft5  <-- 272.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 226, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 272.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.272
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.272, ft6  = 0.272
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 272.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.272
      0x800006f8 addi    a0, a0, -1             #; a0  = 226, (wrb) a0  <-- 225
                                                #; (f:fpu) ft5  <-- 273.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 225, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 273.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.273
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.273, ft6  = 0.273
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 273.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.273
      0x800006f8 addi    a0, a0, -1             #; a0  = 225, (wrb) a0  <-- 224
                                                #; (f:fpu) ft5  <-- 274.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 224, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 274.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.274
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.274, ft6  = 0.274
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 274.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.274
      0x800006f8 addi    a0, a0, -1             #; a0  = 224, (wrb) a0  <-- 223
                                                #; (f:fpu) ft5  <-- 275.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 223, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 275.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.275
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.275, ft6  = 0.275
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 275.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.275
      0x800006f8 addi    a0, a0, -1             #; a0  = 223, (wrb) a0  <-- 222
                                                #; (f:fpu) ft5  <-- 276.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 222, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 276.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.276
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.276, ft6  = 0.276
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 276.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.276
      0x800006f8 addi    a0, a0, -1             #; a0  = 222, (wrb) a0  <-- 221
                                                #; (f:fpu) ft5  <-- 277.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 221, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 277.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.277
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.277, ft6  = 0.277
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 277.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.277
      0x800006f8 addi    a0, a0, -1             #; a0  = 221, (wrb) a0  <-- 220
                                                #; (f:fpu) ft5  <-- 278.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 220, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 278.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.278
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.278, ft6  = 0.278
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 278.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.278
      0x800006f8 addi    a0, a0, -1             #; a0  = 220, (wrb) a0  <-- 219
                                                #; (f:fpu) ft5  <-- 279.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 219, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 279.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.279
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.279, ft6  = 0.279
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 279.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.279
      0x800006f8 addi    a0, a0, -1             #; a0  = 219, (wrb) a0  <-- 218
                                                #; (f:fpu) ft5  <-- 280.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 218, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 280.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.28
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.28, ft6  = 0.28
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 280.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.28
      0x800006f8 addi    a0, a0, -1             #; a0  = 218, (wrb) a0  <-- 217
                                                #; (f:fpu) ft5  <-- 281.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 217, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 281.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.281
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.281, ft6  = 0.281
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 281.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.281
      0x800006f8 addi    a0, a0, -1             #; a0  = 217, (wrb) a0  <-- 216
                                                #; (f:fpu) ft5  <-- 282.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 216, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 282.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.2820000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.2820000, ft6  = 0.2820000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 282.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.2820000
      0x800006f8 addi    a0, a0, -1             #; a0  = 216, (wrb) a0  <-- 215
                                                #; (f:fpu) ft5  <-- 283.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 215, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 283.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.2830000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.2830000, ft6  = 0.2830000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 283.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.2830000
      0x800006f8 addi    a0, a0, -1             #; a0  = 215, (wrb) a0  <-- 214
                                                #; (f:fpu) ft5  <-- 284.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 214, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 284.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.2840000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.2840000, ft6  = 0.2840000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 284.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.2840000
      0x800006f8 addi    a0, a0, -1             #; a0  = 214, (wrb) a0  <-- 213
                                                #; (f:fpu) ft5  <-- 285.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 213, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 285.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.2850000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.2850000, ft6  = 0.2850000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 285.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.2850000
      0x800006f8 addi    a0, a0, -1             #; a0  = 213, (wrb) a0  <-- 212
                                                #; (f:fpu) ft5  <-- 286.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 212, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 286.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.2860000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.2860000, ft6  = 0.2860000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 286.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.2860000
      0x800006f8 addi    a0, a0, -1             #; a0  = 212, (wrb) a0  <-- 211
                                                #; (f:fpu) ft5  <-- 287.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 211, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 287.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.2870000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.2870000, ft6  = 0.2870000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 287.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.2870000
      0x800006f8 addi    a0, a0, -1             #; a0  = 211, (wrb) a0  <-- 210
                                                #; (f:fpu) ft5  <-- 288.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 210, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 288.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.2880000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.2880000, ft6  = 0.2880000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 288.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.2880000
      0x800006f8 addi    a0, a0, -1             #; a0  = 210, (wrb) a0  <-- 209
                                                #; (f:fpu) ft5  <-- 289.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 209, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 289.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.289
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.289, ft6  = 0.289
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 289.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.289
      0x800006f8 addi    a0, a0, -1             #; a0  = 209, (wrb) a0  <-- 208
                                                #; (f:fpu) ft5  <-- 290.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 208, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 290.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.29
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.29, ft6  = 0.29
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 290.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.29
      0x800006f8 addi    a0, a0, -1             #; a0  = 208, (wrb) a0  <-- 207
                                                #; (f:fpu) ft5  <-- 291.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 207, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 291.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.291
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.291, ft6  = 0.291
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 291.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.291
      0x800006f8 addi    a0, a0, -1             #; a0  = 207, (wrb) a0  <-- 206
                                                #; (f:fpu) ft5  <-- 292.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 206, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 292.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.292
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.292, ft6  = 0.292
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 292.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.292
      0x800006f8 addi    a0, a0, -1             #; a0  = 206, (wrb) a0  <-- 205
                                                #; (f:fpu) ft5  <-- 293.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 205, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 293.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.293
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.293, ft6  = 0.293
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 293.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.293
      0x800006f8 addi    a0, a0, -1             #; a0  = 205, (wrb) a0  <-- 204
                                                #; (f:fpu) ft5  <-- 294.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 204, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 294.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.294
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.294, ft6  = 0.294
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 294.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.294
      0x800006f8 addi    a0, a0, -1             #; a0  = 204, (wrb) a0  <-- 203
                                                #; (f:fpu) ft5  <-- 295.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 203, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 295.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.295
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.295, ft6  = 0.295
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 295.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.295
      0x800006f8 addi    a0, a0, -1             #; a0  = 203, (wrb) a0  <-- 202
                                                #; (f:fpu) ft5  <-- 296.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 202, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 296.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.296
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.296, ft6  = 0.296
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 296.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.296
      0x800006f8 addi    a0, a0, -1             #; a0  = 202, (wrb) a0  <-- 201
                                                #; (f:fpu) ft5  <-- 297.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 201, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 297.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.297
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.297, ft6  = 0.297
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 297.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.297
      0x800006f8 addi    a0, a0, -1             #; a0  = 201, (wrb) a0  <-- 200
                                                #; (f:fpu) ft5  <-- 298.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 200, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 298.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.298
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.298, ft6  = 0.298
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 298.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.298
      0x800006f8 addi    a0, a0, -1             #; a0  = 200, (wrb) a0  <-- 199
                                                #; (f:fpu) ft5  <-- 299.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 199, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 299.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.299
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.299, ft6  = 0.299
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 299.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.299
      0x800006f8 addi    a0, a0, -1             #; a0  = 199, (wrb) a0  <-- 198
                                                #; (f:fpu) ft5  <-- 300.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 198, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 300.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.3
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.3, ft6  = 0.3
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 300.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.3
      0x800006f8 addi    a0, a0, -1             #; a0  = 198, (wrb) a0  <-- 197
                                                #; (f:fpu) ft5  <-- 301.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 197, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 301.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.301
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.301, ft6  = 0.301
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 301.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.301
      0x800006f8 addi    a0, a0, -1             #; a0  = 197, (wrb) a0  <-- 196
                                                #; (f:fpu) ft5  <-- 302.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 196, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 302.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.302
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.302, ft6  = 0.302
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 302.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.302
      0x800006f8 addi    a0, a0, -1             #; a0  = 196, (wrb) a0  <-- 195
                                                #; (f:fpu) ft5  <-- 303.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 195, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 303.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.303
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.303, ft6  = 0.303
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 303.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.303
      0x800006f8 addi    a0, a0, -1             #; a0  = 195, (wrb) a0  <-- 194
                                                #; (f:fpu) ft5  <-- 304.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 194, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 304.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.304
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.304, ft6  = 0.304
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 304.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.304
      0x800006f8 addi    a0, a0, -1             #; a0  = 194, (wrb) a0  <-- 193
                                                #; (f:fpu) ft5  <-- 305.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 193, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 305.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.305
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.305, ft6  = 0.305
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 305.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.305
      0x800006f8 addi    a0, a0, -1             #; a0  = 193, (wrb) a0  <-- 192
                                                #; (f:fpu) ft5  <-- 306.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 192, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 306.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.306
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.306, ft6  = 0.306
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 306.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.306
      0x800006f8 addi    a0, a0, -1             #; a0  = 192, (wrb) a0  <-- 191
                                                #; (f:fpu) ft5  <-- 307.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 191, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 307.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.307
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.307, ft6  = 0.307
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 307.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.307
      0x800006f8 addi    a0, a0, -1             #; a0  = 191, (wrb) a0  <-- 190
                                                #; (f:fpu) ft5  <-- 308.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 190, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 308.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.308
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.308, ft6  = 0.308
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 308.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.308
      0x800006f8 addi    a0, a0, -1             #; a0  = 190, (wrb) a0  <-- 189
                                                #; (f:fpu) ft5  <-- 309.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 189, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 309.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.309
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.309, ft6  = 0.309
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 309.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.309
      0x800006f8 addi    a0, a0, -1             #; a0  = 189, (wrb) a0  <-- 188
                                                #; (f:fpu) ft5  <-- 310.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 188, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 310.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.31
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.31, ft6  = 0.31
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 310.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.31
      0x800006f8 addi    a0, a0, -1             #; a0  = 188, (wrb) a0  <-- 187
                                                #; (f:fpu) ft5  <-- 311.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 187, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 311.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.311
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.311, ft6  = 0.311
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 311.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.311
      0x800006f8 addi    a0, a0, -1             #; a0  = 187, (wrb) a0  <-- 186
                                                #; (f:fpu) ft5  <-- 312.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 186, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 312.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.312
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.312, ft6  = 0.312
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 312.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.312
      0x800006f8 addi    a0, a0, -1             #; a0  = 186, (wrb) a0  <-- 185
                                                #; (f:fpu) ft5  <-- 313.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 185, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 313.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.313
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.313, ft6  = 0.313
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 313.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.313
      0x800006f8 addi    a0, a0, -1             #; a0  = 185, (wrb) a0  <-- 184
                                                #; (f:fpu) ft5  <-- 314.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 184, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 314.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.314
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.314, ft6  = 0.314
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 314.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.314
      0x800006f8 addi    a0, a0, -1             #; a0  = 184, (wrb) a0  <-- 183
                                                #; (f:fpu) ft5  <-- 315.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 183, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 315.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.315
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.315, ft6  = 0.315
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 315.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.315
      0x800006f8 addi    a0, a0, -1             #; a0  = 183, (wrb) a0  <-- 182
                                                #; (f:fpu) ft5  <-- 316.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 182, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 316.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.316
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.316, ft6  = 0.316
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 316.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.316
      0x800006f8 addi    a0, a0, -1             #; a0  = 182, (wrb) a0  <-- 181
                                                #; (f:fpu) ft5  <-- 317.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 181, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 317.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.317
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.317, ft6  = 0.317
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 317.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.317
      0x800006f8 addi    a0, a0, -1             #; a0  = 181, (wrb) a0  <-- 180
                                                #; (f:fpu) ft5  <-- 318.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 180, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 318.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.318
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.318, ft6  = 0.318
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 318.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.318
      0x800006f8 addi    a0, a0, -1             #; a0  = 180, (wrb) a0  <-- 179
                                                #; (f:fpu) ft5  <-- 319.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 179, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 319.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.319
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.319, ft6  = 0.319
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 319.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.319
      0x800006f8 addi    a0, a0, -1             #; a0  = 179, (wrb) a0  <-- 178
                                                #; (f:fpu) ft5  <-- 320.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 178, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 320.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.32
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.32, ft6  = 0.32
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 320.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.32
      0x800006f8 addi    a0, a0, -1             #; a0  = 178, (wrb) a0  <-- 177
                                                #; (f:fpu) ft5  <-- 321.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 177, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 321.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.321
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.321, ft6  = 0.321
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 321.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.321
      0x800006f8 addi    a0, a0, -1             #; a0  = 177, (wrb) a0  <-- 176
                                                #; (f:fpu) ft5  <-- 322.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 176, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 322.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.322
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.322, ft6  = 0.322
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 322.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.322
      0x800006f8 addi    a0, a0, -1             #; a0  = 176, (wrb) a0  <-- 175
                                                #; (f:fpu) ft5  <-- 323.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 175, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 323.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.323
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.323, ft6  = 0.323
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 323.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.323
      0x800006f8 addi    a0, a0, -1             #; a0  = 175, (wrb) a0  <-- 174
                                                #; (f:fpu) ft5  <-- 324.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 174, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 324.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.324
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.324, ft6  = 0.324
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 324.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.324
      0x800006f8 addi    a0, a0, -1             #; a0  = 174, (wrb) a0  <-- 173
                                                #; (f:fpu) ft5  <-- 325.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 173, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 325.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.325
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.325, ft6  = 0.325
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 325.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.325
      0x800006f8 addi    a0, a0, -1             #; a0  = 173, (wrb) a0  <-- 172
                                                #; (f:fpu) ft5  <-- 326.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 172, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 326.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.326
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.326, ft6  = 0.326
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 326.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.326
      0x800006f8 addi    a0, a0, -1             #; a0  = 172, (wrb) a0  <-- 171
                                                #; (f:fpu) ft5  <-- 327.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 171, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 327.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.327
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.327, ft6  = 0.327
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 327.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.327
      0x800006f8 addi    a0, a0, -1             #; a0  = 171, (wrb) a0  <-- 170
                                                #; (f:fpu) ft5  <-- 328.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 170, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 328.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.328
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.328, ft6  = 0.328
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 328.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.328
      0x800006f8 addi    a0, a0, -1             #; a0  = 170, (wrb) a0  <-- 169
                                                #; (f:fpu) ft5  <-- 329.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 169, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 329.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.329
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.329, ft6  = 0.329
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 329.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.329
      0x800006f8 addi    a0, a0, -1             #; a0  = 169, (wrb) a0  <-- 168
                                                #; (f:fpu) ft5  <-- 330.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 168, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 330.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.33
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.33, ft6  = 0.33
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 330.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.33
      0x800006f8 addi    a0, a0, -1             #; a0  = 168, (wrb) a0  <-- 167
                                                #; (f:fpu) ft5  <-- 331.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 167, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 331.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.331
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.331, ft6  = 0.331
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 331.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.331
      0x800006f8 addi    a0, a0, -1             #; a0  = 167, (wrb) a0  <-- 166
                                                #; (f:fpu) ft5  <-- 332.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 166, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 332.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.332
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.332, ft6  = 0.332
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 332.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.332
      0x800006f8 addi    a0, a0, -1             #; a0  = 166, (wrb) a0  <-- 165
                                                #; (f:fpu) ft5  <-- 333.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 165, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 333.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.333
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.333, ft6  = 0.333
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 333.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.333
      0x800006f8 addi    a0, a0, -1             #; a0  = 165, (wrb) a0  <-- 164
                                                #; (f:fpu) ft5  <-- 334.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 164, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 334.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.334
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.334, ft6  = 0.334
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 334.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.334
      0x800006f8 addi    a0, a0, -1             #; a0  = 164, (wrb) a0  <-- 163
                                                #; (f:fpu) ft5  <-- 335.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 163, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 335.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.335
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.335, ft6  = 0.335
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 335.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.335
      0x800006f8 addi    a0, a0, -1             #; a0  = 163, (wrb) a0  <-- 162
                                                #; (f:fpu) ft5  <-- 336.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 162, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 336.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.336
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.336, ft6  = 0.336
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 336.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.336
      0x800006f8 addi    a0, a0, -1             #; a0  = 162, (wrb) a0  <-- 161
                                                #; (f:fpu) ft5  <-- 337.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 161, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 337.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.337
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.337, ft6  = 0.337
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 337.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.337
      0x800006f8 addi    a0, a0, -1             #; a0  = 161, (wrb) a0  <-- 160
                                                #; (f:fpu) ft5  <-- 338.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 160, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 338.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.338
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.338, ft6  = 0.338
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 338.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.338
      0x800006f8 addi    a0, a0, -1             #; a0  = 160, (wrb) a0  <-- 159
                                                #; (f:fpu) ft5  <-- 339.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 159, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 339.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.339
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.339, ft6  = 0.339
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 339.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.339
      0x800006f8 addi    a0, a0, -1             #; a0  = 159, (wrb) a0  <-- 158
                                                #; (f:fpu) ft5  <-- 340.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 158, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 340.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.34
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.34, ft6  = 0.34
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 340.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.34
      0x800006f8 addi    a0, a0, -1             #; a0  = 158, (wrb) a0  <-- 157
                                                #; (f:fpu) ft5  <-- 341.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 157, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 341.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.341
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.341, ft6  = 0.341
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 341.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.341
      0x800006f8 addi    a0, a0, -1             #; a0  = 157, (wrb) a0  <-- 156
                                                #; (f:fpu) ft5  <-- 342.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 156, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 342.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.342
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.342, ft6  = 0.342
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 342.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.342
      0x800006f8 addi    a0, a0, -1             #; a0  = 156, (wrb) a0  <-- 155
                                                #; (f:fpu) ft5  <-- 343.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 155, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 343.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.343
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.343, ft6  = 0.343
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 343.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.343
      0x800006f8 addi    a0, a0, -1             #; a0  = 155, (wrb) a0  <-- 154
                                                #; (f:fpu) ft5  <-- 344.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 154, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 344.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.3440000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.3440000, ft6  = 0.3440000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 344.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.3440000
      0x800006f8 addi    a0, a0, -1             #; a0  = 154, (wrb) a0  <-- 153
                                                #; (f:fpu) ft5  <-- 345.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 153, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 345.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.3450000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.3450000, ft6  = 0.3450000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 345.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.3450000
      0x800006f8 addi    a0, a0, -1             #; a0  = 153, (wrb) a0  <-- 152
                                                #; (f:fpu) ft5  <-- 346.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 152, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 346.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.3460000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.3460000, ft6  = 0.3460000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 346.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.3460000
      0x800006f8 addi    a0, a0, -1             #; a0  = 152, (wrb) a0  <-- 151
                                                #; (f:fpu) ft5  <-- 347.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 151, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 347.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.3470000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.3470000, ft6  = 0.3470000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 347.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.3470000
      0x800006f8 addi    a0, a0, -1             #; a0  = 151, (wrb) a0  <-- 150
                                                #; (f:fpu) ft5  <-- 348.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 150, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 348.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.3480000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.3480000, ft6  = 0.3480000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 348.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.3480000
      0x800006f8 addi    a0, a0, -1             #; a0  = 150, (wrb) a0  <-- 149
                                                #; (f:fpu) ft5  <-- 349.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 149, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 349.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.3490000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.3490000, ft6  = 0.3490000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 349.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.3490000
      0x800006f8 addi    a0, a0, -1             #; a0  = 149, (wrb) a0  <-- 148
                                                #; (f:fpu) ft5  <-- 350.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 148, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 350.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.3500000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.3500000, ft6  = 0.3500000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 350.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.3500000
      0x800006f8 addi    a0, a0, -1             #; a0  = 148, (wrb) a0  <-- 147
                                                #; (f:fpu) ft5  <-- 351.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 147, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 351.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.3510000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.3510000, ft6  = 0.3510000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 351.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.3510000
      0x800006f8 addi    a0, a0, -1             #; a0  = 147, (wrb) a0  <-- 146
                                                #; (f:fpu) ft5  <-- 352.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 146, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 352.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.352
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.352, ft6  = 0.352
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 352.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.352
      0x800006f8 addi    a0, a0, -1             #; a0  = 146, (wrb) a0  <-- 145
                                                #; (f:fpu) ft5  <-- 353.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 145, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 353.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.353
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.353, ft6  = 0.353
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 353.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.353
      0x800006f8 addi    a0, a0, -1             #; a0  = 145, (wrb) a0  <-- 144
                                                #; (f:fpu) ft5  <-- 354.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 144, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 354.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.354
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.354, ft6  = 0.354
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 354.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.354
      0x800006f8 addi    a0, a0, -1             #; a0  = 144, (wrb) a0  <-- 143
                                                #; (f:fpu) ft5  <-- 355.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 143, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 355.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.355
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.355, ft6  = 0.355
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 355.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.355
      0x800006f8 addi    a0, a0, -1             #; a0  = 143, (wrb) a0  <-- 142
                                                #; (f:fpu) ft5  <-- 356.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 142, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 356.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.356
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.356, ft6  = 0.356
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 356.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.356
      0x800006f8 addi    a0, a0, -1             #; a0  = 142, (wrb) a0  <-- 141
                                                #; (f:fpu) ft5  <-- 357.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 141, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 357.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.357
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.357, ft6  = 0.357
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 357.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.357
      0x800006f8 addi    a0, a0, -1             #; a0  = 141, (wrb) a0  <-- 140
                                                #; (f:fpu) ft5  <-- 358.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 140, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 358.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.358
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.358, ft6  = 0.358
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 358.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.358
      0x800006f8 addi    a0, a0, -1             #; a0  = 140, (wrb) a0  <-- 139
                                                #; (f:fpu) ft5  <-- 359.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 139, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 359.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.359
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.359, ft6  = 0.359
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 359.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.359
      0x800006f8 addi    a0, a0, -1             #; a0  = 139, (wrb) a0  <-- 138
                                                #; (f:fpu) ft5  <-- 360.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 138, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 360.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.36
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.36, ft6  = 0.36
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 360.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.36
      0x800006f8 addi    a0, a0, -1             #; a0  = 138, (wrb) a0  <-- 137
                                                #; (f:fpu) ft5  <-- 361.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 137, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 361.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.361
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.361, ft6  = 0.361
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 361.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.361
      0x800006f8 addi    a0, a0, -1             #; a0  = 137, (wrb) a0  <-- 136
                                                #; (f:fpu) ft5  <-- 362.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 136, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 362.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.362
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.362, ft6  = 0.362
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 362.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.362
      0x800006f8 addi    a0, a0, -1             #; a0  = 136, (wrb) a0  <-- 135
                                                #; (f:fpu) ft5  <-- 363.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 135, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 363.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.363
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.363, ft6  = 0.363
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 363.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.363
      0x800006f8 addi    a0, a0, -1             #; a0  = 135, (wrb) a0  <-- 134
                                                #; (f:fpu) ft5  <-- 364.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 134, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 364.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.364
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.364, ft6  = 0.364
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 364.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.364
      0x800006f8 addi    a0, a0, -1             #; a0  = 134, (wrb) a0  <-- 133
                                                #; (f:fpu) ft5  <-- 365.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 133, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 365.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.365
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.365, ft6  = 0.365
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 365.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.365
      0x800006f8 addi    a0, a0, -1             #; a0  = 133, (wrb) a0  <-- 132
                                                #; (f:fpu) ft5  <-- 366.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 132, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 366.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.366
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.366, ft6  = 0.366
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 366.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.366
      0x800006f8 addi    a0, a0, -1             #; a0  = 132, (wrb) a0  <-- 131
                                                #; (f:fpu) ft5  <-- 367.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 131, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 367.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.367
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.367, ft6  = 0.367
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 367.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.367
      0x800006f8 addi    a0, a0, -1             #; a0  = 131, (wrb) a0  <-- 130
                                                #; (f:fpu) ft5  <-- 368.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 130, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 368.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.368
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.368, ft6  = 0.368
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 368.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.368
      0x800006f8 addi    a0, a0, -1             #; a0  = 130, (wrb) a0  <-- 129
                                                #; (f:fpu) ft5  <-- 369.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 129, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 369.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.369
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.369, ft6  = 0.369
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 369.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.369
      0x800006f8 addi    a0, a0, -1             #; a0  = 129, (wrb) a0  <-- 128
                                                #; (f:fpu) ft5  <-- 370.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 128, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 370.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.37
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.37, ft6  = 0.37
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 370.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.37
      0x800006f8 addi    a0, a0, -1             #; a0  = 128, (wrb) a0  <-- 127
                                                #; (f:fpu) ft5  <-- 371.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 127, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 371.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.371
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.371, ft6  = 0.371
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 371.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.371
      0x800006f8 addi    a0, a0, -1             #; a0  = 127, (wrb) a0  <-- 126
                                                #; (f:fpu) ft5  <-- 372.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 126, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 372.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.372
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.372, ft6  = 0.372
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 372.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.372
      0x800006f8 addi    a0, a0, -1             #; a0  = 126, (wrb) a0  <-- 125
                                                #; (f:fpu) ft5  <-- 373.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 125, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 373.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.373
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.373, ft6  = 0.373
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 373.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.373
      0x800006f8 addi    a0, a0, -1             #; a0  = 125, (wrb) a0  <-- 124
                                                #; (f:fpu) ft5  <-- 374.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 124, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 374.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.374
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.374, ft6  = 0.374
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 374.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.374
      0x800006f8 addi    a0, a0, -1             #; a0  = 124, (wrb) a0  <-- 123
                                                #; (f:fpu) ft5  <-- 375.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 123, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 375.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.375
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.375, ft6  = 0.375
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 375.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.375
      0x800006f8 addi    a0, a0, -1             #; a0  = 123, (wrb) a0  <-- 122
                                                #; (f:fpu) ft5  <-- 376.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 122, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 376.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.376
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.376, ft6  = 0.376
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 376.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.376
      0x800006f8 addi    a0, a0, -1             #; a0  = 122, (wrb) a0  <-- 121
                                                #; (f:fpu) ft5  <-- 377.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 121, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 377.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.377
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.377, ft6  = 0.377
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 377.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.377
      0x800006f8 addi    a0, a0, -1             #; a0  = 121, (wrb) a0  <-- 120
                                                #; (f:fpu) ft5  <-- 378.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 120, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 378.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.378
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.378, ft6  = 0.378
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 378.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.378
      0x800006f8 addi    a0, a0, -1             #; a0  = 120, (wrb) a0  <-- 119
                                                #; (f:fpu) ft5  <-- 379.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 119, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 379.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.379
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.379, ft6  = 0.379
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 379.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.379
      0x800006f8 addi    a0, a0, -1             #; a0  = 119, (wrb) a0  <-- 118
                                                #; (f:fpu) ft5  <-- 380.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 118, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 380.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.38
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.38, ft6  = 0.38
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 380.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.38
      0x800006f8 addi    a0, a0, -1             #; a0  = 118, (wrb) a0  <-- 117
                                                #; (f:fpu) ft5  <-- 381.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 117, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 381.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.381
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.381, ft6  = 0.381
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 381.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.381
      0x800006f8 addi    a0, a0, -1             #; a0  = 117, (wrb) a0  <-- 116
                                                #; (f:fpu) ft5  <-- 382.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 116, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 382.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.382
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.382, ft6  = 0.382
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 382.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.382
      0x800006f8 addi    a0, a0, -1             #; a0  = 116, (wrb) a0  <-- 115
                                                #; (f:fpu) ft5  <-- 383.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 115, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 383.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.383
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.383, ft6  = 0.383
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 383.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.383
      0x800006f8 addi    a0, a0, -1             #; a0  = 115, (wrb) a0  <-- 114
                                                #; (f:fpu) ft5  <-- 384.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 114, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 384.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.384
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.384, ft6  = 0.384
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 384.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.384
      0x800006f8 addi    a0, a0, -1             #; a0  = 114, (wrb) a0  <-- 113
                                                #; (f:fpu) ft5  <-- 385.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 113, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 385.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.385
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.385, ft6  = 0.385
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 385.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.385
      0x800006f8 addi    a0, a0, -1             #; a0  = 113, (wrb) a0  <-- 112
                                                #; (f:fpu) ft5  <-- 386.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 112, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 386.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.386
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.386, ft6  = 0.386
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 386.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.386
      0x800006f8 addi    a0, a0, -1             #; a0  = 112, (wrb) a0  <-- 111
                                                #; (f:fpu) ft5  <-- 387.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 111, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 387.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.387
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.387, ft6  = 0.387
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 387.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.387
      0x800006f8 addi    a0, a0, -1             #; a0  = 111, (wrb) a0  <-- 110
                                                #; (f:fpu) ft5  <-- 388.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 110, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 388.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.388
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.388, ft6  = 0.388
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 388.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.388
      0x800006f8 addi    a0, a0, -1             #; a0  = 110, (wrb) a0  <-- 109
                                                #; (f:fpu) ft5  <-- 389.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 109, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 389.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.389
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.389, ft6  = 0.389
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 389.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.389
      0x800006f8 addi    a0, a0, -1             #; a0  = 109, (wrb) a0  <-- 108
                                                #; (f:fpu) ft5  <-- 390.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 108, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 390.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.39
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.39, ft6  = 0.39
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 390.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.39
      0x800006f8 addi    a0, a0, -1             #; a0  = 108, (wrb) a0  <-- 107
                                                #; (f:fpu) ft5  <-- 391.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 107, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 391.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.391
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.391, ft6  = 0.391
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 391.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.391
      0x800006f8 addi    a0, a0, -1             #; a0  = 107, (wrb) a0  <-- 106
                                                #; (f:fpu) ft5  <-- 392.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 106, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 392.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.392
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.392, ft6  = 0.392
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 392.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.392
      0x800006f8 addi    a0, a0, -1             #; a0  = 106, (wrb) a0  <-- 105
                                                #; (f:fpu) ft5  <-- 393.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 105, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 393.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.393
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.393, ft6  = 0.393
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 393.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.393
      0x800006f8 addi    a0, a0, -1             #; a0  = 105, (wrb) a0  <-- 104
                                                #; (f:fpu) ft5  <-- 394.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 104, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 394.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.394
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.394, ft6  = 0.394
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 394.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.394
      0x800006f8 addi    a0, a0, -1             #; a0  = 104, (wrb) a0  <-- 103
                                                #; (f:fpu) ft5  <-- 395.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 103, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 395.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.395
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.395, ft6  = 0.395
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 395.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.395
      0x800006f8 addi    a0, a0, -1             #; a0  = 103, (wrb) a0  <-- 102
                                                #; (f:fpu) ft5  <-- 396.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 102, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 396.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.396
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.396, ft6  = 0.396
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 396.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.396
      0x800006f8 addi    a0, a0, -1             #; a0  = 102, (wrb) a0  <-- 101
                                                #; (f:fpu) ft5  <-- 397.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 101, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 397.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.397
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.397, ft6  = 0.397
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 397.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.397
      0x800006f8 addi    a0, a0, -1             #; a0  = 101, (wrb) a0  <-- 100
                                                #; (f:fpu) ft5  <-- 398.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 100, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 398.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.398
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.398, ft6  = 0.398
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 398.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.398
      0x800006f8 addi    a0, a0, -1             #; a0  = 100, (wrb) a0  <-- 99
                                                #; (f:fpu) ft5  <-- 399.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 99, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 399.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.399
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.399, ft6  = 0.399
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 399.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.399
      0x800006f8 addi    a0, a0, -1             #; a0  = 99, (wrb) a0  <-- 98
                                                #; (f:fpu) ft5  <-- 400.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 98, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 400.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.4
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.4, ft6  = 0.4
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 400.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.4
      0x800006f8 addi    a0, a0, -1             #; a0  = 98, (wrb) a0  <-- 97
                                                #; (f:fpu) ft5  <-- 401.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 97, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 401.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.401
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.401, ft6  = 0.401
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 401.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.401
      0x800006f8 addi    a0, a0, -1             #; a0  = 97, (wrb) a0  <-- 96
                                                #; (f:fpu) ft5  <-- 402.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 96, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 402.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.402
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.402, ft6  = 0.402
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 402.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.402
      0x800006f8 addi    a0, a0, -1             #; a0  = 96, (wrb) a0  <-- 95
                                                #; (f:fpu) ft5  <-- 403.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 95, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 403.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.403
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.403, ft6  = 0.403
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 403.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.403
      0x800006f8 addi    a0, a0, -1             #; a0  = 95, (wrb) a0  <-- 94
                                                #; (f:fpu) ft5  <-- 404.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 94, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 404.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.404
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.404, ft6  = 0.404
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 404.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.404
      0x800006f8 addi    a0, a0, -1             #; a0  = 94, (wrb) a0  <-- 93
                                                #; (f:fpu) ft5  <-- 405.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 93, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 405.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.405
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.405, ft6  = 0.405
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 405.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.405
      0x800006f8 addi    a0, a0, -1             #; a0  = 93, (wrb) a0  <-- 92
                                                #; (f:fpu) ft5  <-- 406.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 92, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 406.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.406
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.406, ft6  = 0.406
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 406.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.406
      0x800006f8 addi    a0, a0, -1             #; a0  = 92, (wrb) a0  <-- 91
                                                #; (f:fpu) ft5  <-- 407.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 91, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 407.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.4070000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.4070000, ft6  = 0.4070000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 407.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.4070000
      0x800006f8 addi    a0, a0, -1             #; a0  = 91, (wrb) a0  <-- 90
                                                #; (f:fpu) ft5  <-- 408.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 90, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 408.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.4080000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.4080000, ft6  = 0.4080000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 408.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.4080000
      0x800006f8 addi    a0, a0, -1             #; a0  = 90, (wrb) a0  <-- 89
                                                #; (f:fpu) ft5  <-- 409.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 89, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 409.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.4090000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.4090000, ft6  = 0.4090000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 409.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.4090000
      0x800006f8 addi    a0, a0, -1             #; a0  = 89, (wrb) a0  <-- 88
                                                #; (f:fpu) ft5  <-- 410.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 88, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 410.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.4100000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.4100000, ft6  = 0.4100000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 410.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.4100000
      0x800006f8 addi    a0, a0, -1             #; a0  = 88, (wrb) a0  <-- 87
                                                #; (f:fpu) ft5  <-- 411.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 87, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 411.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.4110000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.4110000, ft6  = 0.4110000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 411.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.4110000
      0x800006f8 addi    a0, a0, -1             #; a0  = 87, (wrb) a0  <-- 86
                                                #; (f:fpu) ft5  <-- 412.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 86, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 412.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.4120000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.4120000, ft6  = 0.4120000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 412.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.4120000
      0x800006f8 addi    a0, a0, -1             #; a0  = 86, (wrb) a0  <-- 85
                                                #; (f:fpu) ft5  <-- 413.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 85, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 413.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.4130000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.4130000, ft6  = 0.4130000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 413.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.4130000
      0x800006f8 addi    a0, a0, -1             #; a0  = 85, (wrb) a0  <-- 84
                                                #; (f:fpu) ft5  <-- 414.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 84, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 414.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.4140000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.4140000, ft6  = 0.4140000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 414.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.4140000
      0x800006f8 addi    a0, a0, -1             #; a0  = 84, (wrb) a0  <-- 83
                                                #; (f:fpu) ft5  <-- 415.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 83, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 415.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.4150000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.4150000, ft6  = 0.4150000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 415.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.4150000
      0x800006f8 addi    a0, a0, -1             #; a0  = 83, (wrb) a0  <-- 82
                                                #; (f:fpu) ft5  <-- 416.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 82, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 416.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.4160000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.4160000, ft6  = 0.4160000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 416.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.4160000
      0x800006f8 addi    a0, a0, -1             #; a0  = 82, (wrb) a0  <-- 81
                                                #; (f:fpu) ft5  <-- 417.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 81, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 417.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.417
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.417, ft6  = 0.417
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 417.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.417
      0x800006f8 addi    a0, a0, -1             #; a0  = 81, (wrb) a0  <-- 80
                                                #; (f:fpu) ft5  <-- 418.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 80, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 418.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.418
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.418, ft6  = 0.418
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 418.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.418
      0x800006f8 addi    a0, a0, -1             #; a0  = 80, (wrb) a0  <-- 79
                                                #; (f:fpu) ft5  <-- 419.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 79, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 419.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.419
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.419, ft6  = 0.419
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 419.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.419
      0x800006f8 addi    a0, a0, -1             #; a0  = 79, (wrb) a0  <-- 78
                                                #; (f:fpu) ft5  <-- 420.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 78, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 420.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.42
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.42, ft6  = 0.42
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 420.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.42
      0x800006f8 addi    a0, a0, -1             #; a0  = 78, (wrb) a0  <-- 77
                                                #; (f:fpu) ft5  <-- 421.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 77, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 421.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.421
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.421, ft6  = 0.421
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 421.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.421
      0x800006f8 addi    a0, a0, -1             #; a0  = 77, (wrb) a0  <-- 76
                                                #; (f:fpu) ft5  <-- 422.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 76, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 422.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.422
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.422, ft6  = 0.422
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 422.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.422
      0x800006f8 addi    a0, a0, -1             #; a0  = 76, (wrb) a0  <-- 75
                                                #; (f:fpu) ft5  <-- 423.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 75, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 423.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.423
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.423, ft6  = 0.423
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 423.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.423
      0x800006f8 addi    a0, a0, -1             #; a0  = 75, (wrb) a0  <-- 74
                                                #; (f:fpu) ft5  <-- 424.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 74, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 424.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.424
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.424, ft6  = 0.424
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 424.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.424
      0x800006f8 addi    a0, a0, -1             #; a0  = 74, (wrb) a0  <-- 73
                                                #; (f:fpu) ft5  <-- 425.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 73, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 425.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.425
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.425, ft6  = 0.425
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 425.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.425
      0x800006f8 addi    a0, a0, -1             #; a0  = 73, (wrb) a0  <-- 72
                                                #; (f:fpu) ft5  <-- 426.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 72, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 426.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.426
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.426, ft6  = 0.426
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 426.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.426
      0x800006f8 addi    a0, a0, -1             #; a0  = 72, (wrb) a0  <-- 71
                                                #; (f:fpu) ft5  <-- 427.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 71, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 427.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.427
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.427, ft6  = 0.427
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 427.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.427
      0x800006f8 addi    a0, a0, -1             #; a0  = 71, (wrb) a0  <-- 70
                                                #; (f:fpu) ft5  <-- 428.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 70, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 428.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.428
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.428, ft6  = 0.428
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 428.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.428
      0x800006f8 addi    a0, a0, -1             #; a0  = 70, (wrb) a0  <-- 69
                                                #; (f:fpu) ft5  <-- 429.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 69, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 429.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.429
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.429, ft6  = 0.429
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 429.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.429
      0x800006f8 addi    a0, a0, -1             #; a0  = 69, (wrb) a0  <-- 68
                                                #; (f:fpu) ft5  <-- 430.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 68, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 430.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.43
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.43, ft6  = 0.43
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 430.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.43
      0x800006f8 addi    a0, a0, -1             #; a0  = 68, (wrb) a0  <-- 67
                                                #; (f:fpu) ft5  <-- 431.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 67, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 431.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.431
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.431, ft6  = 0.431
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 431.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.431
      0x800006f8 addi    a0, a0, -1             #; a0  = 67, (wrb) a0  <-- 66
                                                #; (f:fpu) ft5  <-- 432.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 66, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 432.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.432
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.432, ft6  = 0.432
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 432.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.432
      0x800006f8 addi    a0, a0, -1             #; a0  = 66, (wrb) a0  <-- 65
                                                #; (f:fpu) ft5  <-- 433.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 65, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 433.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.433
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.433, ft6  = 0.433
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 433.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.433
      0x800006f8 addi    a0, a0, -1             #; a0  = 65, (wrb) a0  <-- 64
                                                #; (f:fpu) ft5  <-- 434.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 64, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 434.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.434
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.434, ft6  = 0.434
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 434.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.434
      0x800006f8 addi    a0, a0, -1             #; a0  = 64, (wrb) a0  <-- 63
                                                #; (f:fpu) ft5  <-- 435.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 63, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 435.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.435
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.435, ft6  = 0.435
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 435.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.435
      0x800006f8 addi    a0, a0, -1             #; a0  = 63, (wrb) a0  <-- 62
                                                #; (f:fpu) ft5  <-- 436.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 62, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 436.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.436
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.436, ft6  = 0.436
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 436.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.436
      0x800006f8 addi    a0, a0, -1             #; a0  = 62, (wrb) a0  <-- 61
                                                #; (f:fpu) ft5  <-- 437.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 61, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 437.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.437
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.437, ft6  = 0.437
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 437.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.437
      0x800006f8 addi    a0, a0, -1             #; a0  = 61, (wrb) a0  <-- 60
                                                #; (f:fpu) ft5  <-- 438.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 60, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 438.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.438
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.438, ft6  = 0.438
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 438.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.438
      0x800006f8 addi    a0, a0, -1             #; a0  = 60, (wrb) a0  <-- 59
                                                #; (f:fpu) ft5  <-- 439.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 59, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 439.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.439
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.439, ft6  = 0.439
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 439.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.439
      0x800006f8 addi    a0, a0, -1             #; a0  = 59, (wrb) a0  <-- 58
                                                #; (f:fpu) ft5  <-- 440.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 58, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 440.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.44
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.44, ft6  = 0.44
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 440.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.44
      0x800006f8 addi    a0, a0, -1             #; a0  = 58, (wrb) a0  <-- 57
                                                #; (f:fpu) ft5  <-- 441.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 57, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 441.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.441
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.441, ft6  = 0.441
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 441.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.441
      0x800006f8 addi    a0, a0, -1             #; a0  = 57, (wrb) a0  <-- 56
                                                #; (f:fpu) ft5  <-- 442.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 56, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 442.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.442
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.442, ft6  = 0.442
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 442.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.442
      0x800006f8 addi    a0, a0, -1             #; a0  = 56, (wrb) a0  <-- 55
                                                #; (f:fpu) ft5  <-- 443.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 55, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 443.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.443
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.443, ft6  = 0.443
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 443.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.443
      0x800006f8 addi    a0, a0, -1             #; a0  = 55, (wrb) a0  <-- 54
                                                #; (f:fpu) ft5  <-- 444.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 54, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 444.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.444
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.444, ft6  = 0.444
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 444.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.444
      0x800006f8 addi    a0, a0, -1             #; a0  = 54, (wrb) a0  <-- 53
                                                #; (f:fpu) ft5  <-- 445.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 53, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 445.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.445
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.445, ft6  = 0.445
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 445.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.445
      0x800006f8 addi    a0, a0, -1             #; a0  = 53, (wrb) a0  <-- 52
                                                #; (f:fpu) ft5  <-- 446.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 52, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 446.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.446
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.446, ft6  = 0.446
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 446.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.446
      0x800006f8 addi    a0, a0, -1             #; a0  = 52, (wrb) a0  <-- 51
                                                #; (f:fpu) ft5  <-- 447.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 51, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 447.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.447
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.447, ft6  = 0.447
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 447.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.447
      0x800006f8 addi    a0, a0, -1             #; a0  = 51, (wrb) a0  <-- 50
                                                #; (f:fpu) ft5  <-- 448.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 50, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 448.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.448
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.448, ft6  = 0.448
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 448.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.448
      0x800006f8 addi    a0, a0, -1             #; a0  = 50, (wrb) a0  <-- 49
                                                #; (f:fpu) ft5  <-- 449.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 49, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 449.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.449
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.449, ft6  = 0.449
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 449.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.449
      0x800006f8 addi    a0, a0, -1             #; a0  = 49, (wrb) a0  <-- 48
                                                #; (f:fpu) ft5  <-- 450.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 48, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 450.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.45
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.45, ft6  = 0.45
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 450.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.45
      0x800006f8 addi    a0, a0, -1             #; a0  = 48, (wrb) a0  <-- 47
                                                #; (f:fpu) ft5  <-- 451.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 47, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 451.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.451
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.451, ft6  = 0.451
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 451.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.451
      0x800006f8 addi    a0, a0, -1             #; a0  = 47, (wrb) a0  <-- 46
                                                #; (f:fpu) ft5  <-- 452.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 46, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 452.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.452
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.452, ft6  = 0.452
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 452.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.452
      0x800006f8 addi    a0, a0, -1             #; a0  = 46, (wrb) a0  <-- 45
                                                #; (f:fpu) ft5  <-- 453.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 45, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 453.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.453
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.453, ft6  = 0.453
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 453.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.453
      0x800006f8 addi    a0, a0, -1             #; a0  = 45, (wrb) a0  <-- 44
                                                #; (f:fpu) ft5  <-- 454.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 44, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 454.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.454
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.454, ft6  = 0.454
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 454.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.454
      0x800006f8 addi    a0, a0, -1             #; a0  = 44, (wrb) a0  <-- 43
                                                #; (f:fpu) ft5  <-- 455.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 43, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 455.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.455
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.455, ft6  = 0.455
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 455.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.455
      0x800006f8 addi    a0, a0, -1             #; a0  = 43, (wrb) a0  <-- 42
                                                #; (f:fpu) ft5  <-- 456.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 42, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 456.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.456
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.456, ft6  = 0.456
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 456.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.456
      0x800006f8 addi    a0, a0, -1             #; a0  = 42, (wrb) a0  <-- 41
                                                #; (f:fpu) ft5  <-- 457.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 41, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 457.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.457
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.457, ft6  = 0.457
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 457.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.457
      0x800006f8 addi    a0, a0, -1             #; a0  = 41, (wrb) a0  <-- 40
                                                #; (f:fpu) ft5  <-- 458.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 40, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 458.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.458
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.458, ft6  = 0.458
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 458.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.458
      0x800006f8 addi    a0, a0, -1             #; a0  = 40, (wrb) a0  <-- 39
                                                #; (f:fpu) ft5  <-- 459.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 39, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 459.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.459
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.459, ft6  = 0.459
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 459.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.459
      0x800006f8 addi    a0, a0, -1             #; a0  = 39, (wrb) a0  <-- 38
                                                #; (f:fpu) ft5  <-- 460.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 38, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 460.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.46
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.46, ft6  = 0.46
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 460.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.46
      0x800006f8 addi    a0, a0, -1             #; a0  = 38, (wrb) a0  <-- 37
                                                #; (f:fpu) ft5  <-- 461.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 37, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 461.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.461
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.461, ft6  = 0.461
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 461.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.461
      0x800006f8 addi    a0, a0, -1             #; a0  = 37, (wrb) a0  <-- 36
                                                #; (f:fpu) ft5  <-- 462.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 36, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 462.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.462
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.462, ft6  = 0.462
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 462.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.462
      0x800006f8 addi    a0, a0, -1             #; a0  = 36, (wrb) a0  <-- 35
                                                #; (f:fpu) ft5  <-- 463.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 35, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 463.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.463
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.463, ft6  = 0.463
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 463.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.463
      0x800006f8 addi    a0, a0, -1             #; a0  = 35, (wrb) a0  <-- 34
                                                #; (f:fpu) ft5  <-- 464.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 34, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 464.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.464
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.464, ft6  = 0.464
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 464.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.464
      0x800006f8 addi    a0, a0, -1             #; a0  = 34, (wrb) a0  <-- 33
                                                #; (f:fpu) ft5  <-- 465.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 33, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 465.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.465
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.465, ft6  = 0.465
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 465.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.465
      0x800006f8 addi    a0, a0, -1             #; a0  = 33, (wrb) a0  <-- 32
                                                #; (f:fpu) ft5  <-- 466.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 32, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 466.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.466
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.466, ft6  = 0.466
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 466.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.466
      0x800006f8 addi    a0, a0, -1             #; a0  = 32, (wrb) a0  <-- 31
                                                #; (f:fpu) ft5  <-- 467.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 31, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 467.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.467
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.467, ft6  = 0.467
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 467.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.467
      0x800006f8 addi    a0, a0, -1             #; a0  = 31, (wrb) a0  <-- 30
                                                #; (f:fpu) ft5  <-- 468.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 30, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 468.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.468
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.468, ft6  = 0.468
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 468.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.468
      0x800006f8 addi    a0, a0, -1             #; a0  = 30, (wrb) a0  <-- 29
                                                #; (f:fpu) ft5  <-- 469.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 29, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 469.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.4690000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.4690000, ft6  = 0.4690000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 469.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.4690000
      0x800006f8 addi    a0, a0, -1             #; a0  = 29, (wrb) a0  <-- 28
                                                #; (f:fpu) ft5  <-- 470.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 28, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 470.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.4700000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.4700000, ft6  = 0.4700000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 470.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.4700000
      0x800006f8 addi    a0, a0, -1             #; a0  = 28, (wrb) a0  <-- 27
                                                #; (f:fpu) ft5  <-- 471.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 27, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 471.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.4710000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.4710000, ft6  = 0.4710000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 471.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.4710000
      0x800006f8 addi    a0, a0, -1             #; a0  = 27, (wrb) a0  <-- 26
                                                #; (f:fpu) ft5  <-- 472.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 26, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 472.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.4720000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.4720000, ft6  = 0.4720000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 472.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.4720000
      0x800006f8 addi    a0, a0, -1             #; a0  = 26, (wrb) a0  <-- 25
                                                #; (f:fpu) ft5  <-- 473.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 25, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 473.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.4730000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.4730000, ft6  = 0.4730000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 473.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.4730000
      0x800006f8 addi    a0, a0, -1             #; a0  = 25, (wrb) a0  <-- 24
                                                #; (f:fpu) ft5  <-- 474.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 24, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 474.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.4740000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.4740000, ft6  = 0.4740000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 474.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.4740000
      0x800006f8 addi    a0, a0, -1             #; a0  = 24, (wrb) a0  <-- 23
                                                #; (f:fpu) ft5  <-- 475.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 23, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 475.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.4750000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.4750000, ft6  = 0.4750000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 475.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.4750000
      0x800006f8 addi    a0, a0, -1             #; a0  = 23, (wrb) a0  <-- 22
                                                #; (f:fpu) ft5  <-- 476.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 22, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 476.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.4760000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.4760000, ft6  = 0.4760000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 476.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.4760000
      0x800006f8 addi    a0, a0, -1             #; a0  = 22, (wrb) a0  <-- 21
                                                #; (f:fpu) ft5  <-- 477.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 21, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 477.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.4770000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.4770000, ft6  = 0.4770000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 477.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.4770000
      0x800006f8 addi    a0, a0, -1             #; a0  = 21, (wrb) a0  <-- 20
                                                #; (f:fpu) ft5  <-- 478.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 20, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 478.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.4780000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.4780000, ft6  = 0.4780000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 478.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.4780000
      0x800006f8 addi    a0, a0, -1             #; a0  = 20, (wrb) a0  <-- 19
                                                #; (f:fpu) ft5  <-- 479.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 19, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 479.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.4790000
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.4790000, ft6  = 0.4790000
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 479.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.4790000
      0x800006f8 addi    a0, a0, -1             #; a0  = 19, (wrb) a0  <-- 18
                                                #; (f:fpu) ft5  <-- 480.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 18, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 480.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.48
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.48, ft6  = 0.48
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 480.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.48
      0x800006f8 addi    a0, a0, -1             #; a0  = 18, (wrb) a0  <-- 17
                                                #; (f:fpu) ft5  <-- 481.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 17, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 481.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.481
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.481, ft6  = 0.481
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 481.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.481
      0x800006f8 addi    a0, a0, -1             #; a0  = 17, (wrb) a0  <-- 16
                                                #; (f:fpu) ft5  <-- 482.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 16, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 482.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.482
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.482, ft6  = 0.482
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 482.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.482
      0x800006f8 addi    a0, a0, -1             #; a0  = 16, (wrb) a0  <-- 15
                                                #; (f:fpu) ft5  <-- 483.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 15, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 483.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.483
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.483, ft6  = 0.483
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 483.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.483
      0x800006f8 addi    a0, a0, -1             #; a0  = 15, (wrb) a0  <-- 14
                                                #; (f:fpu) ft5  <-- 484.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 14, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 484.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.484
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.484, ft6  = 0.484
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 484.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.484
      0x800006f8 addi    a0, a0, -1             #; a0  = 14, (wrb) a0  <-- 13
                                                #; (f:fpu) ft5  <-- 485.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 13, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 485.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.485
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.485, ft6  = 0.485
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 485.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.485
      0x800006f8 addi    a0, a0, -1             #; a0  = 13, (wrb) a0  <-- 12
                                                #; (f:fpu) ft5  <-- 486.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 12, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 486.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.486
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.486, ft6  = 0.486
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 486.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.486
      0x800006f8 addi    a0, a0, -1             #; a0  = 12, (wrb) a0  <-- 11
                                                #; (f:fpu) ft5  <-- 487.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 11, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 487.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.487
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.487, ft6  = 0.487
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 487.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.487
      0x800006f8 addi    a0, a0, -1             #; a0  = 11, (wrb) a0  <-- 10
                                                #; (f:fpu) ft5  <-- 488.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 10, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 488.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.488
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.488, ft6  = 0.488
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 488.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.488
      0x800006f8 addi    a0, a0, -1             #; a0  = 10, (wrb) a0  <-- 9
                                                #; (f:fpu) ft5  <-- 489.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 9, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 489.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.489
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.489, ft6  = 0.489
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 489.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.489
      0x800006f8 addi    a0, a0, -1             #; a0  = 9, (wrb) a0  <-- 8
                                                #; (f:fpu) ft5  <-- 490.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 8, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 490.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.49
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.49, ft6  = 0.49
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 490.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.49
      0x800006f8 addi    a0, a0, -1             #; a0  = 8, (wrb) a0  <-- 7
                                                #; (f:fpu) ft5  <-- 491.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 7, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 491.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.491
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.491, ft6  = 0.491
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 491.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.491
      0x800006f8 addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
                                                #; (f:fpu) ft5  <-- 492.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 6, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 492.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.492
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.492, ft6  = 0.492
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 492.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.492
      0x800006f8 addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
                                                #; (f:fpu) ft5  <-- 493.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 5, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 493.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.493
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.493, ft6  = 0.493
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 493.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.493
      0x800006f8 addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
                                                #; (f:fpu) ft5  <-- 494.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 4, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 494.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.494
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.494, ft6  = 0.494
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 494.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.494
      0x800006f8 addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
                                                #; (f:fpu) ft5  <-- 495.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 3, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 495.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.495
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.495, ft6  = 0.495
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 495.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.495
      0x800006f8 addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
                                                #; (f:fpu) ft5  <-- 496.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 2, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 496.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.496
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.496, ft6  = 0.496
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 496.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.496
      0x800006f8 addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
                                                #; (f:fpu) ft5  <-- 497.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 1, taken, goto 0x800006f0
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 497.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.497
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.497, ft6  = 0.497
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 497.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.497
      0x800006f8 addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
                                                #; (f:fpu) ft5  <-- 498.0
      0x80000700 bnez    a0, pc - 16            #; a0  = 0, not taken
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 498.0, ft3  = 0.001
; init_data (test_size.c:0)
;  in main (test_size.c:40)
      0x80000708 j       pc + 0x40              #; goto 0x80000748
                                                #; (f:fpu) ft6  <-- 0.498
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.498, ft6  = 0.498
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 498.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.498
                                                #; (f:fpu) ft5  <-- 499.0
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 499.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.499
; main (test_size.c:0)
      0x80000748 li      t6, 0                  #; (wrb) t6  <-- 0
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.499, ft6  = 0.499
; sum (test_size.c:13)
;  in main (test_size.c:42)
      0x8000074c addi    a2, t3, 168            #; t3  = 0x00100000, (wrb) a2  <-- 0x001000a8
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 499.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.499
                                                #; (f:fpu) ft5  <-- 500.0
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 500.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.5
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.5, ft6  = 0.5
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 500.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.5
; sum (test_size.c:13)
;  in main (test_size.c:42)
      0x80000754 li      t5, 1344               #; (wrb) t5  <-- 1344
                                                #; (f:fpu) ft5  <-- 501.0
      0x80000758 lui     a0, 0x120              #; (wrb) a0  <-- 0x00120000
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 501.0, ft3  = 0.001
      0x8000075c addi    t4, a0, -1335          #; a0  = 0x00120000, (wrb) t4  <-- 0x0011fac9
                                                #; (f:fpu) ft6  <-- 0.501
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.501, ft6  = 0.501
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 501.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.501
                                                #; (f:fpu) ft5  <-- 502.0
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 502.0, ft3  = 0.001
; sum (test_size.c:13)
;  in main (test_size.c:42)
      0x80000760 li      t1, 8                  #; (wrb) t1  <-- 8
      0x80000764 li      a6, 6                  #; (wrb) a6  <-- 6
      0x80000768 li      a7, 5                  #; (wrb) a7  <-- 5
                                                #; (f:fpu) ft6  <-- 0.502
      0x8000076c li      t0, -328               #; (wrb) t0  <-- -328
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.502, ft6  = 0.502
; init_data (test_size.c:6)
;  in main (test_size.c:40)
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 502.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.502
                                                #; (f:fpu) ft5  <-- 503.0
; init_data (test_size.c:7)
;  in main (test_size.c:40)
      0x800006f0 fmul.d  ft6, ft5, ft3          #; ft5  = 503.0, ft3  = 0.001
                                                #; (f:fpu) ft6  <-- 0.503
; sum (test_size.c:13)
;  in main (test_size.c:42)
      0x80000770 li      a5, 4                  #; (wrb) a5  <-- 4
      0x800006f4 fsgnj.d ft0, ft6, ft6          #; ft6  = 0.503, ft6  = 0.503
      0x80000774 li      t2, 3                  #; (wrb) t2  <-- 3
      0x800006fc fadd.d  ft5, ft5, ft4          #; ft5  = 503.0, ft4  = 1.0, (f:fpu) ft0  <-- 0.503
      0x80000778 j       pc + 0x14              #; goto 0x8000078c
      0x80000704 csrrci  a0, ssr, 1             #; 
      0x80000750 fcvt.d.w ft3, zero             #; ac1  = 0
                                                #; (f:fpu) ft3  <-- 0.0
                                                #; (f:fpu) ft5  <-- 504.0
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x8000078c mul     a0, t6, t5             #; t6  = 0, t5  = 1344
      0x80000790 add     a4, t3, a0             #; t3  = 0x00100000, a0  = 0, (wrb) a4  <-- 0x00100000
; sum (test_size.c:14)
;  in main (test_size.c:42)
      0x80000794 srli    a3, a4, 20             #; a4  = 0x00100000, (wrb) a3  <-- 1
      0x80000798 snez    a3, a3                 #; a3  = 1, (wrb) a3  <-- 1
      0x8000079c sltu    a1, a4, t4             #; a4  = 0x00100000, t4  = 0x0011fac9, (wrb) a1  <-- 1
      0x800007a0 and     a1, a3, a1             #; a3  = 1, a1  = 1, (wrb) a1  <-- 1
      0x800007a4 beqz    a1, pc + 280           #; a1  = 1, not taken
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800007a8 li      a0, 0                  #; (wrb) a0  <-- 0
; sum (test_size.c:14)
;  in main (test_size.c:42)
      0x800007ac li      a1, 64                 #; (wrb) a1  <-- 64
      0x800007b0 scfgw   a6, a1                 #; a6  = 6, a1  = 64
      0x800007b4 li      a1, 192                #; (wrb) a1  <-- 192
      0x800007b8 scfgw   t1, a1                 #; t1  = 8, a1  = 192
      0x800007bc li      a1, 96                 #; (wrb) a1  <-- 96
      0x800007c0 scfgw   a7, a1                 #; a7  = 5, a1  = 96
      0x800007c4 li      a1, 224                #; (wrb) a1  <-- 224
      0x800007c8 scfgw   t1, a1                 #; t1  = 8, a1  = 224
      0x800007cc li      a1, 128                #; (wrb) a1  <-- 128
      0x800007d0 scfgw   a5, a1                 #; a5  = 4, a1  = 128
      0x800007d4 li      a1, 256                #; (wrb) a1  <-- 256
      0x800007d8 scfgw   t0, a1                 #; t0  = -328, a1  = 256
      0x800007dc li      a1, 160                #; (wrb) a1  <-- 160
      0x800007e0 scfgw   t2, a1                 #; t2  = 3, a1  = 160
      0x800007e4 li      a1, 288                #; (wrb) a1  <-- 288
      0x800007e8 scfgw   t1, a1                 #; t1  = 8, a1  = 288
      0x800007ec li      a1, 32                 #; (wrb) a1  <-- 32
      0x800007f0 scfgw   zero, a1               #; a1  = 32
      0x800007f4 scfgwi  a4, 864                #; a4  = 0x00100000
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800007fc li      a4, 5                  #; (wrb) a4  <-- 5
      0x800007f8 csrrsi  a1, ssr, 1             #; 
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft3  <-- 0.0
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 0.0, ft0  = 0.001
                                                #; (f:fpu) ft3  <-- 0.001
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 0.001, ft0  = 0.002
                                                #; (f:fpu) ft3  <-- 0.003
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 0.003, ft0  = 0.003
                                                #; (f:fpu) ft3  <-- 0.006
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 0.006, ft0  = 0.004
                                                #; (f:fpu) ft3  <-- 0.01
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 0.01, ft0  = 0.005
                                                #; (f:fpu) ft3  <-- 0.015
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 0.015, ft0  = 0.006
                                                #; (f:fpu) ft3  <-- 0.0210000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 0.0210000, ft0  = 0.007
                                                #; (f:fpu) ft3  <-- 0.0280000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 0.0280000, ft0  = 0.008
                                                #; (f:fpu) ft3  <-- 0.036
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 0.036, ft0  = 0.0090000
                                                #; (f:fpu) ft3  <-- 0.045
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 0.045, ft0  = 0.01
                                                #; (f:fpu) ft3  <-- 0.055
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 0.055, ft0  = 0.011
                                                #; (f:fpu) ft3  <-- 0.066
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 0.066, ft0  = 0.012
                                                #; (f:fpu) ft3  <-- 0.078
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 0.078, ft0  = 0.0130000
                                                #; (f:fpu) ft3  <-- 0.091
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 0.091, ft0  = 0.014
                                                #; (f:fpu) ft3  <-- 0.105
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 0.105, ft0  = 0.015
                                                #; (f:fpu) ft3  <-- 0.12
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 0.12, ft0  = 0.016
                                                #; (f:fpu) ft3  <-- 0.136
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 0.136, ft0  = 0.017
                                                #; (f:fpu) ft3  <-- 0.1530000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 0.1530000, ft0  = 0.0180000
                                                #; (f:fpu) ft3  <-- 0.1710000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 0.1710000, ft0  = 0.019
                                                #; (f:fpu) ft3  <-- 0.1900000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 0.1900000, ft0  = 0.02
                                                #; (f:fpu) ft3  <-- 0.2100000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 0.2100000, ft0  = 0.021
                                                #; (f:fpu) ft3  <-- 0.231
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 0.231, ft0  = 0.022
                                                #; (f:fpu) ft3  <-- 0.253
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 0.253, ft0  = 0.023
                                                #; (f:fpu) ft3  <-- 0.276
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 0.276, ft0  = 0.024
                                                #; (f:fpu) ft3  <-- 0.3000000
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 0.3000000, ft0  = 0.025
                                                #; (f:fpu) ft3  <-- 0.3250000
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 0.3250000, ft0  = 0.0260000
                                                #; (f:fpu) ft3  <-- 0.3510000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 0.3510000, ft0  = 0.027
                                                #; (f:fpu) ft3  <-- 0.3780000
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 0.3780000, ft0  = 0.028
                                                #; (f:fpu) ft3  <-- 0.4060000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 0.4060000, ft0  = 0.029
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 5, (wrb) a4  <-- 4
                                                #; (f:fpu) ft3  <-- 0.4350000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 0.4350000, ft0  = 0.03
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 4, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 0.4650000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 0.4650000, ft0  = 0.031
                                                #; (f:fpu) ft3  <-- 0.4960000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 0.4960000, ft0  = 0.032
                                                #; (f:fpu) ft3  <-- 0.5280000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 0.5280000, ft0  = 0.033
                                                #; (f:fpu) ft3  <-- 0.5610000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 0.5610000, ft0  = 0.034
                                                #; (f:fpu) ft3  <-- 0.5950000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 0.5950000, ft0  = 0.035
                                                #; (f:fpu) ft3  <-- 0.6300000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 0.6300000, ft0  = 0.0360000
                                                #; (f:fpu) ft3  <-- 0.6660000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 0.6660000, ft0  = 0.037
                                                #; (f:fpu) ft3  <-- 0.7030000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 0.7030000, ft0  = 0.038
                                                #; (f:fpu) ft3  <-- 0.7410000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 0.7410000, ft0  = 0.039
                                                #; (f:fpu) ft3  <-- 0.7800000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 0.7800000, ft0  = 0.04
                                                #; (f:fpu) ft3  <-- 0.8200000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 0.8200000, ft0  = 0.041
                                                #; (f:fpu) ft3  <-- 0.8610000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.8610000
                                                #; (f:fpu) ft3  <-- 0.8610000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 0.8610000, ft0  = 0.001
                                                #; (f:fpu) ft3  <-- 0.8620000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 0.8620000, ft0  = 0.002
                                                #; (f:fpu) ft3  <-- 0.8640000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 0.8640000, ft0  = 0.003
                                                #; (f:fpu) ft3  <-- 0.8670000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 0.8670000, ft0  = 0.004
                                                #; (f:fpu) ft3  <-- 0.8710000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 0.8710000, ft0  = 0.005
                                                #; (f:fpu) ft3  <-- 0.8760000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 0.8760000, ft0  = 0.006
                                                #; (f:fpu) ft3  <-- 0.8820000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 0.8820000, ft0  = 0.007
                                                #; (f:fpu) ft3  <-- 0.8890000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 0.8890000, ft0  = 0.008
                                                #; (f:fpu) ft3  <-- 0.8970000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 0.8970000, ft0  = 0.0090000
                                                #; (f:fpu) ft3  <-- 0.9060000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 0.9060000, ft0  = 0.01
                                                #; (f:fpu) ft3  <-- 0.9160000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 0.9160000, ft0  = 0.011
                                                #; (f:fpu) ft3  <-- 0.9270000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 0.9270000, ft0  = 0.012
                                                #; (f:fpu) ft3  <-- 0.9390000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 0.9390000, ft0  = 0.0130000
                                                #; (f:fpu) ft3  <-- 0.9520000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 0.9520000, ft0  = 0.014
                                                #; (f:fpu) ft3  <-- 0.9660000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 0.9660000, ft0  = 0.015
                                                #; (f:fpu) ft3  <-- 0.9810000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 0.9810000, ft0  = 0.016
                                                #; (f:fpu) ft3  <-- 0.9970000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 0.9970000, ft0  = 0.017
                                                #; (f:fpu) ft3  <-- 1.0140000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 1.0140000, ft0  = 0.0180000
                                                #; (f:fpu) ft3  <-- 1.0320000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 1.0320000, ft0  = 0.019
                                                #; (f:fpu) ft3  <-- 1.0510000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 1.0510000, ft0  = 0.02
                                                #; (f:fpu) ft3  <-- 1.0710000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 1.0710000, ft0  = 0.021
                                                #; (f:fpu) ft3  <-- 1.0920000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 1.0920000, ft0  = 0.022
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 4, (wrb) a4  <-- 3
                                                #; (f:fpu) ft3  <-- 1.1140000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 1.1140000, ft0  = 0.023
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 3, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 1.1370000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 1.1370000, ft0  = 0.024
                                                #; (f:fpu) ft3  <-- 1.1610000
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 1.1610000, ft0  = 0.025
                                                #; (f:fpu) ft3  <-- 1.1860000
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 1.1860000, ft0  = 0.0260000
                                                #; (f:fpu) ft3  <-- 1.2120000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 1.2120000, ft0  = 0.027
                                                #; (f:fpu) ft3  <-- 1.2390000
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 1.2390000, ft0  = 0.028
                                                #; (f:fpu) ft3  <-- 1.2670000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 1.2670000, ft0  = 0.029
                                                #; (f:fpu) ft3  <-- 1.2960000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 1.2960000, ft0  = 0.03
                                                #; (f:fpu) ft3  <-- 1.3260000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 1.3260000, ft0  = 0.031
                                                #; (f:fpu) ft3  <-- 1.3570000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 1.3570000, ft0  = 0.032
                                                #; (f:fpu) ft3  <-- 1.3890000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 1.3890000, ft0  = 0.033
                                                #; (f:fpu) ft3  <-- 1.4220000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 1.4220000, ft0  = 0.034
                                                #; (f:fpu) ft3  <-- 1.4560000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 1.4560000, ft0  = 0.035
                                                #; (f:fpu) ft3  <-- 1.491
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 1.491, ft0  = 0.0360000
                                                #; (f:fpu) ft3  <-- 1.5270000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 1.5270000, ft0  = 0.037
                                                #; (f:fpu) ft3  <-- 1.564
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 1.564, ft0  = 0.038
                                                #; (f:fpu) ft3  <-- 1.602
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 1.602, ft0  = 0.039
                                                #; (f:fpu) ft3  <-- 1.641
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 1.641, ft0  = 0.04
                                                #; (f:fpu) ft3  <-- 1.681
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 1.681, ft0  = 0.041
                                                #; (f:fpu) ft3  <-- 1.722
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 1.722
                                                #; (f:fpu) ft3  <-- 1.722
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 1.722, ft0  = 0.001
                                                #; (f:fpu) ft3  <-- 1.7230000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 1.7230000, ft0  = 0.002
                                                #; (f:fpu) ft3  <-- 1.7250000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 1.7250000, ft0  = 0.003
                                                #; (f:fpu) ft3  <-- 1.7280000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 1.7280000, ft0  = 0.004
                                                #; (f:fpu) ft3  <-- 1.7320000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 1.7320000, ft0  = 0.005
                                                #; (f:fpu) ft3  <-- 1.7370000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 1.7370000, ft0  = 0.006
                                                #; (f:fpu) ft3  <-- 1.7430000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 1.7430000, ft0  = 0.007
                                                #; (f:fpu) ft3  <-- 1.7500000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 1.7500000, ft0  = 0.008
                                                #; (f:fpu) ft3  <-- 1.7580000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 1.7580000, ft0  = 0.0090000
                                                #; (f:fpu) ft3  <-- 1.7670000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 1.7670000, ft0  = 0.01
                                                #; (f:fpu) ft3  <-- 1.7770000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 1.7770000, ft0  = 0.011
                                                #; (f:fpu) ft3  <-- 1.7880000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 1.7880000, ft0  = 0.012
                                                #; (f:fpu) ft3  <-- 1.8000000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 1.8000000, ft0  = 0.0130000
                                                #; (f:fpu) ft3  <-- 1.8130000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 1.8130000, ft0  = 0.014
                                                #; (f:fpu) ft3  <-- 1.8270000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 1.8270000, ft0  = 0.015
                                                #; (f:fpu) ft3  <-- 1.8420000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 1.8420000, ft0  = 0.016
                                                #; (f:fpu) ft3  <-- 1.8580000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 1.8580000, ft0  = 0.017
                                                #; (f:fpu) ft3  <-- 1.8750000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 1.8750000, ft0  = 0.0180000
                                                #; (f:fpu) ft3  <-- 1.8930000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 1.8930000, ft0  = 0.019
                                                #; (f:fpu) ft3  <-- 1.9120000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 1.9120000, ft0  = 0.02
                                                #; (f:fpu) ft3  <-- 1.9320000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 1.9320000, ft0  = 0.021
                                                #; (f:fpu) ft3  <-- 1.9530000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 1.9530000, ft0  = 0.022
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 3, (wrb) a4  <-- 2
                                                #; (f:fpu) ft3  <-- 1.9750000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 1.9750000, ft0  = 0.023
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 2, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 1.9980000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 1.9980000, ft0  = 0.024
                                                #; (f:fpu) ft3  <-- 2.0220000
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 2.0220000, ft0  = 0.025
                                                #; (f:fpu) ft3  <-- 2.0470000
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 2.0470000, ft0  = 0.0260000
                                                #; (f:fpu) ft3  <-- 2.0730000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 2.0730000, ft0  = 0.027
                                                #; (f:fpu) ft3  <-- 2.1000000
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 2.1000000, ft0  = 0.028
                                                #; (f:fpu) ft3  <-- 2.1280000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 2.1280000, ft0  = 0.029
                                                #; (f:fpu) ft3  <-- 2.1570000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 2.1570000, ft0  = 0.03
                                                #; (f:fpu) ft3  <-- 2.1870000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 2.1870000, ft0  = 0.031
                                                #; (f:fpu) ft3  <-- 2.2180000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 2.2180000, ft0  = 0.032
                                                #; (f:fpu) ft3  <-- 2.2500000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 2.2500000, ft0  = 0.033
                                                #; (f:fpu) ft3  <-- 2.2830000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 2.2830000, ft0  = 0.034
                                                #; (f:fpu) ft3  <-- 2.3170000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 2.3170000, ft0  = 0.035
                                                #; (f:fpu) ft3  <-- 2.3520000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 2.3520000, ft0  = 0.0360000
                                                #; (f:fpu) ft3  <-- 2.3880000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 2.3880000, ft0  = 0.037
                                                #; (f:fpu) ft3  <-- 2.4250000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 2.4250000, ft0  = 0.038
                                                #; (f:fpu) ft3  <-- 2.4630000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 2.4630000, ft0  = 0.039
                                                #; (f:fpu) ft3  <-- 2.5020000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 2.5020000, ft0  = 0.04
                                                #; (f:fpu) ft3  <-- 2.5420000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 2.5420000, ft0  = 0.041
                                                #; (f:fpu) ft3  <-- 2.5830000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 2.5830000
                                                #; (f:fpu) ft3  <-- 2.5830000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 2.5830000, ft0  = 0.001
                                                #; (f:fpu) ft3  <-- 2.5840000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 2.5840000, ft0  = 0.002
                                                #; (f:fpu) ft3  <-- 2.5860000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 2.5860000, ft0  = 0.003
                                                #; (f:fpu) ft3  <-- 2.5890000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 2.5890000, ft0  = 0.004
                                                #; (f:fpu) ft3  <-- 2.5930000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 2.5930000, ft0  = 0.005
                                                #; (f:fpu) ft3  <-- 2.5980000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 2.5980000, ft0  = 0.006
                                                #; (f:fpu) ft3  <-- 2.6040000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 2.6040000, ft0  = 0.007
                                                #; (f:fpu) ft3  <-- 2.6110000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 2.6110000, ft0  = 0.008
                                                #; (f:fpu) ft3  <-- 2.6190000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 2.6190000, ft0  = 0.0090000
                                                #; (f:fpu) ft3  <-- 2.6280000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 2.6280000, ft0  = 0.01
                                                #; (f:fpu) ft3  <-- 2.6380000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 2.6380000, ft0  = 0.011
                                                #; (f:fpu) ft3  <-- 2.6490000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 2.6490000, ft0  = 0.012
                                                #; (f:fpu) ft3  <-- 2.6610000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 2.6610000, ft0  = 0.0130000
                                                #; (f:fpu) ft3  <-- 2.6740000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 2.6740000, ft0  = 0.014
                                                #; (f:fpu) ft3  <-- 2.6880000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 2.6880000, ft0  = 0.015
                                                #; (f:fpu) ft3  <-- 2.7030000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 2.7030000, ft0  = 0.016
                                                #; (f:fpu) ft3  <-- 2.7190000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 2.7190000, ft0  = 0.017
                                                #; (f:fpu) ft3  <-- 2.7360000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 2.7360000, ft0  = 0.0180000
                                                #; (f:fpu) ft3  <-- 2.7540000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 2.7540000, ft0  = 0.019
                                                #; (f:fpu) ft3  <-- 2.7730000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 2.7730000, ft0  = 0.02
                                                #; (f:fpu) ft3  <-- 2.7930000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 2.7930000, ft0  = 0.021
                                                #; (f:fpu) ft3  <-- 2.8140000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 2.8140000, ft0  = 0.022
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 2, (wrb) a4  <-- 1
                                                #; (f:fpu) ft3  <-- 2.8360000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 2.8360000, ft0  = 0.023
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 1, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 2.8590000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 2.8590000, ft0  = 0.024
                                                #; (f:fpu) ft3  <-- 2.8830000
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 2.8830000, ft0  = 0.025
                                                #; (f:fpu) ft3  <-- 2.9080000
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 2.9080000, ft0  = 0.0260000
                                                #; (f:fpu) ft3  <-- 2.9340000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 2.9340000, ft0  = 0.027
                                                #; (f:fpu) ft3  <-- 2.9610000
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 2.9610000, ft0  = 0.028
                                                #; (f:fpu) ft3  <-- 2.9890000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 2.9890000, ft0  = 0.029
                                                #; (f:fpu) ft3  <-- 3.0180000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 3.0180000, ft0  = 0.03
                                                #; (f:fpu) ft3  <-- 3.0480000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 3.0480000, ft0  = 0.031
                                                #; (f:fpu) ft3  <-- 3.0790000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 3.0790000, ft0  = 0.032
                                                #; (f:fpu) ft3  <-- 3.1110000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 3.1110000, ft0  = 0.033
                                                #; (f:fpu) ft3  <-- 3.1440000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 3.1440000, ft0  = 0.034
                                                #; (f:fpu) ft3  <-- 3.1780000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 3.1780000, ft0  = 0.035
                                                #; (f:fpu) ft3  <-- 3.2130000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 3.2130000, ft0  = 0.0360000
                                                #; (f:fpu) ft3  <-- 3.2490000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 3.2490000, ft0  = 0.037
                                                #; (f:fpu) ft3  <-- 3.2860000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 3.2860000, ft0  = 0.038
                                                #; (f:fpu) ft3  <-- 3.3240000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 3.3240000, ft0  = 0.039
                                                #; (f:fpu) ft3  <-- 3.3630000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 3.3630000, ft0  = 0.04
                                                #; (f:fpu) ft3  <-- 3.4030000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 3.4030000, ft0  = 0.041
                                                #; (f:fpu) ft3  <-- 3.4440000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 3.4440000
                                                #; (f:fpu) ft3  <-- 3.4440000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 3.4440000, ft0  = 0.001
                                                #; (f:fpu) ft3  <-- 3.4450000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 3.4450000, ft0  = 0.002
                                                #; (f:fpu) ft3  <-- 3.4470000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 3.4470000, ft0  = 0.003
                                                #; (f:fpu) ft3  <-- 3.4500000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 3.4500000, ft0  = 0.004
                                                #; (f:fpu) ft3  <-- 3.4540000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 3.4540000, ft0  = 0.005
                                                #; (f:fpu) ft3  <-- 3.4590000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 3.4590000, ft0  = 0.006
                                                #; (f:fpu) ft3  <-- 3.4650000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 3.4650000, ft0  = 0.007
                                                #; (f:fpu) ft3  <-- 3.4720000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 3.4720000, ft0  = 0.008
                                                #; (f:fpu) ft3  <-- 3.4800000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 3.4800000, ft0  = 0.0090000
                                                #; (f:fpu) ft3  <-- 3.4890000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 3.4890000, ft0  = 0.01
                                                #; (f:fpu) ft3  <-- 3.4990000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 3.4990000, ft0  = 0.011
                                                #; (f:fpu) ft3  <-- 3.5100000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 3.5100000, ft0  = 0.012
                                                #; (f:fpu) ft3  <-- 3.5220000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 3.5220000, ft0  = 0.0130000
                                                #; (f:fpu) ft3  <-- 3.5350000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 3.5350000, ft0  = 0.014
                                                #; (f:fpu) ft3  <-- 3.5490000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 3.5490000, ft0  = 0.015
                                                #; (f:fpu) ft3  <-- 3.5640000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 3.5640000, ft0  = 0.016
                                                #; (f:fpu) ft3  <-- 3.5800000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 3.5800000, ft0  = 0.017
                                                #; (f:fpu) ft3  <-- 3.5970000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 3.5970000, ft0  = 0.0180000
                                                #; (f:fpu) ft3  <-- 3.6150000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 3.6150000, ft0  = 0.019
                                                #; (f:fpu) ft3  <-- 3.6340000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 3.6340000, ft0  = 0.02
                                                #; (f:fpu) ft3  <-- 3.6540000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 3.6540000, ft0  = 0.021
                                                #; (f:fpu) ft3  <-- 3.6750000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 3.6750000, ft0  = 0.022
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 1, (wrb) a4  <-- 0
                                                #; (f:fpu) ft3  <-- 3.6970000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 3.6970000, ft0  = 0.023
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 0, not taken
                                                #; (f:fpu) ft3  <-- 3.7200000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 3.7200000, ft0  = 0.024
                                                #; (f:fpu) ft3  <-- 3.7440000
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 3.7440000, ft0  = 0.025
                                                #; (f:fpu) ft3  <-- 3.7690000
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 3.7690000, ft0  = 0.0260000
; sum (test_size.c:14)
;  in main (test_size.c:42)
      0x800008b0 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
                                                #; (f:fpu) ft3  <-- 3.7950000
      0x800008b4 bne     a0, a5, pc - 184       #; a0  = 1, a5  = 4, taken, goto 0x800007fc
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 3.7950000, ft0  = 0.027
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800007fc li      a4, 5                  #; (wrb) a4  <-- 5
                                                #; (f:fpu) ft3  <-- 3.8220000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 3.8220000, ft0  = 0.028
                                                #; (f:fpu) ft3  <-- 3.8500000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 3.8500000, ft0  = 0.029
                                                #; (f:fpu) ft3  <-- 3.8790000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 3.8790000, ft0  = 0.03
                                                #; (f:fpu) ft3  <-- 3.9090000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 3.9090000, ft0  = 0.031
                                                #; (f:fpu) ft3  <-- 3.9400000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 3.9400000, ft0  = 0.032
                                                #; (f:fpu) ft3  <-- 3.9720000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 3.9720000, ft0  = 0.033
                                                #; (f:fpu) ft3  <-- 4.0050000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 4.0050000, ft0  = 0.034
                                                #; (f:fpu) ft3  <-- 4.0390000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 4.0390000, ft0  = 0.035
                                                #; (f:fpu) ft3  <-- 4.0740000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 4.0740000, ft0  = 0.0360000
                                                #; (f:fpu) ft3  <-- 4.1100000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 4.1100000, ft0  = 0.037
                                                #; (f:fpu) ft3  <-- 4.1470000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 4.1470000, ft0  = 0.038
                                                #; (f:fpu) ft3  <-- 4.1850000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 4.1850000, ft0  = 0.039
                                                #; (f:fpu) ft3  <-- 4.2240000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 4.2240000, ft0  = 0.04
                                                #; (f:fpu) ft3  <-- 4.2640000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 4.2640000, ft0  = 0.041
                                                #; (f:fpu) ft3  <-- 4.3050000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.042, ft3  = 4.3050000
                                                #; (f:fpu) ft3  <-- 4.3470000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 4.3470000, ft0  = 0.0430000
                                                #; (f:fpu) ft3  <-- 4.3900000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 4.3900000, ft0  = 0.044
                                                #; (f:fpu) ft3  <-- 4.4340000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 4.4340000, ft0  = 0.045
                                                #; (f:fpu) ft3  <-- 4.4790000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 4.4790000, ft0  = 0.046
                                                #; (f:fpu) ft3  <-- 4.5250000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 4.5250000, ft0  = 0.047
                                                #; (f:fpu) ft3  <-- 4.5720000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 4.5720000, ft0  = 0.048
                                                #; (f:fpu) ft3  <-- 4.6200000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 4.6200000, ft0  = 0.049
                                                #; (f:fpu) ft3  <-- 4.6690000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 4.6690000, ft0  = 0.05
                                                #; (f:fpu) ft3  <-- 4.7190000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 4.7190000, ft0  = 0.0510000
                                                #; (f:fpu) ft3  <-- 4.7700000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 4.7700000, ft0  = 0.0520000
                                                #; (f:fpu) ft3  <-- 4.8220000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 4.8220000, ft0  = 0.053
                                                #; (f:fpu) ft3  <-- 4.8750000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 4.8750000, ft0  = 0.054
                                                #; (f:fpu) ft3  <-- 4.9290000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 4.9290000, ft0  = 0.055
                                                #; (f:fpu) ft3  <-- 4.9840000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 4.9840000, ft0  = 0.056
                                                #; (f:fpu) ft3  <-- 5.0400000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 5.0400000, ft0  = 0.057
                                                #; (f:fpu) ft3  <-- 5.0970000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 5.0970000, ft0  = 0.058
                                                #; (f:fpu) ft3  <-- 5.1550000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 5.1550000, ft0  = 0.0590000
                                                #; (f:fpu) ft3  <-- 5.2140000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 5.2140000, ft0  = 0.06
                                                #; (f:fpu) ft3  <-- 5.2740000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 5.2740000, ft0  = 0.061
                                                #; (f:fpu) ft3  <-- 5.3350000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 5.3350000, ft0  = 0.062
                                                #; (f:fpu) ft3  <-- 5.3970000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 5.3970000, ft0  = 0.063
                                                #; (f:fpu) ft3  <-- 5.4600000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 5.4600000, ft0  = 0.064
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 5, (wrb) a4  <-- 4
                                                #; (f:fpu) ft3  <-- 5.5240000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 5.5240000, ft0  = 0.065
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 4, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 5.5890000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 5.5890000, ft0  = 0.066
                                                #; (f:fpu) ft3  <-- 5.6550000
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 5.6550000, ft0  = 0.067
                                                #; (f:fpu) ft3  <-- 5.7220000
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 5.7220000, ft0  = 0.068
                                                #; (f:fpu) ft3  <-- 5.7900000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 5.7900000, ft0  = 0.069
                                                #; (f:fpu) ft3  <-- 5.8590000
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 5.8590000, ft0  = 0.07
                                                #; (f:fpu) ft3  <-- 5.9290000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 5.9290000, ft0  = 0.0710000
                                                #; (f:fpu) ft3  <-- 6.0000000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 6.0000000, ft0  = 0.0720000
                                                #; (f:fpu) ft3  <-- 6.0720000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 6.0720000, ft0  = 0.073
                                                #; (f:fpu) ft3  <-- 6.1450000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 6.1450000, ft0  = 0.074
                                                #; (f:fpu) ft3  <-- 6.2190000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 6.2190000, ft0  = 0.075
                                                #; (f:fpu) ft3  <-- 6.2940000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 6.2940000, ft0  = 0.076
                                                #; (f:fpu) ft3  <-- 6.3700000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 6.3700000, ft0  = 0.077
                                                #; (f:fpu) ft3  <-- 6.4470000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 6.4470000, ft0  = 0.078
                                                #; (f:fpu) ft3  <-- 6.5250000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 6.5250000, ft0  = 0.079
                                                #; (f:fpu) ft3  <-- 6.6040000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 6.6040000, ft0  = 0.08
                                                #; (f:fpu) ft3  <-- 6.6840000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 6.6840000, ft0  = 0.081
                                                #; (f:fpu) ft3  <-- 6.7650000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 6.7650000, ft0  = 0.082
                                                #; (f:fpu) ft3  <-- 6.8470000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 6.8470000, ft0  = 0.083
                                                #; (f:fpu) ft3  <-- 6.9300000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.042, ft3  = 6.9300000
                                                #; (f:fpu) ft3  <-- 6.9720000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 6.9720000, ft0  = 0.0430000
                                                #; (f:fpu) ft3  <-- 7.0150000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 7.0150000, ft0  = 0.044
                                                #; (f:fpu) ft3  <-- 7.0590000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 7.0590000, ft0  = 0.045
                                                #; (f:fpu) ft3  <-- 7.1040000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 7.1040000, ft0  = 0.046
                                                #; (f:fpu) ft3  <-- 7.1500000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 7.1500000, ft0  = 0.047
                                                #; (f:fpu) ft3  <-- 7.1970000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 7.1970000, ft0  = 0.048
                                                #; (f:fpu) ft3  <-- 7.2450000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 7.2450000, ft0  = 0.049
                                                #; (f:fpu) ft3  <-- 7.2940000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 7.2940000, ft0  = 0.05
                                                #; (f:fpu) ft3  <-- 7.3440000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 7.3440000, ft0  = 0.0510000
                                                #; (f:fpu) ft3  <-- 7.3950000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 7.3950000, ft0  = 0.0520000
                                                #; (f:fpu) ft3  <-- 7.4470000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 7.4470000, ft0  = 0.053
                                                #; (f:fpu) ft3  <-- 7.5000000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 7.5000000, ft0  = 0.054
                                                #; (f:fpu) ft3  <-- 7.5540000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 7.5540000, ft0  = 0.055
                                                #; (f:fpu) ft3  <-- 7.6090000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 7.6090000, ft0  = 0.056
                                                #; (f:fpu) ft3  <-- 7.6650000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 7.6650000, ft0  = 0.057
                                                #; (f:fpu) ft3  <-- 7.7220000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 7.7220000, ft0  = 0.058
                                                #; (f:fpu) ft3  <-- 7.7800000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 7.7800000, ft0  = 0.0590000
                                                #; (f:fpu) ft3  <-- 7.8390000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 7.8390000, ft0  = 0.06
                                                #; (f:fpu) ft3  <-- 7.8990000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 7.8990000, ft0  = 0.061
                                                #; (f:fpu) ft3  <-- 7.9600000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 7.9600000, ft0  = 0.062
                                                #; (f:fpu) ft3  <-- 8.0220000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 8.0220000, ft0  = 0.063
                                                #; (f:fpu) ft3  <-- 8.0850000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 8.0850000, ft0  = 0.064
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 4, (wrb) a4  <-- 3
                                                #; (f:fpu) ft3  <-- 8.1490000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 8.1490000, ft0  = 0.065
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 3, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 8.2140000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 8.2140000, ft0  = 0.066
                                                #; (f:fpu) ft3  <-- 8.2800000
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 8.2800000, ft0  = 0.067
                                                #; (f:fpu) ft3  <-- 8.3470000
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 8.3470000, ft0  = 0.068
                                                #; (f:fpu) ft3  <-- 8.4150000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 8.4150000, ft0  = 0.069
                                                #; (f:fpu) ft3  <-- 8.4840000
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 8.4840000, ft0  = 0.07
                                                #; (f:fpu) ft3  <-- 8.5540000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 8.5540000, ft0  = 0.0710000
                                                #; (f:fpu) ft3  <-- 8.6250000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 8.6250000, ft0  = 0.0720000
                                                #; (f:fpu) ft3  <-- 8.6970000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 8.6970000, ft0  = 0.073
                                                #; (f:fpu) ft3  <-- 8.7700000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 8.7700000, ft0  = 0.074
                                                #; (f:fpu) ft3  <-- 8.8440000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 8.8440000, ft0  = 0.075
                                                #; (f:fpu) ft3  <-- 8.9190000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 8.9190000, ft0  = 0.076
                                                #; (f:fpu) ft3  <-- 8.9950000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 8.9950000, ft0  = 0.077
                                                #; (f:fpu) ft3  <-- 9.0720000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 9.0720000, ft0  = 0.078
                                                #; (f:fpu) ft3  <-- 9.1500000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 9.1500000, ft0  = 0.079
                                                #; (f:fpu) ft3  <-- 9.2290000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 9.2290000, ft0  = 0.08
                                                #; (f:fpu) ft3  <-- 9.3090000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 9.3090000, ft0  = 0.081
                                                #; (f:fpu) ft3  <-- 9.3900000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 9.3900000, ft0  = 0.082
                                                #; (f:fpu) ft3  <-- 9.4720000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 9.4720000, ft0  = 0.083
                                                #; (f:fpu) ft3  <-- 9.5550000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.042, ft3  = 9.5550000
                                                #; (f:fpu) ft3  <-- 9.5970000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 9.5970000, ft0  = 0.0430000
                                                #; (f:fpu) ft3  <-- 9.6400000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 9.6400000, ft0  = 0.044
                                                #; (f:fpu) ft3  <-- 9.6840000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 9.6840000, ft0  = 0.045
                                                #; (f:fpu) ft3  <-- 9.7290000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 9.7290000, ft0  = 0.046
                                                #; (f:fpu) ft3  <-- 9.7750000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 9.7750000, ft0  = 0.047
                                                #; (f:fpu) ft3  <-- 9.8220000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 9.8220000, ft0  = 0.048
                                                #; (f:fpu) ft3  <-- 9.8700000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 9.8700000, ft0  = 0.049
                                                #; (f:fpu) ft3  <-- 9.9190000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 9.9190000, ft0  = 0.05
                                                #; (f:fpu) ft3  <-- 9.9690000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 9.9690000, ft0  = 0.0510000
                                                #; (f:fpu) ft3  <-- 10.0200000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 10.0200000, ft0  = 0.0520000
                                                #; (f:fpu) ft3  <-- 10.0720000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 10.0720000, ft0  = 0.053
                                                #; (f:fpu) ft3  <-- 10.1250000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 10.1250000, ft0  = 0.054
                                                #; (f:fpu) ft3  <-- 10.1790000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 10.1790000, ft0  = 0.055
                                                #; (f:fpu) ft3  <-- 10.2340000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 10.2340000, ft0  = 0.056
                                                #; (f:fpu) ft3  <-- 10.2900000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 10.2900000, ft0  = 0.057
                                                #; (f:fpu) ft3  <-- 10.3470000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 10.3470000, ft0  = 0.058
                                                #; (f:fpu) ft3  <-- 10.4050000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 10.4050000, ft0  = 0.0590000
                                                #; (f:fpu) ft3  <-- 10.4640000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 10.4640000, ft0  = 0.06
                                                #; (f:fpu) ft3  <-- 10.5240000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 10.5240000, ft0  = 0.061
                                                #; (f:fpu) ft3  <-- 10.5850000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 10.5850000, ft0  = 0.062
                                                #; (f:fpu) ft3  <-- 10.6470000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 10.6470000, ft0  = 0.063
                                                #; (f:fpu) ft3  <-- 10.7100000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 10.7100000, ft0  = 0.064
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 3, (wrb) a4  <-- 2
                                                #; (f:fpu) ft3  <-- 10.7740000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 10.7740000, ft0  = 0.065
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 2, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 10.8390000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 10.8390000, ft0  = 0.066
                                                #; (f:fpu) ft3  <-- 10.9050000
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 10.9050000, ft0  = 0.067
                                                #; (f:fpu) ft3  <-- 10.9720000
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 10.9720000, ft0  = 0.068
                                                #; (f:fpu) ft3  <-- 11.0400000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 11.0400000, ft0  = 0.069
                                                #; (f:fpu) ft3  <-- 11.1090000
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 11.1090000, ft0  = 0.07
                                                #; (f:fpu) ft3  <-- 11.1790000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 11.1790000, ft0  = 0.0710000
                                                #; (f:fpu) ft3  <-- 11.2500000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 11.2500000, ft0  = 0.0720000
                                                #; (f:fpu) ft3  <-- 11.3220000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 11.3220000, ft0  = 0.073
                                                #; (f:fpu) ft3  <-- 11.3950000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 11.3950000, ft0  = 0.074
                                                #; (f:fpu) ft3  <-- 11.4690000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 11.4690000, ft0  = 0.075
                                                #; (f:fpu) ft3  <-- 11.5440000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 11.5440000, ft0  = 0.076
                                                #; (f:fpu) ft3  <-- 11.6200000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 11.6200000, ft0  = 0.077
                                                #; (f:fpu) ft3  <-- 11.6970000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 11.6970000, ft0  = 0.078
                                                #; (f:fpu) ft3  <-- 11.7750000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 11.7750000, ft0  = 0.079
                                                #; (f:fpu) ft3  <-- 11.8540000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 11.8540000, ft0  = 0.08
                                                #; (f:fpu) ft3  <-- 11.9340000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 11.9340000, ft0  = 0.081
                                                #; (f:fpu) ft3  <-- 12.0150000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 12.0150000, ft0  = 0.082
                                                #; (f:fpu) ft3  <-- 12.0970000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 12.0970000, ft0  = 0.083
                                                #; (f:fpu) ft3  <-- 12.1800000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.042, ft3  = 12.1800000
                                                #; (f:fpu) ft3  <-- 12.2220000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 12.2220000, ft0  = 0.0430000
                                                #; (f:fpu) ft3  <-- 12.2650000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 12.2650000, ft0  = 0.044
                                                #; (f:fpu) ft3  <-- 12.3090000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 12.3090000, ft0  = 0.045
                                                #; (f:fpu) ft3  <-- 12.3540000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 12.3540000, ft0  = 0.046
                                                #; (f:fpu) ft3  <-- 12.4000000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 12.4000000, ft0  = 0.047
                                                #; (f:fpu) ft3  <-- 12.4470000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 12.4470000, ft0  = 0.048
                                                #; (f:fpu) ft3  <-- 12.4950000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 12.4950000, ft0  = 0.049
                                                #; (f:fpu) ft3  <-- 12.5440000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 12.5440000, ft0  = 0.05
                                                #; (f:fpu) ft3  <-- 12.5940000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 12.5940000, ft0  = 0.0510000
                                                #; (f:fpu) ft3  <-- 12.6450000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 12.6450000, ft0  = 0.0520000
                                                #; (f:fpu) ft3  <-- 12.6970000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 12.6970000, ft0  = 0.053
                                                #; (f:fpu) ft3  <-- 12.7500000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 12.7500000, ft0  = 0.054
                                                #; (f:fpu) ft3  <-- 12.8040000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 12.8040000, ft0  = 0.055
                                                #; (f:fpu) ft3  <-- 12.8590000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 12.8590000, ft0  = 0.056
                                                #; (f:fpu) ft3  <-- 12.9150000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 12.9150000, ft0  = 0.057
                                                #; (f:fpu) ft3  <-- 12.9720000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 12.9720000, ft0  = 0.058
                                                #; (f:fpu) ft3  <-- 13.0300000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 13.0300000, ft0  = 0.0590000
                                                #; (f:fpu) ft3  <-- 13.0890000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 13.0890000, ft0  = 0.06
                                                #; (f:fpu) ft3  <-- 13.1490000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 13.1490000, ft0  = 0.061
                                                #; (f:fpu) ft3  <-- 13.2100000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 13.2100000, ft0  = 0.062
                                                #; (f:fpu) ft3  <-- 13.2720000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 13.2720000, ft0  = 0.063
                                                #; (f:fpu) ft3  <-- 13.3350000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 13.3350000, ft0  = 0.064
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 2, (wrb) a4  <-- 1
                                                #; (f:fpu) ft3  <-- 13.3990000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 13.3990000, ft0  = 0.065
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 1, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 13.4640000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 13.4640000, ft0  = 0.066
                                                #; (f:fpu) ft3  <-- 13.5300000
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 13.5300000, ft0  = 0.067
                                                #; (f:fpu) ft3  <-- 13.5970000
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 13.5970000, ft0  = 0.068
                                                #; (f:fpu) ft3  <-- 13.6650000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 13.6650000, ft0  = 0.069
                                                #; (f:fpu) ft3  <-- 13.7340000
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 13.7340000, ft0  = 0.07
                                                #; (f:fpu) ft3  <-- 13.8040000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 13.8040000, ft0  = 0.0710000
                                                #; (f:fpu) ft3  <-- 13.8750000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 13.8750000, ft0  = 0.0720000
                                                #; (f:fpu) ft3  <-- 13.9470000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 13.9470000, ft0  = 0.073
                                                #; (f:fpu) ft3  <-- 14.0200000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 14.0200000, ft0  = 0.074
                                                #; (f:fpu) ft3  <-- 14.0940000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 14.0940000, ft0  = 0.075
                                                #; (f:fpu) ft3  <-- 14.1690000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 14.1690000, ft0  = 0.076
                                                #; (f:fpu) ft3  <-- 14.2450000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 14.2450000, ft0  = 0.077
                                                #; (f:fpu) ft3  <-- 14.3220000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 14.3220000, ft0  = 0.078
                                                #; (f:fpu) ft3  <-- 14.4000000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 14.4000000, ft0  = 0.079
                                                #; (f:fpu) ft3  <-- 14.4790000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 14.4790000, ft0  = 0.08
                                                #; (f:fpu) ft3  <-- 14.5590000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 14.5590000, ft0  = 0.081
                                                #; (f:fpu) ft3  <-- 14.6400000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 14.6400000, ft0  = 0.082
                                                #; (f:fpu) ft3  <-- 14.7220000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 14.7220000, ft0  = 0.083
                                                #; (f:fpu) ft3  <-- 14.8050000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.042, ft3  = 14.8050000
                                                #; (f:fpu) ft3  <-- 14.8470000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 14.8470000, ft0  = 0.0430000
                                                #; (f:fpu) ft3  <-- 14.8900000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 14.8900000, ft0  = 0.044
                                                #; (f:fpu) ft3  <-- 14.9340000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 14.9340000, ft0  = 0.045
                                                #; (f:fpu) ft3  <-- 14.9790000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 14.9790000, ft0  = 0.046
                                                #; (f:fpu) ft3  <-- 15.0250000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 15.0250000, ft0  = 0.047
                                                #; (f:fpu) ft3  <-- 15.0720000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 15.0720000, ft0  = 0.048
                                                #; (f:fpu) ft3  <-- 15.1200000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 15.1200000, ft0  = 0.049
                                                #; (f:fpu) ft3  <-- 15.1690000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 15.1690000, ft0  = 0.05
                                                #; (f:fpu) ft3  <-- 15.2190000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 15.2190000, ft0  = 0.0510000
                                                #; (f:fpu) ft3  <-- 15.2700000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 15.2700000, ft0  = 0.0520000
                                                #; (f:fpu) ft3  <-- 15.3220000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 15.3220000, ft0  = 0.053
                                                #; (f:fpu) ft3  <-- 15.3750000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 15.3750000, ft0  = 0.054
                                                #; (f:fpu) ft3  <-- 15.4290000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 15.4290000, ft0  = 0.055
                                                #; (f:fpu) ft3  <-- 15.4840000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 15.4840000, ft0  = 0.056
                                                #; (f:fpu) ft3  <-- 15.5400000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 15.5400000, ft0  = 0.057
                                                #; (f:fpu) ft3  <-- 15.5970000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 15.5970000, ft0  = 0.058
                                                #; (f:fpu) ft3  <-- 15.6550000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 15.6550000, ft0  = 0.0590000
                                                #; (f:fpu) ft3  <-- 15.7140000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 15.7140000, ft0  = 0.06
                                                #; (f:fpu) ft3  <-- 15.7740000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 15.7740000, ft0  = 0.061
                                                #; (f:fpu) ft3  <-- 15.8350000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 15.8350000, ft0  = 0.062
                                                #; (f:fpu) ft3  <-- 15.8970000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 15.8970000, ft0  = 0.063
                                                #; (f:fpu) ft3  <-- 15.9600000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 15.9600000, ft0  = 0.064
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 1, (wrb) a4  <-- 0
                                                #; (f:fpu) ft3  <-- 16.0240000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 16.0240000, ft0  = 0.065
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 0, not taken
                                                #; (f:fpu) ft3  <-- 16.0890000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 16.0890000, ft0  = 0.066
; sum (test_size.c:14)
;  in main (test_size.c:42)
      0x800008b0 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
      0x800008b4 bne     a0, a5, pc - 184       #; a0  = 2, a5  = 4, taken, goto 0x800007fc
                                                #; (f:fpu) ft3  <-- 16.1550000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 16.1550000, ft0  = 0.067
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800007fc li      a4, 5                  #; (wrb) a4  <-- 5
                                                #; (f:fpu) ft3  <-- 16.2220000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 16.2220000, ft0  = 0.068
                                                #; (f:fpu) ft3  <-- 16.2900000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 16.2900000, ft0  = 0.069
                                                #; (f:fpu) ft3  <-- 16.3590000
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 16.3590000, ft0  = 0.07
                                                #; (f:fpu) ft3  <-- 16.4290000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 16.4290000, ft0  = 0.0710000
                                                #; (f:fpu) ft3  <-- 16.5000000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 16.5000000, ft0  = 0.0720000
                                                #; (f:fpu) ft3  <-- 16.5720000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 16.5720000, ft0  = 0.073
                                                #; (f:fpu) ft3  <-- 16.6450000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 16.6450000, ft0  = 0.074
                                                #; (f:fpu) ft3  <-- 16.7190000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 16.7190000, ft0  = 0.075
                                                #; (f:fpu) ft3  <-- 16.7940000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 16.7940000, ft0  = 0.076
                                                #; (f:fpu) ft3  <-- 16.8700000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 16.8700000, ft0  = 0.077
                                                #; (f:fpu) ft3  <-- 16.947
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 16.947, ft0  = 0.078
                                                #; (f:fpu) ft3  <-- 17.025
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 17.025, ft0  = 0.079
                                                #; (f:fpu) ft3  <-- 17.104
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 17.104, ft0  = 0.08
                                                #; (f:fpu) ft3  <-- 17.1840000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 17.1840000, ft0  = 0.081
                                                #; (f:fpu) ft3  <-- 17.2650000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 17.2650000, ft0  = 0.082
                                                #; (f:fpu) ft3  <-- 17.3470000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 17.3470000, ft0  = 0.083
                                                #; (f:fpu) ft3  <-- 17.4300000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.084, ft3  = 17.4300000
                                                #; (f:fpu) ft3  <-- 17.5140000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 17.5140000, ft0  = 0.085
                                                #; (f:fpu) ft3  <-- 17.5990000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 17.5990000, ft0  = 0.0860000
                                                #; (f:fpu) ft3  <-- 17.6850000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 17.6850000, ft0  = 0.0870000
                                                #; (f:fpu) ft3  <-- 17.7720000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 17.7720000, ft0  = 0.088
                                                #; (f:fpu) ft3  <-- 17.8600000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 17.8600000, ft0  = 0.089
                                                #; (f:fpu) ft3  <-- 17.9490000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 17.9490000, ft0  = 0.09
                                                #; (f:fpu) ft3  <-- 18.0390000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 18.0390000, ft0  = 0.091
                                                #; (f:fpu) ft3  <-- 18.1300000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 18.1300000, ft0  = 0.092
                                                #; (f:fpu) ft3  <-- 18.2220000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 18.2220000, ft0  = 0.093
                                                #; (f:fpu) ft3  <-- 18.3150000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 18.3150000, ft0  = 0.094
                                                #; (f:fpu) ft3  <-- 18.4090000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 18.4090000, ft0  = 0.095
                                                #; (f:fpu) ft3  <-- 18.5040000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 18.5040000, ft0  = 0.096
                                                #; (f:fpu) ft3  <-- 18.6000000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 18.6000000, ft0  = 0.097
                                                #; (f:fpu) ft3  <-- 18.6970000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 18.6970000, ft0  = 0.098
                                                #; (f:fpu) ft3  <-- 18.7950000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 18.7950000, ft0  = 0.099
                                                #; (f:fpu) ft3  <-- 18.8940000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 18.8940000, ft0  = 0.1
                                                #; (f:fpu) ft3  <-- 18.9940000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 18.9940000, ft0  = 0.101
                                                #; (f:fpu) ft3  <-- 19.0950000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 19.0950000, ft0  = 0.1020000
                                                #; (f:fpu) ft3  <-- 19.1970000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 19.1970000, ft0  = 0.1030000
                                                #; (f:fpu) ft3  <-- 19.3000000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 19.3000000, ft0  = 0.1040000
                                                #; (f:fpu) ft3  <-- 19.4040000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 19.4040000, ft0  = 0.105
                                                #; (f:fpu) ft3  <-- 19.5090000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 19.5090000, ft0  = 0.106
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 5, (wrb) a4  <-- 4
                                                #; (f:fpu) ft3  <-- 19.615
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 19.615, ft0  = 0.107
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 4, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 19.7220000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 19.7220000, ft0  = 0.108
                                                #; (f:fpu) ft3  <-- 19.83
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 19.83, ft0  = 0.109
                                                #; (f:fpu) ft3  <-- 19.939
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 19.939, ft0  = 0.11
                                                #; (f:fpu) ft3  <-- 20.049
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 20.049, ft0  = 0.111
                                                #; (f:fpu) ft3  <-- 20.16
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 20.16, ft0  = 0.112
                                                #; (f:fpu) ft3  <-- 20.272
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 20.272, ft0  = 0.113
                                                #; (f:fpu) ft3  <-- 20.3850000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 20.3850000, ft0  = 0.114
                                                #; (f:fpu) ft3  <-- 20.499
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 20.499, ft0  = 0.115
                                                #; (f:fpu) ft3  <-- 20.6140000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 20.6140000, ft0  = 0.116
                                                #; (f:fpu) ft3  <-- 20.7300000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 20.7300000, ft0  = 0.117
                                                #; (f:fpu) ft3  <-- 20.8470000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 20.8470000, ft0  = 0.1180000
                                                #; (f:fpu) ft3  <-- 20.9650000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 20.9650000, ft0  = 0.1190000
                                                #; (f:fpu) ft3  <-- 21.0840000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 21.0840000, ft0  = 0.12
                                                #; (f:fpu) ft3  <-- 21.2040000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 21.2040000, ft0  = 0.121
                                                #; (f:fpu) ft3  <-- 21.3250000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 21.3250000, ft0  = 0.122
                                                #; (f:fpu) ft3  <-- 21.4470000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 21.4470000, ft0  = 0.123
                                                #; (f:fpu) ft3  <-- 21.5700000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 21.5700000, ft0  = 0.124
                                                #; (f:fpu) ft3  <-- 21.6940000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 21.6940000, ft0  = 0.125
                                                #; (f:fpu) ft3  <-- 21.8190000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.084, ft3  = 21.8190000
                                                #; (f:fpu) ft3  <-- 21.9030000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 21.9030000, ft0  = 0.085
                                                #; (f:fpu) ft3  <-- 21.9880000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 21.9880000, ft0  = 0.0860000
                                                #; (f:fpu) ft3  <-- 22.0740000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 22.0740000, ft0  = 0.0870000
                                                #; (f:fpu) ft3  <-- 22.1610000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 22.1610000, ft0  = 0.088
                                                #; (f:fpu) ft3  <-- 22.2490000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 22.2490000, ft0  = 0.089
                                                #; (f:fpu) ft3  <-- 22.3380000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 22.3380000, ft0  = 0.09
                                                #; (f:fpu) ft3  <-- 22.4280000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 22.4280000, ft0  = 0.091
                                                #; (f:fpu) ft3  <-- 22.5190000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 22.5190000, ft0  = 0.092
                                                #; (f:fpu) ft3  <-- 22.6110000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 22.6110000, ft0  = 0.093
                                                #; (f:fpu) ft3  <-- 22.7040000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 22.7040000, ft0  = 0.094
                                                #; (f:fpu) ft3  <-- 22.7980000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 22.7980000, ft0  = 0.095
                                                #; (f:fpu) ft3  <-- 22.8930000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 22.8930000, ft0  = 0.096
                                                #; (f:fpu) ft3  <-- 22.9890000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 22.9890000, ft0  = 0.097
                                                #; (f:fpu) ft3  <-- 23.0860000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 23.0860000, ft0  = 0.098
                                                #; (f:fpu) ft3  <-- 23.1840000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 23.1840000, ft0  = 0.099
                                                #; (f:fpu) ft3  <-- 23.2830000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 23.2830000, ft0  = 0.1
                                                #; (f:fpu) ft3  <-- 23.3830000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 23.3830000, ft0  = 0.101
                                                #; (f:fpu) ft3  <-- 23.4840000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 23.4840000, ft0  = 0.1020000
                                                #; (f:fpu) ft3  <-- 23.5860000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 23.5860000, ft0  = 0.1030000
                                                #; (f:fpu) ft3  <-- 23.6890000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 23.6890000, ft0  = 0.1040000
                                                #; (f:fpu) ft3  <-- 23.7930000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 23.7930000, ft0  = 0.105
                                                #; (f:fpu) ft3  <-- 23.8980000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 23.8980000, ft0  = 0.106
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 4, (wrb) a4  <-- 3
                                                #; (f:fpu) ft3  <-- 24.0040000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 24.0040000, ft0  = 0.107
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 3, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 24.1110000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 24.1110000, ft0  = 0.108
                                                #; (f:fpu) ft3  <-- 24.2190000
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 24.2190000, ft0  = 0.109
                                                #; (f:fpu) ft3  <-- 24.328
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 24.328, ft0  = 0.11
                                                #; (f:fpu) ft3  <-- 24.438
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 24.438, ft0  = 0.111
                                                #; (f:fpu) ft3  <-- 24.549
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 24.549, ft0  = 0.112
                                                #; (f:fpu) ft3  <-- 24.6610000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 24.6610000, ft0  = 0.113
                                                #; (f:fpu) ft3  <-- 24.7740000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 24.7740000, ft0  = 0.114
                                                #; (f:fpu) ft3  <-- 24.8880000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 24.8880000, ft0  = 0.115
                                                #; (f:fpu) ft3  <-- 25.0030000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 25.0030000, ft0  = 0.116
                                                #; (f:fpu) ft3  <-- 25.1190000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 25.1190000, ft0  = 0.117
                                                #; (f:fpu) ft3  <-- 25.2360000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 25.2360000, ft0  = 0.1180000
                                                #; (f:fpu) ft3  <-- 25.3540000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 25.3540000, ft0  = 0.1190000
                                                #; (f:fpu) ft3  <-- 25.4730000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 25.4730000, ft0  = 0.12
                                                #; (f:fpu) ft3  <-- 25.5930000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 25.5930000, ft0  = 0.121
                                                #; (f:fpu) ft3  <-- 25.7140000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 25.7140000, ft0  = 0.122
                                                #; (f:fpu) ft3  <-- 25.8360000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 25.8360000, ft0  = 0.123
                                                #; (f:fpu) ft3  <-- 25.9590000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 25.9590000, ft0  = 0.124
                                                #; (f:fpu) ft3  <-- 26.0830000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 26.0830000, ft0  = 0.125
                                                #; (f:fpu) ft3  <-- 26.2080000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.084, ft3  = 26.2080000
                                                #; (f:fpu) ft3  <-- 26.2920000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 26.2920000, ft0  = 0.085
                                                #; (f:fpu) ft3  <-- 26.3770000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 26.3770000, ft0  = 0.0860000
                                                #; (f:fpu) ft3  <-- 26.4630000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 26.4630000, ft0  = 0.0870000
                                                #; (f:fpu) ft3  <-- 26.5500000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 26.5500000, ft0  = 0.088
                                                #; (f:fpu) ft3  <-- 26.6380000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 26.6380000, ft0  = 0.089
                                                #; (f:fpu) ft3  <-- 26.7270000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 26.7270000, ft0  = 0.09
                                                #; (f:fpu) ft3  <-- 26.8170000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 26.8170000, ft0  = 0.091
                                                #; (f:fpu) ft3  <-- 26.9080000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 26.9080000, ft0  = 0.092
                                                #; (f:fpu) ft3  <-- 27.0000000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 27.0000000, ft0  = 0.093
                                                #; (f:fpu) ft3  <-- 27.0930000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 27.0930000, ft0  = 0.094
                                                #; (f:fpu) ft3  <-- 27.1870000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 27.1870000, ft0  = 0.095
                                                #; (f:fpu) ft3  <-- 27.2820000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 27.2820000, ft0  = 0.096
                                                #; (f:fpu) ft3  <-- 27.3780000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 27.3780000, ft0  = 0.097
                                                #; (f:fpu) ft3  <-- 27.4750000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 27.4750000, ft0  = 0.098
                                                #; (f:fpu) ft3  <-- 27.5730000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 27.5730000, ft0  = 0.099
                                                #; (f:fpu) ft3  <-- 27.6720000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 27.6720000, ft0  = 0.1
                                                #; (f:fpu) ft3  <-- 27.7720000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 27.7720000, ft0  = 0.101
                                                #; (f:fpu) ft3  <-- 27.8730000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 27.8730000, ft0  = 0.1020000
                                                #; (f:fpu) ft3  <-- 27.9750000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 27.9750000, ft0  = 0.1030000
                                                #; (f:fpu) ft3  <-- 28.0780000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 28.0780000, ft0  = 0.1040000
                                                #; (f:fpu) ft3  <-- 28.1820000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 28.1820000, ft0  = 0.105
                                                #; (f:fpu) ft3  <-- 28.2870000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 28.2870000, ft0  = 0.106
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 3, (wrb) a4  <-- 2
                                                #; (f:fpu) ft3  <-- 28.3930000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 28.3930000, ft0  = 0.107
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 2, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 28.5000000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 28.5000000, ft0  = 0.108
                                                #; (f:fpu) ft3  <-- 28.6080000
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 28.6080000, ft0  = 0.109
                                                #; (f:fpu) ft3  <-- 28.717
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 28.717, ft0  = 0.11
                                                #; (f:fpu) ft3  <-- 28.8270000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 28.8270000, ft0  = 0.111
                                                #; (f:fpu) ft3  <-- 28.938
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 28.938, ft0  = 0.112
                                                #; (f:fpu) ft3  <-- 29.0500000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 29.0500000, ft0  = 0.113
                                                #; (f:fpu) ft3  <-- 29.1630000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 29.1630000, ft0  = 0.114
                                                #; (f:fpu) ft3  <-- 29.2770000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 29.2770000, ft0  = 0.115
                                                #; (f:fpu) ft3  <-- 29.3920000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 29.3920000, ft0  = 0.116
                                                #; (f:fpu) ft3  <-- 29.5080000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 29.5080000, ft0  = 0.117
                                                #; (f:fpu) ft3  <-- 29.6250000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 29.6250000, ft0  = 0.1180000
                                                #; (f:fpu) ft3  <-- 29.7430000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 29.7430000, ft0  = 0.1190000
                                                #; (f:fpu) ft3  <-- 29.8620000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 29.8620000, ft0  = 0.12
                                                #; (f:fpu) ft3  <-- 29.9820000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 29.9820000, ft0  = 0.121
                                                #; (f:fpu) ft3  <-- 30.1030000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 30.1030000, ft0  = 0.122
                                                #; (f:fpu) ft3  <-- 30.2250000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 30.2250000, ft0  = 0.123
                                                #; (f:fpu) ft3  <-- 30.3480000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 30.3480000, ft0  = 0.124
                                                #; (f:fpu) ft3  <-- 30.4720000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 30.4720000, ft0  = 0.125
                                                #; (f:fpu) ft3  <-- 30.5970000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.084, ft3  = 30.5970000
                                                #; (f:fpu) ft3  <-- 30.6810000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 30.6810000, ft0  = 0.085
                                                #; (f:fpu) ft3  <-- 30.7660000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 30.7660000, ft0  = 0.0860000
                                                #; (f:fpu) ft3  <-- 30.8520000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 30.8520000, ft0  = 0.0870000
                                                #; (f:fpu) ft3  <-- 30.9390000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 30.9390000, ft0  = 0.088
                                                #; (f:fpu) ft3  <-- 31.0270000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 31.0270000, ft0  = 0.089
                                                #; (f:fpu) ft3  <-- 31.1160000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 31.1160000, ft0  = 0.09
                                                #; (f:fpu) ft3  <-- 31.2060000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 31.2060000, ft0  = 0.091
                                                #; (f:fpu) ft3  <-- 31.2970000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 31.2970000, ft0  = 0.092
                                                #; (f:fpu) ft3  <-- 31.3890000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 31.3890000, ft0  = 0.093
                                                #; (f:fpu) ft3  <-- 31.4820000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 31.4820000, ft0  = 0.094
                                                #; (f:fpu) ft3  <-- 31.5760000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 31.5760000, ft0  = 0.095
                                                #; (f:fpu) ft3  <-- 31.6710000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 31.6710000, ft0  = 0.096
                                                #; (f:fpu) ft3  <-- 31.7670000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 31.7670000, ft0  = 0.097
                                                #; (f:fpu) ft3  <-- 31.8640000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 31.8640000, ft0  = 0.098
                                                #; (f:fpu) ft3  <-- 31.9620000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 31.9620000, ft0  = 0.099
                                                #; (f:fpu) ft3  <-- 32.0610000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 32.0610000, ft0  = 0.1
                                                #; (f:fpu) ft3  <-- 32.1610000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 32.1610000, ft0  = 0.101
                                                #; (f:fpu) ft3  <-- 32.2620000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 32.2620000, ft0  = 0.1020000
                                                #; (f:fpu) ft3  <-- 32.3640000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 32.3640000, ft0  = 0.1030000
                                                #; (f:fpu) ft3  <-- 32.4670000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 32.4670000, ft0  = 0.1040000
                                                #; (f:fpu) ft3  <-- 32.5710000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 32.5710000, ft0  = 0.105
                                                #; (f:fpu) ft3  <-- 32.6760000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 32.6760000, ft0  = 0.106
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 2, (wrb) a4  <-- 1
                                                #; (f:fpu) ft3  <-- 32.7820000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 32.7820000, ft0  = 0.107
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 1, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 32.8890000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 32.8890000, ft0  = 0.108
                                                #; (f:fpu) ft3  <-- 32.9970000
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 32.9970000, ft0  = 0.109
                                                #; (f:fpu) ft3  <-- 33.1060000
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 33.1060000, ft0  = 0.11
                                                #; (f:fpu) ft3  <-- 33.2160000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 33.2160000, ft0  = 0.111
                                                #; (f:fpu) ft3  <-- 33.3270000
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 33.3270000, ft0  = 0.112
                                                #; (f:fpu) ft3  <-- 33.4390000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 33.4390000, ft0  = 0.113
                                                #; (f:fpu) ft3  <-- 33.5520000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 33.5520000, ft0  = 0.114
                                                #; (f:fpu) ft3  <-- 33.6660000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 33.6660000, ft0  = 0.115
                                                #; (f:fpu) ft3  <-- 33.7810000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 33.7810000, ft0  = 0.116
                                                #; (f:fpu) ft3  <-- 33.8970000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 33.8970000, ft0  = 0.117
                                                #; (f:fpu) ft3  <-- 34.0140000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 34.0140000, ft0  = 0.1180000
                                                #; (f:fpu) ft3  <-- 34.1320000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 34.1320000, ft0  = 0.1190000
                                                #; (f:fpu) ft3  <-- 34.2510000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 34.2510000, ft0  = 0.12
                                                #; (f:fpu) ft3  <-- 34.3710000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 34.3710000, ft0  = 0.121
                                                #; (f:fpu) ft3  <-- 34.4920000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 34.4920000, ft0  = 0.122
                                                #; (f:fpu) ft3  <-- 34.6140000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 34.6140000, ft0  = 0.123
                                                #; (f:fpu) ft3  <-- 34.7370000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 34.7370000, ft0  = 0.124
                                                #; (f:fpu) ft3  <-- 34.8610000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 34.8610000, ft0  = 0.125
                                                #; (f:fpu) ft3  <-- 34.9860000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.084, ft3  = 34.9860000
                                                #; (f:fpu) ft3  <-- 35.0700000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 35.0700000, ft0  = 0.085
                                                #; (f:fpu) ft3  <-- 35.1550000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 35.1550000, ft0  = 0.0860000
                                                #; (f:fpu) ft3  <-- 35.2410000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 35.2410000, ft0  = 0.0870000
                                                #; (f:fpu) ft3  <-- 35.3280000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 35.3280000, ft0  = 0.088
                                                #; (f:fpu) ft3  <-- 35.4160000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 35.4160000, ft0  = 0.089
                                                #; (f:fpu) ft3  <-- 35.5050000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 35.5050000, ft0  = 0.09
                                                #; (f:fpu) ft3  <-- 35.5950000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 35.5950000, ft0  = 0.091
                                                #; (f:fpu) ft3  <-- 35.6860000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 35.6860000, ft0  = 0.092
                                                #; (f:fpu) ft3  <-- 35.7780000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 35.7780000, ft0  = 0.093
                                                #; (f:fpu) ft3  <-- 35.8710000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 35.8710000, ft0  = 0.094
                                                #; (f:fpu) ft3  <-- 35.9650000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 35.9650000, ft0  = 0.095
                                                #; (f:fpu) ft3  <-- 36.0600000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 36.0600000, ft0  = 0.096
                                                #; (f:fpu) ft3  <-- 36.1560000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 36.1560000, ft0  = 0.097
                                                #; (f:fpu) ft3  <-- 36.2530000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 36.2530000, ft0  = 0.098
                                                #; (f:fpu) ft3  <-- 36.3510000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 36.3510000, ft0  = 0.099
                                                #; (f:fpu) ft3  <-- 36.4500000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 36.4500000, ft0  = 0.1
                                                #; (f:fpu) ft3  <-- 36.5500000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 36.5500000, ft0  = 0.101
                                                #; (f:fpu) ft3  <-- 36.6510000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 36.6510000, ft0  = 0.1020000
                                                #; (f:fpu) ft3  <-- 36.7530000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 36.7530000, ft0  = 0.1030000
                                                #; (f:fpu) ft3  <-- 36.8560000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 36.8560000, ft0  = 0.1040000
                                                #; (f:fpu) ft3  <-- 36.9600000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 36.9600000, ft0  = 0.105
                                                #; (f:fpu) ft3  <-- 37.0650000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 37.0650000, ft0  = 0.106
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 1, (wrb) a4  <-- 0
                                                #; (f:fpu) ft3  <-- 37.1710000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 37.1710000, ft0  = 0.107
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 0, not taken
                                                #; (f:fpu) ft3  <-- 37.2780000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 37.2780000, ft0  = 0.108
; sum (test_size.c:14)
;  in main (test_size.c:42)
      0x800008b0 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
      0x800008b4 bne     a0, a5, pc - 184       #; a0  = 3, a5  = 4, taken, goto 0x800007fc
                                                #; (f:fpu) ft3  <-- 37.3860000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 37.3860000, ft0  = 0.109
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800007fc li      a4, 5                  #; (wrb) a4  <-- 5
                                                #; (f:fpu) ft3  <-- 37.4950000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 37.4950000, ft0  = 0.11
                                                #; (f:fpu) ft3  <-- 37.6050000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 37.6050000, ft0  = 0.111
                                                #; (f:fpu) ft3  <-- 37.7160000
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 37.7160000, ft0  = 0.112
                                                #; (f:fpu) ft3  <-- 37.8280000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 37.8280000, ft0  = 0.113
                                                #; (f:fpu) ft3  <-- 37.9410000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 37.9410000, ft0  = 0.114
                                                #; (f:fpu) ft3  <-- 38.0550000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 38.0550000, ft0  = 0.115
                                                #; (f:fpu) ft3  <-- 38.1700000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 38.1700000, ft0  = 0.116
                                                #; (f:fpu) ft3  <-- 38.2860000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 38.2860000, ft0  = 0.117
                                                #; (f:fpu) ft3  <-- 38.4030000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 38.4030000, ft0  = 0.1180000
                                                #; (f:fpu) ft3  <-- 38.5210000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 38.5210000, ft0  = 0.1190000
                                                #; (f:fpu) ft3  <-- 38.6400000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 38.6400000, ft0  = 0.12
                                                #; (f:fpu) ft3  <-- 38.7600000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 38.7600000, ft0  = 0.121
                                                #; (f:fpu) ft3  <-- 38.8810000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 38.8810000, ft0  = 0.122
                                                #; (f:fpu) ft3  <-- 39.0030000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 39.0030000, ft0  = 0.123
                                                #; (f:fpu) ft3  <-- 39.1260000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 39.1260000, ft0  = 0.124
                                                #; (f:fpu) ft3  <-- 39.2500000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 39.2500000, ft0  = 0.125
                                                #; (f:fpu) ft3  <-- 39.3750000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.126, ft3  = 39.3750000
                                                #; (f:fpu) ft3  <-- 39.5010000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 39.5010000, ft0  = 0.127
                                                #; (f:fpu) ft3  <-- 39.6280000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 39.6280000, ft0  = 0.128
                                                #; (f:fpu) ft3  <-- 39.7560000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 39.7560000, ft0  = 0.129
                                                #; (f:fpu) ft3  <-- 39.8850000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 39.8850000, ft0  = 0.13
                                                #; (f:fpu) ft3  <-- 40.0150000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 40.0150000, ft0  = 0.131
                                                #; (f:fpu) ft3  <-- 40.1460000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 40.1460000, ft0  = 0.132
                                                #; (f:fpu) ft3  <-- 40.2780000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 40.2780000, ft0  = 0.133
                                                #; (f:fpu) ft3  <-- 40.4110000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 40.4110000, ft0  = 0.134
                                                #; (f:fpu) ft3  <-- 40.5450000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 40.5450000, ft0  = 0.135
                                                #; (f:fpu) ft3  <-- 40.6800000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 40.6800000, ft0  = 0.136
                                                #; (f:fpu) ft3  <-- 40.8160000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 40.8160000, ft0  = 0.137
                                                #; (f:fpu) ft3  <-- 40.9530000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 40.9530000, ft0  = 0.138
                                                #; (f:fpu) ft3  <-- 41.0910000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 41.0910000, ft0  = 0.139
                                                #; (f:fpu) ft3  <-- 41.2300000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 41.2300000, ft0  = 0.14
                                                #; (f:fpu) ft3  <-- 41.3700000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 41.3700000, ft0  = 0.1410000
                                                #; (f:fpu) ft3  <-- 41.5110000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 41.5110000, ft0  = 0.1420000
                                                #; (f:fpu) ft3  <-- 41.6530000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 41.6530000, ft0  = 0.1430000
                                                #; (f:fpu) ft3  <-- 41.7960000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 41.7960000, ft0  = 0.1440000
                                                #; (f:fpu) ft3  <-- 41.9400000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 41.9400000, ft0  = 0.145
                                                #; (f:fpu) ft3  <-- 42.0850000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 42.0850000, ft0  = 0.146
                                                #; (f:fpu) ft3  <-- 42.2310000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 42.2310000, ft0  = 0.147
                                                #; (f:fpu) ft3  <-- 42.3780000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 42.3780000, ft0  = 0.148
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 5, (wrb) a4  <-- 4
                                                #; (f:fpu) ft3  <-- 42.5260000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 42.5260000, ft0  = 0.149
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 4, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 42.6750000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 42.6750000, ft0  = 0.15
                                                #; (f:fpu) ft3  <-- 42.8250000
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 42.8250000, ft0  = 0.151
                                                #; (f:fpu) ft3  <-- 42.9760000
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 42.9760000, ft0  = 0.152
                                                #; (f:fpu) ft3  <-- 43.1280000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 43.1280000, ft0  = 0.153
                                                #; (f:fpu) ft3  <-- 43.2810000
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 43.2810000, ft0  = 0.154
                                                #; (f:fpu) ft3  <-- 43.4350000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 43.4350000, ft0  = 0.155
                                                #; (f:fpu) ft3  <-- 43.5900000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 43.5900000, ft0  = 0.156
                                                #; (f:fpu) ft3  <-- 43.7460000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 43.7460000, ft0  = 0.157
                                                #; (f:fpu) ft3  <-- 43.9030000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 43.9030000, ft0  = 0.158
                                                #; (f:fpu) ft3  <-- 44.0610000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 44.0610000, ft0  = 0.159
                                                #; (f:fpu) ft3  <-- 44.2200000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 44.2200000, ft0  = 0.16
                                                #; (f:fpu) ft3  <-- 44.3800000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 44.3800000, ft0  = 0.161
                                                #; (f:fpu) ft3  <-- 44.5410000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 44.5410000, ft0  = 0.162
                                                #; (f:fpu) ft3  <-- 44.7030000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 44.7030000, ft0  = 0.163
                                                #; (f:fpu) ft3  <-- 44.8660000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 44.8660000, ft0  = 0.164
                                                #; (f:fpu) ft3  <-- 45.0300000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 45.0300000, ft0  = 0.165
                                                #; (f:fpu) ft3  <-- 45.1950000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 45.1950000, ft0  = 0.166
                                                #; (f:fpu) ft3  <-- 45.3610000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 45.3610000, ft0  = 0.167
                                                #; (f:fpu) ft3  <-- 45.5280000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.126, ft3  = 45.5280000
                                                #; (f:fpu) ft3  <-- 45.6540000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 45.6540000, ft0  = 0.127
                                                #; (f:fpu) ft3  <-- 45.7810000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 45.7810000, ft0  = 0.128
                                                #; (f:fpu) ft3  <-- 45.9090000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 45.9090000, ft0  = 0.129
                                                #; (f:fpu) ft3  <-- 46.0380000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 46.0380000, ft0  = 0.13
                                                #; (f:fpu) ft3  <-- 46.1680000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 46.1680000, ft0  = 0.131
                                                #; (f:fpu) ft3  <-- 46.2990000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 46.2990000, ft0  = 0.132
                                                #; (f:fpu) ft3  <-- 46.4310000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 46.4310000, ft0  = 0.133
                                                #; (f:fpu) ft3  <-- 46.5640000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 46.5640000, ft0  = 0.134
                                                #; (f:fpu) ft3  <-- 46.6980000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 46.6980000, ft0  = 0.135
                                                #; (f:fpu) ft3  <-- 46.8330000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 46.8330000, ft0  = 0.136
                                                #; (f:fpu) ft3  <-- 46.9690000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 46.9690000, ft0  = 0.137
                                                #; (f:fpu) ft3  <-- 47.1060000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 47.1060000, ft0  = 0.138
                                                #; (f:fpu) ft3  <-- 47.2440000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 47.2440000, ft0  = 0.139
                                                #; (f:fpu) ft3  <-- 47.3830000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 47.3830000, ft0  = 0.14
                                                #; (f:fpu) ft3  <-- 47.5230000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 47.5230000, ft0  = 0.1410000
                                                #; (f:fpu) ft3  <-- 47.6640000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 47.6640000, ft0  = 0.1420000
                                                #; (f:fpu) ft3  <-- 47.8060000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 47.8060000, ft0  = 0.1430000
                                                #; (f:fpu) ft3  <-- 47.9490000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 47.9490000, ft0  = 0.1440000
                                                #; (f:fpu) ft3  <-- 48.0930000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 48.0930000, ft0  = 0.145
                                                #; (f:fpu) ft3  <-- 48.2380000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 48.2380000, ft0  = 0.146
                                                #; (f:fpu) ft3  <-- 48.3840000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 48.3840000, ft0  = 0.147
                                                #; (f:fpu) ft3  <-- 48.5310000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 48.5310000, ft0  = 0.148
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 4, (wrb) a4  <-- 3
                                                #; (f:fpu) ft3  <-- 48.6790000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 48.6790000, ft0  = 0.149
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 3, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 48.8280000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 48.8280000, ft0  = 0.15
                                                #; (f:fpu) ft3  <-- 48.9780000
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 48.9780000, ft0  = 0.151
                                                #; (f:fpu) ft3  <-- 49.129
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 49.129, ft0  = 0.152
                                                #; (f:fpu) ft3  <-- 49.281
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 49.281, ft0  = 0.153
                                                #; (f:fpu) ft3  <-- 49.434
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 49.434, ft0  = 0.154
                                                #; (f:fpu) ft3  <-- 49.588
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 49.588, ft0  = 0.155
                                                #; (f:fpu) ft3  <-- 49.743
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 49.743, ft0  = 0.156
                                                #; (f:fpu) ft3  <-- 49.899
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 49.899, ft0  = 0.157
                                                #; (f:fpu) ft3  <-- 50.056
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 50.056, ft0  = 0.158
                                                #; (f:fpu) ft3  <-- 50.214
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 50.214, ft0  = 0.159
                                                #; (f:fpu) ft3  <-- 50.373
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 50.373, ft0  = 0.16
                                                #; (f:fpu) ft3  <-- 50.5330000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 50.5330000, ft0  = 0.161
                                                #; (f:fpu) ft3  <-- 50.6940000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 50.6940000, ft0  = 0.162
                                                #; (f:fpu) ft3  <-- 50.8560000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 50.8560000, ft0  = 0.163
                                                #; (f:fpu) ft3  <-- 51.0190000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 51.0190000, ft0  = 0.164
                                                #; (f:fpu) ft3  <-- 51.1830000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 51.1830000, ft0  = 0.165
                                                #; (f:fpu) ft3  <-- 51.3480000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 51.3480000, ft0  = 0.166
                                                #; (f:fpu) ft3  <-- 51.5140000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 51.5140000, ft0  = 0.167
                                                #; (f:fpu) ft3  <-- 51.6810000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.126, ft3  = 51.6810000
                                                #; (f:fpu) ft3  <-- 51.8070000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 51.8070000, ft0  = 0.127
                                                #; (f:fpu) ft3  <-- 51.9340000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 51.9340000, ft0  = 0.128
                                                #; (f:fpu) ft3  <-- 52.0620000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 52.0620000, ft0  = 0.129
                                                #; (f:fpu) ft3  <-- 52.1910000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 52.1910000, ft0  = 0.13
                                                #; (f:fpu) ft3  <-- 52.3210000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 52.3210000, ft0  = 0.131
                                                #; (f:fpu) ft3  <-- 52.4520000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 52.4520000, ft0  = 0.132
                                                #; (f:fpu) ft3  <-- 52.5840000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 52.5840000, ft0  = 0.133
                                                #; (f:fpu) ft3  <-- 52.7170000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 52.7170000, ft0  = 0.134
                                                #; (f:fpu) ft3  <-- 52.8510000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 52.8510000, ft0  = 0.135
                                                #; (f:fpu) ft3  <-- 52.9860000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 52.9860000, ft0  = 0.136
                                                #; (f:fpu) ft3  <-- 53.1220000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 53.1220000, ft0  = 0.137
                                                #; (f:fpu) ft3  <-- 53.2590000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 53.2590000, ft0  = 0.138
                                                #; (f:fpu) ft3  <-- 53.3970000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 53.3970000, ft0  = 0.139
                                                #; (f:fpu) ft3  <-- 53.5360000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 53.5360000, ft0  = 0.14
                                                #; (f:fpu) ft3  <-- 53.6760000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 53.6760000, ft0  = 0.1410000
                                                #; (f:fpu) ft3  <-- 53.8170000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 53.8170000, ft0  = 0.1420000
                                                #; (f:fpu) ft3  <-- 53.9590000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 53.9590000, ft0  = 0.1430000
                                                #; (f:fpu) ft3  <-- 54.102
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 54.102, ft0  = 0.1440000
                                                #; (f:fpu) ft3  <-- 54.2460000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 54.2460000, ft0  = 0.145
                                                #; (f:fpu) ft3  <-- 54.391
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 54.391, ft0  = 0.146
                                                #; (f:fpu) ft3  <-- 54.537
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 54.537, ft0  = 0.147
                                                #; (f:fpu) ft3  <-- 54.684
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 54.684, ft0  = 0.148
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 3, (wrb) a4  <-- 2
                                                #; (f:fpu) ft3  <-- 54.832
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 54.832, ft0  = 0.149
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 2, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 54.981
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 54.981, ft0  = 0.15
                                                #; (f:fpu) ft3  <-- 55.131
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 55.131, ft0  = 0.151
                                                #; (f:fpu) ft3  <-- 55.2820000
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 55.2820000, ft0  = 0.152
                                                #; (f:fpu) ft3  <-- 55.4340000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 55.4340000, ft0  = 0.153
                                                #; (f:fpu) ft3  <-- 55.587
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 55.587, ft0  = 0.154
                                                #; (f:fpu) ft3  <-- 55.7410000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 55.7410000, ft0  = 0.155
                                                #; (f:fpu) ft3  <-- 55.8960000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 55.8960000, ft0  = 0.156
                                                #; (f:fpu) ft3  <-- 56.0520000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 56.0520000, ft0  = 0.157
                                                #; (f:fpu) ft3  <-- 56.209
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 56.209, ft0  = 0.158
                                                #; (f:fpu) ft3  <-- 56.3670000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 56.3670000, ft0  = 0.159
                                                #; (f:fpu) ft3  <-- 56.526
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 56.526, ft0  = 0.16
                                                #; (f:fpu) ft3  <-- 56.686
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 56.686, ft0  = 0.161
                                                #; (f:fpu) ft3  <-- 56.847
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 56.847, ft0  = 0.162
                                                #; (f:fpu) ft3  <-- 57.009
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 57.009, ft0  = 0.163
                                                #; (f:fpu) ft3  <-- 57.172
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 57.172, ft0  = 0.164
                                                #; (f:fpu) ft3  <-- 57.336
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 57.336, ft0  = 0.165
                                                #; (f:fpu) ft3  <-- 57.501
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 57.501, ft0  = 0.166
                                                #; (f:fpu) ft3  <-- 57.6670000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 57.6670000, ft0  = 0.167
                                                #; (f:fpu) ft3  <-- 57.8340000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.126, ft3  = 57.8340000
                                                #; (f:fpu) ft3  <-- 57.9600000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 57.9600000, ft0  = 0.127
                                                #; (f:fpu) ft3  <-- 58.0870000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 58.0870000, ft0  = 0.128
                                                #; (f:fpu) ft3  <-- 58.2150000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 58.2150000, ft0  = 0.129
                                                #; (f:fpu) ft3  <-- 58.3440000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 58.3440000, ft0  = 0.13
                                                #; (f:fpu) ft3  <-- 58.474
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 58.474, ft0  = 0.131
                                                #; (f:fpu) ft3  <-- 58.605
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 58.605, ft0  = 0.132
                                                #; (f:fpu) ft3  <-- 58.7370000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 58.7370000, ft0  = 0.133
                                                #; (f:fpu) ft3  <-- 58.87
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 58.87, ft0  = 0.134
                                                #; (f:fpu) ft3  <-- 59.004
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 59.004, ft0  = 0.135
                                                #; (f:fpu) ft3  <-- 59.1390000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 59.1390000, ft0  = 0.136
                                                #; (f:fpu) ft3  <-- 59.275
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 59.275, ft0  = 0.137
                                                #; (f:fpu) ft3  <-- 59.412
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 59.412, ft0  = 0.138
                                                #; (f:fpu) ft3  <-- 59.55
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 59.55, ft0  = 0.139
                                                #; (f:fpu) ft3  <-- 59.689
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 59.689, ft0  = 0.14
                                                #; (f:fpu) ft3  <-- 59.829
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 59.829, ft0  = 0.1410000
                                                #; (f:fpu) ft3  <-- 59.97
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 59.97, ft0  = 0.1420000
                                                #; (f:fpu) ft3  <-- 60.112
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 60.112, ft0  = 0.1430000
                                                #; (f:fpu) ft3  <-- 60.255
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 60.255, ft0  = 0.1440000
                                                #; (f:fpu) ft3  <-- 60.399
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 60.399, ft0  = 0.145
                                                #; (f:fpu) ft3  <-- 60.5440000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 60.5440000, ft0  = 0.146
                                                #; (f:fpu) ft3  <-- 60.6900000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 60.6900000, ft0  = 0.147
                                                #; (f:fpu) ft3  <-- 60.837
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 60.837, ft0  = 0.148
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 2, (wrb) a4  <-- 1
                                                #; (f:fpu) ft3  <-- 60.9850000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 60.9850000, ft0  = 0.149
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 1, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 61.1340000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 61.1340000, ft0  = 0.15
                                                #; (f:fpu) ft3  <-- 61.2840000
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 61.2840000, ft0  = 0.151
                                                #; (f:fpu) ft3  <-- 61.4350000
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 61.4350000, ft0  = 0.152
                                                #; (f:fpu) ft3  <-- 61.5870000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 61.5870000, ft0  = 0.153
                                                #; (f:fpu) ft3  <-- 61.7400000
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 61.7400000, ft0  = 0.154
                                                #; (f:fpu) ft3  <-- 61.8940000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 61.8940000, ft0  = 0.155
                                                #; (f:fpu) ft3  <-- 62.0490000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 62.0490000, ft0  = 0.156
                                                #; (f:fpu) ft3  <-- 62.2050000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 62.2050000, ft0  = 0.157
                                                #; (f:fpu) ft3  <-- 62.3620000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 62.3620000, ft0  = 0.158
                                                #; (f:fpu) ft3  <-- 62.5200000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 62.5200000, ft0  = 0.159
                                                #; (f:fpu) ft3  <-- 62.6790000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 62.6790000, ft0  = 0.16
                                                #; (f:fpu) ft3  <-- 62.8390000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 62.8390000, ft0  = 0.161
                                                #; (f:fpu) ft3  <-- 63.0000000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 63.0000000, ft0  = 0.162
                                                #; (f:fpu) ft3  <-- 63.1620000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 63.1620000, ft0  = 0.163
                                                #; (f:fpu) ft3  <-- 63.325
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 63.325, ft0  = 0.164
                                                #; (f:fpu) ft3  <-- 63.4890000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 63.4890000, ft0  = 0.165
                                                #; (f:fpu) ft3  <-- 63.654
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 63.654, ft0  = 0.166
                                                #; (f:fpu) ft3  <-- 63.82
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 63.82, ft0  = 0.167
                                                #; (f:fpu) ft3  <-- 63.987
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.126, ft3  = 63.987
                                                #; (f:fpu) ft3  <-- 64.113
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 64.113, ft0  = 0.127
                                                #; (f:fpu) ft3  <-- 64.24
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 64.24, ft0  = 0.128
                                                #; (f:fpu) ft3  <-- 64.368
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 64.368, ft0  = 0.129
                                                #; (f:fpu) ft3  <-- 64.497
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 64.497, ft0  = 0.13
                                                #; (f:fpu) ft3  <-- 64.627
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 64.627, ft0  = 0.131
                                                #; (f:fpu) ft3  <-- 64.758
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 64.758, ft0  = 0.132
                                                #; (f:fpu) ft3  <-- 64.89
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 64.89, ft0  = 0.133
                                                #; (f:fpu) ft3  <-- 65.023
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 65.023, ft0  = 0.134
                                                #; (f:fpu) ft3  <-- 65.157
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 65.157, ft0  = 0.135
                                                #; (f:fpu) ft3  <-- 65.292
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 65.292, ft0  = 0.136
                                                #; (f:fpu) ft3  <-- 65.428
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 65.428, ft0  = 0.137
                                                #; (f:fpu) ft3  <-- 65.565
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 65.565, ft0  = 0.138
                                                #; (f:fpu) ft3  <-- 65.703
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 65.703, ft0  = 0.139
                                                #; (f:fpu) ft3  <-- 65.842
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 65.842, ft0  = 0.14
                                                #; (f:fpu) ft3  <-- 65.982
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 65.982, ft0  = 0.1410000
                                                #; (f:fpu) ft3  <-- 66.123
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 66.123, ft0  = 0.1420000
                                                #; (f:fpu) ft3  <-- 66.265
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 66.265, ft0  = 0.1430000
                                                #; (f:fpu) ft3  <-- 66.408
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 66.408, ft0  = 0.1440000
                                                #; (f:fpu) ft3  <-- 66.552
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 66.552, ft0  = 0.145
                                                #; (f:fpu) ft3  <-- 66.697
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 66.697, ft0  = 0.146
                                                #; (f:fpu) ft3  <-- 66.843
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 66.843, ft0  = 0.147
                                                #; (f:fpu) ft3  <-- 66.9900000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 66.9900000, ft0  = 0.148
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 1, (wrb) a4  <-- 0
                                                #; (f:fpu) ft3  <-- 67.138
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 67.138, ft0  = 0.149
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 0, not taken
                                                #; (f:fpu) ft3  <-- 67.287
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 67.287, ft0  = 0.15
; sum (test_size.c:14)
;  in main (test_size.c:42)
      0x800008b0 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
      0x800008b4 bne     a0, a5, pc - 184       #; a0  = 4, a5  = 4, not taken
                                                #; (f:fpu) ft3  <-- 67.4370000
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800008b8 j       pc - 0x13c             #; goto 0x8000077c
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 67.4370000, ft0  = 0.151
                                                #; (f:fpu) ft3  <-- 67.5880000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 67.5880000, ft0  = 0.152
; sum (test_size.c:13)
;  in main (test_size.c:42)
      0x80000780 addi    t6, t6, 1              #; t6  = 0, (wrb) t6  <-- 1
      0x80000784 addi    a2, a2, 1344           #; a2  = 0x001000a8, (wrb) a2  <-- 0x001005e8
                                                #; (f:fpu) ft3  <-- 67.7400000
      0x80000788 beq     t6, t2, pc + 980       #; t6  = 1, t2  = 3, not taken
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 67.7400000, ft0  = 0.153
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x8000078c mul     a0, t6, t5             #; t6  = 1, t5  = 1344
                                                #; (f:fpu) ft3  <-- 67.8930000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 67.8930000, ft0  = 0.154
                                                #; (f:fpu) ft3  <-- 68.0470000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 68.0470000, ft0  = 0.155
                                                #; (f:fpu) ft3  <-- 68.2020000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 68.2020000, ft0  = 0.156
                                                #; (f:fpu) ft3  <-- 68.3580000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 68.3580000, ft0  = 0.157
                                                #; (f:fpu) ft3  <-- 68.5150000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 68.5150000, ft0  = 0.158
                                                #; (f:fpu) ft3  <-- 68.6730000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 68.6730000, ft0  = 0.159
                                                #; (f:fpu) ft3  <-- 68.8320000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 68.8320000, ft0  = 0.16
                                                #; (f:fpu) ft3  <-- 68.9920000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 68.9920000, ft0  = 0.161
                                                #; (f:fpu) ft3  <-- 69.1530000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 69.1530000, ft0  = 0.162
                                                #; (f:fpu) ft3  <-- 69.3150000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 69.3150000, ft0  = 0.163
                                                #; (f:fpu) ft3  <-- 69.4780000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 69.4780000, ft0  = 0.164
                                                #; (f:fpu) ft3  <-- 69.6420000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 69.6420000, ft0  = 0.165
                                                #; (f:fpu) ft3  <-- 69.8070000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 69.8070000, ft0  = 0.166
                                                #; (f:fpu) ft3  <-- 69.9730000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 69.9730000, ft0  = 0.167
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x8000077c csrrci  a0, ssr, 1             #; 
                                                #; (f:fpu) ft3  <-- 70.1400000
                                                #; (acc) a4  <-- 0x00ae0733
      0x80000790 add     a4, t3, a0             #; t3  = 0x00100000, a0  = 1344, (wrb) a4  <-- 0x00100540
; sum (test_size.c:14)
;  in main (test_size.c:42)
      0x80000794 srli    a3, a4, 20             #; a4  = 0x00100540, (wrb) a3  <-- 1
      0x80000798 snez    a3, a3                 #; a3  = 1, (wrb) a3  <-- 1
      0x8000079c sltu    a1, a4, t4             #; a4  = 0x00100540, t4  = 0x0011fac9, (wrb) a1  <-- 1
      0x800007a0 and     a1, a3, a1             #; a3  = 1, a1  = 1, (wrb) a1  <-- 1
      0x800007a4 beqz    a1, pc + 280           #; a1  = 1, not taken
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800007a8 li      a0, 0                  #; (wrb) a0  <-- 0
; sum (test_size.c:14)
;  in main (test_size.c:42)
      0x800007ac li      a1, 64                 #; (wrb) a1  <-- 64
      0x800007b0 scfgw   a6, a1                 #; a6  = 6, a1  = 64
      0x800007b4 li      a1, 192                #; (wrb) a1  <-- 192
      0x800007b8 scfgw   t1, a1                 #; t1  = 8, a1  = 192
      0x800007bc li      a1, 96                 #; (wrb) a1  <-- 96
      0x800007c0 scfgw   a7, a1                 #; a7  = 5, a1  = 96, (acc) ra  <-- 0x00b8a0ab
      0x800007c4 li      a1, 224                #; (wrb) a1  <-- 224
      0x800007c8 scfgw   t1, a1                 #; t1  = 8, a1  = 224, (acc) ra  <-- 0x00b320ab
      0x800007cc li      a1, 128                #; (wrb) a1  <-- 128
      0x800007d0 scfgw   a5, a1                 #; a5  = 4, a1  = 128, (acc) ra  <-- 0x00b7a0ab
      0x800007d4 li      a1, 256                #; (wrb) a1  <-- 256
      0x800007d8 scfgw   t0, a1                 #; t0  = -328, a1  = 256, (acc) ra  <-- 0x00b2a0ab
      0x800007dc li      a1, 160                #; (wrb) a1  <-- 160
      0x800007e0 scfgw   t2, a1                 #; t2  = 3, a1  = 160, (acc) ra  <-- 0x00b3a0ab
      0x800007e4 li      a1, 288                #; (wrb) a1  <-- 288
      0x800007e8 scfgw   t1, a1                 #; t1  = 8, a1  = 288, (acc) ra  <-- 0x00b320ab
      0x800007ec li      a1, 32                 #; (wrb) a1  <-- 32
      0x800007f0 scfgw   zero, a1               #; a1  = 32, (acc) ra  <-- 0x00b020ab
      0x800007f4 scfgwi  a4, 864                #; a4  = 0x00100540
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800007fc li      a4, 5                  #; (wrb) a4  <-- 5
      0x800007f8 csrrsi  a1, ssr, 1             #; 
                                                #; (acc) gp  <-- 0x023071d3
                                                #; (acc) gp  <-- 0x0201f1d3
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.168, ft3  = 70.1400000
                                                #; (f:fpu) ft3  <-- 70.3080000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 70.3080000, ft0  = 0.169
                                                #; (f:fpu) ft3  <-- 70.4770000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 70.4770000, ft0  = 0.17
                                                #; (f:fpu) ft3  <-- 70.6470000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 70.6470000, ft0  = 0.171
                                                #; (f:fpu) ft3  <-- 70.8180000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 70.8180000, ft0  = 0.1720000
                                                #; (f:fpu) ft3  <-- 70.9900000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 70.9900000, ft0  = 0.1730000
                                                #; (f:fpu) ft3  <-- 71.1630000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 71.1630000, ft0  = 0.1740000
                                                #; (f:fpu) ft3  <-- 71.3370000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 71.3370000, ft0  = 0.1750000
                                                #; (f:fpu) ft3  <-- 71.5120000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 71.5120000, ft0  = 0.176
                                                #; (f:fpu) ft3  <-- 71.6880000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 71.6880000, ft0  = 0.177
                                                #; (f:fpu) ft3  <-- 71.8650000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 71.8650000, ft0  = 0.178
                                                #; (f:fpu) ft3  <-- 72.0430000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 72.0430000, ft0  = 0.179
                                                #; (f:fpu) ft3  <-- 72.2220000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 72.2220000, ft0  = 0.18
                                                #; (f:fpu) ft3  <-- 72.4020000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 72.4020000, ft0  = 0.181
                                                #; (f:fpu) ft3  <-- 72.5830000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 72.5830000, ft0  = 0.182
                                                #; (f:fpu) ft3  <-- 72.7650000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 72.7650000, ft0  = 0.183
                                                #; (f:fpu) ft3  <-- 72.9480000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 72.9480000, ft0  = 0.184
                                                #; (f:fpu) ft3  <-- 73.1320000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 73.1320000, ft0  = 0.185
                                                #; (f:fpu) ft3  <-- 73.3170000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 73.3170000, ft0  = 0.186
                                                #; (f:fpu) ft3  <-- 73.5030000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 73.5030000, ft0  = 0.187
                                                #; (f:fpu) ft3  <-- 73.6900000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 73.6900000, ft0  = 0.188
                                                #; (f:fpu) ft3  <-- 73.8780000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 73.8780000, ft0  = 0.189
                                                #; (f:fpu) ft3  <-- 74.0670000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 74.0670000, ft0  = 0.19
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 5, (wrb) a4  <-- 4
                                                #; (f:fpu) ft3  <-- 74.2570000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 74.2570000, ft0  = 0.191
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 4, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 74.4480000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 74.4480000, ft0  = 0.192
                                                #; (f:fpu) ft3  <-- 74.6400000
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 74.6400000, ft0  = 0.193
                                                #; (f:fpu) ft3  <-- 74.8330000
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 74.8330000, ft0  = 0.194
                                                #; (f:fpu) ft3  <-- 75.0270000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 75.0270000, ft0  = 0.195
                                                #; (f:fpu) ft3  <-- 75.2220000
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 75.2220000, ft0  = 0.196
                                                #; (f:fpu) ft3  <-- 75.4180000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 75.4180000, ft0  = 0.197
                                                #; (f:fpu) ft3  <-- 75.6150000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 75.6150000, ft0  = 0.198
                                                #; (f:fpu) ft3  <-- 75.8130000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 75.8130000, ft0  = 0.199
                                                #; (f:fpu) ft3  <-- 76.0120000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 76.0120000, ft0  = 0.2
                                                #; (f:fpu) ft3  <-- 76.2120000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 76.2120000, ft0  = 0.201
                                                #; (f:fpu) ft3  <-- 76.4130000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 76.4130000, ft0  = 0.202
                                                #; (f:fpu) ft3  <-- 76.6150000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 76.6150000, ft0  = 0.203
                                                #; (f:fpu) ft3  <-- 76.8180000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 76.8180000, ft0  = 0.2040000
                                                #; (f:fpu) ft3  <-- 77.0220000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 77.0220000, ft0  = 0.2050000
                                                #; (f:fpu) ft3  <-- 77.2270000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 77.2270000, ft0  = 0.2060000
                                                #; (f:fpu) ft3  <-- 77.4330000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 77.4330000, ft0  = 0.2070000
                                                #; (f:fpu) ft3  <-- 77.6400000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 77.6400000, ft0  = 0.2080000
                                                #; (f:fpu) ft3  <-- 77.8480000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 77.8480000, ft0  = 0.209
                                                #; (f:fpu) ft3  <-- 78.0570000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.168, ft3  = 78.0570000
                                                #; (f:fpu) ft3  <-- 78.2250000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 78.2250000, ft0  = 0.169
                                                #; (f:fpu) ft3  <-- 78.3940000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 78.3940000, ft0  = 0.17
                                                #; (f:fpu) ft3  <-- 78.5640000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 78.5640000, ft0  = 0.171
                                                #; (f:fpu) ft3  <-- 78.7350000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 78.7350000, ft0  = 0.1720000
                                                #; (f:fpu) ft3  <-- 78.9070000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 78.9070000, ft0  = 0.1730000
                                                #; (f:fpu) ft3  <-- 79.0800000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 79.0800000, ft0  = 0.1740000
                                                #; (f:fpu) ft3  <-- 79.2540000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 79.2540000, ft0  = 0.1750000
                                                #; (f:fpu) ft3  <-- 79.4290000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 79.4290000, ft0  = 0.176
                                                #; (f:fpu) ft3  <-- 79.6050000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 79.6050000, ft0  = 0.177
                                                #; (f:fpu) ft3  <-- 79.7820000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 79.7820000, ft0  = 0.178
                                                #; (f:fpu) ft3  <-- 79.9600000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 79.9600000, ft0  = 0.179
                                                #; (f:fpu) ft3  <-- 80.1390000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 80.1390000, ft0  = 0.18
                                                #; (f:fpu) ft3  <-- 80.3190000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 80.3190000, ft0  = 0.181
                                                #; (f:fpu) ft3  <-- 80.5000000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 80.5000000, ft0  = 0.182
                                                #; (f:fpu) ft3  <-- 80.6820000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 80.6820000, ft0  = 0.183
                                                #; (f:fpu) ft3  <-- 80.8650000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 80.8650000, ft0  = 0.184
                                                #; (f:fpu) ft3  <-- 81.0490000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 81.0490000, ft0  = 0.185
                                                #; (f:fpu) ft3  <-- 81.2340000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 81.2340000, ft0  = 0.186
                                                #; (f:fpu) ft3  <-- 81.4200000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 81.4200000, ft0  = 0.187
                                                #; (f:fpu) ft3  <-- 81.6070000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 81.6070000, ft0  = 0.188
                                                #; (f:fpu) ft3  <-- 81.7950000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 81.7950000, ft0  = 0.189
                                                #; (f:fpu) ft3  <-- 81.9840000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 81.9840000, ft0  = 0.19
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 4, (wrb) a4  <-- 3
                                                #; (f:fpu) ft3  <-- 82.1740000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 82.1740000, ft0  = 0.191
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 3, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 82.3650000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 82.3650000, ft0  = 0.192
                                                #; (f:fpu) ft3  <-- 82.5570000
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 82.5570000, ft0  = 0.193
                                                #; (f:fpu) ft3  <-- 82.7500000
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 82.7500000, ft0  = 0.194
                                                #; (f:fpu) ft3  <-- 82.9440000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 82.9440000, ft0  = 0.195
                                                #; (f:fpu) ft3  <-- 83.1390000
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 83.1390000, ft0  = 0.196
                                                #; (f:fpu) ft3  <-- 83.3350000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 83.3350000, ft0  = 0.197
                                                #; (f:fpu) ft3  <-- 83.5320000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 83.5320000, ft0  = 0.198
                                                #; (f:fpu) ft3  <-- 83.7300000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 83.7300000, ft0  = 0.199
                                                #; (f:fpu) ft3  <-- 83.9290000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 83.9290000, ft0  = 0.2
                                                #; (f:fpu) ft3  <-- 84.1290000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 84.1290000, ft0  = 0.201
                                                #; (f:fpu) ft3  <-- 84.3300000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 84.3300000, ft0  = 0.202
                                                #; (f:fpu) ft3  <-- 84.5320000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 84.5320000, ft0  = 0.203
                                                #; (f:fpu) ft3  <-- 84.7350000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 84.7350000, ft0  = 0.2040000
                                                #; (f:fpu) ft3  <-- 84.9390000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 84.9390000, ft0  = 0.2050000
                                                #; (f:fpu) ft3  <-- 85.1440000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 85.1440000, ft0  = 0.2060000
                                                #; (f:fpu) ft3  <-- 85.3500000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 85.3500000, ft0  = 0.2070000
                                                #; (f:fpu) ft3  <-- 85.5570000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 85.5570000, ft0  = 0.2080000
                                                #; (f:fpu) ft3  <-- 85.7650000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 85.7650000, ft0  = 0.209
                                                #; (f:fpu) ft3  <-- 85.9740000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.168, ft3  = 85.9740000
                                                #; (f:fpu) ft3  <-- 86.1420000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 86.1420000, ft0  = 0.169
                                                #; (f:fpu) ft3  <-- 86.3110000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 86.3110000, ft0  = 0.17
                                                #; (f:fpu) ft3  <-- 86.4810000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 86.4810000, ft0  = 0.171
                                                #; (f:fpu) ft3  <-- 86.6520000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 86.6520000, ft0  = 0.1720000
                                                #; (f:fpu) ft3  <-- 86.8240000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 86.8240000, ft0  = 0.1730000
                                                #; (f:fpu) ft3  <-- 86.9970000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 86.9970000, ft0  = 0.1740000
                                                #; (f:fpu) ft3  <-- 87.1710000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 87.1710000, ft0  = 0.1750000
                                                #; (f:fpu) ft3  <-- 87.3460000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 87.3460000, ft0  = 0.176
                                                #; (f:fpu) ft3  <-- 87.5220000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 87.5220000, ft0  = 0.177
                                                #; (f:fpu) ft3  <-- 87.6990000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 87.6990000, ft0  = 0.178
                                                #; (f:fpu) ft3  <-- 87.8770000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 87.8770000, ft0  = 0.179
                                                #; (f:fpu) ft3  <-- 88.0560000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 88.0560000, ft0  = 0.18
                                                #; (f:fpu) ft3  <-- 88.2360000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 88.2360000, ft0  = 0.181
                                                #; (f:fpu) ft3  <-- 88.4170000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 88.4170000, ft0  = 0.182
                                                #; (f:fpu) ft3  <-- 88.5990000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 88.5990000, ft0  = 0.183
                                                #; (f:fpu) ft3  <-- 88.7820000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 88.7820000, ft0  = 0.184
                                                #; (f:fpu) ft3  <-- 88.9660000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 88.9660000, ft0  = 0.185
                                                #; (f:fpu) ft3  <-- 89.1510000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 89.1510000, ft0  = 0.186
                                                #; (f:fpu) ft3  <-- 89.3370000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 89.3370000, ft0  = 0.187
                                                #; (f:fpu) ft3  <-- 89.5240000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 89.5240000, ft0  = 0.188
                                                #; (f:fpu) ft3  <-- 89.7120000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 89.7120000, ft0  = 0.189
                                                #; (f:fpu) ft3  <-- 89.9010000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 89.9010000, ft0  = 0.19
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 3, (wrb) a4  <-- 2
                                                #; (f:fpu) ft3  <-- 90.0910000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 90.0910000, ft0  = 0.191
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 2, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 90.2820000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 90.2820000, ft0  = 0.192
                                                #; (f:fpu) ft3  <-- 90.4740000
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 90.4740000, ft0  = 0.193
                                                #; (f:fpu) ft3  <-- 90.6670000
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 90.6670000, ft0  = 0.194
                                                #; (f:fpu) ft3  <-- 90.8610000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 90.8610000, ft0  = 0.195
                                                #; (f:fpu) ft3  <-- 91.0560000
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 91.0560000, ft0  = 0.196
                                                #; (f:fpu) ft3  <-- 91.2520000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 91.2520000, ft0  = 0.197
                                                #; (f:fpu) ft3  <-- 91.4490000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 91.4490000, ft0  = 0.198
                                                #; (f:fpu) ft3  <-- 91.6470000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 91.6470000, ft0  = 0.199
                                                #; (f:fpu) ft3  <-- 91.8460000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 91.8460000, ft0  = 0.2
                                                #; (f:fpu) ft3  <-- 92.0460000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 92.0460000, ft0  = 0.201
                                                #; (f:fpu) ft3  <-- 92.2470000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 92.2470000, ft0  = 0.202
                                                #; (f:fpu) ft3  <-- 92.4490000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 92.4490000, ft0  = 0.203
                                                #; (f:fpu) ft3  <-- 92.6520000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 92.6520000, ft0  = 0.2040000
                                                #; (f:fpu) ft3  <-- 92.8560000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 92.8560000, ft0  = 0.2050000
                                                #; (f:fpu) ft3  <-- 93.0610000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 93.0610000, ft0  = 0.2060000
                                                #; (f:fpu) ft3  <-- 93.2670000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 93.2670000, ft0  = 0.2070000
                                                #; (f:fpu) ft3  <-- 93.4740000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 93.4740000, ft0  = 0.2080000
                                                #; (f:fpu) ft3  <-- 93.6820000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 93.6820000, ft0  = 0.209
                                                #; (f:fpu) ft3  <-- 93.8910000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.168, ft3  = 93.8910000
                                                #; (f:fpu) ft3  <-- 94.0590000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 94.0590000, ft0  = 0.169
                                                #; (f:fpu) ft3  <-- 94.2280000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 94.2280000, ft0  = 0.17
                                                #; (f:fpu) ft3  <-- 94.3980000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 94.3980000, ft0  = 0.171
                                                #; (f:fpu) ft3  <-- 94.5690000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 94.5690000, ft0  = 0.1720000
                                                #; (f:fpu) ft3  <-- 94.7410000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 94.7410000, ft0  = 0.1730000
                                                #; (f:fpu) ft3  <-- 94.9140000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 94.9140000, ft0  = 0.1740000
                                                #; (f:fpu) ft3  <-- 95.0880000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 95.0880000, ft0  = 0.1750000
                                                #; (f:fpu) ft3  <-- 95.2630000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 95.2630000, ft0  = 0.176
                                                #; (f:fpu) ft3  <-- 95.4390000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 95.4390000, ft0  = 0.177
                                                #; (f:fpu) ft3  <-- 95.6160000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 95.6160000, ft0  = 0.178
                                                #; (f:fpu) ft3  <-- 95.7940000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 95.7940000, ft0  = 0.179
                                                #; (f:fpu) ft3  <-- 95.9730000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 95.9730000, ft0  = 0.18
                                                #; (f:fpu) ft3  <-- 96.1530000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 96.1530000, ft0  = 0.181
                                                #; (f:fpu) ft3  <-- 96.3340000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 96.3340000, ft0  = 0.182
                                                #; (f:fpu) ft3  <-- 96.5160000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 96.5160000, ft0  = 0.183
                                                #; (f:fpu) ft3  <-- 96.6990000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 96.6990000, ft0  = 0.184
                                                #; (f:fpu) ft3  <-- 96.8830000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 96.8830000, ft0  = 0.185
                                                #; (f:fpu) ft3  <-- 97.0680000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 97.0680000, ft0  = 0.186
                                                #; (f:fpu) ft3  <-- 97.2540000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 97.2540000, ft0  = 0.187
                                                #; (f:fpu) ft3  <-- 97.4410000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 97.4410000, ft0  = 0.188
                                                #; (f:fpu) ft3  <-- 97.6290000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 97.6290000, ft0  = 0.189
                                                #; (f:fpu) ft3  <-- 97.8180000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 97.8180000, ft0  = 0.19
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 2, (wrb) a4  <-- 1
                                                #; (f:fpu) ft3  <-- 98.0080000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 98.0080000, ft0  = 0.191
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 1, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 98.1990000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 98.1990000, ft0  = 0.192
                                                #; (f:fpu) ft3  <-- 98.3910000
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 98.3910000, ft0  = 0.193
                                                #; (f:fpu) ft3  <-- 98.5840000
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 98.5840000, ft0  = 0.194
                                                #; (f:fpu) ft3  <-- 98.7780000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 98.7780000, ft0  = 0.195
                                                #; (f:fpu) ft3  <-- 98.9730000
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 98.9730000, ft0  = 0.196
                                                #; (f:fpu) ft3  <-- 99.1690000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 99.1690000, ft0  = 0.197
                                                #; (f:fpu) ft3  <-- 99.3660000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 99.3660000, ft0  = 0.198
                                                #; (f:fpu) ft3  <-- 99.5640000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 99.5640000, ft0  = 0.199
                                                #; (f:fpu) ft3  <-- 99.7630000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 99.7630000, ft0  = 0.2
                                                #; (f:fpu) ft3  <-- 99.9630000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 99.9630000, ft0  = 0.201
                                                #; (f:fpu) ft3  <-- 100.1640000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 100.1640000, ft0  = 0.202
                                                #; (f:fpu) ft3  <-- 100.3660000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 100.3660000, ft0  = 0.203
                                                #; (f:fpu) ft3  <-- 100.5690000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 100.5690000, ft0  = 0.2040000
                                                #; (f:fpu) ft3  <-- 100.7730000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 100.7730000, ft0  = 0.2050000
                                                #; (f:fpu) ft3  <-- 100.9780000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 100.9780000, ft0  = 0.2060000
                                                #; (f:fpu) ft3  <-- 101.1840000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 101.1840000, ft0  = 0.2070000
                                                #; (f:fpu) ft3  <-- 101.3910000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 101.3910000, ft0  = 0.2080000
                                                #; (f:fpu) ft3  <-- 101.5990000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 101.5990000, ft0  = 0.209
                                                #; (f:fpu) ft3  <-- 101.8080000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.168, ft3  = 101.8080000
                                                #; (f:fpu) ft3  <-- 101.9760000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 101.9760000, ft0  = 0.169
                                                #; (f:fpu) ft3  <-- 102.1450000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 102.1450000, ft0  = 0.17
                                                #; (f:fpu) ft3  <-- 102.3150000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 102.3150000, ft0  = 0.171
                                                #; (f:fpu) ft3  <-- 102.4860000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 102.4860000, ft0  = 0.1720000
                                                #; (f:fpu) ft3  <-- 102.6580000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 102.6580000, ft0  = 0.1730000
                                                #; (f:fpu) ft3  <-- 102.8310000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 102.8310000, ft0  = 0.1740000
                                                #; (f:fpu) ft3  <-- 103.0050000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 103.0050000, ft0  = 0.1750000
                                                #; (f:fpu) ft3  <-- 103.1800000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 103.1800000, ft0  = 0.176
                                                #; (f:fpu) ft3  <-- 103.3560000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 103.3560000, ft0  = 0.177
                                                #; (f:fpu) ft3  <-- 103.5330000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 103.5330000, ft0  = 0.178
                                                #; (f:fpu) ft3  <-- 103.7110000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 103.7110000, ft0  = 0.179
                                                #; (f:fpu) ft3  <-- 103.8900000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 103.8900000, ft0  = 0.18
                                                #; (f:fpu) ft3  <-- 104.0700000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 104.0700000, ft0  = 0.181
                                                #; (f:fpu) ft3  <-- 104.2510000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 104.2510000, ft0  = 0.182
                                                #; (f:fpu) ft3  <-- 104.4330000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 104.4330000, ft0  = 0.183
                                                #; (f:fpu) ft3  <-- 104.6160000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 104.6160000, ft0  = 0.184
                                                #; (f:fpu) ft3  <-- 104.8000000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 104.8000000, ft0  = 0.185
                                                #; (f:fpu) ft3  <-- 104.9850000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 104.9850000, ft0  = 0.186
                                                #; (f:fpu) ft3  <-- 105.1710000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 105.1710000, ft0  = 0.187
                                                #; (f:fpu) ft3  <-- 105.3580000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 105.3580000, ft0  = 0.188
                                                #; (f:fpu) ft3  <-- 105.5460000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 105.5460000, ft0  = 0.189
                                                #; (f:fpu) ft3  <-- 105.7350000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 105.7350000, ft0  = 0.19
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 1, (wrb) a4  <-- 0
                                                #; (f:fpu) ft3  <-- 105.9250000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 105.9250000, ft0  = 0.191
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 0, not taken
                                                #; (f:fpu) ft3  <-- 106.1160000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 106.1160000, ft0  = 0.192
; sum (test_size.c:14)
;  in main (test_size.c:42)
      0x800008b0 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x800008b4 bne     a0, a5, pc - 184       #; a0  = 1, a5  = 4, taken, goto 0x800007fc
                                                #; (f:fpu) ft3  <-- 106.3080000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 106.3080000, ft0  = 0.193
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800007fc li      a4, 5                  #; (wrb) a4  <-- 5
                                                #; (f:fpu) ft3  <-- 106.5010000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 106.5010000, ft0  = 0.194
                                                #; (f:fpu) ft3  <-- 106.6950000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 106.6950000, ft0  = 0.195
                                                #; (f:fpu) ft3  <-- 106.8900000
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 106.8900000, ft0  = 0.196
                                                #; (f:fpu) ft3  <-- 107.0860000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 107.0860000, ft0  = 0.197
                                                #; (f:fpu) ft3  <-- 107.2830000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 107.2830000, ft0  = 0.198
                                                #; (f:fpu) ft3  <-- 107.4810000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 107.4810000, ft0  = 0.199
                                                #; (f:fpu) ft3  <-- 107.6800000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 107.6800000, ft0  = 0.2
                                                #; (f:fpu) ft3  <-- 107.8800000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 107.8800000, ft0  = 0.201
                                                #; (f:fpu) ft3  <-- 108.0810000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 108.0810000, ft0  = 0.202
                                                #; (f:fpu) ft3  <-- 108.2830000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 108.2830000, ft0  = 0.203
                                                #; (f:fpu) ft3  <-- 108.4860000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 108.4860000, ft0  = 0.2040000
                                                #; (f:fpu) ft3  <-- 108.6900000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 108.6900000, ft0  = 0.2050000
                                                #; (f:fpu) ft3  <-- 108.8950000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 108.8950000, ft0  = 0.2060000
                                                #; (f:fpu) ft3  <-- 109.1010000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 109.1010000, ft0  = 0.2070000
                                                #; (f:fpu) ft3  <-- 109.3080000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 109.3080000, ft0  = 0.2080000
                                                #; (f:fpu) ft3  <-- 109.5160000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 109.5160000, ft0  = 0.209
                                                #; (f:fpu) ft3  <-- 109.7250000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.21, ft3  = 109.7250000
                                                #; (f:fpu) ft3  <-- 109.9350000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 109.9350000, ft0  = 0.211
                                                #; (f:fpu) ft3  <-- 110.1460000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 110.1460000, ft0  = 0.212
                                                #; (f:fpu) ft3  <-- 110.3580000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 110.3580000, ft0  = 0.213
                                                #; (f:fpu) ft3  <-- 110.5710000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 110.5710000, ft0  = 0.214
                                                #; (f:fpu) ft3  <-- 110.7850000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 110.7850000, ft0  = 0.215
                                                #; (f:fpu) ft3  <-- 111.0000000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 111.0000000, ft0  = 0.216
                                                #; (f:fpu) ft3  <-- 111.2160000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 111.2160000, ft0  = 0.217
                                                #; (f:fpu) ft3  <-- 111.4330000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 111.4330000, ft0  = 0.218
                                                #; (f:fpu) ft3  <-- 111.6510000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 111.6510000, ft0  = 0.219
                                                #; (f:fpu) ft3  <-- 111.8700000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 111.8700000, ft0  = 0.22
                                                #; (f:fpu) ft3  <-- 112.0900000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 112.0900000, ft0  = 0.221
                                                #; (f:fpu) ft3  <-- 112.3110000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 112.3110000, ft0  = 0.222
                                                #; (f:fpu) ft3  <-- 112.5330000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 112.5330000, ft0  = 0.223
                                                #; (f:fpu) ft3  <-- 112.7560000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 112.7560000, ft0  = 0.224
                                                #; (f:fpu) ft3  <-- 112.9800000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 112.9800000, ft0  = 0.225
                                                #; (f:fpu) ft3  <-- 113.2050000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 113.2050000, ft0  = 0.226
                                                #; (f:fpu) ft3  <-- 113.4310000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 113.4310000, ft0  = 0.227
                                                #; (f:fpu) ft3  <-- 113.6580000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 113.6580000, ft0  = 0.228
                                                #; (f:fpu) ft3  <-- 113.8860000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 113.8860000, ft0  = 0.229
                                                #; (f:fpu) ft3  <-- 114.1150000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 114.1150000, ft0  = 0.23
                                                #; (f:fpu) ft3  <-- 114.3450000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 114.3450000, ft0  = 0.231
                                                #; (f:fpu) ft3  <-- 114.5760000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 114.5760000, ft0  = 0.232
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 5, (wrb) a4  <-- 4
                                                #; (f:fpu) ft3  <-- 114.808
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 114.808, ft0  = 0.233
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 4, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 115.0410000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 115.0410000, ft0  = 0.234
                                                #; (f:fpu) ft3  <-- 115.275
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 115.275, ft0  = 0.2350000
                                                #; (f:fpu) ft3  <-- 115.51
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 115.51, ft0  = 0.2360000
                                                #; (f:fpu) ft3  <-- 115.7460000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 115.7460000, ft0  = 0.2370000
                                                #; (f:fpu) ft3  <-- 115.983
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 115.983, ft0  = 0.2380000
                                                #; (f:fpu) ft3  <-- 116.221
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 116.221, ft0  = 0.2390000
                                                #; (f:fpu) ft3  <-- 116.4600000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 116.4600000, ft0  = 0.24
                                                #; (f:fpu) ft3  <-- 116.7
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 116.7, ft0  = 0.241
                                                #; (f:fpu) ft3  <-- 116.941
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 116.941, ft0  = 0.242
                                                #; (f:fpu) ft3  <-- 117.183
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 117.183, ft0  = 0.243
                                                #; (f:fpu) ft3  <-- 117.426
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 117.426, ft0  = 0.244
                                                #; (f:fpu) ft3  <-- 117.67
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 117.67, ft0  = 0.245
                                                #; (f:fpu) ft3  <-- 117.915
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 117.915, ft0  = 0.246
                                                #; (f:fpu) ft3  <-- 118.161
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 118.161, ft0  = 0.247
                                                #; (f:fpu) ft3  <-- 118.408
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 118.408, ft0  = 0.248
                                                #; (f:fpu) ft3  <-- 118.656
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 118.656, ft0  = 0.249
                                                #; (f:fpu) ft3  <-- 118.905
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 118.905, ft0  = 0.25
                                                #; (f:fpu) ft3  <-- 119.155
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 119.155, ft0  = 0.251
                                                #; (f:fpu) ft3  <-- 119.406
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.21, ft3  = 119.406
                                                #; (f:fpu) ft3  <-- 119.616
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 119.616, ft0  = 0.211
                                                #; (f:fpu) ft3  <-- 119.827
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 119.827, ft0  = 0.212
                                                #; (f:fpu) ft3  <-- 120.039
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 120.039, ft0  = 0.213
                                                #; (f:fpu) ft3  <-- 120.252
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 120.252, ft0  = 0.214
                                                #; (f:fpu) ft3  <-- 120.466
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 120.466, ft0  = 0.215
                                                #; (f:fpu) ft3  <-- 120.681
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 120.681, ft0  = 0.216
                                                #; (f:fpu) ft3  <-- 120.8970000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 120.8970000, ft0  = 0.217
                                                #; (f:fpu) ft3  <-- 121.1140000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 121.1140000, ft0  = 0.218
                                                #; (f:fpu) ft3  <-- 121.332
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 121.332, ft0  = 0.219
                                                #; (f:fpu) ft3  <-- 121.5510000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 121.5510000, ft0  = 0.22
                                                #; (f:fpu) ft3  <-- 121.7710000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 121.7710000, ft0  = 0.221
                                                #; (f:fpu) ft3  <-- 121.9920000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 121.9920000, ft0  = 0.222
                                                #; (f:fpu) ft3  <-- 122.2140000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 122.2140000, ft0  = 0.223
                                                #; (f:fpu) ft3  <-- 122.4370000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 122.4370000, ft0  = 0.224
                                                #; (f:fpu) ft3  <-- 122.6610000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 122.6610000, ft0  = 0.225
                                                #; (f:fpu) ft3  <-- 122.8860000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 122.8860000, ft0  = 0.226
                                                #; (f:fpu) ft3  <-- 123.1120000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 123.1120000, ft0  = 0.227
                                                #; (f:fpu) ft3  <-- 123.3390000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 123.3390000, ft0  = 0.228
                                                #; (f:fpu) ft3  <-- 123.5670000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 123.5670000, ft0  = 0.229
                                                #; (f:fpu) ft3  <-- 123.7960000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 123.7960000, ft0  = 0.23
                                                #; (f:fpu) ft3  <-- 124.0260000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 124.0260000, ft0  = 0.231
                                                #; (f:fpu) ft3  <-- 124.2570000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 124.2570000, ft0  = 0.232
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 4, (wrb) a4  <-- 3
                                                #; (f:fpu) ft3  <-- 124.4890000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 124.4890000, ft0  = 0.233
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 3, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 124.7220000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 124.7220000, ft0  = 0.234
                                                #; (f:fpu) ft3  <-- 124.9560000
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 124.9560000, ft0  = 0.2350000
                                                #; (f:fpu) ft3  <-- 125.1910000
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 125.1910000, ft0  = 0.2360000
                                                #; (f:fpu) ft3  <-- 125.4270000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 125.4270000, ft0  = 0.2370000
                                                #; (f:fpu) ft3  <-- 125.6640000
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 125.6640000, ft0  = 0.2380000
                                                #; (f:fpu) ft3  <-- 125.9020000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 125.9020000, ft0  = 0.2390000
                                                #; (f:fpu) ft3  <-- 126.1410000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 126.1410000, ft0  = 0.24
                                                #; (f:fpu) ft3  <-- 126.3810000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 126.3810000, ft0  = 0.241
                                                #; (f:fpu) ft3  <-- 126.6220000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 126.6220000, ft0  = 0.242
                                                #; (f:fpu) ft3  <-- 126.8640000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 126.8640000, ft0  = 0.243
                                                #; (f:fpu) ft3  <-- 127.1070000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 127.1070000, ft0  = 0.244
                                                #; (f:fpu) ft3  <-- 127.3510000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 127.3510000, ft0  = 0.245
                                                #; (f:fpu) ft3  <-- 127.5960000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 127.5960000, ft0  = 0.246
                                                #; (f:fpu) ft3  <-- 127.8420000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 127.8420000, ft0  = 0.247
                                                #; (f:fpu) ft3  <-- 128.0890000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 128.0890000, ft0  = 0.248
                                                #; (f:fpu) ft3  <-- 128.3370000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 128.3370000, ft0  = 0.249
                                                #; (f:fpu) ft3  <-- 128.5860000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 128.5860000, ft0  = 0.25
                                                #; (f:fpu) ft3  <-- 128.8360000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 128.8360000, ft0  = 0.251
                                                #; (f:fpu) ft3  <-- 129.0870000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.21, ft3  = 129.0870000
                                                #; (f:fpu) ft3  <-- 129.2970000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 129.2970000, ft0  = 0.211
                                                #; (f:fpu) ft3  <-- 129.5080000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 129.5080000, ft0  = 0.212
                                                #; (f:fpu) ft3  <-- 129.7200000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 129.7200000, ft0  = 0.213
                                                #; (f:fpu) ft3  <-- 129.9330000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 129.9330000, ft0  = 0.214
                                                #; (f:fpu) ft3  <-- 130.1470000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 130.1470000, ft0  = 0.215
                                                #; (f:fpu) ft3  <-- 130.3620000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 130.3620000, ft0  = 0.216
                                                #; (f:fpu) ft3  <-- 130.5780000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 130.5780000, ft0  = 0.217
                                                #; (f:fpu) ft3  <-- 130.795
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 130.795, ft0  = 0.218
                                                #; (f:fpu) ft3  <-- 131.0130000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 131.0130000, ft0  = 0.219
                                                #; (f:fpu) ft3  <-- 131.2320000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 131.2320000, ft0  = 0.22
                                                #; (f:fpu) ft3  <-- 131.4520000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 131.4520000, ft0  = 0.221
                                                #; (f:fpu) ft3  <-- 131.6730000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 131.6730000, ft0  = 0.222
                                                #; (f:fpu) ft3  <-- 131.8950000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 131.8950000, ft0  = 0.223
                                                #; (f:fpu) ft3  <-- 132.118
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 132.118, ft0  = 0.224
                                                #; (f:fpu) ft3  <-- 132.3420000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 132.3420000, ft0  = 0.225
                                                #; (f:fpu) ft3  <-- 132.5670000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 132.5670000, ft0  = 0.226
                                                #; (f:fpu) ft3  <-- 132.7930000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 132.7930000, ft0  = 0.227
                                                #; (f:fpu) ft3  <-- 133.0200000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 133.0200000, ft0  = 0.228
                                                #; (f:fpu) ft3  <-- 133.248
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 133.248, ft0  = 0.229
                                                #; (f:fpu) ft3  <-- 133.477
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 133.477, ft0  = 0.23
                                                #; (f:fpu) ft3  <-- 133.707
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 133.707, ft0  = 0.231
                                                #; (f:fpu) ft3  <-- 133.938
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 133.938, ft0  = 0.232
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 3, (wrb) a4  <-- 2
                                                #; (f:fpu) ft3  <-- 134.17
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 134.17, ft0  = 0.233
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 2, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 134.403
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 134.403, ft0  = 0.234
                                                #; (f:fpu) ft3  <-- 134.637
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 134.637, ft0  = 0.2350000
                                                #; (f:fpu) ft3  <-- 134.872
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 134.872, ft0  = 0.2360000
                                                #; (f:fpu) ft3  <-- 135.108
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 135.108, ft0  = 0.2370000
                                                #; (f:fpu) ft3  <-- 135.345
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 135.345, ft0  = 0.2380000
                                                #; (f:fpu) ft3  <-- 135.583
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 135.583, ft0  = 0.2390000
                                                #; (f:fpu) ft3  <-- 135.822
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 135.822, ft0  = 0.24
                                                #; (f:fpu) ft3  <-- 136.062
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 136.062, ft0  = 0.241
                                                #; (f:fpu) ft3  <-- 136.3030000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 136.3030000, ft0  = 0.242
                                                #; (f:fpu) ft3  <-- 136.5450000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 136.5450000, ft0  = 0.243
                                                #; (f:fpu) ft3  <-- 136.788
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 136.788, ft0  = 0.244
                                                #; (f:fpu) ft3  <-- 137.032
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 137.032, ft0  = 0.245
                                                #; (f:fpu) ft3  <-- 137.2770000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 137.2770000, ft0  = 0.246
                                                #; (f:fpu) ft3  <-- 137.5230000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 137.5230000, ft0  = 0.247
                                                #; (f:fpu) ft3  <-- 137.7700000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 137.7700000, ft0  = 0.248
                                                #; (f:fpu) ft3  <-- 138.0180000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 138.0180000, ft0  = 0.249
                                                #; (f:fpu) ft3  <-- 138.2670000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 138.2670000, ft0  = 0.25
                                                #; (f:fpu) ft3  <-- 138.5170000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 138.5170000, ft0  = 0.251
                                                #; (f:fpu) ft3  <-- 138.7680000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.21, ft3  = 138.7680000
                                                #; (f:fpu) ft3  <-- 138.9780000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 138.9780000, ft0  = 0.211
                                                #; (f:fpu) ft3  <-- 139.1890000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 139.1890000, ft0  = 0.212
                                                #; (f:fpu) ft3  <-- 139.4010000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 139.4010000, ft0  = 0.213
                                                #; (f:fpu) ft3  <-- 139.6140000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 139.6140000, ft0  = 0.214
                                                #; (f:fpu) ft3  <-- 139.8280000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 139.8280000, ft0  = 0.215
                                                #; (f:fpu) ft3  <-- 140.0430000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 140.0430000, ft0  = 0.216
                                                #; (f:fpu) ft3  <-- 140.2590000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 140.2590000, ft0  = 0.217
                                                #; (f:fpu) ft3  <-- 140.4760000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 140.4760000, ft0  = 0.218
                                                #; (f:fpu) ft3  <-- 140.6940000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 140.6940000, ft0  = 0.219
                                                #; (f:fpu) ft3  <-- 140.9130000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 140.9130000, ft0  = 0.22
                                                #; (f:fpu) ft3  <-- 141.1330000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 141.1330000, ft0  = 0.221
                                                #; (f:fpu) ft3  <-- 141.3540000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 141.3540000, ft0  = 0.222
                                                #; (f:fpu) ft3  <-- 141.5760000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 141.5760000, ft0  = 0.223
                                                #; (f:fpu) ft3  <-- 141.7990000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 141.7990000, ft0  = 0.224
                                                #; (f:fpu) ft3  <-- 142.0230000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 142.0230000, ft0  = 0.225
                                                #; (f:fpu) ft3  <-- 142.2480000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 142.2480000, ft0  = 0.226
                                                #; (f:fpu) ft3  <-- 142.4740000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 142.4740000, ft0  = 0.227
                                                #; (f:fpu) ft3  <-- 142.7010000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 142.7010000, ft0  = 0.228
                                                #; (f:fpu) ft3  <-- 142.9290000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 142.9290000, ft0  = 0.229
                                                #; (f:fpu) ft3  <-- 143.1580000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 143.1580000, ft0  = 0.23
                                                #; (f:fpu) ft3  <-- 143.3880000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 143.3880000, ft0  = 0.231
                                                #; (f:fpu) ft3  <-- 143.6190000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 143.6190000, ft0  = 0.232
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 2, (wrb) a4  <-- 1
                                                #; (f:fpu) ft3  <-- 143.8510000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 143.8510000, ft0  = 0.233
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 1, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 144.0840000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 144.0840000, ft0  = 0.234
                                                #; (f:fpu) ft3  <-- 144.3180000
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 144.3180000, ft0  = 0.2350000
                                                #; (f:fpu) ft3  <-- 144.5530000
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 144.5530000, ft0  = 0.2360000
                                                #; (f:fpu) ft3  <-- 144.7890000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 144.7890000, ft0  = 0.2370000
                                                #; (f:fpu) ft3  <-- 145.0260000
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 145.0260000, ft0  = 0.2380000
                                                #; (f:fpu) ft3  <-- 145.2640000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 145.2640000, ft0  = 0.2390000
                                                #; (f:fpu) ft3  <-- 145.5030000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 145.5030000, ft0  = 0.24
                                                #; (f:fpu) ft3  <-- 145.7430000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 145.7430000, ft0  = 0.241
                                                #; (f:fpu) ft3  <-- 145.9840000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 145.9840000, ft0  = 0.242
                                                #; (f:fpu) ft3  <-- 146.2260000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 146.2260000, ft0  = 0.243
                                                #; (f:fpu) ft3  <-- 146.4690000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 146.4690000, ft0  = 0.244
                                                #; (f:fpu) ft3  <-- 146.7130000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 146.7130000, ft0  = 0.245
                                                #; (f:fpu) ft3  <-- 146.9580000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 146.9580000, ft0  = 0.246
                                                #; (f:fpu) ft3  <-- 147.2040000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 147.2040000, ft0  = 0.247
                                                #; (f:fpu) ft3  <-- 147.4510000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 147.4510000, ft0  = 0.248
                                                #; (f:fpu) ft3  <-- 147.6990000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 147.6990000, ft0  = 0.249
                                                #; (f:fpu) ft3  <-- 147.9480000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 147.9480000, ft0  = 0.25
                                                #; (f:fpu) ft3  <-- 148.1980000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 148.1980000, ft0  = 0.251
                                                #; (f:fpu) ft3  <-- 148.4490000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.21, ft3  = 148.4490000
                                                #; (f:fpu) ft3  <-- 148.6590000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 148.6590000, ft0  = 0.211
                                                #; (f:fpu) ft3  <-- 148.8700000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 148.8700000, ft0  = 0.212
                                                #; (f:fpu) ft3  <-- 149.0820000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 149.0820000, ft0  = 0.213
                                                #; (f:fpu) ft3  <-- 149.2950000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 149.2950000, ft0  = 0.214
                                                #; (f:fpu) ft3  <-- 149.5090000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 149.5090000, ft0  = 0.215
                                                #; (f:fpu) ft3  <-- 149.7240000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 149.7240000, ft0  = 0.216
                                                #; (f:fpu) ft3  <-- 149.9400000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 149.9400000, ft0  = 0.217
                                                #; (f:fpu) ft3  <-- 150.1570000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 150.1570000, ft0  = 0.218
                                                #; (f:fpu) ft3  <-- 150.3750000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 150.3750000, ft0  = 0.219
                                                #; (f:fpu) ft3  <-- 150.5940000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 150.5940000, ft0  = 0.22
                                                #; (f:fpu) ft3  <-- 150.8140000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 150.8140000, ft0  = 0.221
                                                #; (f:fpu) ft3  <-- 151.0350000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 151.0350000, ft0  = 0.222
                                                #; (f:fpu) ft3  <-- 151.2570000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 151.2570000, ft0  = 0.223
                                                #; (f:fpu) ft3  <-- 151.4800000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 151.4800000, ft0  = 0.224
                                                #; (f:fpu) ft3  <-- 151.7040000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 151.7040000, ft0  = 0.225
                                                #; (f:fpu) ft3  <-- 151.9290000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 151.9290000, ft0  = 0.226
                                                #; (f:fpu) ft3  <-- 152.1550000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 152.1550000, ft0  = 0.227
                                                #; (f:fpu) ft3  <-- 152.3820000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 152.3820000, ft0  = 0.228
                                                #; (f:fpu) ft3  <-- 152.6100000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 152.6100000, ft0  = 0.229
                                                #; (f:fpu) ft3  <-- 152.8390000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 152.8390000, ft0  = 0.23
                                                #; (f:fpu) ft3  <-- 153.0690000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 153.0690000, ft0  = 0.231
                                                #; (f:fpu) ft3  <-- 153.3000000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 153.3000000, ft0  = 0.232
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 1, (wrb) a4  <-- 0
                                                #; (f:fpu) ft3  <-- 153.5320000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 153.5320000, ft0  = 0.233
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 0, not taken
                                                #; (f:fpu) ft3  <-- 153.7650000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 153.7650000, ft0  = 0.234
; sum (test_size.c:14)
;  in main (test_size.c:42)
      0x800008b0 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
      0x800008b4 bne     a0, a5, pc - 184       #; a0  = 2, a5  = 4, taken, goto 0x800007fc
                                                #; (f:fpu) ft3  <-- 153.9990000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 153.9990000, ft0  = 0.2350000
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800007fc li      a4, 5                  #; (wrb) a4  <-- 5
                                                #; (f:fpu) ft3  <-- 154.2340000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 154.2340000, ft0  = 0.2360000
                                                #; (f:fpu) ft3  <-- 154.4700000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 154.4700000, ft0  = 0.2370000
                                                #; (f:fpu) ft3  <-- 154.7070000
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 154.7070000, ft0  = 0.2380000
                                                #; (f:fpu) ft3  <-- 154.9450000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 154.9450000, ft0  = 0.2390000
                                                #; (f:fpu) ft3  <-- 155.1840000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 155.1840000, ft0  = 0.24
                                                #; (f:fpu) ft3  <-- 155.4240000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 155.4240000, ft0  = 0.241
                                                #; (f:fpu) ft3  <-- 155.6650000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 155.6650000, ft0  = 0.242
                                                #; (f:fpu) ft3  <-- 155.9070000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 155.9070000, ft0  = 0.243
                                                #; (f:fpu) ft3  <-- 156.1500000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 156.1500000, ft0  = 0.244
                                                #; (f:fpu) ft3  <-- 156.3940000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 156.3940000, ft0  = 0.245
                                                #; (f:fpu) ft3  <-- 156.6390000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 156.6390000, ft0  = 0.246
                                                #; (f:fpu) ft3  <-- 156.8850000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 156.8850000, ft0  = 0.247
                                                #; (f:fpu) ft3  <-- 157.1320000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 157.1320000, ft0  = 0.248
                                                #; (f:fpu) ft3  <-- 157.3800000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 157.3800000, ft0  = 0.249
                                                #; (f:fpu) ft3  <-- 157.6290000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 157.6290000, ft0  = 0.25
                                                #; (f:fpu) ft3  <-- 157.8790000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 157.8790000, ft0  = 0.251
                                                #; (f:fpu) ft3  <-- 158.1300000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.252, ft3  = 158.1300000
                                                #; (f:fpu) ft3  <-- 158.3820000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 158.3820000, ft0  = 0.253
                                                #; (f:fpu) ft3  <-- 158.6350000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 158.6350000, ft0  = 0.254
                                                #; (f:fpu) ft3  <-- 158.8890000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 158.8890000, ft0  = 0.255
                                                #; (f:fpu) ft3  <-- 159.1440000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 159.1440000, ft0  = 0.256
                                                #; (f:fpu) ft3  <-- 159.4000000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 159.4000000, ft0  = 0.257
                                                #; (f:fpu) ft3  <-- 159.6570000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 159.6570000, ft0  = 0.258
                                                #; (f:fpu) ft3  <-- 159.9150000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 159.9150000, ft0  = 0.259
                                                #; (f:fpu) ft3  <-- 160.1740000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 160.1740000, ft0  = 0.26
                                                #; (f:fpu) ft3  <-- 160.4340000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 160.4340000, ft0  = 0.261
                                                #; (f:fpu) ft3  <-- 160.6950000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 160.6950000, ft0  = 0.262
                                                #; (f:fpu) ft3  <-- 160.9570000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 160.9570000, ft0  = 0.263
                                                #; (f:fpu) ft3  <-- 161.2200000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 161.2200000, ft0  = 0.264
                                                #; (f:fpu) ft3  <-- 161.4840000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 161.4840000, ft0  = 0.265
                                                #; (f:fpu) ft3  <-- 161.7490000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 161.7490000, ft0  = 0.266
                                                #; (f:fpu) ft3  <-- 162.0150000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 162.0150000, ft0  = 0.267
                                                #; (f:fpu) ft3  <-- 162.2820000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 162.2820000, ft0  = 0.268
                                                #; (f:fpu) ft3  <-- 162.5500000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 162.5500000, ft0  = 0.269
                                                #; (f:fpu) ft3  <-- 162.8190000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 162.8190000, ft0  = 0.27
                                                #; (f:fpu) ft3  <-- 163.0890000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 163.0890000, ft0  = 0.271
                                                #; (f:fpu) ft3  <-- 163.3600000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 163.3600000, ft0  = 0.272
                                                #; (f:fpu) ft3  <-- 163.6320000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 163.6320000, ft0  = 0.273
                                                #; (f:fpu) ft3  <-- 163.9050000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 163.9050000, ft0  = 0.274
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 5, (wrb) a4  <-- 4
                                                #; (f:fpu) ft3  <-- 164.1790000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 164.1790000, ft0  = 0.275
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 4, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 164.4540000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 164.4540000, ft0  = 0.276
                                                #; (f:fpu) ft3  <-- 164.7300000
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 164.7300000, ft0  = 0.277
                                                #; (f:fpu) ft3  <-- 165.0070000
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 165.0070000, ft0  = 0.278
                                                #; (f:fpu) ft3  <-- 165.2850000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 165.2850000, ft0  = 0.279
                                                #; (f:fpu) ft3  <-- 165.5640000
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 165.5640000, ft0  = 0.28
                                                #; (f:fpu) ft3  <-- 165.8440000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 165.8440000, ft0  = 0.281
                                                #; (f:fpu) ft3  <-- 166.1250000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 166.1250000, ft0  = 0.2820000
                                                #; (f:fpu) ft3  <-- 166.4070000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 166.4070000, ft0  = 0.2830000
                                                #; (f:fpu) ft3  <-- 166.6900000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 166.6900000, ft0  = 0.2840000
                                                #; (f:fpu) ft3  <-- 166.9740000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 166.9740000, ft0  = 0.2850000
                                                #; (f:fpu) ft3  <-- 167.2590000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 167.2590000, ft0  = 0.2860000
                                                #; (f:fpu) ft3  <-- 167.5450000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 167.5450000, ft0  = 0.2870000
                                                #; (f:fpu) ft3  <-- 167.8320000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 167.8320000, ft0  = 0.2880000
                                                #; (f:fpu) ft3  <-- 168.1200000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 168.1200000, ft0  = 0.289
                                                #; (f:fpu) ft3  <-- 168.4090000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 168.4090000, ft0  = 0.29
                                                #; (f:fpu) ft3  <-- 168.6990000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 168.6990000, ft0  = 0.291
                                                #; (f:fpu) ft3  <-- 168.9900000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 168.9900000, ft0  = 0.292
                                                #; (f:fpu) ft3  <-- 169.2820000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 169.2820000, ft0  = 0.293
                                                #; (f:fpu) ft3  <-- 169.5750000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.252, ft3  = 169.5750000
                                                #; (f:fpu) ft3  <-- 169.8270000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 169.8270000, ft0  = 0.253
                                                #; (f:fpu) ft3  <-- 170.0800000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 170.0800000, ft0  = 0.254
                                                #; (f:fpu) ft3  <-- 170.3340000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 170.3340000, ft0  = 0.255
                                                #; (f:fpu) ft3  <-- 170.5890000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 170.5890000, ft0  = 0.256
                                                #; (f:fpu) ft3  <-- 170.8450000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 170.8450000, ft0  = 0.257
                                                #; (f:fpu) ft3  <-- 171.1020000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 171.1020000, ft0  = 0.258
                                                #; (f:fpu) ft3  <-- 171.3600000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 171.3600000, ft0  = 0.259
                                                #; (f:fpu) ft3  <-- 171.6190000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 171.6190000, ft0  = 0.26
                                                #; (f:fpu) ft3  <-- 171.8790000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 171.8790000, ft0  = 0.261
                                                #; (f:fpu) ft3  <-- 172.1400000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 172.1400000, ft0  = 0.262
                                                #; (f:fpu) ft3  <-- 172.4020000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 172.4020000, ft0  = 0.263
                                                #; (f:fpu) ft3  <-- 172.6650000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 172.6650000, ft0  = 0.264
                                                #; (f:fpu) ft3  <-- 172.9290000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 172.9290000, ft0  = 0.265
                                                #; (f:fpu) ft3  <-- 173.1940000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 173.1940000, ft0  = 0.266
                                                #; (f:fpu) ft3  <-- 173.4600000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 173.4600000, ft0  = 0.267
                                                #; (f:fpu) ft3  <-- 173.7270000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 173.7270000, ft0  = 0.268
                                                #; (f:fpu) ft3  <-- 173.9950000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 173.9950000, ft0  = 0.269
                                                #; (f:fpu) ft3  <-- 174.2640000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 174.2640000, ft0  = 0.27
                                                #; (f:fpu) ft3  <-- 174.5340000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 174.5340000, ft0  = 0.271
                                                #; (f:fpu) ft3  <-- 174.8050000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 174.8050000, ft0  = 0.272
                                                #; (f:fpu) ft3  <-- 175.0770000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 175.0770000, ft0  = 0.273
                                                #; (f:fpu) ft3  <-- 175.3500000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 175.3500000, ft0  = 0.274
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 4, (wrb) a4  <-- 3
                                                #; (f:fpu) ft3  <-- 175.6240000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 175.6240000, ft0  = 0.275
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 3, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 175.8990000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 175.8990000, ft0  = 0.276
                                                #; (f:fpu) ft3  <-- 176.1750000
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 176.1750000, ft0  = 0.277
                                                #; (f:fpu) ft3  <-- 176.4520000
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 176.4520000, ft0  = 0.278
                                                #; (f:fpu) ft3  <-- 176.7300000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 176.7300000, ft0  = 0.279
                                                #; (f:fpu) ft3  <-- 177.0090000
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 177.0090000, ft0  = 0.28
                                                #; (f:fpu) ft3  <-- 177.2890000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 177.2890000, ft0  = 0.281
                                                #; (f:fpu) ft3  <-- 177.5700000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 177.5700000, ft0  = 0.2820000
                                                #; (f:fpu) ft3  <-- 177.8520000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 177.8520000, ft0  = 0.2830000
                                                #; (f:fpu) ft3  <-- 178.1350000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 178.1350000, ft0  = 0.2840000
                                                #; (f:fpu) ft3  <-- 178.4190000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 178.4190000, ft0  = 0.2850000
                                                #; (f:fpu) ft3  <-- 178.7040000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 178.7040000, ft0  = 0.2860000
                                                #; (f:fpu) ft3  <-- 178.9900000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 178.9900000, ft0  = 0.2870000
                                                #; (f:fpu) ft3  <-- 179.2770000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 179.2770000, ft0  = 0.2880000
                                                #; (f:fpu) ft3  <-- 179.5650000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 179.5650000, ft0  = 0.289
                                                #; (f:fpu) ft3  <-- 179.8540000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 179.8540000, ft0  = 0.29
                                                #; (f:fpu) ft3  <-- 180.1440000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 180.1440000, ft0  = 0.291
                                                #; (f:fpu) ft3  <-- 180.4350000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 180.4350000, ft0  = 0.292
                                                #; (f:fpu) ft3  <-- 180.7270000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 180.7270000, ft0  = 0.293
                                                #; (f:fpu) ft3  <-- 181.0200000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.252, ft3  = 181.0200000
                                                #; (f:fpu) ft3  <-- 181.2720000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 181.2720000, ft0  = 0.253
                                                #; (f:fpu) ft3  <-- 181.5250000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 181.5250000, ft0  = 0.254
                                                #; (f:fpu) ft3  <-- 181.7790000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 181.7790000, ft0  = 0.255
                                                #; (f:fpu) ft3  <-- 182.0340000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 182.0340000, ft0  = 0.256
                                                #; (f:fpu) ft3  <-- 182.2900000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 182.2900000, ft0  = 0.257
                                                #; (f:fpu) ft3  <-- 182.5470000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 182.5470000, ft0  = 0.258
                                                #; (f:fpu) ft3  <-- 182.8050000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 182.8050000, ft0  = 0.259
                                                #; (f:fpu) ft3  <-- 183.0640000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 183.0640000, ft0  = 0.26
                                                #; (f:fpu) ft3  <-- 183.324
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 183.324, ft0  = 0.261
                                                #; (f:fpu) ft3  <-- 183.585
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 183.585, ft0  = 0.262
                                                #; (f:fpu) ft3  <-- 183.847
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 183.847, ft0  = 0.263
                                                #; (f:fpu) ft3  <-- 184.11
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 184.11, ft0  = 0.264
                                                #; (f:fpu) ft3  <-- 184.3740000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 184.3740000, ft0  = 0.265
                                                #; (f:fpu) ft3  <-- 184.639
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 184.639, ft0  = 0.266
                                                #; (f:fpu) ft3  <-- 184.905
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 184.905, ft0  = 0.267
                                                #; (f:fpu) ft3  <-- 185.172
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 185.172, ft0  = 0.268
                                                #; (f:fpu) ft3  <-- 185.44
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 185.44, ft0  = 0.269
                                                #; (f:fpu) ft3  <-- 185.709
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 185.709, ft0  = 0.27
                                                #; (f:fpu) ft3  <-- 185.979
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 185.979, ft0  = 0.271
                                                #; (f:fpu) ft3  <-- 186.25
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 186.25, ft0  = 0.272
                                                #; (f:fpu) ft3  <-- 186.522
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 186.522, ft0  = 0.273
                                                #; (f:fpu) ft3  <-- 186.795
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 186.795, ft0  = 0.274
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 3, (wrb) a4  <-- 2
                                                #; (f:fpu) ft3  <-- 187.069
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 187.069, ft0  = 0.275
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 2, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 187.344
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 187.344, ft0  = 0.276
                                                #; (f:fpu) ft3  <-- 187.62
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 187.62, ft0  = 0.277
                                                #; (f:fpu) ft3  <-- 187.897
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 187.897, ft0  = 0.278
                                                #; (f:fpu) ft3  <-- 188.1750000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 188.1750000, ft0  = 0.279
                                                #; (f:fpu) ft3  <-- 188.4540000
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 188.4540000, ft0  = 0.28
                                                #; (f:fpu) ft3  <-- 188.7340000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 188.7340000, ft0  = 0.281
                                                #; (f:fpu) ft3  <-- 189.015
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 189.015, ft0  = 0.2820000
                                                #; (f:fpu) ft3  <-- 189.297
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 189.297, ft0  = 0.2830000
                                                #; (f:fpu) ft3  <-- 189.5800000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 189.5800000, ft0  = 0.2840000
                                                #; (f:fpu) ft3  <-- 189.8640000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 189.8640000, ft0  = 0.2850000
                                                #; (f:fpu) ft3  <-- 190.1490000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 190.1490000, ft0  = 0.2860000
                                                #; (f:fpu) ft3  <-- 190.4350000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 190.4350000, ft0  = 0.2870000
                                                #; (f:fpu) ft3  <-- 190.7220000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 190.7220000, ft0  = 0.2880000
                                                #; (f:fpu) ft3  <-- 191.01
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 191.01, ft0  = 0.289
                                                #; (f:fpu) ft3  <-- 191.2990000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 191.2990000, ft0  = 0.29
                                                #; (f:fpu) ft3  <-- 191.5890000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 191.5890000, ft0  = 0.291
                                                #; (f:fpu) ft3  <-- 191.8800000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 191.8800000, ft0  = 0.292
                                                #; (f:fpu) ft3  <-- 192.1720000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 192.1720000, ft0  = 0.293
                                                #; (f:fpu) ft3  <-- 192.4650000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.252, ft3  = 192.4650000
                                                #; (f:fpu) ft3  <-- 192.7170000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 192.7170000, ft0  = 0.253
                                                #; (f:fpu) ft3  <-- 192.9700000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 192.9700000, ft0  = 0.254
                                                #; (f:fpu) ft3  <-- 193.2240000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 193.2240000, ft0  = 0.255
                                                #; (f:fpu) ft3  <-- 193.4790000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 193.4790000, ft0  = 0.256
                                                #; (f:fpu) ft3  <-- 193.7350000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 193.7350000, ft0  = 0.257
                                                #; (f:fpu) ft3  <-- 193.9920000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 193.9920000, ft0  = 0.258
                                                #; (f:fpu) ft3  <-- 194.2500000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 194.2500000, ft0  = 0.259
                                                #; (f:fpu) ft3  <-- 194.5090000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 194.5090000, ft0  = 0.26
                                                #; (f:fpu) ft3  <-- 194.7690000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 194.7690000, ft0  = 0.261
                                                #; (f:fpu) ft3  <-- 195.0300000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 195.0300000, ft0  = 0.262
                                                #; (f:fpu) ft3  <-- 195.2920000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 195.2920000, ft0  = 0.263
                                                #; (f:fpu) ft3  <-- 195.5550000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 195.5550000, ft0  = 0.264
                                                #; (f:fpu) ft3  <-- 195.8190000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 195.8190000, ft0  = 0.265
                                                #; (f:fpu) ft3  <-- 196.0840000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 196.0840000, ft0  = 0.266
                                                #; (f:fpu) ft3  <-- 196.3500000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 196.3500000, ft0  = 0.267
                                                #; (f:fpu) ft3  <-- 196.6170000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 196.6170000, ft0  = 0.268
                                                #; (f:fpu) ft3  <-- 196.8850000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 196.8850000, ft0  = 0.269
                                                #; (f:fpu) ft3  <-- 197.1540000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 197.1540000, ft0  = 0.27
                                                #; (f:fpu) ft3  <-- 197.4240000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 197.4240000, ft0  = 0.271
                                                #; (f:fpu) ft3  <-- 197.6950000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 197.6950000, ft0  = 0.272
                                                #; (f:fpu) ft3  <-- 197.9670000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 197.9670000, ft0  = 0.273
                                                #; (f:fpu) ft3  <-- 198.2400000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 198.2400000, ft0  = 0.274
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 2, (wrb) a4  <-- 1
                                                #; (f:fpu) ft3  <-- 198.5140000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 198.5140000, ft0  = 0.275
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 1, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 198.7890000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 198.7890000, ft0  = 0.276
                                                #; (f:fpu) ft3  <-- 199.0650000
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 199.0650000, ft0  = 0.277
                                                #; (f:fpu) ft3  <-- 199.3420000
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 199.3420000, ft0  = 0.278
                                                #; (f:fpu) ft3  <-- 199.6200000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 199.6200000, ft0  = 0.279
                                                #; (f:fpu) ft3  <-- 199.8990000
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 199.8990000, ft0  = 0.28
                                                #; (f:fpu) ft3  <-- 200.1790000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 200.1790000, ft0  = 0.281
                                                #; (f:fpu) ft3  <-- 200.4600000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 200.4600000, ft0  = 0.2820000
                                                #; (f:fpu) ft3  <-- 200.7420000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 200.7420000, ft0  = 0.2830000
                                                #; (f:fpu) ft3  <-- 201.0250000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 201.0250000, ft0  = 0.2840000
                                                #; (f:fpu) ft3  <-- 201.3090000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 201.3090000, ft0  = 0.2850000
                                                #; (f:fpu) ft3  <-- 201.5940000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 201.5940000, ft0  = 0.2860000
                                                #; (f:fpu) ft3  <-- 201.8800000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 201.8800000, ft0  = 0.2870000
                                                #; (f:fpu) ft3  <-- 202.1670000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 202.1670000, ft0  = 0.2880000
                                                #; (f:fpu) ft3  <-- 202.4550000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 202.4550000, ft0  = 0.289
                                                #; (f:fpu) ft3  <-- 202.7440000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 202.7440000, ft0  = 0.29
                                                #; (f:fpu) ft3  <-- 203.0340000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 203.0340000, ft0  = 0.291
                                                #; (f:fpu) ft3  <-- 203.3250000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 203.3250000, ft0  = 0.292
                                                #; (f:fpu) ft3  <-- 203.6170000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 203.6170000, ft0  = 0.293
                                                #; (f:fpu) ft3  <-- 203.9100000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.252, ft3  = 203.9100000
                                                #; (f:fpu) ft3  <-- 204.1620000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 204.1620000, ft0  = 0.253
                                                #; (f:fpu) ft3  <-- 204.4150000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 204.4150000, ft0  = 0.254
                                                #; (f:fpu) ft3  <-- 204.6690000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 204.6690000, ft0  = 0.255
                                                #; (f:fpu) ft3  <-- 204.9240000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 204.9240000, ft0  = 0.256
                                                #; (f:fpu) ft3  <-- 205.1800000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 205.1800000, ft0  = 0.257
                                                #; (f:fpu) ft3  <-- 205.4370000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 205.4370000, ft0  = 0.258
                                                #; (f:fpu) ft3  <-- 205.6950000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 205.6950000, ft0  = 0.259
                                                #; (f:fpu) ft3  <-- 205.9540000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 205.9540000, ft0  = 0.26
                                                #; (f:fpu) ft3  <-- 206.2140000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 206.2140000, ft0  = 0.261
                                                #; (f:fpu) ft3  <-- 206.4750000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 206.4750000, ft0  = 0.262
                                                #; (f:fpu) ft3  <-- 206.7370000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 206.7370000, ft0  = 0.263
                                                #; (f:fpu) ft3  <-- 207.0000000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 207.0000000, ft0  = 0.264
                                                #; (f:fpu) ft3  <-- 207.2640000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 207.2640000, ft0  = 0.265
                                                #; (f:fpu) ft3  <-- 207.5290000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 207.5290000, ft0  = 0.266
                                                #; (f:fpu) ft3  <-- 207.7950000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 207.7950000, ft0  = 0.267
                                                #; (f:fpu) ft3  <-- 208.0620000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 208.0620000, ft0  = 0.268
                                                #; (f:fpu) ft3  <-- 208.3300000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 208.3300000, ft0  = 0.269
                                                #; (f:fpu) ft3  <-- 208.5990000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 208.5990000, ft0  = 0.27
                                                #; (f:fpu) ft3  <-- 208.8690000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 208.8690000, ft0  = 0.271
                                                #; (f:fpu) ft3  <-- 209.1400000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 209.1400000, ft0  = 0.272
                                                #; (f:fpu) ft3  <-- 209.4120000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 209.4120000, ft0  = 0.273
                                                #; (f:fpu) ft3  <-- 209.6850000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 209.6850000, ft0  = 0.274
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 1, (wrb) a4  <-- 0
                                                #; (f:fpu) ft3  <-- 209.9590000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 209.9590000, ft0  = 0.275
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 0, not taken
                                                #; (f:fpu) ft3  <-- 210.2340000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 210.2340000, ft0  = 0.276
; sum (test_size.c:14)
;  in main (test_size.c:42)
      0x800008b0 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
      0x800008b4 bne     a0, a5, pc - 184       #; a0  = 3, a5  = 4, taken, goto 0x800007fc
                                                #; (f:fpu) ft3  <-- 210.5100000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 210.5100000, ft0  = 0.277
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800007fc li      a4, 5                  #; (wrb) a4  <-- 5
                                                #; (f:fpu) ft3  <-- 210.7870000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 210.7870000, ft0  = 0.278
                                                #; (f:fpu) ft3  <-- 211.0650000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 211.0650000, ft0  = 0.279
                                                #; (f:fpu) ft3  <-- 211.3440000
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 211.3440000, ft0  = 0.28
                                                #; (f:fpu) ft3  <-- 211.6240000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 211.6240000, ft0  = 0.281
                                                #; (f:fpu) ft3  <-- 211.9050000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 211.9050000, ft0  = 0.2820000
                                                #; (f:fpu) ft3  <-- 212.1870000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 212.1870000, ft0  = 0.2830000
                                                #; (f:fpu) ft3  <-- 212.4700000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 212.4700000, ft0  = 0.2840000
                                                #; (f:fpu) ft3  <-- 212.7540000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 212.7540000, ft0  = 0.2850000
                                                #; (f:fpu) ft3  <-- 213.0390000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 213.0390000, ft0  = 0.2860000
                                                #; (f:fpu) ft3  <-- 213.3250000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 213.3250000, ft0  = 0.2870000
                                                #; (f:fpu) ft3  <-- 213.6120000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 213.6120000, ft0  = 0.2880000
                                                #; (f:fpu) ft3  <-- 213.9000000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 213.9000000, ft0  = 0.289
                                                #; (f:fpu) ft3  <-- 214.1890000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 214.1890000, ft0  = 0.29
                                                #; (f:fpu) ft3  <-- 214.4790000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 214.4790000, ft0  = 0.291
                                                #; (f:fpu) ft3  <-- 214.7700000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 214.7700000, ft0  = 0.292
                                                #; (f:fpu) ft3  <-- 215.0620000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 215.0620000, ft0  = 0.293
                                                #; (f:fpu) ft3  <-- 215.3550000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.294, ft3  = 215.3550000
                                                #; (f:fpu) ft3  <-- 215.6490000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 215.6490000, ft0  = 0.295
                                                #; (f:fpu) ft3  <-- 215.9440000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 215.9440000, ft0  = 0.296
                                                #; (f:fpu) ft3  <-- 216.2400000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 216.2400000, ft0  = 0.297
                                                #; (f:fpu) ft3  <-- 216.5370000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 216.5370000, ft0  = 0.298
                                                #; (f:fpu) ft3  <-- 216.8350000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 216.8350000, ft0  = 0.299
                                                #; (f:fpu) ft3  <-- 217.1340000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 217.1340000, ft0  = 0.3
                                                #; (f:fpu) ft3  <-- 217.4340000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 217.4340000, ft0  = 0.301
                                                #; (f:fpu) ft3  <-- 217.7350000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 217.7350000, ft0  = 0.302
                                                #; (f:fpu) ft3  <-- 218.0370000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 218.0370000, ft0  = 0.303
                                                #; (f:fpu) ft3  <-- 218.3400000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 218.3400000, ft0  = 0.304
                                                #; (f:fpu) ft3  <-- 218.6440000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 218.6440000, ft0  = 0.305
                                                #; (f:fpu) ft3  <-- 218.9490000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 218.9490000, ft0  = 0.306
                                                #; (f:fpu) ft3  <-- 219.2550000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 219.2550000, ft0  = 0.307
                                                #; (f:fpu) ft3  <-- 219.5620000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 219.5620000, ft0  = 0.308
                                                #; (f:fpu) ft3  <-- 219.8700000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 219.8700000, ft0  = 0.309
                                                #; (f:fpu) ft3  <-- 220.1790000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 220.1790000, ft0  = 0.31
                                                #; (f:fpu) ft3  <-- 220.4890000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 220.4890000, ft0  = 0.311
                                                #; (f:fpu) ft3  <-- 220.8000000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 220.8000000, ft0  = 0.312
                                                #; (f:fpu) ft3  <-- 221.1120000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 221.1120000, ft0  = 0.313
                                                #; (f:fpu) ft3  <-- 221.4250000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 221.4250000, ft0  = 0.314
                                                #; (f:fpu) ft3  <-- 221.7390000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 221.7390000, ft0  = 0.315
                                                #; (f:fpu) ft3  <-- 222.0540000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 222.0540000, ft0  = 0.316
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 5, (wrb) a4  <-- 4
                                                #; (f:fpu) ft3  <-- 222.3700000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 222.3700000, ft0  = 0.317
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 4, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 222.6870000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 222.6870000, ft0  = 0.318
                                                #; (f:fpu) ft3  <-- 223.0050000
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 223.0050000, ft0  = 0.319
                                                #; (f:fpu) ft3  <-- 223.3240000
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 223.3240000, ft0  = 0.32
                                                #; (f:fpu) ft3  <-- 223.6440000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 223.6440000, ft0  = 0.321
                                                #; (f:fpu) ft3  <-- 223.9650000
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 223.9650000, ft0  = 0.322
                                                #; (f:fpu) ft3  <-- 224.2870000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 224.2870000, ft0  = 0.323
                                                #; (f:fpu) ft3  <-- 224.6100000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 224.6100000, ft0  = 0.324
                                                #; (f:fpu) ft3  <-- 224.9340000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 224.9340000, ft0  = 0.325
                                                #; (f:fpu) ft3  <-- 225.2590000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 225.2590000, ft0  = 0.326
                                                #; (f:fpu) ft3  <-- 225.5850000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 225.5850000, ft0  = 0.327
                                                #; (f:fpu) ft3  <-- 225.9120000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 225.9120000, ft0  = 0.328
                                                #; (f:fpu) ft3  <-- 226.2400000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 226.2400000, ft0  = 0.329
                                                #; (f:fpu) ft3  <-- 226.5690000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 226.5690000, ft0  = 0.33
                                                #; (f:fpu) ft3  <-- 226.8990000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 226.8990000, ft0  = 0.331
                                                #; (f:fpu) ft3  <-- 227.2300000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 227.2300000, ft0  = 0.332
                                                #; (f:fpu) ft3  <-- 227.5620000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 227.5620000, ft0  = 0.333
                                                #; (f:fpu) ft3  <-- 227.8950000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 227.8950000, ft0  = 0.334
                                                #; (f:fpu) ft3  <-- 228.2290000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 228.2290000, ft0  = 0.335
                                                #; (f:fpu) ft3  <-- 228.5640000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.294, ft3  = 228.5640000
                                                #; (f:fpu) ft3  <-- 228.8580000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 228.8580000, ft0  = 0.295
                                                #; (f:fpu) ft3  <-- 229.1530000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 229.1530000, ft0  = 0.296
                                                #; (f:fpu) ft3  <-- 229.4490000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 229.4490000, ft0  = 0.297
                                                #; (f:fpu) ft3  <-- 229.7460000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 229.7460000, ft0  = 0.298
                                                #; (f:fpu) ft3  <-- 230.0440000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 230.0440000, ft0  = 0.299
                                                #; (f:fpu) ft3  <-- 230.3430000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 230.3430000, ft0  = 0.3
                                                #; (f:fpu) ft3  <-- 230.6430000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 230.6430000, ft0  = 0.301
                                                #; (f:fpu) ft3  <-- 230.9440000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 230.9440000, ft0  = 0.302
                                                #; (f:fpu) ft3  <-- 231.2460000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 231.2460000, ft0  = 0.303
                                                #; (f:fpu) ft3  <-- 231.5490000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 231.5490000, ft0  = 0.304
                                                #; (f:fpu) ft3  <-- 231.8530000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 231.8530000, ft0  = 0.305
                                                #; (f:fpu) ft3  <-- 232.1580000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 232.1580000, ft0  = 0.306
                                                #; (f:fpu) ft3  <-- 232.4640000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 232.4640000, ft0  = 0.307
                                                #; (f:fpu) ft3  <-- 232.7710000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 232.7710000, ft0  = 0.308
                                                #; (f:fpu) ft3  <-- 233.0790000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 233.0790000, ft0  = 0.309
                                                #; (f:fpu) ft3  <-- 233.3880000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 233.3880000, ft0  = 0.31
                                                #; (f:fpu) ft3  <-- 233.6980000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 233.6980000, ft0  = 0.311
                                                #; (f:fpu) ft3  <-- 234.0090000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 234.0090000, ft0  = 0.312
                                                #; (f:fpu) ft3  <-- 234.3210000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 234.3210000, ft0  = 0.313
                                                #; (f:fpu) ft3  <-- 234.6340000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 234.6340000, ft0  = 0.314
                                                #; (f:fpu) ft3  <-- 234.9480000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 234.9480000, ft0  = 0.315
                                                #; (f:fpu) ft3  <-- 235.2630000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 235.2630000, ft0  = 0.316
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 4, (wrb) a4  <-- 3
                                                #; (f:fpu) ft3  <-- 235.5790000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 235.5790000, ft0  = 0.317
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 3, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 235.8960000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 235.8960000, ft0  = 0.318
                                                #; (f:fpu) ft3  <-- 236.2140000
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 236.2140000, ft0  = 0.319
                                                #; (f:fpu) ft3  <-- 236.5330000
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 236.5330000, ft0  = 0.32
                                                #; (f:fpu) ft3  <-- 236.8530000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 236.8530000, ft0  = 0.321
                                                #; (f:fpu) ft3  <-- 237.1740000
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 237.1740000, ft0  = 0.322
                                                #; (f:fpu) ft3  <-- 237.4960000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 237.4960000, ft0  = 0.323
                                                #; (f:fpu) ft3  <-- 237.8190000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 237.8190000, ft0  = 0.324
                                                #; (f:fpu) ft3  <-- 238.1430000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 238.1430000, ft0  = 0.325
                                                #; (f:fpu) ft3  <-- 238.4680000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 238.4680000, ft0  = 0.326
                                                #; (f:fpu) ft3  <-- 238.7940000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 238.7940000, ft0  = 0.327
                                                #; (f:fpu) ft3  <-- 239.1210000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 239.1210000, ft0  = 0.328
                                                #; (f:fpu) ft3  <-- 239.4490000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 239.4490000, ft0  = 0.329
                                                #; (f:fpu) ft3  <-- 239.7780000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 239.7780000, ft0  = 0.33
                                                #; (f:fpu) ft3  <-- 240.1080000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 240.1080000, ft0  = 0.331
                                                #; (f:fpu) ft3  <-- 240.4390000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 240.4390000, ft0  = 0.332
                                                #; (f:fpu) ft3  <-- 240.7710000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 240.7710000, ft0  = 0.333
                                                #; (f:fpu) ft3  <-- 241.1040000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 241.1040000, ft0  = 0.334
                                                #; (f:fpu) ft3  <-- 241.4380000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 241.4380000, ft0  = 0.335
                                                #; (f:fpu) ft3  <-- 241.7730000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.294, ft3  = 241.7730000
                                                #; (f:fpu) ft3  <-- 242.0670000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 242.0670000, ft0  = 0.295
                                                #; (f:fpu) ft3  <-- 242.3620000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 242.3620000, ft0  = 0.296
                                                #; (f:fpu) ft3  <-- 242.6580000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 242.6580000, ft0  = 0.297
                                                #; (f:fpu) ft3  <-- 242.9550000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 242.9550000, ft0  = 0.298
                                                #; (f:fpu) ft3  <-- 243.2530000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 243.2530000, ft0  = 0.299
                                                #; (f:fpu) ft3  <-- 243.5520000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 243.5520000, ft0  = 0.3
                                                #; (f:fpu) ft3  <-- 243.8520000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 243.8520000, ft0  = 0.301
                                                #; (f:fpu) ft3  <-- 244.1530000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 244.1530000, ft0  = 0.302
                                                #; (f:fpu) ft3  <-- 244.4550000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 244.4550000, ft0  = 0.303
                                                #; (f:fpu) ft3  <-- 244.7580000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 244.7580000, ft0  = 0.304
                                                #; (f:fpu) ft3  <-- 245.0620000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 245.0620000, ft0  = 0.305
                                                #; (f:fpu) ft3  <-- 245.3670000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 245.3670000, ft0  = 0.306
                                                #; (f:fpu) ft3  <-- 245.6730000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 245.6730000, ft0  = 0.307
                                                #; (f:fpu) ft3  <-- 245.9800000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 245.9800000, ft0  = 0.308
                                                #; (f:fpu) ft3  <-- 246.2880000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 246.2880000, ft0  = 0.309
                                                #; (f:fpu) ft3  <-- 246.5970000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 246.5970000, ft0  = 0.31
                                                #; (f:fpu) ft3  <-- 246.9070000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 246.9070000, ft0  = 0.311
                                                #; (f:fpu) ft3  <-- 247.2180000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 247.2180000, ft0  = 0.312
                                                #; (f:fpu) ft3  <-- 247.5300000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 247.5300000, ft0  = 0.313
                                                #; (f:fpu) ft3  <-- 247.8430000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 247.8430000, ft0  = 0.314
                                                #; (f:fpu) ft3  <-- 248.1570000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 248.1570000, ft0  = 0.315
                                                #; (f:fpu) ft3  <-- 248.4720000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 248.4720000, ft0  = 0.316
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 3, (wrb) a4  <-- 2
                                                #; (f:fpu) ft3  <-- 248.7880000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 248.7880000, ft0  = 0.317
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 2, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 249.1050000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 249.1050000, ft0  = 0.318
                                                #; (f:fpu) ft3  <-- 249.4230000
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 249.4230000, ft0  = 0.319
                                                #; (f:fpu) ft3  <-- 249.7420000
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 249.7420000, ft0  = 0.32
                                                #; (f:fpu) ft3  <-- 250.0620000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 250.0620000, ft0  = 0.321
                                                #; (f:fpu) ft3  <-- 250.3830000
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 250.3830000, ft0  = 0.322
                                                #; (f:fpu) ft3  <-- 250.7050000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 250.7050000, ft0  = 0.323
                                                #; (f:fpu) ft3  <-- 251.0280000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 251.0280000, ft0  = 0.324
                                                #; (f:fpu) ft3  <-- 251.3520000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 251.3520000, ft0  = 0.325
                                                #; (f:fpu) ft3  <-- 251.6770000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 251.6770000, ft0  = 0.326
                                                #; (f:fpu) ft3  <-- 252.0030000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 252.0030000, ft0  = 0.327
                                                #; (f:fpu) ft3  <-- 252.3300000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 252.3300000, ft0  = 0.328
                                                #; (f:fpu) ft3  <-- 252.6580000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 252.6580000, ft0  = 0.329
                                                #; (f:fpu) ft3  <-- 252.9870000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 252.9870000, ft0  = 0.33
                                                #; (f:fpu) ft3  <-- 253.3170000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 253.3170000, ft0  = 0.331
                                                #; (f:fpu) ft3  <-- 253.6480000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 253.6480000, ft0  = 0.332
                                                #; (f:fpu) ft3  <-- 253.9800000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 253.9800000, ft0  = 0.333
                                                #; (f:fpu) ft3  <-- 254.3130000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 254.3130000, ft0  = 0.334
                                                #; (f:fpu) ft3  <-- 254.6470000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 254.6470000, ft0  = 0.335
                                                #; (f:fpu) ft3  <-- 254.9820000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.294, ft3  = 254.9820000
                                                #; (f:fpu) ft3  <-- 255.2760000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 255.2760000, ft0  = 0.295
                                                #; (f:fpu) ft3  <-- 255.5710000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 255.5710000, ft0  = 0.296
                                                #; (f:fpu) ft3  <-- 255.8670000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 255.8670000, ft0  = 0.297
                                                #; (f:fpu) ft3  <-- 256.1640000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 256.1640000, ft0  = 0.298
                                                #; (f:fpu) ft3  <-- 256.4620000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 256.4620000, ft0  = 0.299
                                                #; (f:fpu) ft3  <-- 256.7610000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 256.7610000, ft0  = 0.3
                                                #; (f:fpu) ft3  <-- 257.0610000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 257.0610000, ft0  = 0.301
                                                #; (f:fpu) ft3  <-- 257.3620000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 257.3620000, ft0  = 0.302
                                                #; (f:fpu) ft3  <-- 257.6640000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 257.6640000, ft0  = 0.303
                                                #; (f:fpu) ft3  <-- 257.9670000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 257.9670000, ft0  = 0.304
                                                #; (f:fpu) ft3  <-- 258.2710000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 258.2710000, ft0  = 0.305
                                                #; (f:fpu) ft3  <-- 258.5760000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 258.5760000, ft0  = 0.306
                                                #; (f:fpu) ft3  <-- 258.8820000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 258.8820000, ft0  = 0.307
                                                #; (f:fpu) ft3  <-- 259.1890000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 259.1890000, ft0  = 0.308
                                                #; (f:fpu) ft3  <-- 259.4970000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 259.4970000, ft0  = 0.309
                                                #; (f:fpu) ft3  <-- 259.8060000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 259.8060000, ft0  = 0.31
                                                #; (f:fpu) ft3  <-- 260.1160000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 260.1160000, ft0  = 0.311
                                                #; (f:fpu) ft3  <-- 260.4270000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 260.4270000, ft0  = 0.312
                                                #; (f:fpu) ft3  <-- 260.7390000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 260.7390000, ft0  = 0.313
                                                #; (f:fpu) ft3  <-- 261.0520000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 261.0520000, ft0  = 0.314
                                                #; (f:fpu) ft3  <-- 261.3660000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 261.3660000, ft0  = 0.315
                                                #; (f:fpu) ft3  <-- 261.6810000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 261.6810000, ft0  = 0.316
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 2, (wrb) a4  <-- 1
                                                #; (f:fpu) ft3  <-- 261.9970000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 261.9970000, ft0  = 0.317
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 1, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 262.3140000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 262.3140000, ft0  = 0.318
                                                #; (f:fpu) ft3  <-- 262.6320000
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 262.6320000, ft0  = 0.319
                                                #; (f:fpu) ft3  <-- 262.9510000
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 262.9510000, ft0  = 0.32
                                                #; (f:fpu) ft3  <-- 263.2710000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 263.2710000, ft0  = 0.321
                                                #; (f:fpu) ft3  <-- 263.5920000
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 263.5920000, ft0  = 0.322
                                                #; (f:fpu) ft3  <-- 263.9140000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 263.9140000, ft0  = 0.323
                                                #; (f:fpu) ft3  <-- 264.2370000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 264.2370000, ft0  = 0.324
                                                #; (f:fpu) ft3  <-- 264.5610000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 264.5610000, ft0  = 0.325
                                                #; (f:fpu) ft3  <-- 264.8860000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 264.8860000, ft0  = 0.326
                                                #; (f:fpu) ft3  <-- 265.2120000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 265.2120000, ft0  = 0.327
                                                #; (f:fpu) ft3  <-- 265.5390000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 265.5390000, ft0  = 0.328
                                                #; (f:fpu) ft3  <-- 265.8670000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 265.8670000, ft0  = 0.329
                                                #; (f:fpu) ft3  <-- 266.1960000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 266.1960000, ft0  = 0.33
                                                #; (f:fpu) ft3  <-- 266.5260000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 266.5260000, ft0  = 0.331
                                                #; (f:fpu) ft3  <-- 266.8570000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 266.8570000, ft0  = 0.332
                                                #; (f:fpu) ft3  <-- 267.1890000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 267.1890000, ft0  = 0.333
                                                #; (f:fpu) ft3  <-- 267.5220000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 267.5220000, ft0  = 0.334
                                                #; (f:fpu) ft3  <-- 267.8560000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 267.8560000, ft0  = 0.335
                                                #; (f:fpu) ft3  <-- 268.1910000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.294, ft3  = 268.1910000
                                                #; (f:fpu) ft3  <-- 268.4850000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 268.4850000, ft0  = 0.295
                                                #; (f:fpu) ft3  <-- 268.7800000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 268.7800000, ft0  = 0.296
                                                #; (f:fpu) ft3  <-- 269.0760000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 269.0760000, ft0  = 0.297
                                                #; (f:fpu) ft3  <-- 269.3730000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 269.3730000, ft0  = 0.298
                                                #; (f:fpu) ft3  <-- 269.6710000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 269.6710000, ft0  = 0.299
                                                #; (f:fpu) ft3  <-- 269.9700000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 269.9700000, ft0  = 0.3
                                                #; (f:fpu) ft3  <-- 270.2700000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 270.2700000, ft0  = 0.301
                                                #; (f:fpu) ft3  <-- 270.5710000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 270.5710000, ft0  = 0.302
                                                #; (f:fpu) ft3  <-- 270.8730000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 270.8730000, ft0  = 0.303
                                                #; (f:fpu) ft3  <-- 271.1760000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 271.1760000, ft0  = 0.304
                                                #; (f:fpu) ft3  <-- 271.4800000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 271.4800000, ft0  = 0.305
                                                #; (f:fpu) ft3  <-- 271.7850000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 271.7850000, ft0  = 0.306
                                                #; (f:fpu) ft3  <-- 272.0910000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 272.0910000, ft0  = 0.307
                                                #; (f:fpu) ft3  <-- 272.3980000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 272.3980000, ft0  = 0.308
                                                #; (f:fpu) ft3  <-- 272.7060000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 272.7060000, ft0  = 0.309
                                                #; (f:fpu) ft3  <-- 273.0150000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 273.0150000, ft0  = 0.31
                                                #; (f:fpu) ft3  <-- 273.3250000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 273.3250000, ft0  = 0.311
                                                #; (f:fpu) ft3  <-- 273.6360000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 273.6360000, ft0  = 0.312
                                                #; (f:fpu) ft3  <-- 273.9480000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 273.9480000, ft0  = 0.313
                                                #; (f:fpu) ft3  <-- 274.2610000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 274.2610000, ft0  = 0.314
                                                #; (f:fpu) ft3  <-- 274.5750000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 274.5750000, ft0  = 0.315
                                                #; (f:fpu) ft3  <-- 274.8900000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 274.8900000, ft0  = 0.316
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 1, (wrb) a4  <-- 0
                                                #; (f:fpu) ft3  <-- 275.2060000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 275.2060000, ft0  = 0.317
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 0, not taken
                                                #; (f:fpu) ft3  <-- 275.5230000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 275.5230000, ft0  = 0.318
; sum (test_size.c:14)
;  in main (test_size.c:42)
      0x800008b0 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
      0x800008b4 bne     a0, a5, pc - 184       #; a0  = 4, a5  = 4, not taken
                                                #; (f:fpu) ft3  <-- 275.8410000
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800008b8 j       pc - 0x13c             #; goto 0x8000077c
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 275.8410000, ft0  = 0.319
                                                #; (f:fpu) ft3  <-- 276.1600000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 276.1600000, ft0  = 0.32
; sum (test_size.c:13)
;  in main (test_size.c:42)
      0x80000780 addi    t6, t6, 1              #; t6  = 1, (wrb) t6  <-- 2
      0x80000784 addi    a2, a2, 1344           #; a2  = 0x001005e8, (wrb) a2  <-- 0x00100b28
                                                #; (f:fpu) ft3  <-- 276.4800000
      0x80000788 beq     t6, t2, pc + 980       #; t6  = 2, t2  = 3, not taken
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 276.4800000, ft0  = 0.321
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x8000078c mul     a0, t6, t5             #; t6  = 2, t5  = 1344
                                                #; (f:fpu) ft3  <-- 276.8010000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 276.8010000, ft0  = 0.322
                                                #; (f:fpu) ft3  <-- 277.1230000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 277.1230000, ft0  = 0.323
                                                #; (f:fpu) ft3  <-- 277.4460000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 277.4460000, ft0  = 0.324
                                                #; (f:fpu) ft3  <-- 277.7700000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 277.7700000, ft0  = 0.325
                                                #; (f:fpu) ft3  <-- 278.0950000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 278.0950000, ft0  = 0.326
                                                #; (f:fpu) ft3  <-- 278.4210000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 278.4210000, ft0  = 0.327
                                                #; (f:fpu) ft3  <-- 278.7480000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 278.7480000, ft0  = 0.328
                                                #; (f:fpu) ft3  <-- 279.0760000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 279.0760000, ft0  = 0.329
                                                #; (f:fpu) ft3  <-- 279.4050000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 279.4050000, ft0  = 0.33
                                                #; (f:fpu) ft3  <-- 279.7350000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 279.7350000, ft0  = 0.331
                                                #; (f:fpu) ft3  <-- 280.0660000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 280.0660000, ft0  = 0.332
                                                #; (f:fpu) ft3  <-- 280.3980000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 280.3980000, ft0  = 0.333
                                                #; (f:fpu) ft3  <-- 280.7310000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 280.7310000, ft0  = 0.334
                                                #; (f:fpu) ft3  <-- 281.0650000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 281.0650000, ft0  = 0.335
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x8000077c csrrci  a0, ssr, 1             #; 
                                                #; (f:fpu) ft3  <-- 281.4000000
                                                #; (acc) a4  <-- 0x00ae0733
      0x80000790 add     a4, t3, a0             #; t3  = 0x00100000, a0  = 2688, (wrb) a4  <-- 0x00100a80
; sum (test_size.c:14)
;  in main (test_size.c:42)
      0x80000794 srli    a3, a4, 20             #; a4  = 0x00100a80, (wrb) a3  <-- 1
      0x80000798 snez    a3, a3                 #; a3  = 1, (wrb) a3  <-- 1
      0x8000079c sltu    a1, a4, t4             #; a4  = 0x00100a80, t4  = 0x0011fac9, (wrb) a1  <-- 1
      0x800007a0 and     a1, a3, a1             #; a3  = 1, a1  = 1, (wrb) a1  <-- 1
      0x800007a4 beqz    a1, pc + 280           #; a1  = 1, not taken
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800007a8 li      a0, 0                  #; (wrb) a0  <-- 0
; sum (test_size.c:14)
;  in main (test_size.c:42)
      0x800007ac li      a1, 64                 #; (wrb) a1  <-- 64
      0x800007b0 scfgw   a6, a1                 #; a6  = 6, a1  = 64
      0x800007b4 li      a1, 192                #; (wrb) a1  <-- 192
      0x800007b8 scfgw   t1, a1                 #; t1  = 8, a1  = 192
      0x800007bc li      a1, 96                 #; (wrb) a1  <-- 96
      0x800007c0 scfgw   a7, a1                 #; a7  = 5, a1  = 96, (acc) ra  <-- 0x00b8a0ab
      0x800007c4 li      a1, 224                #; (wrb) a1  <-- 224
      0x800007c8 scfgw   t1, a1                 #; t1  = 8, a1  = 224, (acc) ra  <-- 0x00b320ab
      0x800007cc li      a1, 128                #; (wrb) a1  <-- 128
      0x800007d0 scfgw   a5, a1                 #; a5  = 4, a1  = 128, (acc) ra  <-- 0x00b7a0ab
      0x800007d4 li      a1, 256                #; (wrb) a1  <-- 256
      0x800007d8 scfgw   t0, a1                 #; t0  = -328, a1  = 256, (acc) ra  <-- 0x00b2a0ab
      0x800007dc li      a1, 160                #; (wrb) a1  <-- 160
      0x800007e0 scfgw   t2, a1                 #; t2  = 3, a1  = 160, (acc) ra  <-- 0x00b3a0ab
      0x800007e4 li      a1, 288                #; (wrb) a1  <-- 288
      0x800007e8 scfgw   t1, a1                 #; t1  = 8, a1  = 288, (acc) ra  <-- 0x00b320ab
      0x800007ec li      a1, 32                 #; (wrb) a1  <-- 32
      0x800007f0 scfgw   zero, a1               #; a1  = 32, (acc) ra  <-- 0x00b020ab
      0x800007f4 scfgwi  a4, 864                #; a4  = 0x00100a80
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800007fc li      a4, 5                  #; (wrb) a4  <-- 5
      0x800007f8 csrrsi  a1, ssr, 1             #; 
                                                #; (acc) gp  <-- 0x023071d3
                                                #; (acc) gp  <-- 0x0201f1d3
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.336, ft3  = 281.4000000
                                                #; (f:fpu) ft3  <-- 281.7360000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 281.7360000, ft0  = 0.337
                                                #; (f:fpu) ft3  <-- 282.0730000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 282.0730000, ft0  = 0.338
                                                #; (f:fpu) ft3  <-- 282.4110000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 282.4110000, ft0  = 0.339
                                                #; (f:fpu) ft3  <-- 282.7500000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 282.7500000, ft0  = 0.34
                                                #; (f:fpu) ft3  <-- 283.0900000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 283.0900000, ft0  = 0.341
                                                #; (f:fpu) ft3  <-- 283.4310000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 283.4310000, ft0  = 0.342
                                                #; (f:fpu) ft3  <-- 283.7730000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 283.7730000, ft0  = 0.343
                                                #; (f:fpu) ft3  <-- 284.1160000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 284.1160000, ft0  = 0.3440000
                                                #; (f:fpu) ft3  <-- 284.4600000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 284.4600000, ft0  = 0.3450000
                                                #; (f:fpu) ft3  <-- 284.8050000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 284.8050000, ft0  = 0.3460000
                                                #; (f:fpu) ft3  <-- 285.1510000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 285.1510000, ft0  = 0.3470000
                                                #; (f:fpu) ft3  <-- 285.4980000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 285.4980000, ft0  = 0.3480000
                                                #; (f:fpu) ft3  <-- 285.8460000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 285.8460000, ft0  = 0.3490000
                                                #; (f:fpu) ft3  <-- 286.1950000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 286.1950000, ft0  = 0.3500000
                                                #; (f:fpu) ft3  <-- 286.5450000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 286.5450000, ft0  = 0.3510000
                                                #; (f:fpu) ft3  <-- 286.8960000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 286.8960000, ft0  = 0.352
                                                #; (f:fpu) ft3  <-- 287.2480000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 287.2480000, ft0  = 0.353
                                                #; (f:fpu) ft3  <-- 287.6010000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 287.6010000, ft0  = 0.354
                                                #; (f:fpu) ft3  <-- 287.9550000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 287.9550000, ft0  = 0.355
                                                #; (f:fpu) ft3  <-- 288.3100000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 288.3100000, ft0  = 0.356
                                                #; (f:fpu) ft3  <-- 288.6660000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 288.6660000, ft0  = 0.357
                                                #; (f:fpu) ft3  <-- 289.0230000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 289.0230000, ft0  = 0.358
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 5, (wrb) a4  <-- 4
                                                #; (f:fpu) ft3  <-- 289.3810000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 289.3810000, ft0  = 0.359
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 4, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 289.7400000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 289.7400000, ft0  = 0.36
                                                #; (f:fpu) ft3  <-- 290.1000000
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 290.1000000, ft0  = 0.361
                                                #; (f:fpu) ft3  <-- 290.4610000
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 290.4610000, ft0  = 0.362
                                                #; (f:fpu) ft3  <-- 290.8230000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 290.8230000, ft0  = 0.363
                                                #; (f:fpu) ft3  <-- 291.1860000
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 291.1860000, ft0  = 0.364
                                                #; (f:fpu) ft3  <-- 291.5500000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 291.5500000, ft0  = 0.365
                                                #; (f:fpu) ft3  <-- 291.9150000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 291.9150000, ft0  = 0.366
                                                #; (f:fpu) ft3  <-- 292.2810000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 292.2810000, ft0  = 0.367
                                                #; (f:fpu) ft3  <-- 292.6480000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 292.6480000, ft0  = 0.368
                                                #; (f:fpu) ft3  <-- 293.0160000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 293.0160000, ft0  = 0.369
                                                #; (f:fpu) ft3  <-- 293.3850000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 293.3850000, ft0  = 0.37
                                                #; (f:fpu) ft3  <-- 293.7550000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 293.7550000, ft0  = 0.371
                                                #; (f:fpu) ft3  <-- 294.1260000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 294.1260000, ft0  = 0.372
                                                #; (f:fpu) ft3  <-- 294.4980000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 294.4980000, ft0  = 0.373
                                                #; (f:fpu) ft3  <-- 294.8710000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 294.8710000, ft0  = 0.374
                                                #; (f:fpu) ft3  <-- 295.2450000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 295.2450000, ft0  = 0.375
                                                #; (f:fpu) ft3  <-- 295.6200000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 295.6200000, ft0  = 0.376
                                                #; (f:fpu) ft3  <-- 295.9960000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 295.9960000, ft0  = 0.377
                                                #; (f:fpu) ft3  <-- 296.3730000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.336, ft3  = 296.3730000
                                                #; (f:fpu) ft3  <-- 296.7090000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 296.7090000, ft0  = 0.337
                                                #; (f:fpu) ft3  <-- 297.0460000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 297.0460000, ft0  = 0.338
                                                #; (f:fpu) ft3  <-- 297.3840000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 297.3840000, ft0  = 0.339
                                                #; (f:fpu) ft3  <-- 297.7230000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 297.7230000, ft0  = 0.34
                                                #; (f:fpu) ft3  <-- 298.0630000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 298.0630000, ft0  = 0.341
                                                #; (f:fpu) ft3  <-- 298.4040000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 298.4040000, ft0  = 0.342
                                                #; (f:fpu) ft3  <-- 298.7460000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 298.7460000, ft0  = 0.343
                                                #; (f:fpu) ft3  <-- 299.0890000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 299.0890000, ft0  = 0.3440000
                                                #; (f:fpu) ft3  <-- 299.4330000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 299.4330000, ft0  = 0.3450000
                                                #; (f:fpu) ft3  <-- 299.7780000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 299.7780000, ft0  = 0.3460000
                                                #; (f:fpu) ft3  <-- 300.1240000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 300.1240000, ft0  = 0.3470000
                                                #; (f:fpu) ft3  <-- 300.4710000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 300.4710000, ft0  = 0.3480000
                                                #; (f:fpu) ft3  <-- 300.8190000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 300.8190000, ft0  = 0.3490000
                                                #; (f:fpu) ft3  <-- 301.1680000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 301.1680000, ft0  = 0.3500000
                                                #; (f:fpu) ft3  <-- 301.518
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 301.518, ft0  = 0.3510000
                                                #; (f:fpu) ft3  <-- 301.8690000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 301.8690000, ft0  = 0.352
                                                #; (f:fpu) ft3  <-- 302.2210000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 302.2210000, ft0  = 0.353
                                                #; (f:fpu) ft3  <-- 302.5740000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 302.5740000, ft0  = 0.354
                                                #; (f:fpu) ft3  <-- 302.9280000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 302.9280000, ft0  = 0.355
                                                #; (f:fpu) ft3  <-- 303.2830000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 303.2830000, ft0  = 0.356
                                                #; (f:fpu) ft3  <-- 303.6390000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 303.6390000, ft0  = 0.357
                                                #; (f:fpu) ft3  <-- 303.996
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 303.996, ft0  = 0.358
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 4, (wrb) a4  <-- 3
                                                #; (f:fpu) ft3  <-- 304.354
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 304.354, ft0  = 0.359
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 3, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 304.7130000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 304.7130000, ft0  = 0.36
                                                #; (f:fpu) ft3  <-- 305.073
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 305.073, ft0  = 0.361
                                                #; (f:fpu) ft3  <-- 305.4340000
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 305.4340000, ft0  = 0.362
                                                #; (f:fpu) ft3  <-- 305.796
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 305.796, ft0  = 0.363
                                                #; (f:fpu) ft3  <-- 306.159
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 306.159, ft0  = 0.364
                                                #; (f:fpu) ft3  <-- 306.5230000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 306.5230000, ft0  = 0.365
                                                #; (f:fpu) ft3  <-- 306.888
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 306.888, ft0  = 0.366
                                                #; (f:fpu) ft3  <-- 307.2540000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 307.2540000, ft0  = 0.367
                                                #; (f:fpu) ft3  <-- 307.621
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 307.621, ft0  = 0.368
                                                #; (f:fpu) ft3  <-- 307.989
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 307.989, ft0  = 0.369
                                                #; (f:fpu) ft3  <-- 308.358
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 308.358, ft0  = 0.37
                                                #; (f:fpu) ft3  <-- 308.728
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 308.728, ft0  = 0.371
                                                #; (f:fpu) ft3  <-- 309.099
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 309.099, ft0  = 0.372
                                                #; (f:fpu) ft3  <-- 309.471
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 309.471, ft0  = 0.373
                                                #; (f:fpu) ft3  <-- 309.844
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 309.844, ft0  = 0.374
                                                #; (f:fpu) ft3  <-- 310.218
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 310.218, ft0  = 0.375
                                                #; (f:fpu) ft3  <-- 310.593
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 310.593, ft0  = 0.376
                                                #; (f:fpu) ft3  <-- 310.969
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 310.969, ft0  = 0.377
                                                #; (f:fpu) ft3  <-- 311.346
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.336, ft3  = 311.346
                                                #; (f:fpu) ft3  <-- 311.682
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 311.682, ft0  = 0.337
                                                #; (f:fpu) ft3  <-- 312.019
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 312.019, ft0  = 0.338
                                                #; (f:fpu) ft3  <-- 312.357
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 312.357, ft0  = 0.339
                                                #; (f:fpu) ft3  <-- 312.696
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 312.696, ft0  = 0.34
                                                #; (f:fpu) ft3  <-- 313.036
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 313.036, ft0  = 0.341
                                                #; (f:fpu) ft3  <-- 313.377
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 313.377, ft0  = 0.342
                                                #; (f:fpu) ft3  <-- 313.719
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 313.719, ft0  = 0.343
                                                #; (f:fpu) ft3  <-- 314.062
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 314.062, ft0  = 0.3440000
                                                #; (f:fpu) ft3  <-- 314.406
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 314.406, ft0  = 0.3450000
                                                #; (f:fpu) ft3  <-- 314.7510000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 314.7510000, ft0  = 0.3460000
                                                #; (f:fpu) ft3  <-- 315.0970000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 315.0970000, ft0  = 0.3470000
                                                #; (f:fpu) ft3  <-- 315.444
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 315.444, ft0  = 0.3480000
                                                #; (f:fpu) ft3  <-- 315.7920000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 315.7920000, ft0  = 0.3490000
                                                #; (f:fpu) ft3  <-- 316.141
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 316.141, ft0  = 0.3500000
                                                #; (f:fpu) ft3  <-- 316.4910000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 316.4910000, ft0  = 0.3510000
                                                #; (f:fpu) ft3  <-- 316.8420000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 316.8420000, ft0  = 0.352
                                                #; (f:fpu) ft3  <-- 317.194
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 317.194, ft0  = 0.353
                                                #; (f:fpu) ft3  <-- 317.547
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 317.547, ft0  = 0.354
                                                #; (f:fpu) ft3  <-- 317.901
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 317.901, ft0  = 0.355
                                                #; (f:fpu) ft3  <-- 318.2560000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 318.2560000, ft0  = 0.356
                                                #; (f:fpu) ft3  <-- 318.612
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 318.612, ft0  = 0.357
                                                #; (f:fpu) ft3  <-- 318.9690000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 318.9690000, ft0  = 0.358
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 3, (wrb) a4  <-- 2
                                                #; (f:fpu) ft3  <-- 319.3270000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 319.3270000, ft0  = 0.359
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 2, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 319.6860000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 319.6860000, ft0  = 0.36
                                                #; (f:fpu) ft3  <-- 320.0460000
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 320.0460000, ft0  = 0.361
                                                #; (f:fpu) ft3  <-- 320.4070000
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 320.4070000, ft0  = 0.362
                                                #; (f:fpu) ft3  <-- 320.7690000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 320.7690000, ft0  = 0.363
                                                #; (f:fpu) ft3  <-- 321.1320000
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 321.1320000, ft0  = 0.364
                                                #; (f:fpu) ft3  <-- 321.4960000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 321.4960000, ft0  = 0.365
                                                #; (f:fpu) ft3  <-- 321.8610000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 321.8610000, ft0  = 0.366
                                                #; (f:fpu) ft3  <-- 322.2270000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 322.2270000, ft0  = 0.367
                                                #; (f:fpu) ft3  <-- 322.5940000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 322.5940000, ft0  = 0.368
                                                #; (f:fpu) ft3  <-- 322.9620000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 322.9620000, ft0  = 0.369
                                                #; (f:fpu) ft3  <-- 323.3310000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 323.3310000, ft0  = 0.37
                                                #; (f:fpu) ft3  <-- 323.7010000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 323.7010000, ft0  = 0.371
                                                #; (f:fpu) ft3  <-- 324.0720000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 324.0720000, ft0  = 0.372
                                                #; (f:fpu) ft3  <-- 324.4440000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 324.4440000, ft0  = 0.373
                                                #; (f:fpu) ft3  <-- 324.8170000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 324.8170000, ft0  = 0.374
                                                #; (f:fpu) ft3  <-- 325.1910000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 325.1910000, ft0  = 0.375
                                                #; (f:fpu) ft3  <-- 325.5660000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 325.5660000, ft0  = 0.376
                                                #; (f:fpu) ft3  <-- 325.9420000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 325.9420000, ft0  = 0.377
                                                #; (f:fpu) ft3  <-- 326.3190000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.336, ft3  = 326.3190000
                                                #; (f:fpu) ft3  <-- 326.6550000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 326.6550000, ft0  = 0.337
                                                #; (f:fpu) ft3  <-- 326.9920000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 326.9920000, ft0  = 0.338
                                                #; (f:fpu) ft3  <-- 327.3300000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 327.3300000, ft0  = 0.339
                                                #; (f:fpu) ft3  <-- 327.6690000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 327.6690000, ft0  = 0.34
                                                #; (f:fpu) ft3  <-- 328.0090000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 328.0090000, ft0  = 0.341
                                                #; (f:fpu) ft3  <-- 328.3500000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 328.3500000, ft0  = 0.342
                                                #; (f:fpu) ft3  <-- 328.6920000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 328.6920000, ft0  = 0.343
                                                #; (f:fpu) ft3  <-- 329.0350000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 329.0350000, ft0  = 0.3440000
                                                #; (f:fpu) ft3  <-- 329.3790000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 329.3790000, ft0  = 0.3450000
                                                #; (f:fpu) ft3  <-- 329.7240000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 329.7240000, ft0  = 0.3460000
                                                #; (f:fpu) ft3  <-- 330.0700000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 330.0700000, ft0  = 0.3470000
                                                #; (f:fpu) ft3  <-- 330.4170000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 330.4170000, ft0  = 0.3480000
                                                #; (f:fpu) ft3  <-- 330.7650000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 330.7650000, ft0  = 0.3490000
                                                #; (f:fpu) ft3  <-- 331.1140000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 331.1140000, ft0  = 0.3500000
                                                #; (f:fpu) ft3  <-- 331.4640000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 331.4640000, ft0  = 0.3510000
                                                #; (f:fpu) ft3  <-- 331.8150000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 331.8150000, ft0  = 0.352
                                                #; (f:fpu) ft3  <-- 332.1670000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 332.1670000, ft0  = 0.353
                                                #; (f:fpu) ft3  <-- 332.5200000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 332.5200000, ft0  = 0.354
                                                #; (f:fpu) ft3  <-- 332.8740000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 332.8740000, ft0  = 0.355
                                                #; (f:fpu) ft3  <-- 333.2290000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 333.2290000, ft0  = 0.356
                                                #; (f:fpu) ft3  <-- 333.5850000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 333.5850000, ft0  = 0.357
                                                #; (f:fpu) ft3  <-- 333.9420000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 333.9420000, ft0  = 0.358
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 2, (wrb) a4  <-- 1
                                                #; (f:fpu) ft3  <-- 334.3000000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 334.3000000, ft0  = 0.359
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 1, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 334.6590000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 334.6590000, ft0  = 0.36
                                                #; (f:fpu) ft3  <-- 335.0190000
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 335.0190000, ft0  = 0.361
                                                #; (f:fpu) ft3  <-- 335.3800000
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 335.3800000, ft0  = 0.362
                                                #; (f:fpu) ft3  <-- 335.7420000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 335.7420000, ft0  = 0.363
                                                #; (f:fpu) ft3  <-- 336.1050000
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 336.1050000, ft0  = 0.364
                                                #; (f:fpu) ft3  <-- 336.4690000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 336.4690000, ft0  = 0.365
                                                #; (f:fpu) ft3  <-- 336.8340000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 336.8340000, ft0  = 0.366
                                                #; (f:fpu) ft3  <-- 337.2000000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 337.2000000, ft0  = 0.367
                                                #; (f:fpu) ft3  <-- 337.5670000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 337.5670000, ft0  = 0.368
                                                #; (f:fpu) ft3  <-- 337.9350000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 337.9350000, ft0  = 0.369
                                                #; (f:fpu) ft3  <-- 338.3040000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 338.3040000, ft0  = 0.37
                                                #; (f:fpu) ft3  <-- 338.6740000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 338.6740000, ft0  = 0.371
                                                #; (f:fpu) ft3  <-- 339.0450000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 339.0450000, ft0  = 0.372
                                                #; (f:fpu) ft3  <-- 339.4170000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 339.4170000, ft0  = 0.373
                                                #; (f:fpu) ft3  <-- 339.7900000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 339.7900000, ft0  = 0.374
                                                #; (f:fpu) ft3  <-- 340.1640000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 340.1640000, ft0  = 0.375
                                                #; (f:fpu) ft3  <-- 340.5390000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 340.5390000, ft0  = 0.376
                                                #; (f:fpu) ft3  <-- 340.9150000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 340.9150000, ft0  = 0.377
                                                #; (f:fpu) ft3  <-- 341.2920000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.336, ft3  = 341.2920000
                                                #; (f:fpu) ft3  <-- 341.6280000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 341.6280000, ft0  = 0.337
                                                #; (f:fpu) ft3  <-- 341.9650000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 341.9650000, ft0  = 0.338
                                                #; (f:fpu) ft3  <-- 342.3030000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 342.3030000, ft0  = 0.339
                                                #; (f:fpu) ft3  <-- 342.6420000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 342.6420000, ft0  = 0.34
                                                #; (f:fpu) ft3  <-- 342.9820000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 342.9820000, ft0  = 0.341
                                                #; (f:fpu) ft3  <-- 343.3230000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 343.3230000, ft0  = 0.342
                                                #; (f:fpu) ft3  <-- 343.6650000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 343.6650000, ft0  = 0.343
                                                #; (f:fpu) ft3  <-- 344.0080000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 344.0080000, ft0  = 0.3440000
                                                #; (f:fpu) ft3  <-- 344.3520000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 344.3520000, ft0  = 0.3450000
                                                #; (f:fpu) ft3  <-- 344.6970000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 344.6970000, ft0  = 0.3460000
                                                #; (f:fpu) ft3  <-- 345.0430000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 345.0430000, ft0  = 0.3470000
                                                #; (f:fpu) ft3  <-- 345.3900000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 345.3900000, ft0  = 0.3480000
                                                #; (f:fpu) ft3  <-- 345.7380000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 345.7380000, ft0  = 0.3490000
                                                #; (f:fpu) ft3  <-- 346.0870000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 346.0870000, ft0  = 0.3500000
                                                #; (f:fpu) ft3  <-- 346.4370000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 346.4370000, ft0  = 0.3510000
                                                #; (f:fpu) ft3  <-- 346.7880000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 346.7880000, ft0  = 0.352
                                                #; (f:fpu) ft3  <-- 347.1400000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 347.1400000, ft0  = 0.353
                                                #; (f:fpu) ft3  <-- 347.4930000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 347.4930000, ft0  = 0.354
                                                #; (f:fpu) ft3  <-- 347.8470000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 347.8470000, ft0  = 0.355
                                                #; (f:fpu) ft3  <-- 348.2020000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 348.2020000, ft0  = 0.356
                                                #; (f:fpu) ft3  <-- 348.5580000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 348.5580000, ft0  = 0.357
                                                #; (f:fpu) ft3  <-- 348.9150000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 348.9150000, ft0  = 0.358
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 1, (wrb) a4  <-- 0
                                                #; (f:fpu) ft3  <-- 349.2730000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 349.2730000, ft0  = 0.359
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 0, not taken
                                                #; (f:fpu) ft3  <-- 349.6320000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 349.6320000, ft0  = 0.36
; sum (test_size.c:14)
;  in main (test_size.c:42)
      0x800008b0 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x800008b4 bne     a0, a5, pc - 184       #; a0  = 1, a5  = 4, taken, goto 0x800007fc
                                                #; (f:fpu) ft3  <-- 349.9920000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 349.9920000, ft0  = 0.361
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800007fc li      a4, 5                  #; (wrb) a4  <-- 5
                                                #; (f:fpu) ft3  <-- 350.3530000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 350.3530000, ft0  = 0.362
                                                #; (f:fpu) ft3  <-- 350.7150000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 350.7150000, ft0  = 0.363
                                                #; (f:fpu) ft3  <-- 351.0780000
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 351.0780000, ft0  = 0.364
                                                #; (f:fpu) ft3  <-- 351.4420000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 351.4420000, ft0  = 0.365
                                                #; (f:fpu) ft3  <-- 351.8070000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 351.8070000, ft0  = 0.366
                                                #; (f:fpu) ft3  <-- 352.1730000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 352.1730000, ft0  = 0.367
                                                #; (f:fpu) ft3  <-- 352.5400000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 352.5400000, ft0  = 0.368
                                                #; (f:fpu) ft3  <-- 352.9080000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 352.9080000, ft0  = 0.369
                                                #; (f:fpu) ft3  <-- 353.2770000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 353.2770000, ft0  = 0.37
                                                #; (f:fpu) ft3  <-- 353.6470000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 353.6470000, ft0  = 0.371
                                                #; (f:fpu) ft3  <-- 354.0180000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 354.0180000, ft0  = 0.372
                                                #; (f:fpu) ft3  <-- 354.3900000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 354.3900000, ft0  = 0.373
                                                #; (f:fpu) ft3  <-- 354.7630000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 354.7630000, ft0  = 0.374
                                                #; (f:fpu) ft3  <-- 355.1370000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 355.1370000, ft0  = 0.375
                                                #; (f:fpu) ft3  <-- 355.5120000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 355.5120000, ft0  = 0.376
                                                #; (f:fpu) ft3  <-- 355.8880000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 355.8880000, ft0  = 0.377
                                                #; (f:fpu) ft3  <-- 356.2650000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.378, ft3  = 356.2650000
                                                #; (f:fpu) ft3  <-- 356.6430000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 356.6430000, ft0  = 0.379
                                                #; (f:fpu) ft3  <-- 357.0220000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 357.0220000, ft0  = 0.38
                                                #; (f:fpu) ft3  <-- 357.4020000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 357.4020000, ft0  = 0.381
                                                #; (f:fpu) ft3  <-- 357.7830000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 357.7830000, ft0  = 0.382
                                                #; (f:fpu) ft3  <-- 358.1650000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 358.1650000, ft0  = 0.383
                                                #; (f:fpu) ft3  <-- 358.5480000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 358.5480000, ft0  = 0.384
                                                #; (f:fpu) ft3  <-- 358.9320000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 358.9320000, ft0  = 0.385
                                                #; (f:fpu) ft3  <-- 359.3170000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 359.3170000, ft0  = 0.386
                                                #; (f:fpu) ft3  <-- 359.7030000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 359.7030000, ft0  = 0.387
                                                #; (f:fpu) ft3  <-- 360.0900000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 360.0900000, ft0  = 0.388
                                                #; (f:fpu) ft3  <-- 360.4780000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 360.4780000, ft0  = 0.389
                                                #; (f:fpu) ft3  <-- 360.8670000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 360.8670000, ft0  = 0.39
                                                #; (f:fpu) ft3  <-- 361.2570000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 361.2570000, ft0  = 0.391
                                                #; (f:fpu) ft3  <-- 361.6480000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 361.6480000, ft0  = 0.392
                                                #; (f:fpu) ft3  <-- 362.0400000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 362.0400000, ft0  = 0.393
                                                #; (f:fpu) ft3  <-- 362.4330000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 362.4330000, ft0  = 0.394
                                                #; (f:fpu) ft3  <-- 362.8270000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 362.8270000, ft0  = 0.395
                                                #; (f:fpu) ft3  <-- 363.2220000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 363.2220000, ft0  = 0.396
                                                #; (f:fpu) ft3  <-- 363.6180000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 363.6180000, ft0  = 0.397
                                                #; (f:fpu) ft3  <-- 364.0150000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 364.0150000, ft0  = 0.398
                                                #; (f:fpu) ft3  <-- 364.4130000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 364.4130000, ft0  = 0.399
                                                #; (f:fpu) ft3  <-- 364.8120000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 364.8120000, ft0  = 0.4
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 5, (wrb) a4  <-- 4
                                                #; (f:fpu) ft3  <-- 365.2120000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 365.2120000, ft0  = 0.401
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 4, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 365.6130000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 365.6130000, ft0  = 0.402
                                                #; (f:fpu) ft3  <-- 366.0150000
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 366.0150000, ft0  = 0.403
                                                #; (f:fpu) ft3  <-- 366.4180000
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 366.4180000, ft0  = 0.404
                                                #; (f:fpu) ft3  <-- 366.8220000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 366.8220000, ft0  = 0.405
                                                #; (f:fpu) ft3  <-- 367.2270000
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 367.2270000, ft0  = 0.406
                                                #; (f:fpu) ft3  <-- 367.6330000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 367.6330000, ft0  = 0.4070000
                                                #; (f:fpu) ft3  <-- 368.0400000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 368.0400000, ft0  = 0.4080000
                                                #; (f:fpu) ft3  <-- 368.4480000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 368.4480000, ft0  = 0.4090000
                                                #; (f:fpu) ft3  <-- 368.8570000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 368.8570000, ft0  = 0.4100000
                                                #; (f:fpu) ft3  <-- 369.2670000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 369.2670000, ft0  = 0.4110000
                                                #; (f:fpu) ft3  <-- 369.6780000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 369.6780000, ft0  = 0.4120000
                                                #; (f:fpu) ft3  <-- 370.0900000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 370.0900000, ft0  = 0.4130000
                                                #; (f:fpu) ft3  <-- 370.5030000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 370.5030000, ft0  = 0.4140000
                                                #; (f:fpu) ft3  <-- 370.9170000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 370.9170000, ft0  = 0.4150000
                                                #; (f:fpu) ft3  <-- 371.3320000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 371.3320000, ft0  = 0.4160000
                                                #; (f:fpu) ft3  <-- 371.7480000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 371.7480000, ft0  = 0.417
                                                #; (f:fpu) ft3  <-- 372.1650000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 372.1650000, ft0  = 0.418
                                                #; (f:fpu) ft3  <-- 372.5830000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 372.5830000, ft0  = 0.419
                                                #; (f:fpu) ft3  <-- 373.0020000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.378, ft3  = 373.0020000
                                                #; (f:fpu) ft3  <-- 373.3800000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 373.3800000, ft0  = 0.379
                                                #; (f:fpu) ft3  <-- 373.7590000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 373.7590000, ft0  = 0.38
                                                #; (f:fpu) ft3  <-- 374.1390000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 374.1390000, ft0  = 0.381
                                                #; (f:fpu) ft3  <-- 374.5200000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 374.5200000, ft0  = 0.382
                                                #; (f:fpu) ft3  <-- 374.9020000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 374.9020000, ft0  = 0.383
                                                #; (f:fpu) ft3  <-- 375.2850000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 375.2850000, ft0  = 0.384
                                                #; (f:fpu) ft3  <-- 375.6690000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 375.6690000, ft0  = 0.385
                                                #; (f:fpu) ft3  <-- 376.0540000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 376.0540000, ft0  = 0.386
                                                #; (f:fpu) ft3  <-- 376.4400000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 376.4400000, ft0  = 0.387
                                                #; (f:fpu) ft3  <-- 376.8270000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 376.8270000, ft0  = 0.388
                                                #; (f:fpu) ft3  <-- 377.2150000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 377.2150000, ft0  = 0.389
                                                #; (f:fpu) ft3  <-- 377.6040000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 377.6040000, ft0  = 0.39
                                                #; (f:fpu) ft3  <-- 377.9940000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 377.9940000, ft0  = 0.391
                                                #; (f:fpu) ft3  <-- 378.3850000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 378.3850000, ft0  = 0.392
                                                #; (f:fpu) ft3  <-- 378.7770000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 378.7770000, ft0  = 0.393
                                                #; (f:fpu) ft3  <-- 379.1700000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 379.1700000, ft0  = 0.394
                                                #; (f:fpu) ft3  <-- 379.5640000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 379.5640000, ft0  = 0.395
                                                #; (f:fpu) ft3  <-- 379.9590000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 379.9590000, ft0  = 0.396
                                                #; (f:fpu) ft3  <-- 380.3550000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 380.3550000, ft0  = 0.397
                                                #; (f:fpu) ft3  <-- 380.7520000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 380.7520000, ft0  = 0.398
                                                #; (f:fpu) ft3  <-- 381.1500000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 381.1500000, ft0  = 0.399
                                                #; (f:fpu) ft3  <-- 381.5490000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 381.5490000, ft0  = 0.4
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 4, (wrb) a4  <-- 3
                                                #; (f:fpu) ft3  <-- 381.9490000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 381.9490000, ft0  = 0.401
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 3, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 382.3500000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 382.3500000, ft0  = 0.402
                                                #; (f:fpu) ft3  <-- 382.7520000
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 382.7520000, ft0  = 0.403
                                                #; (f:fpu) ft3  <-- 383.1550000
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 383.1550000, ft0  = 0.404
                                                #; (f:fpu) ft3  <-- 383.5590000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 383.5590000, ft0  = 0.405
                                                #; (f:fpu) ft3  <-- 383.9640000
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 383.9640000, ft0  = 0.406
                                                #; (f:fpu) ft3  <-- 384.3700000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 384.3700000, ft0  = 0.4070000
                                                #; (f:fpu) ft3  <-- 384.7770000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 384.7770000, ft0  = 0.4080000
                                                #; (f:fpu) ft3  <-- 385.1850000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 385.1850000, ft0  = 0.4090000
                                                #; (f:fpu) ft3  <-- 385.5940000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 385.5940000, ft0  = 0.4100000
                                                #; (f:fpu) ft3  <-- 386.0040000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 386.0040000, ft0  = 0.4110000
                                                #; (f:fpu) ft3  <-- 386.4150000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 386.4150000, ft0  = 0.4120000
                                                #; (f:fpu) ft3  <-- 386.8270000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 386.8270000, ft0  = 0.4130000
                                                #; (f:fpu) ft3  <-- 387.2400000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 387.2400000, ft0  = 0.4140000
                                                #; (f:fpu) ft3  <-- 387.6540000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 387.6540000, ft0  = 0.4150000
                                                #; (f:fpu) ft3  <-- 388.0690000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 388.0690000, ft0  = 0.4160000
                                                #; (f:fpu) ft3  <-- 388.4850000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 388.4850000, ft0  = 0.417
                                                #; (f:fpu) ft3  <-- 388.9020000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 388.9020000, ft0  = 0.418
                                                #; (f:fpu) ft3  <-- 389.3200000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 389.3200000, ft0  = 0.419
                                                #; (f:fpu) ft3  <-- 389.7390000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.378, ft3  = 389.7390000
                                                #; (f:fpu) ft3  <-- 390.117
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 390.117, ft0  = 0.379
                                                #; (f:fpu) ft3  <-- 390.4960000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 390.4960000, ft0  = 0.38
                                                #; (f:fpu) ft3  <-- 390.8760000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 390.8760000, ft0  = 0.381
                                                #; (f:fpu) ft3  <-- 391.257
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 391.257, ft0  = 0.382
                                                #; (f:fpu) ft3  <-- 391.639
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 391.639, ft0  = 0.383
                                                #; (f:fpu) ft3  <-- 392.022
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 392.022, ft0  = 0.384
                                                #; (f:fpu) ft3  <-- 392.406
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 392.406, ft0  = 0.385
                                                #; (f:fpu) ft3  <-- 392.791
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 392.791, ft0  = 0.386
                                                #; (f:fpu) ft3  <-- 393.177
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 393.177, ft0  = 0.387
                                                #; (f:fpu) ft3  <-- 393.564
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 393.564, ft0  = 0.388
                                                #; (f:fpu) ft3  <-- 393.952
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 393.952, ft0  = 0.389
                                                #; (f:fpu) ft3  <-- 394.341
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 394.341, ft0  = 0.39
                                                #; (f:fpu) ft3  <-- 394.731
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 394.731, ft0  = 0.391
                                                #; (f:fpu) ft3  <-- 395.122
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 395.122, ft0  = 0.392
                                                #; (f:fpu) ft3  <-- 395.514
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 395.514, ft0  = 0.393
                                                #; (f:fpu) ft3  <-- 395.907
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 395.907, ft0  = 0.394
                                                #; (f:fpu) ft3  <-- 396.301
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 396.301, ft0  = 0.395
                                                #; (f:fpu) ft3  <-- 396.6960000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 396.6960000, ft0  = 0.396
                                                #; (f:fpu) ft3  <-- 397.092
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 397.092, ft0  = 0.397
                                                #; (f:fpu) ft3  <-- 397.489
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 397.489, ft0  = 0.398
                                                #; (f:fpu) ft3  <-- 397.887
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 397.887, ft0  = 0.399
                                                #; (f:fpu) ft3  <-- 398.286
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 398.286, ft0  = 0.4
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 3, (wrb) a4  <-- 2
                                                #; (f:fpu) ft3  <-- 398.686
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 398.686, ft0  = 0.401
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 2, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 399.087
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 399.087, ft0  = 0.402
                                                #; (f:fpu) ft3  <-- 399.489
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 399.489, ft0  = 0.403
                                                #; (f:fpu) ft3  <-- 399.892
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 399.892, ft0  = 0.404
                                                #; (f:fpu) ft3  <-- 400.296
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 400.296, ft0  = 0.405
                                                #; (f:fpu) ft3  <-- 400.7010000
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 400.7010000, ft0  = 0.406
                                                #; (f:fpu) ft3  <-- 401.1070000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 401.1070000, ft0  = 0.4070000
                                                #; (f:fpu) ft3  <-- 401.5140000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 401.5140000, ft0  = 0.4080000
                                                #; (f:fpu) ft3  <-- 401.9220000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 401.9220000, ft0  = 0.4090000
                                                #; (f:fpu) ft3  <-- 402.3310000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 402.3310000, ft0  = 0.4100000
                                                #; (f:fpu) ft3  <-- 402.741
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 402.741, ft0  = 0.4110000
                                                #; (f:fpu) ft3  <-- 403.152
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 403.152, ft0  = 0.4120000
                                                #; (f:fpu) ft3  <-- 403.5640000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 403.5640000, ft0  = 0.4130000
                                                #; (f:fpu) ft3  <-- 403.977
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 403.977, ft0  = 0.4140000
                                                #; (f:fpu) ft3  <-- 404.3910000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 404.3910000, ft0  = 0.4150000
                                                #; (f:fpu) ft3  <-- 404.806
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 404.806, ft0  = 0.4160000
                                                #; (f:fpu) ft3  <-- 405.222
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 405.222, ft0  = 0.417
                                                #; (f:fpu) ft3  <-- 405.6390000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 405.6390000, ft0  = 0.418
                                                #; (f:fpu) ft3  <-- 406.0570000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 406.0570000, ft0  = 0.419
                                                #; (f:fpu) ft3  <-- 406.4760000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.378, ft3  = 406.4760000
                                                #; (f:fpu) ft3  <-- 406.8540000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 406.8540000, ft0  = 0.379
                                                #; (f:fpu) ft3  <-- 407.2330000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 407.2330000, ft0  = 0.38
                                                #; (f:fpu) ft3  <-- 407.6130000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 407.6130000, ft0  = 0.381
                                                #; (f:fpu) ft3  <-- 407.9940000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 407.9940000, ft0  = 0.382
                                                #; (f:fpu) ft3  <-- 408.3760000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 408.3760000, ft0  = 0.383
                                                #; (f:fpu) ft3  <-- 408.7590000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 408.7590000, ft0  = 0.384
                                                #; (f:fpu) ft3  <-- 409.1430000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 409.1430000, ft0  = 0.385
                                                #; (f:fpu) ft3  <-- 409.5280000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 409.5280000, ft0  = 0.386
                                                #; (f:fpu) ft3  <-- 409.9140000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 409.9140000, ft0  = 0.387
                                                #; (f:fpu) ft3  <-- 410.3010000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 410.3010000, ft0  = 0.388
                                                #; (f:fpu) ft3  <-- 410.6890000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 410.6890000, ft0  = 0.389
                                                #; (f:fpu) ft3  <-- 411.0780000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 411.0780000, ft0  = 0.39
                                                #; (f:fpu) ft3  <-- 411.4680000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 411.4680000, ft0  = 0.391
                                                #; (f:fpu) ft3  <-- 411.8590000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 411.8590000, ft0  = 0.392
                                                #; (f:fpu) ft3  <-- 412.2510000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 412.2510000, ft0  = 0.393
                                                #; (f:fpu) ft3  <-- 412.6440000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 412.6440000, ft0  = 0.394
                                                #; (f:fpu) ft3  <-- 413.0380000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 413.0380000, ft0  = 0.395
                                                #; (f:fpu) ft3  <-- 413.4330000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 413.4330000, ft0  = 0.396
                                                #; (f:fpu) ft3  <-- 413.8290000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 413.8290000, ft0  = 0.397
                                                #; (f:fpu) ft3  <-- 414.2260000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 414.2260000, ft0  = 0.398
                                                #; (f:fpu) ft3  <-- 414.6240000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 414.6240000, ft0  = 0.399
                                                #; (f:fpu) ft3  <-- 415.0230000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 415.0230000, ft0  = 0.4
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 2, (wrb) a4  <-- 1
                                                #; (f:fpu) ft3  <-- 415.4230000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 415.4230000, ft0  = 0.401
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 1, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 415.8240000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 415.8240000, ft0  = 0.402
                                                #; (f:fpu) ft3  <-- 416.2260000
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 416.2260000, ft0  = 0.403
                                                #; (f:fpu) ft3  <-- 416.6290000
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 416.6290000, ft0  = 0.404
                                                #; (f:fpu) ft3  <-- 417.0330000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 417.0330000, ft0  = 0.405
                                                #; (f:fpu) ft3  <-- 417.4380000
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 417.4380000, ft0  = 0.406
                                                #; (f:fpu) ft3  <-- 417.8440000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 417.8440000, ft0  = 0.4070000
                                                #; (f:fpu) ft3  <-- 418.2510000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 418.2510000, ft0  = 0.4080000
                                                #; (f:fpu) ft3  <-- 418.6590000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 418.6590000, ft0  = 0.4090000
                                                #; (f:fpu) ft3  <-- 419.0680000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 419.0680000, ft0  = 0.4100000
                                                #; (f:fpu) ft3  <-- 419.4780000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 419.4780000, ft0  = 0.4110000
                                                #; (f:fpu) ft3  <-- 419.8890000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 419.8890000, ft0  = 0.4120000
                                                #; (f:fpu) ft3  <-- 420.3010000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 420.3010000, ft0  = 0.4130000
                                                #; (f:fpu) ft3  <-- 420.7140000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 420.7140000, ft0  = 0.4140000
                                                #; (f:fpu) ft3  <-- 421.1280000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 421.1280000, ft0  = 0.4150000
                                                #; (f:fpu) ft3  <-- 421.5430000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 421.5430000, ft0  = 0.4160000
                                                #; (f:fpu) ft3  <-- 421.9590000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 421.9590000, ft0  = 0.417
                                                #; (f:fpu) ft3  <-- 422.3760000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 422.3760000, ft0  = 0.418
                                                #; (f:fpu) ft3  <-- 422.7940000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 422.7940000, ft0  = 0.419
                                                #; (f:fpu) ft3  <-- 423.2130000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.378, ft3  = 423.2130000
                                                #; (f:fpu) ft3  <-- 423.5910000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 423.5910000, ft0  = 0.379
                                                #; (f:fpu) ft3  <-- 423.9700000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 423.9700000, ft0  = 0.38
                                                #; (f:fpu) ft3  <-- 424.3500000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 424.3500000, ft0  = 0.381
                                                #; (f:fpu) ft3  <-- 424.7310000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 424.7310000, ft0  = 0.382
                                                #; (f:fpu) ft3  <-- 425.1130000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 425.1130000, ft0  = 0.383
                                                #; (f:fpu) ft3  <-- 425.4960000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 425.4960000, ft0  = 0.384
                                                #; (f:fpu) ft3  <-- 425.8800000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 425.8800000, ft0  = 0.385
                                                #; (f:fpu) ft3  <-- 426.2650000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 426.2650000, ft0  = 0.386
                                                #; (f:fpu) ft3  <-- 426.6510000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 426.6510000, ft0  = 0.387
                                                #; (f:fpu) ft3  <-- 427.0380000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 427.0380000, ft0  = 0.388
                                                #; (f:fpu) ft3  <-- 427.4260000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 427.4260000, ft0  = 0.389
                                                #; (f:fpu) ft3  <-- 427.8150000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 427.8150000, ft0  = 0.39
                                                #; (f:fpu) ft3  <-- 428.2050000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 428.2050000, ft0  = 0.391
                                                #; (f:fpu) ft3  <-- 428.5960000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 428.5960000, ft0  = 0.392
                                                #; (f:fpu) ft3  <-- 428.9880000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 428.9880000, ft0  = 0.393
                                                #; (f:fpu) ft3  <-- 429.3810000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 429.3810000, ft0  = 0.394
                                                #; (f:fpu) ft3  <-- 429.7750000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 429.7750000, ft0  = 0.395
                                                #; (f:fpu) ft3  <-- 430.1700000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 430.1700000, ft0  = 0.396
                                                #; (f:fpu) ft3  <-- 430.5660000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 430.5660000, ft0  = 0.397
                                                #; (f:fpu) ft3  <-- 430.9630000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 430.9630000, ft0  = 0.398
                                                #; (f:fpu) ft3  <-- 431.3610000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 431.3610000, ft0  = 0.399
                                                #; (f:fpu) ft3  <-- 431.7600000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 431.7600000, ft0  = 0.4
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 1, (wrb) a4  <-- 0
                                                #; (f:fpu) ft3  <-- 432.1600000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 432.1600000, ft0  = 0.401
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 0, not taken
                                                #; (f:fpu) ft3  <-- 432.5610000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 432.5610000, ft0  = 0.402
; sum (test_size.c:14)
;  in main (test_size.c:42)
      0x800008b0 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
      0x800008b4 bne     a0, a5, pc - 184       #; a0  = 2, a5  = 4, taken, goto 0x800007fc
                                                #; (f:fpu) ft3  <-- 432.9630000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 432.9630000, ft0  = 0.403
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800007fc li      a4, 5                  #; (wrb) a4  <-- 5
                                                #; (f:fpu) ft3  <-- 433.3660000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 433.3660000, ft0  = 0.404
                                                #; (f:fpu) ft3  <-- 433.7700000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 433.7700000, ft0  = 0.405
                                                #; (f:fpu) ft3  <-- 434.1750000
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 434.1750000, ft0  = 0.406
                                                #; (f:fpu) ft3  <-- 434.5810000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 434.5810000, ft0  = 0.4070000
                                                #; (f:fpu) ft3  <-- 434.9880000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 434.9880000, ft0  = 0.4080000
                                                #; (f:fpu) ft3  <-- 435.3960000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 435.3960000, ft0  = 0.4090000
                                                #; (f:fpu) ft3  <-- 435.8050000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 435.8050000, ft0  = 0.4100000
                                                #; (f:fpu) ft3  <-- 436.2150000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 436.2150000, ft0  = 0.4110000
                                                #; (f:fpu) ft3  <-- 436.6260000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 436.6260000, ft0  = 0.4120000
                                                #; (f:fpu) ft3  <-- 437.0380000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 437.0380000, ft0  = 0.4130000
                                                #; (f:fpu) ft3  <-- 437.4510000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 437.4510000, ft0  = 0.4140000
                                                #; (f:fpu) ft3  <-- 437.8650000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 437.8650000, ft0  = 0.4150000
                                                #; (f:fpu) ft3  <-- 438.2800000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 438.2800000, ft0  = 0.4160000
                                                #; (f:fpu) ft3  <-- 438.6960000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 438.6960000, ft0  = 0.417
                                                #; (f:fpu) ft3  <-- 439.1130000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 439.1130000, ft0  = 0.418
                                                #; (f:fpu) ft3  <-- 439.5310000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 439.5310000, ft0  = 0.419
                                                #; (f:fpu) ft3  <-- 439.9500000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.42, ft3  = 439.9500000
                                                #; (f:fpu) ft3  <-- 440.3700000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 440.3700000, ft0  = 0.421
                                                #; (f:fpu) ft3  <-- 440.7910000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 440.7910000, ft0  = 0.422
                                                #; (f:fpu) ft3  <-- 441.2130000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 441.2130000, ft0  = 0.423
                                                #; (f:fpu) ft3  <-- 441.6360000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 441.6360000, ft0  = 0.424
                                                #; (f:fpu) ft3  <-- 442.0600000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 442.0600000, ft0  = 0.425
                                                #; (f:fpu) ft3  <-- 442.4850000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 442.4850000, ft0  = 0.426
                                                #; (f:fpu) ft3  <-- 442.9110000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 442.9110000, ft0  = 0.427
                                                #; (f:fpu) ft3  <-- 443.3380000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 443.3380000, ft0  = 0.428
                                                #; (f:fpu) ft3  <-- 443.7660000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 443.7660000, ft0  = 0.429
                                                #; (f:fpu) ft3  <-- 444.1950000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 444.1950000, ft0  = 0.43
                                                #; (f:fpu) ft3  <-- 444.6250000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 444.6250000, ft0  = 0.431
                                                #; (f:fpu) ft3  <-- 445.0560000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 445.0560000, ft0  = 0.432
                                                #; (f:fpu) ft3  <-- 445.4880000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 445.4880000, ft0  = 0.433
                                                #; (f:fpu) ft3  <-- 445.9210000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 445.9210000, ft0  = 0.434
                                                #; (f:fpu) ft3  <-- 446.3550000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 446.3550000, ft0  = 0.435
                                                #; (f:fpu) ft3  <-- 446.7900000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 446.7900000, ft0  = 0.436
                                                #; (f:fpu) ft3  <-- 447.2260000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 447.2260000, ft0  = 0.437
                                                #; (f:fpu) ft3  <-- 447.6630000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 447.6630000, ft0  = 0.438
                                                #; (f:fpu) ft3  <-- 448.1010000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 448.1010000, ft0  = 0.439
                                                #; (f:fpu) ft3  <-- 448.5400000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 448.5400000, ft0  = 0.44
                                                #; (f:fpu) ft3  <-- 448.9800000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 448.9800000, ft0  = 0.441
                                                #; (f:fpu) ft3  <-- 449.4210000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 449.4210000, ft0  = 0.442
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 5, (wrb) a4  <-- 4
                                                #; (f:fpu) ft3  <-- 449.8630000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 449.8630000, ft0  = 0.443
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 4, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 450.3060000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 450.3060000, ft0  = 0.444
                                                #; (f:fpu) ft3  <-- 450.7500000
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 450.7500000, ft0  = 0.445
                                                #; (f:fpu) ft3  <-- 451.1950000
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 451.1950000, ft0  = 0.446
                                                #; (f:fpu) ft3  <-- 451.6410000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 451.6410000, ft0  = 0.447
                                                #; (f:fpu) ft3  <-- 452.0880000
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 452.0880000, ft0  = 0.448
                                                #; (f:fpu) ft3  <-- 452.5360000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 452.5360000, ft0  = 0.449
                                                #; (f:fpu) ft3  <-- 452.9850000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 452.9850000, ft0  = 0.45
                                                #; (f:fpu) ft3  <-- 453.4350000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 453.4350000, ft0  = 0.451
                                                #; (f:fpu) ft3  <-- 453.8860000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 453.8860000, ft0  = 0.452
                                                #; (f:fpu) ft3  <-- 454.3380000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 454.3380000, ft0  = 0.453
                                                #; (f:fpu) ft3  <-- 454.7910000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 454.7910000, ft0  = 0.454
                                                #; (f:fpu) ft3  <-- 455.2450000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 455.2450000, ft0  = 0.455
                                                #; (f:fpu) ft3  <-- 455.7000000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 455.7000000, ft0  = 0.456
                                                #; (f:fpu) ft3  <-- 456.1560000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 456.1560000, ft0  = 0.457
                                                #; (f:fpu) ft3  <-- 456.6130000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 456.6130000, ft0  = 0.458
                                                #; (f:fpu) ft3  <-- 457.0710000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 457.0710000, ft0  = 0.459
                                                #; (f:fpu) ft3  <-- 457.5300000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 457.5300000, ft0  = 0.46
                                                #; (f:fpu) ft3  <-- 457.9900000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 457.9900000, ft0  = 0.461
                                                #; (f:fpu) ft3  <-- 458.4510000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.42, ft3  = 458.4510000
                                                #; (f:fpu) ft3  <-- 458.8710000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 458.8710000, ft0  = 0.421
                                                #; (f:fpu) ft3  <-- 459.2920000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 459.2920000, ft0  = 0.422
                                                #; (f:fpu) ft3  <-- 459.7140000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 459.7140000, ft0  = 0.423
                                                #; (f:fpu) ft3  <-- 460.1370000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 460.1370000, ft0  = 0.424
                                                #; (f:fpu) ft3  <-- 460.5610000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 460.5610000, ft0  = 0.425
                                                #; (f:fpu) ft3  <-- 460.9860000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 460.9860000, ft0  = 0.426
                                                #; (f:fpu) ft3  <-- 461.4120000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 461.4120000, ft0  = 0.427
                                                #; (f:fpu) ft3  <-- 461.8390000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 461.8390000, ft0  = 0.428
                                                #; (f:fpu) ft3  <-- 462.2670000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 462.2670000, ft0  = 0.429
                                                #; (f:fpu) ft3  <-- 462.6960000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 462.6960000, ft0  = 0.43
                                                #; (f:fpu) ft3  <-- 463.1260000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 463.1260000, ft0  = 0.431
                                                #; (f:fpu) ft3  <-- 463.5570000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 463.5570000, ft0  = 0.432
                                                #; (f:fpu) ft3  <-- 463.9890000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 463.9890000, ft0  = 0.433
                                                #; (f:fpu) ft3  <-- 464.4220000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 464.4220000, ft0  = 0.434
                                                #; (f:fpu) ft3  <-- 464.8560000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 464.8560000, ft0  = 0.435
                                                #; (f:fpu) ft3  <-- 465.2910000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 465.2910000, ft0  = 0.436
                                                #; (f:fpu) ft3  <-- 465.7270000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 465.7270000, ft0  = 0.437
                                                #; (f:fpu) ft3  <-- 466.1640000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 466.1640000, ft0  = 0.438
                                                #; (f:fpu) ft3  <-- 466.6020000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 466.6020000, ft0  = 0.439
                                                #; (f:fpu) ft3  <-- 467.0410000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 467.0410000, ft0  = 0.44
                                                #; (f:fpu) ft3  <-- 467.4810000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 467.4810000, ft0  = 0.441
                                                #; (f:fpu) ft3  <-- 467.9220000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 467.9220000, ft0  = 0.442
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 4, (wrb) a4  <-- 3
                                                #; (f:fpu) ft3  <-- 468.3640000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 468.3640000, ft0  = 0.443
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 3, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 468.8070000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 468.8070000, ft0  = 0.444
                                                #; (f:fpu) ft3  <-- 469.2510000
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 469.2510000, ft0  = 0.445
                                                #; (f:fpu) ft3  <-- 469.6960000
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 469.6960000, ft0  = 0.446
                                                #; (f:fpu) ft3  <-- 470.1420000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 470.1420000, ft0  = 0.447
                                                #; (f:fpu) ft3  <-- 470.5890000
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 470.5890000, ft0  = 0.448
                                                #; (f:fpu) ft3  <-- 471.0370000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 471.0370000, ft0  = 0.449
                                                #; (f:fpu) ft3  <-- 471.4860000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 471.4860000, ft0  = 0.45
                                                #; (f:fpu) ft3  <-- 471.9360000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 471.9360000, ft0  = 0.451
                                                #; (f:fpu) ft3  <-- 472.3870000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 472.3870000, ft0  = 0.452
                                                #; (f:fpu) ft3  <-- 472.8390000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 472.8390000, ft0  = 0.453
                                                #; (f:fpu) ft3  <-- 473.2920000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 473.2920000, ft0  = 0.454
                                                #; (f:fpu) ft3  <-- 473.7460000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 473.7460000, ft0  = 0.455
                                                #; (f:fpu) ft3  <-- 474.2010000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 474.2010000, ft0  = 0.456
                                                #; (f:fpu) ft3  <-- 474.6570000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 474.6570000, ft0  = 0.457
                                                #; (f:fpu) ft3  <-- 475.1140000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 475.1140000, ft0  = 0.458
                                                #; (f:fpu) ft3  <-- 475.5720000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 475.5720000, ft0  = 0.459
                                                #; (f:fpu) ft3  <-- 476.0310000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 476.0310000, ft0  = 0.46
                                                #; (f:fpu) ft3  <-- 476.4910000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 476.4910000, ft0  = 0.461
                                                #; (f:fpu) ft3  <-- 476.9520000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.42, ft3  = 476.9520000
                                                #; (f:fpu) ft3  <-- 477.3720000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 477.3720000, ft0  = 0.421
                                                #; (f:fpu) ft3  <-- 477.7930000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 477.7930000, ft0  = 0.422
                                                #; (f:fpu) ft3  <-- 478.2150000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 478.2150000, ft0  = 0.423
                                                #; (f:fpu) ft3  <-- 478.6380000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 478.6380000, ft0  = 0.424
                                                #; (f:fpu) ft3  <-- 479.0620000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 479.0620000, ft0  = 0.425
                                                #; (f:fpu) ft3  <-- 479.4870000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 479.4870000, ft0  = 0.426
                                                #; (f:fpu) ft3  <-- 479.9130000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 479.9130000, ft0  = 0.427
                                                #; (f:fpu) ft3  <-- 480.3400000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 480.3400000, ft0  = 0.428
                                                #; (f:fpu) ft3  <-- 480.7680000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 480.7680000, ft0  = 0.429
                                                #; (f:fpu) ft3  <-- 481.1970000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 481.1970000, ft0  = 0.43
                                                #; (f:fpu) ft3  <-- 481.6270000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 481.6270000, ft0  = 0.431
                                                #; (f:fpu) ft3  <-- 482.0580000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 482.0580000, ft0  = 0.432
                                                #; (f:fpu) ft3  <-- 482.4900000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 482.4900000, ft0  = 0.433
                                                #; (f:fpu) ft3  <-- 482.9230000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 482.9230000, ft0  = 0.434
                                                #; (f:fpu) ft3  <-- 483.3570000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 483.3570000, ft0  = 0.435
                                                #; (f:fpu) ft3  <-- 483.7920000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 483.7920000, ft0  = 0.436
                                                #; (f:fpu) ft3  <-- 484.2280000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 484.2280000, ft0  = 0.437
                                                #; (f:fpu) ft3  <-- 484.6650000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 484.6650000, ft0  = 0.438
                                                #; (f:fpu) ft3  <-- 485.1030000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 485.1030000, ft0  = 0.439
                                                #; (f:fpu) ft3  <-- 485.5420000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 485.5420000, ft0  = 0.44
                                                #; (f:fpu) ft3  <-- 485.9820000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 485.9820000, ft0  = 0.441
                                                #; (f:fpu) ft3  <-- 486.4230000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 486.4230000, ft0  = 0.442
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 3, (wrb) a4  <-- 2
                                                #; (f:fpu) ft3  <-- 486.8650000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 486.8650000, ft0  = 0.443
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 2, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 487.3080000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 487.3080000, ft0  = 0.444
                                                #; (f:fpu) ft3  <-- 487.7520000
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 487.7520000, ft0  = 0.445
                                                #; (f:fpu) ft3  <-- 488.1970000
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 488.1970000, ft0  = 0.446
                                                #; (f:fpu) ft3  <-- 488.6430000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 488.6430000, ft0  = 0.447
                                                #; (f:fpu) ft3  <-- 489.0900000
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 489.0900000, ft0  = 0.448
                                                #; (f:fpu) ft3  <-- 489.5380000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 489.5380000, ft0  = 0.449
                                                #; (f:fpu) ft3  <-- 489.9870000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 489.9870000, ft0  = 0.45
                                                #; (f:fpu) ft3  <-- 490.4370000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 490.4370000, ft0  = 0.451
                                                #; (f:fpu) ft3  <-- 490.8880000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 490.8880000, ft0  = 0.452
                                                #; (f:fpu) ft3  <-- 491.3400000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 491.3400000, ft0  = 0.453
                                                #; (f:fpu) ft3  <-- 491.7930000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 491.7930000, ft0  = 0.454
                                                #; (f:fpu) ft3  <-- 492.2470000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 492.2470000, ft0  = 0.455
                                                #; (f:fpu) ft3  <-- 492.7020000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 492.7020000, ft0  = 0.456
                                                #; (f:fpu) ft3  <-- 493.1580000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 493.1580000, ft0  = 0.457
                                                #; (f:fpu) ft3  <-- 493.6150000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 493.6150000, ft0  = 0.458
                                                #; (f:fpu) ft3  <-- 494.0730000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 494.0730000, ft0  = 0.459
                                                #; (f:fpu) ft3  <-- 494.5320000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 494.5320000, ft0  = 0.46
                                                #; (f:fpu) ft3  <-- 494.9920000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 494.9920000, ft0  = 0.461
                                                #; (f:fpu) ft3  <-- 495.4530000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.42, ft3  = 495.4530000
                                                #; (f:fpu) ft3  <-- 495.8730000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 495.8730000, ft0  = 0.421
                                                #; (f:fpu) ft3  <-- 496.2940000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 496.2940000, ft0  = 0.422
                                                #; (f:fpu) ft3  <-- 496.7160000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 496.7160000, ft0  = 0.423
                                                #; (f:fpu) ft3  <-- 497.1390000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 497.1390000, ft0  = 0.424
                                                #; (f:fpu) ft3  <-- 497.5630000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 497.5630000, ft0  = 0.425
                                                #; (f:fpu) ft3  <-- 497.9880000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 497.9880000, ft0  = 0.426
                                                #; (f:fpu) ft3  <-- 498.4140000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 498.4140000, ft0  = 0.427
                                                #; (f:fpu) ft3  <-- 498.8410000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 498.8410000, ft0  = 0.428
                                                #; (f:fpu) ft3  <-- 499.2690000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 499.2690000, ft0  = 0.429
                                                #; (f:fpu) ft3  <-- 499.6980000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 499.6980000, ft0  = 0.43
                                                #; (f:fpu) ft3  <-- 500.1280000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 500.1280000, ft0  = 0.431
                                                #; (f:fpu) ft3  <-- 500.5590000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 500.5590000, ft0  = 0.432
                                                #; (f:fpu) ft3  <-- 500.9910000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 500.9910000, ft0  = 0.433
                                                #; (f:fpu) ft3  <-- 501.4240000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 501.4240000, ft0  = 0.434
                                                #; (f:fpu) ft3  <-- 501.8580000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 501.8580000, ft0  = 0.435
                                                #; (f:fpu) ft3  <-- 502.2930000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 502.2930000, ft0  = 0.436
                                                #; (f:fpu) ft3  <-- 502.7290000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 502.7290000, ft0  = 0.437
                                                #; (f:fpu) ft3  <-- 503.1660000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 503.1660000, ft0  = 0.438
                                                #; (f:fpu) ft3  <-- 503.6040000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 503.6040000, ft0  = 0.439
                                                #; (f:fpu) ft3  <-- 504.0430000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 504.0430000, ft0  = 0.44
                                                #; (f:fpu) ft3  <-- 504.4830000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 504.4830000, ft0  = 0.441
                                                #; (f:fpu) ft3  <-- 504.9240000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 504.9240000, ft0  = 0.442
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 2, (wrb) a4  <-- 1
                                                #; (f:fpu) ft3  <-- 505.3660000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 505.3660000, ft0  = 0.443
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 1, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 505.8090000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 505.8090000, ft0  = 0.444
                                                #; (f:fpu) ft3  <-- 506.2530000
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 506.2530000, ft0  = 0.445
                                                #; (f:fpu) ft3  <-- 506.6980000
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 506.6980000, ft0  = 0.446
                                                #; (f:fpu) ft3  <-- 507.1440000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 507.1440000, ft0  = 0.447
                                                #; (f:fpu) ft3  <-- 507.5910000
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 507.5910000, ft0  = 0.448
                                                #; (f:fpu) ft3  <-- 508.0390000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 508.0390000, ft0  = 0.449
                                                #; (f:fpu) ft3  <-- 508.4880000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 508.4880000, ft0  = 0.45
                                                #; (f:fpu) ft3  <-- 508.9380000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 508.9380000, ft0  = 0.451
                                                #; (f:fpu) ft3  <-- 509.3890000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 509.3890000, ft0  = 0.452
                                                #; (f:fpu) ft3  <-- 509.8410000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 509.8410000, ft0  = 0.453
                                                #; (f:fpu) ft3  <-- 510.2940000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 510.2940000, ft0  = 0.454
                                                #; (f:fpu) ft3  <-- 510.7480000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 510.7480000, ft0  = 0.455
                                                #; (f:fpu) ft3  <-- 511.2030000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 511.2030000, ft0  = 0.456
                                                #; (f:fpu) ft3  <-- 511.6590000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 511.6590000, ft0  = 0.457
                                                #; (f:fpu) ft3  <-- 512.1160000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 512.1160000, ft0  = 0.458
                                                #; (f:fpu) ft3  <-- 512.5740000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 512.5740000, ft0  = 0.459
                                                #; (f:fpu) ft3  <-- 513.0330000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 513.0330000, ft0  = 0.46
                                                #; (f:fpu) ft3  <-- 513.4930000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 513.4930000, ft0  = 0.461
                                                #; (f:fpu) ft3  <-- 513.9540000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.42, ft3  = 513.9540000
                                                #; (f:fpu) ft3  <-- 514.3740000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 514.3740000, ft0  = 0.421
                                                #; (f:fpu) ft3  <-- 514.7950000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 514.7950000, ft0  = 0.422
                                                #; (f:fpu) ft3  <-- 515.2170000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 515.2170000, ft0  = 0.423
                                                #; (f:fpu) ft3  <-- 515.6400000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 515.6400000, ft0  = 0.424
                                                #; (f:fpu) ft3  <-- 516.0640000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 516.0640000, ft0  = 0.425
                                                #; (f:fpu) ft3  <-- 516.4890000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 516.4890000, ft0  = 0.426
                                                #; (f:fpu) ft3  <-- 516.9150000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 516.9150000, ft0  = 0.427
                                                #; (f:fpu) ft3  <-- 517.3420000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 517.3420000, ft0  = 0.428
                                                #; (f:fpu) ft3  <-- 517.7700000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 517.7700000, ft0  = 0.429
                                                #; (f:fpu) ft3  <-- 518.1990000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 518.1990000, ft0  = 0.43
                                                #; (f:fpu) ft3  <-- 518.6290000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 518.6290000, ft0  = 0.431
                                                #; (f:fpu) ft3  <-- 519.0600000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 519.0600000, ft0  = 0.432
                                                #; (f:fpu) ft3  <-- 519.4920000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 519.4920000, ft0  = 0.433
                                                #; (f:fpu) ft3  <-- 519.9250000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 519.9250000, ft0  = 0.434
                                                #; (f:fpu) ft3  <-- 520.3590000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 520.3590000, ft0  = 0.435
                                                #; (f:fpu) ft3  <-- 520.7940000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 520.7940000, ft0  = 0.436
                                                #; (f:fpu) ft3  <-- 521.2300000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 521.2300000, ft0  = 0.437
                                                #; (f:fpu) ft3  <-- 521.6670000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 521.6670000, ft0  = 0.438
                                                #; (f:fpu) ft3  <-- 522.1050000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 522.1050000, ft0  = 0.439
                                                #; (f:fpu) ft3  <-- 522.5440000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 522.5440000, ft0  = 0.44
                                                #; (f:fpu) ft3  <-- 522.9840000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 522.9840000, ft0  = 0.441
                                                #; (f:fpu) ft3  <-- 523.4250000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 523.4250000, ft0  = 0.442
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 1, (wrb) a4  <-- 0
                                                #; (f:fpu) ft3  <-- 523.8670000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 523.8670000, ft0  = 0.443
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 0, not taken
                                                #; (f:fpu) ft3  <-- 524.3100000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 524.3100000, ft0  = 0.444
; sum (test_size.c:14)
;  in main (test_size.c:42)
      0x800008b0 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
      0x800008b4 bne     a0, a5, pc - 184       #; a0  = 3, a5  = 4, taken, goto 0x800007fc
                                                #; (f:fpu) ft3  <-- 524.7540000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 524.7540000, ft0  = 0.445
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800007fc li      a4, 5                  #; (wrb) a4  <-- 5
                                                #; (f:fpu) ft3  <-- 525.1990000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 525.1990000, ft0  = 0.446
                                                #; (f:fpu) ft3  <-- 525.6450000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 525.6450000, ft0  = 0.447
                                                #; (f:fpu) ft3  <-- 526.0920000
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 526.0920000, ft0  = 0.448
                                                #; (f:fpu) ft3  <-- 526.5400000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 526.5400000, ft0  = 0.449
                                                #; (f:fpu) ft3  <-- 526.9890000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 526.9890000, ft0  = 0.45
                                                #; (f:fpu) ft3  <-- 527.4390000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 527.4390000, ft0  = 0.451
                                                #; (f:fpu) ft3  <-- 527.8900000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 527.8900000, ft0  = 0.452
                                                #; (f:fpu) ft3  <-- 528.3420000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 528.3420000, ft0  = 0.453
                                                #; (f:fpu) ft3  <-- 528.7950000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 528.7950000, ft0  = 0.454
                                                #; (f:fpu) ft3  <-- 529.2490000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 529.2490000, ft0  = 0.455
                                                #; (f:fpu) ft3  <-- 529.7040000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 529.7040000, ft0  = 0.456
                                                #; (f:fpu) ft3  <-- 530.1600000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 530.1600000, ft0  = 0.457
                                                #; (f:fpu) ft3  <-- 530.6170000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 530.6170000, ft0  = 0.458
                                                #; (f:fpu) ft3  <-- 531.0750000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 531.0750000, ft0  = 0.459
                                                #; (f:fpu) ft3  <-- 531.5340000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 531.5340000, ft0  = 0.46
                                                #; (f:fpu) ft3  <-- 531.9940000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 531.9940000, ft0  = 0.461
                                                #; (f:fpu) ft3  <-- 532.4550000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.462, ft3  = 532.4550000
                                                #; (f:fpu) ft3  <-- 532.9170000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 532.9170000, ft0  = 0.463
                                                #; (f:fpu) ft3  <-- 533.3800000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 533.3800000, ft0  = 0.464
                                                #; (f:fpu) ft3  <-- 533.8440000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 533.8440000, ft0  = 0.465
                                                #; (f:fpu) ft3  <-- 534.3090000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 534.3090000, ft0  = 0.466
                                                #; (f:fpu) ft3  <-- 534.7750000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 534.7750000, ft0  = 0.467
                                                #; (f:fpu) ft3  <-- 535.2420000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 535.2420000, ft0  = 0.468
                                                #; (f:fpu) ft3  <-- 535.7100000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 535.7100000, ft0  = 0.4690000
                                                #; (f:fpu) ft3  <-- 536.1790000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 536.1790000, ft0  = 0.4700000
                                                #; (f:fpu) ft3  <-- 536.6490000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 536.6490000, ft0  = 0.4710000
                                                #; (f:fpu) ft3  <-- 537.1200000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 537.1200000, ft0  = 0.4720000
                                                #; (f:fpu) ft3  <-- 537.5920000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 537.5920000, ft0  = 0.4730000
                                                #; (f:fpu) ft3  <-- 538.0650000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 538.0650000, ft0  = 0.4740000
                                                #; (f:fpu) ft3  <-- 538.5390000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 538.5390000, ft0  = 0.4750000
                                                #; (f:fpu) ft3  <-- 539.0140000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 539.0140000, ft0  = 0.4760000
                                                #; (f:fpu) ft3  <-- 539.4900000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 539.4900000, ft0  = 0.4770000
                                                #; (f:fpu) ft3  <-- 539.9670000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 539.9670000, ft0  = 0.4780000
                                                #; (f:fpu) ft3  <-- 540.4450000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 540.4450000, ft0  = 0.4790000
                                                #; (f:fpu) ft3  <-- 540.9240000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 540.9240000, ft0  = 0.48
                                                #; (f:fpu) ft3  <-- 541.4040000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 541.4040000, ft0  = 0.481
                                                #; (f:fpu) ft3  <-- 541.8850000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 541.8850000, ft0  = 0.482
                                                #; (f:fpu) ft3  <-- 542.3670000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 542.3670000, ft0  = 0.483
                                                #; (f:fpu) ft3  <-- 542.8500000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 542.8500000, ft0  = 0.484
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 5, (wrb) a4  <-- 4
                                                #; (f:fpu) ft3  <-- 543.3340000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 543.3340000, ft0  = 0.485
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 4, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 543.8190000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 543.8190000, ft0  = 0.486
                                                #; (f:fpu) ft3  <-- 544.3050000
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 544.3050000, ft0  = 0.487
                                                #; (f:fpu) ft3  <-- 544.7920000
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 544.7920000, ft0  = 0.488
                                                #; (f:fpu) ft3  <-- 545.2800000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 545.2800000, ft0  = 0.489
                                                #; (f:fpu) ft3  <-- 545.7690000
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 545.7690000, ft0  = 0.49
                                                #; (f:fpu) ft3  <-- 546.2590000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 546.2590000, ft0  = 0.491
                                                #; (f:fpu) ft3  <-- 546.7500000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 546.7500000, ft0  = 0.492
                                                #; (f:fpu) ft3  <-- 547.2420000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 547.2420000, ft0  = 0.493
                                                #; (f:fpu) ft3  <-- 547.7350000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 547.7350000, ft0  = 0.494
                                                #; (f:fpu) ft3  <-- 548.2290000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 548.2290000, ft0  = 0.495
                                                #; (f:fpu) ft3  <-- 548.7240000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 548.7240000, ft0  = 0.496
                                                #; (f:fpu) ft3  <-- 549.2200000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 549.2200000, ft0  = 0.497
                                                #; (f:fpu) ft3  <-- 549.7170000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 549.7170000, ft0  = 0.498
                                                #; (f:fpu) ft3  <-- 550.2150000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 550.2150000, ft0  = 0.499
                                                #; (f:fpu) ft3  <-- 550.7140000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 550.7140000, ft0  = 0.5
                                                #; (f:fpu) ft3  <-- 551.2140000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 551.2140000, ft0  = 0.501
                                                #; (f:fpu) ft3  <-- 551.7150000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 551.7150000, ft0  = 0.502
                                                #; (f:fpu) ft3  <-- 552.2170000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 552.2170000, ft0  = 0.503
                                                #; (f:fpu) ft3  <-- 552.7200000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.462, ft3  = 552.7200000
                                                #; (f:fpu) ft3  <-- 553.1820000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 553.1820000, ft0  = 0.463
                                                #; (f:fpu) ft3  <-- 553.6450000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 553.6450000, ft0  = 0.464
                                                #; (f:fpu) ft3  <-- 554.1090000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 554.1090000, ft0  = 0.465
                                                #; (f:fpu) ft3  <-- 554.574
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 554.574, ft0  = 0.466
                                                #; (f:fpu) ft3  <-- 555.04
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 555.04, ft0  = 0.467
                                                #; (f:fpu) ft3  <-- 555.507
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 555.507, ft0  = 0.468
                                                #; (f:fpu) ft3  <-- 555.9750000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 555.9750000, ft0  = 0.4690000
                                                #; (f:fpu) ft3  <-- 556.444
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 556.444, ft0  = 0.4700000
                                                #; (f:fpu) ft3  <-- 556.914
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 556.914, ft0  = 0.4710000
                                                #; (f:fpu) ft3  <-- 557.385
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 557.385, ft0  = 0.4720000
                                                #; (f:fpu) ft3  <-- 557.857
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 557.857, ft0  = 0.4730000
                                                #; (f:fpu) ft3  <-- 558.3300000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 558.3300000, ft0  = 0.4740000
                                                #; (f:fpu) ft3  <-- 558.804
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 558.804, ft0  = 0.4750000
                                                #; (f:fpu) ft3  <-- 559.279
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 559.279, ft0  = 0.4760000
                                                #; (f:fpu) ft3  <-- 559.755
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 559.755, ft0  = 0.4770000
                                                #; (f:fpu) ft3  <-- 560.232
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 560.232, ft0  = 0.4780000
                                                #; (f:fpu) ft3  <-- 560.7100000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 560.7100000, ft0  = 0.4790000
                                                #; (f:fpu) ft3  <-- 561.189
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 561.189, ft0  = 0.48
                                                #; (f:fpu) ft3  <-- 561.669
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 561.669, ft0  = 0.481
                                                #; (f:fpu) ft3  <-- 562.15
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 562.15, ft0  = 0.482
                                                #; (f:fpu) ft3  <-- 562.632
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 562.632, ft0  = 0.483
                                                #; (f:fpu) ft3  <-- 563.1150000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 563.1150000, ft0  = 0.484
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 4, (wrb) a4  <-- 3
                                                #; (f:fpu) ft3  <-- 563.5990000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 563.5990000, ft0  = 0.485
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 3, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 564.084
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 564.084, ft0  = 0.486
                                                #; (f:fpu) ft3  <-- 564.5700000
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 564.5700000, ft0  = 0.487
                                                #; (f:fpu) ft3  <-- 565.0570000
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 565.0570000, ft0  = 0.488
                                                #; (f:fpu) ft3  <-- 565.545
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 565.545, ft0  = 0.489
                                                #; (f:fpu) ft3  <-- 566.034
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 566.034, ft0  = 0.49
                                                #; (f:fpu) ft3  <-- 566.524
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 566.524, ft0  = 0.491
                                                #; (f:fpu) ft3  <-- 567.015
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 567.015, ft0  = 0.492
                                                #; (f:fpu) ft3  <-- 567.507
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 567.507, ft0  = 0.493
                                                #; (f:fpu) ft3  <-- 568.0
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 568.0, ft0  = 0.494
                                                #; (f:fpu) ft3  <-- 568.494
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 568.494, ft0  = 0.495
                                                #; (f:fpu) ft3  <-- 568.989
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 568.989, ft0  = 0.496
                                                #; (f:fpu) ft3  <-- 569.485
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 569.485, ft0  = 0.497
                                                #; (f:fpu) ft3  <-- 569.982
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 569.982, ft0  = 0.498
                                                #; (f:fpu) ft3  <-- 570.48
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 570.48, ft0  = 0.499
                                                #; (f:fpu) ft3  <-- 570.979
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 570.979, ft0  = 0.5
                                                #; (f:fpu) ft3  <-- 571.479
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 571.479, ft0  = 0.501
                                                #; (f:fpu) ft3  <-- 571.98
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 571.98, ft0  = 0.502
                                                #; (f:fpu) ft3  <-- 572.482
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 572.482, ft0  = 0.503
                                                #; (f:fpu) ft3  <-- 572.985
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.462, ft3  = 572.985
                                                #; (f:fpu) ft3  <-- 573.447
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 573.447, ft0  = 0.463
                                                #; (f:fpu) ft3  <-- 573.91
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 573.91, ft0  = 0.464
                                                #; (f:fpu) ft3  <-- 574.374
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 574.374, ft0  = 0.465
                                                #; (f:fpu) ft3  <-- 574.839
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 574.839, ft0  = 0.466
                                                #; (f:fpu) ft3  <-- 575.3050000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 575.3050000, ft0  = 0.467
                                                #; (f:fpu) ft3  <-- 575.772
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 575.772, ft0  = 0.468
                                                #; (f:fpu) ft3  <-- 576.24
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 576.24, ft0  = 0.4690000
                                                #; (f:fpu) ft3  <-- 576.7090000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 576.7090000, ft0  = 0.4700000
                                                #; (f:fpu) ft3  <-- 577.1790000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 577.1790000, ft0  = 0.4710000
                                                #; (f:fpu) ft3  <-- 577.6500000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 577.6500000, ft0  = 0.4720000
                                                #; (f:fpu) ft3  <-- 578.1220000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 578.1220000, ft0  = 0.4730000
                                                #; (f:fpu) ft3  <-- 578.595
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 578.595, ft0  = 0.4740000
                                                #; (f:fpu) ft3  <-- 579.0690000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 579.0690000, ft0  = 0.4750000
                                                #; (f:fpu) ft3  <-- 579.5440000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 579.5440000, ft0  = 0.4760000
                                                #; (f:fpu) ft3  <-- 580.0200000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 580.0200000, ft0  = 0.4770000
                                                #; (f:fpu) ft3  <-- 580.4970000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 580.4970000, ft0  = 0.4780000
                                                #; (f:fpu) ft3  <-- 580.975
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 580.975, ft0  = 0.4790000
                                                #; (f:fpu) ft3  <-- 581.4540000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 581.4540000, ft0  = 0.48
                                                #; (f:fpu) ft3  <-- 581.9340000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 581.9340000, ft0  = 0.481
                                                #; (f:fpu) ft3  <-- 582.4150000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 582.4150000, ft0  = 0.482
                                                #; (f:fpu) ft3  <-- 582.897
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 582.897, ft0  = 0.483
                                                #; (f:fpu) ft3  <-- 583.38
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 583.38, ft0  = 0.484
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 3, (wrb) a4  <-- 2
                                                #; (f:fpu) ft3  <-- 583.864
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 583.864, ft0  = 0.485
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 2, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 584.349
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 584.349, ft0  = 0.486
                                                #; (f:fpu) ft3  <-- 584.835
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 584.835, ft0  = 0.487
                                                #; (f:fpu) ft3  <-- 585.322
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 585.322, ft0  = 0.488
                                                #; (f:fpu) ft3  <-- 585.8100000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 585.8100000, ft0  = 0.489
                                                #; (f:fpu) ft3  <-- 586.2990000
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 586.2990000, ft0  = 0.49
                                                #; (f:fpu) ft3  <-- 586.7890000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 586.7890000, ft0  = 0.491
                                                #; (f:fpu) ft3  <-- 587.2800000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 587.2800000, ft0  = 0.492
                                                #; (f:fpu) ft3  <-- 587.772
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 587.772, ft0  = 0.493
                                                #; (f:fpu) ft3  <-- 588.2650000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 588.2650000, ft0  = 0.494
                                                #; (f:fpu) ft3  <-- 588.7590000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 588.7590000, ft0  = 0.495
                                                #; (f:fpu) ft3  <-- 589.2540000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 589.2540000, ft0  = 0.496
                                                #; (f:fpu) ft3  <-- 589.7500000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 589.7500000, ft0  = 0.497
                                                #; (f:fpu) ft3  <-- 590.2470000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 590.2470000, ft0  = 0.498
                                                #; (f:fpu) ft3  <-- 590.7450000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 590.7450000, ft0  = 0.499
                                                #; (f:fpu) ft3  <-- 591.2440000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 591.2440000, ft0  = 0.5
                                                #; (f:fpu) ft3  <-- 591.7440000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 591.7440000, ft0  = 0.501
                                                #; (f:fpu) ft3  <-- 592.2450000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 592.2450000, ft0  = 0.502
                                                #; (f:fpu) ft3  <-- 592.7470000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 592.7470000, ft0  = 0.503
                                                #; (f:fpu) ft3  <-- 593.2500000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.462, ft3  = 593.2500000
                                                #; (f:fpu) ft3  <-- 593.7120000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 593.7120000, ft0  = 0.463
                                                #; (f:fpu) ft3  <-- 594.1750000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 594.1750000, ft0  = 0.464
                                                #; (f:fpu) ft3  <-- 594.6390000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 594.6390000, ft0  = 0.465
                                                #; (f:fpu) ft3  <-- 595.1040000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 595.1040000, ft0  = 0.466
                                                #; (f:fpu) ft3  <-- 595.5700000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 595.5700000, ft0  = 0.467
                                                #; (f:fpu) ft3  <-- 596.0370000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 596.0370000, ft0  = 0.468
                                                #; (f:fpu) ft3  <-- 596.5050000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 596.5050000, ft0  = 0.4690000
                                                #; (f:fpu) ft3  <-- 596.9740000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 596.9740000, ft0  = 0.4700000
                                                #; (f:fpu) ft3  <-- 597.4440000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 597.4440000, ft0  = 0.4710000
                                                #; (f:fpu) ft3  <-- 597.9150000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 597.9150000, ft0  = 0.4720000
                                                #; (f:fpu) ft3  <-- 598.3870000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 598.3870000, ft0  = 0.4730000
                                                #; (f:fpu) ft3  <-- 598.8600000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 598.8600000, ft0  = 0.4740000
                                                #; (f:fpu) ft3  <-- 599.3340000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 599.3340000, ft0  = 0.4750000
                                                #; (f:fpu) ft3  <-- 599.8090000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 599.8090000, ft0  = 0.4760000
                                                #; (f:fpu) ft3  <-- 600.2850000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 600.2850000, ft0  = 0.4770000
                                                #; (f:fpu) ft3  <-- 600.7620000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 600.7620000, ft0  = 0.4780000
                                                #; (f:fpu) ft3  <-- 601.2400000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 601.2400000, ft0  = 0.4790000
                                                #; (f:fpu) ft3  <-- 601.7190000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 601.7190000, ft0  = 0.48
                                                #; (f:fpu) ft3  <-- 602.1990000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 602.1990000, ft0  = 0.481
                                                #; (f:fpu) ft3  <-- 602.6800000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 602.6800000, ft0  = 0.482
                                                #; (f:fpu) ft3  <-- 603.1620000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 603.1620000, ft0  = 0.483
                                                #; (f:fpu) ft3  <-- 603.6450000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 603.6450000, ft0  = 0.484
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 2, (wrb) a4  <-- 1
                                                #; (f:fpu) ft3  <-- 604.1290000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 604.1290000, ft0  = 0.485
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 1, taken, goto 0x80000800
                                                #; (f:fpu) ft3  <-- 604.6140000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 604.6140000, ft0  = 0.486
                                                #; (f:fpu) ft3  <-- 605.1000000
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 605.1000000, ft0  = 0.487
                                                #; (f:fpu) ft3  <-- 605.5870000
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 605.5870000, ft0  = 0.488
                                                #; (f:fpu) ft3  <-- 606.0750000
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 606.0750000, ft0  = 0.489
                                                #; (f:fpu) ft3  <-- 606.5640000
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 606.5640000, ft0  = 0.49
                                                #; (f:fpu) ft3  <-- 607.0540000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 607.0540000, ft0  = 0.491
                                                #; (f:fpu) ft3  <-- 607.5450000
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 607.5450000, ft0  = 0.492
                                                #; (f:fpu) ft3  <-- 608.0370000
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 608.0370000, ft0  = 0.493
                                                #; (f:fpu) ft3  <-- 608.5300000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 608.5300000, ft0  = 0.494
                                                #; (f:fpu) ft3  <-- 609.0240000
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 609.0240000, ft0  = 0.495
                                                #; (f:fpu) ft3  <-- 609.5190000
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 609.5190000, ft0  = 0.496
                                                #; (f:fpu) ft3  <-- 610.0150000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 610.0150000, ft0  = 0.497
                                                #; (f:fpu) ft3  <-- 610.5120000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 610.5120000, ft0  = 0.498
                                                #; (f:fpu) ft3  <-- 611.0100000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 611.0100000, ft0  = 0.499
                                                #; (f:fpu) ft3  <-- 611.5090000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 611.5090000, ft0  = 0.5
                                                #; (f:fpu) ft3  <-- 612.0090000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 612.0090000, ft0  = 0.501
                                                #; (f:fpu) ft3  <-- 612.5100000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 612.5100000, ft0  = 0.502
                                                #; (f:fpu) ft3  <-- 613.0120000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 613.0120000, ft0  = 0.503
                                                #; (f:fpu) ft3  <-- 613.5150000
      0x80000800 fadd.d  ft3, ft0, ft3          #; ft0  = 0.462, ft3  = 613.5150000
                                                #; (f:fpu) ft3  <-- 613.9770000
      0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 613.9770000, ft0  = 0.463
                                                #; (f:fpu) ft3  <-- 614.4400000
      0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 614.4400000, ft0  = 0.464
                                                #; (f:fpu) ft3  <-- 614.9040000
      0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 614.9040000, ft0  = 0.465
                                                #; (f:fpu) ft3  <-- 615.3690000
      0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 615.3690000, ft0  = 0.466
                                                #; (f:fpu) ft3  <-- 615.8350000
      0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 615.8350000, ft0  = 0.467
                                                #; (f:fpu) ft3  <-- 616.3020000
      0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 616.3020000, ft0  = 0.468
                                                #; (f:fpu) ft3  <-- 616.7700000
      0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 616.7700000, ft0  = 0.4690000
                                                #; (f:fpu) ft3  <-- 617.2390000
      0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 617.2390000, ft0  = 0.4700000
                                                #; (f:fpu) ft3  <-- 617.7090000
      0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 617.7090000, ft0  = 0.4710000
                                                #; (f:fpu) ft3  <-- 618.1800000
      0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 618.1800000, ft0  = 0.4720000
                                                #; (f:fpu) ft3  <-- 618.6520000
      0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 618.6520000, ft0  = 0.4730000
                                                #; (f:fpu) ft3  <-- 619.1250000
      0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 619.1250000, ft0  = 0.4740000
                                                #; (f:fpu) ft3  <-- 619.5990000
      0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 619.5990000, ft0  = 0.4750000
                                                #; (f:fpu) ft3  <-- 620.0740000
      0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 620.0740000, ft0  = 0.4760000
                                                #; (f:fpu) ft3  <-- 620.5500000
      0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 620.5500000, ft0  = 0.4770000
                                                #; (f:fpu) ft3  <-- 621.0270000
      0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 621.0270000, ft0  = 0.4780000
                                                #; (f:fpu) ft3  <-- 621.5050000
      0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 621.5050000, ft0  = 0.4790000
                                                #; (f:fpu) ft3  <-- 621.9840000
      0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 621.9840000, ft0  = 0.48
                                                #; (f:fpu) ft3  <-- 622.4640000
      0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 622.4640000, ft0  = 0.481
                                                #; (f:fpu) ft3  <-- 622.9450000
      0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 622.9450000, ft0  = 0.482
                                                #; (f:fpu) ft3  <-- 623.4270000
      0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 623.4270000, ft0  = 0.483
                                                #; (f:fpu) ft3  <-- 623.9100000
      0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 623.9100000, ft0  = 0.484
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008a4 addi    a4, a4, -1             #; a4  = 1, (wrb) a4  <-- 0
                                                #; (f:fpu) ft3  <-- 624.3940000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 624.3940000, ft0  = 0.485
; sum (test_size.c:15)
;  in main (test_size.c:42)
      0x800008ac bnez    a4, pc - 172           #; a4  = 0, not taken
                                                #; (f:fpu) ft3  <-- 624.8790000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 624.8790000, ft0  = 0.486
; sum (test_size.c:14)
;  in main (test_size.c:42)
      0x800008b0 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
      0x800008b4 bne     a0, a5, pc - 184       #; a0  = 4, a5  = 4, not taken
                                                #; (f:fpu) ft3  <-- 625.3650000
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x800008b8 j       pc - 0x13c             #; goto 0x8000077c
      0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 625.3650000, ft0  = 0.487
                                                #; (f:fpu) ft3  <-- 625.8520000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 625.8520000, ft0  = 0.488
; sum (test_size.c:13)
;  in main (test_size.c:42)
      0x80000780 addi    t6, t6, 1              #; t6  = 2, (wrb) t6  <-- 3
      0x80000784 addi    a2, a2, 1344           #; a2  = 0x00100b28, (wrb) a2  <-- 0x00101068
                                                #; (f:fpu) ft3  <-- 626.3400000
      0x80000788 beq     t6, t2, pc + 980       #; t6  = 3, t2  = 3, taken, goto 0x80000b5c
      0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 626.3400000, ft0  = 0.489
                                                #; (f:fpu) ft3  <-- 626.8290000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 626.8290000, ft0  = 0.49
                                                #; (f:fpu) ft3  <-- 627.3190000
      0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 627.3190000, ft0  = 0.491
                                                #; (f:fpu) ft3  <-- 627.8100000
; main (test_size.c:0)
      0x80000b5c auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002b5c
      0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 627.8100000, ft0  = 0.492
                                                #; (f:fpu) ft3  <-- 628.3020000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 628.3020000, ft0  = 0.493
                                                #; (f:fpu) ft3  <-- 628.7950000
      0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 628.7950000, ft0  = 0.494
                                                #; (f:fpu) ft3  <-- 629.2890000
; main (test_size.c:0)
      0x80000b60 addi    a0, a0, 1612           #; a0  = 0x80002b5c, (wrb) a0  <-- 0x800031a8
      0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 629.2890000, ft0  = 0.495
                                                #; (f:fpu) ft3  <-- 629.7840000
; sum (test_size.c:18)
;  in main (test_size.c:42)
      0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 629.7840000, ft0  = 0.496
                                                #; (f:fpu) ft3  <-- 630.2800000
      0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 630.2800000, ft0  = 0.497
                                                #; (f:fpu) ft3  <-- 630.7770000
      0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 630.7770000, ft0  = 0.498
                                                #; (f:fpu) ft3  <-- 631.2750000
      0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 631.2750000, ft0  = 0.499
                                                #; (f:fpu) ft3  <-- 631.7740000
      0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 631.7740000, ft0  = 0.5
                                                #; (f:fpu) ft3  <-- 632.2740000
      0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 632.2740000, ft0  = 0.501
                                                #; (f:fpu) ft3  <-- 632.7750000
      0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 632.7750000, ft0  = 0.502
                                                #; (f:fpu) ft3  <-- 633.2770000
      0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 633.2770000, ft0  = 0.503
; sum (test_size.c:0)
;  in main (test_size.c:42)
      0x8000077c csrrci  a0, ssr, 1             #; 
; main (test_size.c:0)
      0x80000b64 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x800031a8], (f:fpu) ft3  <-- 633.7800000
; main (test_size.c:49)
      0x80000b74 lw      a2, 8(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff48]
                                                #; (f:lsu) ft4  <-- -633.78
; main (test_size.c:46)
      0x80000b68 fadd.d  ft3, ft3, ft4          #; ft3  = 633.7800000, ft4  = -633.78
                                                #; (lsu) a2  <-- 0
; main (test_size.c:49)
      0x80000b78 lw      a3, 12(sp)             #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff4c]
      0x80000b7c auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002b7c
                                                #; (f:fpu) ft3  <-- 0.0000000
      0x80000b80 addi    a0, a0, 873            #; a0  = 0x80002b7c, (wrb) a0  <-- 0x80002ee5
      0x80000b6c fsgnjx.d fs0, ft3, ft3         #; ft3  = 0.0000000, ft3  = 0.0000000
      0x80000b84 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000b84
                                                #; (f:fpu) fs0  <-- 0.0000000
      0x80000b88 jalr    ra, ra, 40             #; ra  = 0x80000b84, (wrb) ra  <-- 0x80000b8c, goto 0x80000bac
      0x80000b70 fsd     fs0, 8(sp)             #; 0.0000000 ~~> Doub[0x0011ff48]
                                                #; (lsu) a3  <-- 0
; printf_ (printf.c:863)
      0x80000bac addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
      0x80000bb0 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x80000b8c ~~> Word[0x0011ff1c]
      0x80000bb4 mv      t0, a0                 #; a0  = 0x80002ee5, (wrb) t0  <-- 0x80002ee5
      0x80000bb8 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 5 ~~> Word[0x0011ff3c]
      0x80000bbc sw      a6, 40(sp)             #; sp  = 0x0011ff10, 6 ~~> Word[0x0011ff38]
      0x80000bc0 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 4 ~~> Word[0x0011ff34]
      0x80000bc4 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff30]
      0x80000bc8 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
      0x80000bcc sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
      0x80000bd0 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 32 ~~> Word[0x0011ff24]
      0x80000bd4 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
; printf_ (printf.c:865)
      0x80000bd8 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
; printf_ (printf.c:867)
      0x80000bdc auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001bdc
      0x80000be0 addi    a0, a0, -988           #; a0  = 0x80001bdc, (wrb) a0  <-- 0x80001800
      0x80000be4 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
      0x80000be8 li      a2, -1                 #; (wrb) a2  <-- -1
      0x80000bec addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
      0x80000bf0 mv      a3, t0                 #; t0  = 0x80002ee5, (wrb) a3  <-- 0x80002ee5
      0x80000bf4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000bf4
      0x80000bf8 jalr    ra, ra, 20             #; ra  = 0x80000bf4, (wrb) ra  <-- 0x80000bfc, goto 0x80000c08
; _vsnprintf.llvm.1805434900161566649 (printf.c:578)
      0x80000c08 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
      0x80000c0c sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x80000bfc ~~> Word[0x0011ff0c]
      0x80000c10 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff08]
      0x80000c14 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
      0x80000c18 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
      0x80000c1c sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
      0x80000c20 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
      0x80000c24 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
      0x80000c28 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
      0x80000c2c sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
      0x80000c30 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
      0x80000c34 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
      0x80000c38 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
      0x80000c3c sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
      0x80000c40 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
      0x80000c44 mv      s0, a3                 #; a3  = 0x80002ee5, (wrb) s0  <-- 0x80002ee5
      0x80000c48 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
      0x80000c4c mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
; _vsnprintf.llvm.1805434900161566649 (printf.c:582)
      0x80000c50 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c54 mv      s2, a0                 #; a0  = 0x80001800, (wrb) s2  <-- 0x80001800
      0x80000c58 j       pc + 0xc               #; goto 0x80000c64
      0x80000c64 li      s8, 0                  #; (wrb) s8  <-- 0
      0x80000c68 li      s6, 37                 #; (wrb) s6  <-- 37
      0x80000c6c li      s11, 16                #; (wrb) s11 <-- 16
      0x80000c70 li      s7, 46                 #; (wrb) s7  <-- 46
      0x80000c74 lui     a0, 0x1                #; (wrb) a0  <-- 4096
      0x80000c78 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
      0x80000c7c sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
      0x80000c80 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
      0x80000c84 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
      0x80000c88 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c8c addi    s10, s0, 2             #; s0  = 0x80002ee5, (wrb) s10 <-- 0x80002ee7
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c90 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
      0x80000c94 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c98 lbu     a0, 0(s0)              #; s0  = 0x80002ee5, a0  <~~ Byte[0x80002ee5]
                                                #; (lsu) a0  <-- 101
      0x80000c9c beqz    a0, pc + 2824          #; a0  = 101, not taken
      0x80000ca0 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000ca4 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
      0x80000ca8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000cac mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
      0x80000cb0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000cb4 jalr    s2                     #; s2  = 0x80001800, (wrb) ra  <-- 0x80000cb8, goto 0x80001800
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001800 beqz    a0, pc + 168           #; a0  = 101, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
      0x80001814 addi    a3, a3, -1452          #; a3  = 0x80003810, (wrb) a3  <-- 0x80003264
      0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003264, (wrb) a1  <-- 0x80003264
      0x8000181c lw      a4, 0(a1)              #; a1  = 0x80003264, a4  <~~ Word[0x80003264]
                                                #; (lsu) a4  <-- 0
      0x80001820 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
      0x80001824 sw      a5, 0(a1)              #; a1  = 0x80003264, 1 ~~> Word[0x80003264]
      0x80001828 add     a4, a1, a4             #; a1  = 0x80003264, a4  = 0, (wrb) a4  <-- 0x80003264
      0x8000182c sb      a0, 72(a4)             #; a4  = 0x80003264, 101 ~~> Byte[0x800032ac]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001830 lw      a4, 0(a1)              #; a1  = 0x80003264, a4  <~~ Word[0x80003264]
                                                #; (lsu) a4  <-- 1
      0x80001834 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
      0x80001838 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
      0x8000183c addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
      0x80001840 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
      0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800018a8 ret                            #; ra  = 0x80000cb8, goto 0x80000cb8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000cb8 addi    s0, s0, 1              #; s0  = 0x80002ee5, (wrb) s0  <-- 0x80002ee6
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000cbc addi    s10, s10, 1            #; s10 = 0x80002ee7, (wrb) s10 <-- 0x80002ee8
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000cc0 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000cc4 lbu     a0, 0(s0)              #; s0  = 0x80002ee6, a0  <~~ Byte[0x80002ee6]
                                                #; (lsu) a0  <-- 114
      0x80000cc8 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000ca0
      0x80000ca0 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000ca4 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
      0x80000ca8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000cac mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
      0x80000cb0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000cb4 jalr    s2                     #; s2  = 0x80001800, (wrb) ra  <-- 0x80000cb8, goto 0x80001800
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001800 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
      0x80001814 addi    a3, a3, -1452          #; a3  = 0x80003810, (wrb) a3  <-- 0x80003264
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003264, (wrb) a1  <-- 0x80003264
      0x8000181c lw      a4, 0(a1)              #; a1  = 0x80003264, a4  <~~ Word[0x80003264]
                                                #; (lsu) a4  <-- 1
      0x80001820 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
      0x80001824 sw      a5, 0(a1)              #; a1  = 0x80003264, 2 ~~> Word[0x80003264]
      0x80001828 add     a4, a1, a4             #; a1  = 0x80003264, a4  = 1, (wrb) a4  <-- 0x80003265
      0x8000182c sb      a0, 72(a4)             #; a4  = 0x80003265, 114 ~~> Byte[0x800032ad]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001830 lw      a4, 0(a1)              #; a1  = 0x80003264, a4  <~~ Word[0x80003264]
                                                #; (lsu) a4  <-- 2
      0x80001834 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
      0x80001838 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
      0x8000183c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001840 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800018a8 ret                            #; ra  = 0x80000cb8, goto 0x80000cb8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000cb8 addi    s0, s0, 1              #; s0  = 0x80002ee6, (wrb) s0  <-- 0x80002ee7
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000cbc addi    s10, s10, 1            #; s10 = 0x80002ee8, (wrb) s10 <-- 0x80002ee9
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000cc0 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000cc4 lbu     a0, 0(s0)              #; s0  = 0x80002ee7, a0  <~~ Byte[0x80002ee7]
                                                #; (lsu) a0  <-- 114
      0x80000cc8 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000ca0
      0x80000ca0 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000ca4 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
      0x80000ca8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000cac mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
      0x80000cb0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000cb4 jalr    s2                     #; s2  = 0x80001800, (wrb) ra  <-- 0x80000cb8, goto 0x80001800
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001800 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
      0x80001814 addi    a3, a3, -1452          #; a3  = 0x80003810, (wrb) a3  <-- 0x80003264
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003264, (wrb) a1  <-- 0x80003264
      0x8000181c lw      a4, 0(a1)              #; a1  = 0x80003264, a4  <~~ Word[0x80003264]
                                                #; (lsu) a4  <-- 2
      0x80001820 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
      0x80001824 sw      a5, 0(a1)              #; a1  = 0x80003264, 3 ~~> Word[0x80003264]
      0x80001828 add     a4, a1, a4             #; a1  = 0x80003264, a4  = 2, (wrb) a4  <-- 0x80003266
      0x8000182c sb      a0, 72(a4)             #; a4  = 0x80003266, 114 ~~> Byte[0x800032ae]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001830 lw      a4, 0(a1)              #; a1  = 0x80003264, a4  <~~ Word[0x80003264]
                                                #; (lsu) a4  <-- 3
      0x80001834 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
      0x80001838 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
      0x8000183c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001840 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800018a8 ret                            #; ra  = 0x80000cb8, goto 0x80000cb8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000cb8 addi    s0, s0, 1              #; s0  = 0x80002ee7, (wrb) s0  <-- 0x80002ee8
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000cbc addi    s10, s10, 1            #; s10 = 0x80002ee9, (wrb) s10 <-- 0x80002eea
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000cc0 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000cc4 lbu     a0, 0(s0)              #; s0  = 0x80002ee8, a0  <~~ Byte[0x80002ee8]
                                                #; (lsu) a0  <-- 111
      0x80000cc8 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000ca0
      0x80000ca0 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000ca4 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
      0x80000ca8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000cac mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
      0x80000cb0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000cb4 jalr    s2                     #; s2  = 0x80001800, (wrb) ra  <-- 0x80000cb8, goto 0x80001800
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001800 beqz    a0, pc + 168           #; a0  = 111, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
      0x80001814 addi    a3, a3, -1452          #; a3  = 0x80003810, (wrb) a3  <-- 0x80003264
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003264, (wrb) a1  <-- 0x80003264
      0x8000181c lw      a4, 0(a1)              #; a1  = 0x80003264, a4  <~~ Word[0x80003264]
                                                #; (lsu) a4  <-- 3
      0x80001820 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
      0x80001824 sw      a5, 0(a1)              #; a1  = 0x80003264, 4 ~~> Word[0x80003264]
      0x80001828 add     a4, a1, a4             #; a1  = 0x80003264, a4  = 3, (wrb) a4  <-- 0x80003267
      0x8000182c sb      a0, 72(a4)             #; a4  = 0x80003267, 111 ~~> Byte[0x800032af]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001830 lw      a4, 0(a1)              #; a1  = 0x80003264, a4  <~~ Word[0x80003264]
                                                #; (lsu) a4  <-- 4
      0x80001834 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
      0x80001838 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
      0x8000183c addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
      0x80001840 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
      0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800018a8 ret                            #; ra  = 0x80000cb8, goto 0x80000cb8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000cb8 addi    s0, s0, 1              #; s0  = 0x80002ee8, (wrb) s0  <-- 0x80002ee9
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000cbc addi    s10, s10, 1            #; s10 = 0x80002eea, (wrb) s10 <-- 0x80002eeb
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000cc0 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000cc4 lbu     a0, 0(s0)              #; s0  = 0x80002ee9, a0  <~~ Byte[0x80002ee9]
                                                #; (lsu) a0  <-- 114
      0x80000cc8 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000ca0
      0x80000ca0 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000ca4 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
      0x80000ca8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000cac mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
      0x80000cb0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000cb4 jalr    s2                     #; s2  = 0x80001800, (wrb) ra  <-- 0x80000cb8, goto 0x80001800
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001800 beqz    a0, pc + 168           #; a0  = 114, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
      0x80001814 addi    a3, a3, -1452          #; a3  = 0x80003810, (wrb) a3  <-- 0x80003264
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003264, (wrb) a1  <-- 0x80003264
      0x8000181c lw      a4, 0(a1)              #; a1  = 0x80003264, a4  <~~ Word[0x80003264]
                                                #; (lsu) a4  <-- 4
      0x80001820 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
      0x80001824 sw      a5, 0(a1)              #; a1  = 0x80003264, 5 ~~> Word[0x80003264]
      0x80001828 add     a4, a1, a4             #; a1  = 0x80003264, a4  = 4, (wrb) a4  <-- 0x80003268
      0x8000182c sb      a0, 72(a4)             #; a4  = 0x80003268, 114 ~~> Byte[0x800032b0]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001830 lw      a4, 0(a1)              #; a1  = 0x80003264, a4  <~~ Word[0x80003264]
                                                #; (lsu) a4  <-- 5
      0x80001834 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
      0x80001838 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
      0x8000183c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
      0x80001840 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
      0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800018a8 ret                            #; ra  = 0x80000cb8, goto 0x80000cb8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000cb8 addi    s0, s0, 1              #; s0  = 0x80002ee9, (wrb) s0  <-- 0x80002eea
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000cbc addi    s10, s10, 1            #; s10 = 0x80002eeb, (wrb) s10 <-- 0x80002eec
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000cc0 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000cc4 lbu     a0, 0(s0)              #; s0  = 0x80002eea, a0  <~~ Byte[0x80002eea]
                                                #; (lsu) a0  <-- 32
      0x80000cc8 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000ca0
      0x80000ca0 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000ca4 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
      0x80000ca8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000cac mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
      0x80000cb0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000cb4 jalr    s2                     #; s2  = 0x80001800, (wrb) ra  <-- 0x80000cb8, goto 0x80001800
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001800 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
      0x80001814 addi    a3, a3, -1452          #; a3  = 0x80003810, (wrb) a3  <-- 0x80003264
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003264, (wrb) a1  <-- 0x80003264
      0x8000181c lw      a4, 0(a1)              #; a1  = 0x80003264, a4  <~~ Word[0x80003264]
                                                #; (lsu) a4  <-- 5
      0x80001820 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
      0x80001824 sw      a5, 0(a1)              #; a1  = 0x80003264, 6 ~~> Word[0x80003264]
      0x80001828 add     a4, a1, a4             #; a1  = 0x80003264, a4  = 5, (wrb) a4  <-- 0x80003269
      0x8000182c sb      a0, 72(a4)             #; a4  = 0x80003269, 32 ~~> Byte[0x800032b1]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001830 lw      a4, 0(a1)              #; a1  = 0x80003264, a4  <~~ Word[0x80003264]
                                                #; (lsu) a4  <-- 6
      0x80001834 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
      0x80001838 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
      0x8000183c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x80001840 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800018a8 ret                            #; ra  = 0x80000cb8, goto 0x80000cb8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000cb8 addi    s0, s0, 1              #; s0  = 0x80002eea, (wrb) s0  <-- 0x80002eeb
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000cbc addi    s10, s10, 1            #; s10 = 0x80002eec, (wrb) s10 <-- 0x80002eed
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000cc0 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000cc4 lbu     a0, 0(s0)              #; s0  = 0x80002eeb, a0  <~~ Byte[0x80002eeb]
                                                #; (lsu) a0  <-- 61
      0x80000cc8 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000ca0
      0x80000ca0 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000ca4 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
      0x80000ca8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000cac mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
      0x80000cb0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000cb4 jalr    s2                     #; s2  = 0x80001800, (wrb) ra  <-- 0x80000cb8, goto 0x80001800
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001800 beqz    a0, pc + 168           #; a0  = 61, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
      0x80001814 addi    a3, a3, -1452          #; a3  = 0x80003810, (wrb) a3  <-- 0x80003264
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003264, (wrb) a1  <-- 0x80003264
      0x8000181c lw      a4, 0(a1)              #; a1  = 0x80003264, a4  <~~ Word[0x80003264]
                                                #; (lsu) a4  <-- 6
      0x80001820 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
      0x80001824 sw      a5, 0(a1)              #; a1  = 0x80003264, 7 ~~> Word[0x80003264]
      0x80001828 add     a4, a1, a4             #; a1  = 0x80003264, a4  = 6, (wrb) a4  <-- 0x8000326a
      0x8000182c sb      a0, 72(a4)             #; a4  = 0x8000326a, 61 ~~> Byte[0x800032b2]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001830 lw      a4, 0(a1)              #; a1  = 0x80003264, a4  <~~ Word[0x80003264]
                                                #; (lsu) a4  <-- 7
      0x80001834 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
      0x80001838 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
      0x8000183c addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
      0x80001840 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
      0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800018a8 ret                            #; ra  = 0x80000cb8, goto 0x80000cb8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000cb8 addi    s0, s0, 1              #; s0  = 0x80002eeb, (wrb) s0  <-- 0x80002eec
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000cbc addi    s10, s10, 1            #; s10 = 0x80002eed, (wrb) s10 <-- 0x80002eee
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000cc0 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000cc4 lbu     a0, 0(s0)              #; s0  = 0x80002eec, a0  <~~ Byte[0x80002eec]
                                                #; (lsu) a0  <-- 32
      0x80000cc8 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000ca0
      0x80000ca0 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000ca4 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
      0x80000ca8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000cac mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
      0x80000cb0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000cb4 jalr    s2                     #; s2  = 0x80001800, (wrb) ra  <-- 0x80000cb8, goto 0x80001800
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001800 beqz    a0, pc + 168           #; a0  = 32, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
      0x80001814 addi    a3, a3, -1452          #; a3  = 0x80003810, (wrb) a3  <-- 0x80003264
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003264, (wrb) a1  <-- 0x80003264
      0x8000181c lw      a4, 0(a1)              #; a1  = 0x80003264, a4  <~~ Word[0x80003264]
                                                #; (lsu) a4  <-- 7
      0x80001820 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
      0x80001824 sw      a5, 0(a1)              #; a1  = 0x80003264, 8 ~~> Word[0x80003264]
      0x80001828 add     a4, a1, a4             #; a1  = 0x80003264, a4  = 7, (wrb) a4  <-- 0x8000326b
      0x8000182c sb      a0, 72(a4)             #; a4  = 0x8000326b, 32 ~~> Byte[0x800032b3]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001830 lw      a4, 0(a1)              #; a1  = 0x80003264, a4  <~~ Word[0x80003264]
                                                #; (lsu) a4  <-- 8
      0x80001834 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
      0x80001838 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
      0x8000183c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
      0x80001840 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
      0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800018a8 ret                            #; ra  = 0x80000cb8, goto 0x80000cb8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000cb8 addi    s0, s0, 1              #; s0  = 0x80002eec, (wrb) s0  <-- 0x80002eed
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000cbc addi    s10, s10, 1            #; s10 = 0x80002eee, (wrb) s10 <-- 0x80002eef
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000cc0 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000cc4 lbu     a0, 0(s0)              #; s0  = 0x80002eed, a0  <~~ Byte[0x80002eed]
                                                #; (lsu) a0  <-- 37
      0x80000cc8 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000ca0
      0x80000ca0 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000cd0
; _vsnprintf.llvm.1805434900161566649 (printf.c:602)
      0x80000cd0 li      s0, 0                  #; (wrb) s0  <-- 0
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000cd4 j       pc + 0x10              #; goto 0x80000ce4
; _vsnprintf.llvm.1805434900161566649 (printf.c:604)
      0x80000ce4 lbu     a0, -1(s10)            #; s10 = 0x80002eef, a0  <~~ Byte[0x80002eee]
                                                #; (lsu) a0  <-- 102
      0x80000ce8 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
      0x80000cec bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000d24
; _is_digit (printf.c:183)
;  in _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000d24 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
      0x80000d28 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
; _vsnprintf.llvm.1805434900161566649 (printf.c:616)
      0x80000d2c addi    a1, s10, -1            #; s10 = 0x80002eef, (wrb) a1  <-- 0x80002eee
      0x80000d30 li      a3, 9                  #; (wrb) a3  <-- 9
      0x80000d34 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000db0
; _vsnprintf.llvm.1805434900161566649 (printf.c:619)
      0x80000db0 li      a2, 42                 #; (wrb) a2  <-- 42
      0x80000db4 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000e04
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e04 li      s6, 0                  #; (wrb) s6  <-- 0
      0x80000e08 mv      s10, a1                #; a1  = 0x80002eee, (wrb) s10 <-- 0x80002eee
; _vsnprintf.llvm.1805434900161566649 (printf.c:633)
      0x80000e0c beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000e10 li      s7, 0                  #; (wrb) s7  <-- 0
      0x80000e14 j       pc + 0xc               #; goto 0x80000e20
; _vsnprintf.llvm.1805434900161566649 (printf.c:647)
      0x80000e20 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
      0x80000e24 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
      0x80000e28 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
      0x80000e2c or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
      0x80000e30 li      a2, 9                  #; (wrb) a2  <-- 9
      0x80000e34 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000e98
; _vsnprintf.llvm.1805434900161566649 (printf.c:683)
      0x80000e98 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
      0x80000e9c li      a2, 83                 #; (wrb) a2  <-- 83
      0x80000ea0 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000ea4 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
      0x80000ea8 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002ea8
      0x80000eac addi    a2, a2, 188            #; a2  = 0x80002ea8, (wrb) a2  <-- 0x80002f64
      0x80000eb0 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002f64, (wrb) a1  <-- 0x80003068
      0x80000eb4 lw      a2, 0(a1)              #; a1  = 0x80003068, a2  <~~ Word[0x80003068]
      0x80000eb8 li      a1, 8                  #; (wrb) a1  <-- 8
      0x80000ebc li      s8, 16                 #; (wrb) s8  <-- 16
                                                #; (lsu) a2  <-- 0x80000ef0
      0x80000ec0 jr      a2                     #; a2  = 0x80000ef0, goto 0x80000ef0
; _vsnprintf.llvm.1805434900161566649 (printf.c:760)
      0x80000ef0 li      a1, 70                 #; (wrb) a1  <-- 70
      0x80000ef4 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000efc
; _vsnprintf.llvm.1805434900161566649 (printf.c:761)
      0x80000efc addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
      0x80000f00 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
      0x80000f08 addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
      0x80000f0c mv      a0, s2                 #; s2  = 0x80001800, (wrb) a0  <-- 0x80001800
      0x80000f04 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
                                                #; (f:lsu) fa0  <-- 0.0
      0x80000f10 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000f14 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
      0x80000f18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000f1c mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
      0x80000f20 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
      0x80000f24 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
      0x80000f28 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001f28
      0x80000f2c jalr    ra, ra, -1656          #; ra  = 0x80001f28, (wrb) ra  <-- 0x80000f30, goto 0x800018b0
; _ftoa (printf.c:340)
      0x800018b0 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
      0x800018b4 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000f30 ~~> Word[0x0011fe9c]
      0x800018b8 sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
      0x800018bc sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
      0x800018c0 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x80001800 ~~> Word[0x0011fe90]
      0x800018c4 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
      0x800018c8 sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
      0x800018cc sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
      0x800018d0 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
      0x800018d4 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
      0x800018d8 sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
      0x800018dc sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
      0x800018e0 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002eee ~~> Word[0x0011fe70]
      0x800018e4 fsd     fs0, 56(sp)            #; 0.0000000 ~~> Doub[0x0011fe68]
      0x800018e8 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
      0x800018ec fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
      0x800018f0 auipc   s1, 0x2                #; (wrb) s1  <-- 0x800038f0
      0x800018f4 addi    s1, s1, -1848          #; s1  = 0x800038f0, (wrb) s1  <-- 0x800031b8
      0x800018f8 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x800031b8]
; _ftoa (printf.c:351)
      0x80001900 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
; _ftoa (printf.c:0)
      0x80001904 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                                                #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
      0x80001908 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
      0x800018fc fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
      0x8000190c mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
      0x80001910 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
      0x80001914 mv      s7, a0                 #; a0  = 0x80001800, (wrb) s7  <-- 0x80001800
; _ftoa (printf.c:351)
      0x80001918 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001a08
; _ftoa (printf.c:0)
      0x80001a0c auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002a0c
      0x80001a08 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
                                                #; (f:fpu) fs0  <-- 0.0
      0x80001a10 addi    a0, a0, 1972           #; a0  = 0x80002a0c, (wrb) a0  <-- 0x800031c0
      0x80001a14 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800031c0]
                                                #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
; _ftoa (printf.c:353)
      0x80001a18 fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
                                                #; (acc) t3  <-- 0x00051e63
      0x80001a1c bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80001a38
; _ftoa (printf.c:0)
      0x80001a38 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002a38
      0x80001a3c addi    a0, a0, 1936           #; a0  = 0x80002a38, (wrb) a0  <-- 0x800031c8
      0x80001a44 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002a44
      0x80001a48 addi    a0, a0, 1932           #; a0  = 0x80002a44, (wrb) a0  <-- 0x800031d0
      0x80001a40 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800031c8]
      0x80001a4c fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x800031d0]
                                                #; (f:lsu) ft0  <-- 1000000000.0000000
; _ftoa (printf.c:358)
      0x80001a50 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
                                                #; (f:lsu) ft1  <-- -1000000000.0000000
                                                #; (acc) a0  <-- 0x00b57533
      0x80001a54 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
                                                #; (acc) a0  <-- 0x00b57533
      0x80001a58 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
      0x80001a5c bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001b58
; _ftoa (printf.c:374)
      0x80001b58 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
      0x80001b5c li      s8, 6                  #; (wrb) s8  <-- 6
      0x80001b60 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001b68
; _ftoa (printf.c:0)
      0x80001b68 li      a0, 10                 #; (wrb) a0  <-- 10
      0x80001b6c fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
                                                #; (f:fpu) fs2  <-- 0.0
; _ftoa (printf.c:378)
      0x80001b70 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001ba8
; _ftoa (printf.c:0)
      0x80001ba8 li      s0, 0                  #; (wrb) s0  <-- 0
; _ftoa (printf.c:384)
      0x80001bac slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
      0x80001bb0 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002bb0
      0x80001bb4 addi    a1, a1, 1288           #; a1  = 0x80002bb0, (wrb) a1  <-- 0x800030b8
      0x80001bb8 add     a0, a0, a1             #; a0  = 48, a1  = 0x800030b8, (wrb) a0  <-- 0x800030e8
      0x80001bbc fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x800030e8]
; _ftoa (printf.c:383)
      0x80001bc0 fcvt.w.d s1, fs2               #; fs2  = 0.0
                                                #; (f:lsu) ft1  <-- 1000000.0000000
; _ftoa (printf.c:384)
      0x80001bc4 fcvt.d.w ft0, s1               #; ac1  = 0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80001bc8 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
                                                #; (f:fpu) ft0  <-- 0.0
      0x80001bcc fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
; _ftoa (printf.c:0)
      0x80001bd0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002bd0
      0x80001bd4 addi    a0, a0, 1544           #; a0  = 0x80002bd0, (wrb) a0  <-- 0x800031d8
                                                #; (f:fpu) ft2  <-- 0.0
      0x80001bd8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800031d8]
; _ftoa (printf.c:385)
      0x80001bdc fcvt.wu.d a0, ft2              #; ft2  = 0.0
; _ftoa (printf.c:386)
      0x80001be0 fcvt.d.wu ft3, a0              #; ac1  = 0, (f:lsu) ft0  <-- 0.5
                                                #; (f:fpu) ft3  <-- 0.0
      0x80001be4 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
                                                #; (f:fpu) ft2  <-- 0.0
; _ftoa (printf.c:388)
      0x80001be8 fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
      0x80001bec bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001c0c
; _ftoa (printf.c:396)
      0x80001c0c flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
      0x80001c10 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001c24
; _ftoa (printf.c:403)
      0x80001c28 beqz    s8, pc + 216           #; s8  = 6, not taken
      0x80001c24 fcvt.d.w fs1, zero             #; ac1  = 0
; _ftoa (printf.c:0)
      0x80001c2c li      a2, 0                  #; (wrb) a2  <-- 0
                                                #; (f:fpu) fs1  <-- 0.0
      0x80001c30 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:414)
      0x80001c34 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
      0x80001c38 li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001c3c sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
      0x80001c40 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
      0x80001c44 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
      0x80001c48 li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001c4c li      a7, 9                  #; (wrb) a7  <-- 9
      0x80001c50 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
; _ftoa (printf.c:0)
      0x80001c54 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
; _ftoa (printf.c:417)
      0x80001c58 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
                                                #; (acc) a0  <-- 0x00355513
      0x80001c5c srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001c60 mul     a3, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a3  <-- 0x40d586b3
      0x80001c64 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
; _ftoa (printf.c:416)
      0x80001c68 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
      0x80001c6c add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
      0x80001c70 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
; _ftoa (printf.c:417)
      0x80001c74 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
      0x80001c78 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
; _ftoa (printf.c:422)
      0x80001c7c add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
      0x80001c80 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
      0x80001c84 li      a3, 30                 #; (wrb) a3  <-- 30
      0x80001c88 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
      0x80001c8c xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
      0x80001c90 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
      0x80001c94 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
      0x80001c98 bnez    a3, pc + 136           #; a3  = 0, not taken
; _ftoa (printf.c:0)
      0x80001c9c addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
; _ftoa (printf.c:422)
      0x80001ca0 add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
      0x80001ca4 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
      0x80001ca8 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
      0x80001cac add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
      0x80001cb0 li      a1, 31                 #; (wrb) a1  <-- 31
      0x80001cb4 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
      0x80001cb8 add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
      0x80001cbc mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
      0x80001cc0 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001cc8
      0x80001cc8 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
; _ftoa (printf.c:423)
      0x80001ccc li      a1, 48                 #; (wrb) a1  <-- 48
      0x80001cd0 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000cd0
      0x80001cd4 jalr    ra, ra, -1912          #; ra  = 0x80000cd0, (wrb) ra  <-- 0x80001cd8, goto 0x80000558
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
      0x800005ec ret                            #; ra  = 0x80001cd8, goto 0x80001cd8
; _ftoa (printf.c:0)
      0x80001cd8 li      a0, 0                  #; (wrb) a0  <-- 0
; _ftoa (printf.c:422)
      0x80001cdc add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
      0x80001ce0 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
      0x80001ce4 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
      0x80001ce8 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
      0x80001cec and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001cf0 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
      0x80001cf4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001cdc
      0x80001cdc add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
      0x80001ce0 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
      0x80001ce4 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
      0x80001ce8 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
      0x80001cec and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001cf0 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
      0x80001cf4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001cdc
      0x80001cdc add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
      0x80001ce0 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
      0x80001ce4 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
      0x80001ce8 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
      0x80001cec and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001cf0 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
      0x80001cf4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001cdc
      0x80001cdc add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
      0x80001ce0 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
      0x80001ce4 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
      0x80001ce8 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
      0x80001cec and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
      0x80001cf0 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
      0x80001cf4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001cdc
      0x80001cdc add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
      0x80001ce0 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
      0x80001ce4 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
      0x80001ce8 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
      0x80001cec and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
      0x80001cf0 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
      0x80001cf4 bnez    a2, pc - 24            #; a2  = 0, not taken
; _ftoa (printf.c:425)
      0x80001cf8 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
      0x80001cfc j       pc + 0x28              #; goto 0x80001d24
      0x80001d24 beqz    a1, pc + 28            #; a1  = 1, not taken
; _ftoa (printf.c:427)
      0x80001d28 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
; _ftoa (printf.c:0)
      0x80001d2c addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
; _ftoa (printf.c:427)
      0x80001d30 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
      0x80001d34 li      a1, 46                 #; (wrb) a1  <-- 46
      0x80001d38 sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
      0x80001d3c j       pc + 0x8               #; goto 0x80001d44
; _ftoa (printf.c:0)
      0x80001d44 li      a0, 32                 #; (wrb) a0  <-- 32
; _ftoa (printf.c:432)
      0x80001d48 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
      0x80001d4c bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
; _ftoa (printf.c:0)
      0x80001d50 li      t0, 32                 #; (wrb) t0  <-- 32
      0x80001d58 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
      0x80001d54 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
      0x80001d5c addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
      0x80001d60 li      a6, 10                 #; (wrb) a6  <-- 10
      0x80001d64 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
      0x80001d68 li      a4, 18                 #; (wrb) a4  <-- 18
; _ftoa (printf.c:432)
      0x80001d6c beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
; _ftoa (printf.c:434)
      0x80001d70 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
                                                #; (acc) a5  <-- 0x01f55793
      0x80001d74 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
      0x80001d78 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
      0x80001d7c add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
; _ftoa (printf.c:0)
      0x80001d80 mul     a5, a0, a6             #; a0  = 0, a6  = 10
                                                #; (acc) a5  <-- 0x40f487b3
      0x80001d84 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
; _ftoa (printf.c:433)
      0x80001d88 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
      0x80001d8c addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
      0x80001d90 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
; _ftoa (printf.c:434)
      0x80001d94 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
; _ftoa (printf.c:433)
      0x80001d98 sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
; _ftoa (printf.c:0)
      0x80001d9c mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
      0x80001da0 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:434)
      0x80001da4 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
      0x80001da8 j       pc + 0x8               #; goto 0x80001db0
; _ftoa (printf.c:440)
      0x80001db0 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
; _ftoa (printf.c:0)
      0x80001db4 li      a0, 1                  #; (wrb) a0  <-- 1
; _ftoa (printf.c:440)
      0x80001db8 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001e24
; _ftoa (printf.c:0)
      0x80001e24 li      a0, 31                 #; (wrb) a0  <-- 31
; _ftoa (printf.c:449)
      0x80001e28 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
; _ftoa (printf.c:450)
      0x80001e2c beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001e44
; _ftoa (printf.c:453)
      0x80001e44 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
      0x80001e48 bnez    a0, pc + 32            #; a0  = 0, not taken
; _ftoa (printf.c:456)
      0x80001e4c andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
      0x80001e50 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001e7c
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001e7c snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
      0x80001e80 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
      0x80001e84 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
      0x80001e88 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
; _ftoa (printf.c:0)
      0x80001e8c andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
      0x80001e90 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
; _out_rev (printf.c:204)
;  in _ftoa (printf.c:461)
      0x80001e94 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001ec0
; _ftoa (printf.c:0)
      0x80001ec0 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ec4 beqz    s8, pc + 56            #; s8  = 8, not taken
      0x80001ec8 addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001ecc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
      0x80001ed0 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
      0x80001ed4 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
      0x80001ed8 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
      0x80001edc mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
                                                #; (lsu) a0  <-- 48
      0x80001ee0 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
      0x80001ee4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001ee8 jalr    s7                     #; s7  = 0x80001800, (wrb) ra  <-- 0x80001eec, goto 0x80001800
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001800 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
      0x80001814 addi    a3, a3, -1452          #; a3  = 0x80003810, (wrb) a3  <-- 0x80003264
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003264, (wrb) a1  <-- 0x80003264
      0x8000181c lw      a4, 0(a1)              #; a1  = 0x80003264, a4  <~~ Word[0x80003264]
                                                #; (lsu) a4  <-- 8
      0x80001820 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
      0x80001824 sw      a5, 0(a1)              #; a1  = 0x80003264, 9 ~~> Word[0x80003264]
      0x80001828 add     a4, a1, a4             #; a1  = 0x80003264, a4  = 8, (wrb) a4  <-- 0x8000326c
      0x8000182c sb      a0, 72(a4)             #; a4  = 0x8000326c, 48 ~~> Byte[0x800032b4]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001830 lw      a4, 0(a1)              #; a1  = 0x80003264, a4  <~~ Word[0x80003264]
                                                #; (lsu) a4  <-- 9
      0x80001834 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
      0x80001838 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
      0x8000183c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001840 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800018a8 ret                            #; ra  = 0x80001eec, goto 0x80001eec
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001eec mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
      0x80001ef0 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ef4 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001ecc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001ecc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
      0x80001ed0 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
      0x80001ed4 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
      0x80001ed8 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
      0x80001edc mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001ee0 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
      0x80001ee4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001ee8 jalr    s7                     #; s7  = 0x80001800, (wrb) ra  <-- 0x80001eec, goto 0x80001800
                                                #; (lsu) a0  <-- 46
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001800 beqz    a0, pc + 168           #; a0  = 46, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
      0x80001814 addi    a3, a3, -1452          #; a3  = 0x80003810, (wrb) a3  <-- 0x80003264
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003264, (wrb) a1  <-- 0x80003264
      0x8000181c lw      a4, 0(a1)              #; a1  = 0x80003264, a4  <~~ Word[0x80003264]
                                                #; (lsu) a4  <-- 9
      0x80001820 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
      0x80001824 sw      a5, 0(a1)              #; a1  = 0x80003264, 10 ~~> Word[0x80003264]
      0x80001828 add     a4, a1, a4             #; a1  = 0x80003264, a4  = 9, (wrb) a4  <-- 0x8000326d
      0x8000182c sb      a0, 72(a4)             #; a4  = 0x8000326d, 46 ~~> Byte[0x800032b5]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001830 lw      a4, 0(a1)              #; a1  = 0x80003264, a4  <~~ Word[0x80003264]
                                                #; (lsu) a4  <-- 10
      0x80001834 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
      0x80001838 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
      0x8000183c addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
      0x80001840 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
      0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800018a8 ret                            #; ra  = 0x80001eec, goto 0x80001eec
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001eec mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
      0x80001ef0 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ef4 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001ecc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001ecc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
      0x80001ed0 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
      0x80001ed4 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
      0x80001ed8 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
      0x80001edc mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001ee0 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
      0x80001ee4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001ee8 jalr    s7                     #; s7  = 0x80001800, (wrb) ra  <-- 0x80001eec, goto 0x80001800
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001800 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
      0x80001814 addi    a3, a3, -1452          #; a3  = 0x80003810, (wrb) a3  <-- 0x80003264
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003264, (wrb) a1  <-- 0x80003264
      0x8000181c lw      a4, 0(a1)              #; a1  = 0x80003264, a4  <~~ Word[0x80003264]
                                                #; (lsu) a4  <-- 10
      0x80001820 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
      0x80001824 sw      a5, 0(a1)              #; a1  = 0x80003264, 11 ~~> Word[0x80003264]
      0x80001828 add     a4, a1, a4             #; a1  = 0x80003264, a4  = 10, (wrb) a4  <-- 0x8000326e
      0x8000182c sb      a0, 72(a4)             #; a4  = 0x8000326e, 48 ~~> Byte[0x800032b6]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001830 lw      a4, 0(a1)              #; a1  = 0x80003264, a4  <~~ Word[0x80003264]
                                                #; (lsu) a4  <-- 11
      0x80001834 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
      0x80001838 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
      0x8000183c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001840 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800018a8 ret                            #; ra  = 0x80001eec, goto 0x80001eec
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001eec mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
      0x80001ef0 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ef4 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001ecc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001ecc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
      0x80001ed0 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
      0x80001ed4 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
      0x80001ed8 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
      0x80001edc mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001ee0 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
      0x80001ee4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001ee8 jalr    s7                     #; s7  = 0x80001800, (wrb) ra  <-- 0x80001eec, goto 0x80001800
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001800 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
      0x80001814 addi    a3, a3, -1452          #; a3  = 0x80003810, (wrb) a3  <-- 0x80003264
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003264, (wrb) a1  <-- 0x80003264
      0x8000181c lw      a4, 0(a1)              #; a1  = 0x80003264, a4  <~~ Word[0x80003264]
                                                #; (lsu) a4  <-- 11
      0x80001820 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
      0x80001824 sw      a5, 0(a1)              #; a1  = 0x80003264, 12 ~~> Word[0x80003264]
      0x80001828 add     a4, a1, a4             #; a1  = 0x80003264, a4  = 11, (wrb) a4  <-- 0x8000326f
      0x8000182c sb      a0, 72(a4)             #; a4  = 0x8000326f, 48 ~~> Byte[0x800032b7]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001830 lw      a4, 0(a1)              #; a1  = 0x80003264, a4  <~~ Word[0x80003264]
                                                #; (lsu) a4  <-- 12
      0x80001834 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
      0x80001838 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
      0x8000183c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001840 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800018a8 ret                            #; ra  = 0x80001eec, goto 0x80001eec
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001eec mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
      0x80001ef0 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ef4 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001ecc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001ecc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
      0x80001ed0 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
      0x80001ed4 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
      0x80001ed8 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
      0x80001edc mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001ee0 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
      0x80001ee4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001ee8 jalr    s7                     #; s7  = 0x80001800, (wrb) ra  <-- 0x80001eec, goto 0x80001800
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001800 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
      0x80001814 addi    a3, a3, -1452          #; a3  = 0x80003810, (wrb) a3  <-- 0x80003264
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003264, (wrb) a1  <-- 0x80003264
      0x8000181c lw      a4, 0(a1)              #; a1  = 0x80003264, a4  <~~ Word[0x80003264]
                                                #; (lsu) a4  <-- 12
      0x80001820 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
      0x80001824 sw      a5, 0(a1)              #; a1  = 0x80003264, 13 ~~> Word[0x80003264]
      0x80001828 add     a4, a1, a4             #; a1  = 0x80003264, a4  = 12, (wrb) a4  <-- 0x80003270
      0x8000182c sb      a0, 72(a4)             #; a4  = 0x80003270, 48 ~~> Byte[0x800032b8]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001830 lw      a4, 0(a1)              #; a1  = 0x80003264, a4  <~~ Word[0x80003264]
                                                #; (lsu) a4  <-- 13
      0x80001834 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
      0x80001838 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
      0x8000183c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001840 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800018a8 ret                            #; ra  = 0x80001eec, goto 0x80001eec
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001eec mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
      0x80001ef0 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ef4 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001ecc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001ecc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
      0x80001ed0 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
      0x80001ed4 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
      0x80001ed8 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
      0x80001edc mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001ee0 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
      0x80001ee4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001ee8 jalr    s7                     #; s7  = 0x80001800, (wrb) ra  <-- 0x80001eec, goto 0x80001800
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001800 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
      0x80001814 addi    a3, a3, -1452          #; a3  = 0x80003810, (wrb) a3  <-- 0x80003264
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003264, (wrb) a1  <-- 0x80003264
      0x8000181c lw      a4, 0(a1)              #; a1  = 0x80003264, a4  <~~ Word[0x80003264]
                                                #; (lsu) a4  <-- 13
      0x80001820 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
      0x80001824 sw      a5, 0(a1)              #; a1  = 0x80003264, 14 ~~> Word[0x80003264]
      0x80001828 add     a4, a1, a4             #; a1  = 0x80003264, a4  = 13, (wrb) a4  <-- 0x80003271
      0x8000182c sb      a0, 72(a4)             #; a4  = 0x80003271, 48 ~~> Byte[0x800032b9]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001830 lw      a4, 0(a1)              #; a1  = 0x80003264, a4  <~~ Word[0x80003264]
                                                #; (lsu) a4  <-- 14
      0x80001834 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
      0x80001838 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
      0x8000183c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001840 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800018a8 ret                            #; ra  = 0x80001eec, goto 0x80001eec
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001eec mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
      0x80001ef0 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ef4 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001ecc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001ecc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
      0x80001ed0 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
      0x80001ed4 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
      0x80001ed8 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
      0x80001edc mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001ee0 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
      0x80001ee4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001ee8 jalr    s7                     #; s7  = 0x80001800, (wrb) ra  <-- 0x80001eec, goto 0x80001800
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001800 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
      0x80001814 addi    a3, a3, -1452          #; a3  = 0x80003810, (wrb) a3  <-- 0x80003264
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003264, (wrb) a1  <-- 0x80003264
      0x8000181c lw      a4, 0(a1)              #; a1  = 0x80003264, a4  <~~ Word[0x80003264]
                                                #; (lsu) a4  <-- 14
      0x80001820 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
      0x80001824 sw      a5, 0(a1)              #; a1  = 0x80003264, 15 ~~> Word[0x80003264]
      0x80001828 add     a4, a1, a4             #; a1  = 0x80003264, a4  = 14, (wrb) a4  <-- 0x80003272
      0x8000182c sb      a0, 72(a4)             #; a4  = 0x80003272, 48 ~~> Byte[0x800032ba]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001830 lw      a4, 0(a1)              #; a1  = 0x80003264, a4  <~~ Word[0x80003264]
                                                #; (lsu) a4  <-- 15
      0x80001834 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
      0x80001838 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
      0x8000183c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001840 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800018a8 ret                            #; ra  = 0x80001eec, goto 0x80001eec
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001eec mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
      0x80001ef0 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ef4 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001ecc
; _out_rev (printf.c:212)
;  in _ftoa (printf.c:461)
      0x80001ecc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
      0x80001ed0 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
      0x80001ed4 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
      0x80001ed8 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
      0x80001edc mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80001ee0 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
      0x80001ee4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
      0x80001ee8 jalr    s7                     #; s7  = 0x80001800, (wrb) ra  <-- 0x80001eec, goto 0x80001800
                                                #; (lsu) a0  <-- 48
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001800 beqz    a0, pc + 168           #; a0  = 48, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
      0x80001814 addi    a3, a3, -1452          #; a3  = 0x80003810, (wrb) a3  <-- 0x80003264
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003264, (wrb) a1  <-- 0x80003264
      0x8000181c lw      a4, 0(a1)              #; a1  = 0x80003264, a4  <~~ Word[0x80003264]
                                                #; (lsu) a4  <-- 15
      0x80001820 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
      0x80001824 sw      a5, 0(a1)              #; a1  = 0x80003264, 16 ~~> Word[0x80003264]
      0x80001828 add     a4, a1, a4             #; a1  = 0x80003264, a4  = 15, (wrb) a4  <-- 0x80003273
      0x8000182c sb      a0, 72(a4)             #; a4  = 0x80003273, 48 ~~> Byte[0x800032bb]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001830 lw      a4, 0(a1)              #; a1  = 0x80003264, a4  <~~ Word[0x80003264]
                                                #; (lsu) a4  <-- 16
      0x80001834 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
      0x80001838 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
      0x8000183c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
      0x80001840 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
      0x80001844 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
      0x80001848 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800018a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800018a8 ret                            #; ra  = 0x80001eec, goto 0x80001eec
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001eec mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
      0x80001ef0 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
; _out_rev (printf.c:211)
;  in _ftoa (printf.c:461)
      0x80001ef4 bnez    s10, pc - 40           #; s10 = 0, not taken
      0x80001ef8 j       pc + 0x8               #; goto 0x80001f00
; _out_rev (printf.c:0)
;  in _ftoa (printf.c:461)
      0x80001f00 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
      0x80001f04 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
      0x80001f08 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
; _out_rev (printf.c:216)
;  in _ftoa (printf.c:461)
      0x80001f0c xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
      0x80001f10 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
      0x80001f14 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001f44
; _ftoa (printf.c:0)
      0x80001f44 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
; _ftoa (printf.c:462)
      0x80001f48 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
      0x80001f4c fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
                                                #; (f:lsu) fs2  <-- 0.0
      0x80001f58 lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
      0x80001f50 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60]
      0x80001f54 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
                                                #; (f:lsu) fs0  <-- 0.0000000
                                                #; (lsu) s10 <-- 0x80002eee
      0x80001f5c lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
                                                #; (lsu) s9  <-- 8
      0x80001f60 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
                                                #; (lsu) s8  <-- 16
      0x80001f64 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
                                                #; (lsu) s7  <-- 0
      0x80001f68 lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
                                                #; (lsu) s6  <-- 0
      0x80001f6c lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
                                                #; (lsu) s5  <-- -1
      0x80001f70 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
                                                #; (lsu) s4  <-- 0x0011ff17
      0x80001f74 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
                                                #; (lsu) s3  <-- 0x0011ff30
      0x80001f78 lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
                                                #; (lsu) s2  <-- 0x80001800
      0x80001f7c lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
                                                #; (lsu) s1  <-- 8
      0x80001f80 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
                                                #; (lsu) s0  <-- 0
      0x80001f84 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
      0x80001f88 addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
                                                #; (lsu) ra  <-- 0x80000f30
      0x80001f8c ret                            #; ra  = 0x80000f30, goto 0x80000f30
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000f30 j       pc + 0x7c0             #; goto 0x800016f0
      0x800016f0 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
      0x800016f4 li      s6, 37                 #; (wrb) s6  <-- 37
      0x800016f8 li      s7, 46                 #; (wrb) s7  <-- 46
      0x800016fc addi    s0, s10, 1             #; s10 = 0x80002eee, (wrb) s0  <-- 0x80002eef
      0x80001700 j       pc - 0xa74             #; goto 0x80000c8c
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c8c addi    s10, s0, 2             #; s0  = 0x80002eef, (wrb) s10 <-- 0x80002ef1
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000c90 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
      0x80000c94 li      s8, 10                 #; (wrb) s8  <-- 10
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000c98 lbu     a0, 0(s0)              #; s0  = 0x80002eef, a0  <~~ Byte[0x80002eef]
                                                #; (lsu) a0  <-- 10
      0x80000c9c beqz    a0, pc + 2824          #; a0  = 10, not taken
      0x80000ca0 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
; _vsnprintf.llvm.1805434900161566649 (printf.c:592)
      0x80000ca4 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
      0x80000ca8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x80000cac mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
      0x80000cb0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x80000cb4 jalr    s2                     #; s2  = 0x80001800, (wrb) ra  <-- 0x80000cb8, goto 0x80001800
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001800 beqz    a0, pc + 168           #; a0  = 10, not taken
; snrt_hartid (snrt.h:181)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001804 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
; snrt_hartid (snrt.h:0)
;  in snrt_putchar (putchar.c:22)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001808 li      a2, 1096               #; (wrb) a2  <-- 1096
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000180c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
      0x80001810 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003810
      0x80001814 addi    a3, a3, -1452          #; a3  = 0x80003810, (wrb) a3  <-- 0x80003264
                                                #; (acc) a1  <-- 0x00d605b3
      0x80001818 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003264, (wrb) a1  <-- 0x80003264
      0x8000181c lw      a4, 0(a1)              #; a1  = 0x80003264, a4  <~~ Word[0x80003264]
                                                #; (lsu) a4  <-- 16
      0x80001820 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
      0x80001824 sw      a5, 0(a1)              #; a1  = 0x80003264, 17 ~~> Word[0x80003264]
      0x80001828 add     a4, a1, a4             #; a1  = 0x80003264, a4  = 16, (wrb) a4  <-- 0x80003274
      0x8000182c sb      a0, 72(a4)             #; a4  = 0x80003274, 10 ~~> Byte[0x800032bc]
; snrt_putchar (putchar.c:24)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001830 lw      a4, 0(a1)              #; a1  = 0x80003264, a4  <~~ Word[0x80003264]
                                                #; (lsu) a4  <-- 17
      0x80001834 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
      0x80001838 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
      0x8000183c addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
      0x80001840 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
      0x80001844 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
      0x80001848 bnez    a0, pc + 96            #; a0  = 0, not taken
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000184c add     a0, a3, a2             #; a3  = 0x80003264, a2  = 0, (wrb) a0  <-- 0x80003264
; snrt_putchar (putchar.c:23)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001850 addi    a2, a0, 72             #; a0  = 0x80003264, (wrb) a2  <-- 0x800032ac
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001854 sw      zero, 12(a0)           #; a0  = 0x80003264, 0 ~~> Word[0x80003270]
      0x80001858 li      a3, 64                 #; (wrb) a3  <-- 64
      0x8000185c sw      a3, 8(a0)              #; a0  = 0x80003264, 64 ~~> Word[0x8000326c]
; snrt_putchar (putchar.c:26)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001860 sw      zero, 20(a0)           #; a0  = 0x80003264, 0 ~~> Word[0x80003278]
      0x80001864 li      a3, 1                  #; (wrb) a3  <-- 1
      0x80001868 sw      a3, 16(a0)             #; a0  = 0x80003264, 1 ~~> Word[0x80003274]
; snrt_putchar (putchar.c:27)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000186c sw      zero, 28(a0)           #; a0  = 0x80003264, 0 ~~> Word[0x80003280]
      0x80001870 sw      a2, 24(a0)             #; a0  = 0x80003264, 0x800032ac ~~> Word[0x8000327c]
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001874 lw      a2, 0(a1)              #; a1  = 0x80003264, a2  <~~ Word[0x80003264]
; snrt_putchar (putchar.c:25)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001878 addi    a3, a0, 8              #; a0  = 0x80003264, (wrb) a3  <-- 0x8000326c
; snrt_putchar (putchar.c:28)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x8000187c sw      zero, 36(a0)           #; a0  = 0x80003264, 0 ~~> Word[0x80003288]
                                                #; (lsu) a2  <-- 17
      0x80001880 sw      a2, 32(a0)             #; a0  = 0x80003264, 17 ~~> Word[0x80003284]
; snrt_putchar (putchar.c:30)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001884 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003884
      0x80001888 addi    a0, a0, -1860          #; a0  = 0x80003884, (wrb) a0  <-- 0x80003140
      0x8000188c sw      a3, 0(a0)              #; a0  = 0x80003140, 0x8000326c ~~> Word[0x80003140]
; snrt_putchar (putchar.c:0)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001890 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003890
      0x80001894 addi    a0, a0, -1808          #; a0  = 0x80003890, (wrb) a0  <-- 0x80003180
; snrt_putchar (putchar.c:31)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x80001898 lw      a2, 0(a0)              #; a0  = 0x80003180, a2  <~~ Word[0x80003180]
                                                #; (lsu) a2  <-- 0
      0x8000189c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001898
      0x80001898 lw      a2, 0(a0)              #; a0  = 0x80003180, a2  <~~ Word[0x80003180]
                                                #; (lsu) a2  <-- 0
      0x8000189c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001898
      0x80001898 lw      a2, 0(a0)              #; a0  = 0x80003180, a2  <~~ Word[0x80003180]
                                                #; (lsu) a2  <-- 0
      0x8000189c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001898
      0x80001898 lw      a2, 0(a0)              #; a0  = 0x80003180, a2  <~~ Word[0x80003180]
                                                #; (lsu) a2  <-- 0
      0x8000189c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001898
      0x80001898 lw      a2, 0(a0)              #; a0  = 0x80003180, a2  <~~ Word[0x80003180]
                                                #; (lsu) a2  <-- 0
      0x8000189c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001898
      0x80001898 lw      a2, 0(a0)              #; a0  = 0x80003180, a2  <~~ Word[0x80003180]
                                                #; (lsu) a2  <-- 0
      0x8000189c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001898
      0x80001898 lw      a2, 0(a0)              #; a0  = 0x80003180, a2  <~~ Word[0x80003180]
                                                #; (lsu) a2  <-- 1
      0x8000189c beqz    a2, pc - 4             #; a2  = 1, not taken
; snrt_putchar (putchar.c:33)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800018a0 sw      zero, 0(a0)            #; a0  = 0x80003180, 0 ~~> Word[0x80003180]
; snrt_putchar (putchar.c:35)
;  in _out_char.llvm.1805434900161566649 (printf.c:153)
      0x800018a4 sw      zero, 0(a1)            #; a1  = 0x80003264, 0 ~~> Word[0x80003264]
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800018a8 ret                            #; ra  = 0x80000cb8, goto 0x80000cb8
; _vsnprintf.llvm.1805434900161566649 (printf.c:593)
      0x80000cb8 addi    s0, s0, 1              #; s0  = 0x80002eef, (wrb) s0  <-- 0x80002ef0
; _vsnprintf.llvm.1805434900161566649 (printf.c:594)
      0x80000cbc addi    s10, s10, 1            #; s10 = 0x80002ef1, (wrb) s10 <-- 0x80002ef2
; _vsnprintf.llvm.1805434900161566649 (printf.c:0)
      0x80000cc0 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
; _vsnprintf.llvm.1805434900161566649 (printf.c:587)
      0x80000cc4 lbu     a0, 0(s0)              #; s0  = 0x80002ef0, a0  <~~ Byte[0x80002ef0]
                                                #; (lsu) a0  <-- 0
      0x80000cc8 bnez    a0, pc - 40            #; a0  = 0, not taken
      0x80000ccc j       pc + 0xad8             #; goto 0x800017a4
; _vsnprintf.llvm.1805434900161566649 (printf.c:853)
      0x800017a4 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
      0x800017a8 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x800017b0
      0x800017b0 li      a0, 0                  #; (wrb) a0  <-- 0
      0x800017b4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
      0x800017b8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
      0x800017bc jalr    s2                     #; s2  = 0x80001800, (wrb) ra  <-- 0x800017c0, goto 0x80001800
; _out_char.llvm.1805434900161566649 (printf.c:152)
      0x80001800 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x800018a8
; _out_char.llvm.1805434900161566649 (printf.c:155)
      0x800018a8 ret                            #; ra  = 0x800017c0, goto 0x800017c0
; _vsnprintf.llvm.1805434900161566649 (printf.c:856)
      0x800017c0 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
      0x800017c4 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
                                                #; (lsu) s11 <-- 0
      0x800017c8 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
                                                #; (lsu) s10 <-- 0
      0x800017cc lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
                                                #; (lsu) s9  <-- 0
      0x800017d0 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
                                                #; (lsu) s8  <-- 0
      0x800017d4 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
                                                #; (lsu) s7  <-- 0
      0x800017d8 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
                                                #; (lsu) s6  <-- 0
      0x800017dc lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
                                                #; (lsu) s5  <-- 0
      0x800017e0 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
                                                #; (lsu) s4  <-- 0
      0x800017e4 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
                                                #; (lsu) s3  <-- 0
      0x800017e8 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
                                                #; (lsu) s2  <-- 0
      0x800017ec lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
                                                #; (lsu) s1  <-- 0
      0x800017f0 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
                                                #; (lsu) s0  <-- 0
      0x800017f4 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
      0x800017f8 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
                                                #; (lsu) ra  <-- 0x80000bfc
      0x800017fc ret                            #; ra  = 0x80000bfc, goto 0x80000bfc
; printf_ (printf.c:869)
      0x80000bfc lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
      0x80000c00 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
                                                #; (lsu) ra  <-- 0x80000b8c
      0x80000c04 ret                            #; ra  = 0x80000b8c, goto 0x80000b8c
; main (test_size.c:0)
      0x80000b8c auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002b8c
      0x80000b90 addi    a0, a0, 1572           #; a0  = 0x80002b8c, (wrb) a0  <-- 0x800031b0
      0x80000b94 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x800031b0]
; main (test_size.c:52)
      0x80000ba0 lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
                                                #; (f:lsu) ft3  <-- 0.0001
      0x80000ba4 addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
      0x80000b98 flt.d   a0, ft3, fs0           #; ft3  = 0.0001, fs0  = 0.0000000
                                                #; (lsu) ra  <-- 0x80002c60
      0x80000b9c fld     fs0, 16(sp)            #; fs0  <~~ Doub[0x0011ff50]
      0x80000ba8 ret                            #; ra  = 0x80002c60, goto 0x80002c60
                                                #; (f:lsu) fs0  <-- 0.0
; ?? (start.S:184)
      0x80002c60 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
; ?? (start.S:191)
      0x80002c64 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c64
      0x80002c68 jalr    ra, ra, 524            #; ra  = 0x80002c64, (wrb) ra  <-- 0x80002c6c, goto 0x80002e70
; ?? (start_snitch.S:33)
      0x80002e70 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
; ?? (start_snitch.S:34)
      0x80002e74 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002c6c ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:35)
      0x80002e78 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002e78
      0x80002e7c jalr    ra, ra, -1264          #; ra  = 0x80002e78, (wrb) ra  <-- 0x80002e80, goto 0x80002988
; _snrt_barrier_reg_ptr (team.c:80)
      0x80002988 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x8000298c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002990 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002994 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002998 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
      0x8000299c ret                            #; ra  = 0x80002e80, goto 0x80002e80
                                                #; (lsu) a0  <-- 0x00120190
; ?? (start_snitch.S:36)
      0x80002e80 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
                                                #; (lsu) a0  <-- 0
; ?? (start_snitch.S:37)
      0x80002e84 mv      zero, a0               #; a0  = 0
; ?? (start_snitch.S:38)
      0x80002e88 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:39)
      0x80002e8c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
                                                #; (lsu) ra  <-- 0x80002c6c
; ?? (start_snitch.S:40)
      0x80002e90 ret                            #; ra  = 0x80002c6c, goto 0x80002c6c
; ?? (start.S:195)
      0x80002c6c mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
; ?? (start.S:196)
      0x80002c70 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c70
      0x80002c74 jalr    ra, ra, 556            #; ra  = 0x80002c70, (wrb) ra  <-- 0x80002c78, goto 0x80002e9c
; ?? (start_snitch.S:15)
      0x80002e9c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
; ?? (start_snitch.S:16)
      0x80002ea0 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
; ?? (start_snitch.S:17)
      0x80002ea4 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002c78 ~~> Word[0x0011ff5c]
; ?? (start_snitch.S:18)
      0x80002ea8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002ea8
      0x80002eac jalr    ra, ra, -1344          #; ra  = 0x80002ea8, (wrb) ra  <-- 0x80002eb0, goto 0x80002968
; snrt_global_core_idx (team.c:32)
      0x80002968 lui     a0, 0x0                #; (wrb) a0  <-- 0
      0x8000296c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
      0x80002970 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002974 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
                                                #; (lsu) a0  <-- 0x0011ff70
      0x80002978 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
; snrt_hartid (snrt.h:181)
;  in snrt_global_core_idx (team.c:32)
      0x8000297c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
                                                #; (lsu) a0  <-- 0
; snrt_global_core_idx (team.c:32)
      0x80002980 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
      0x80002984 ret                            #; ra  = 0x80002eb0, goto 0x80002eb0
; ?? (start_snitch.S:20)
      0x80002eb0 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
                                                #; (lsu) t0  <-- 0
; ?? (start_snitch.S:21)
      0x80002eb4 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
; ?? (start_snitch.S:22)
      0x80002eb8 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
; ?? (start_snitch.S:27)
      0x80002ebc bnez    a0, pc + 24            #; a0  = 0, not taken
                                                #; (lsu) ra  <-- 0x80002c78
; ?? (start_snitch.S:28)
      0x80002ec0 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
; ?? (start_snitch.S:29)
      0x80002ec4 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
; ?? (start_snitch.S:30)
      0x80002ec8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002ec8
      0x80002ecc addi    t1, t1, 632            #; t1  = 0x80002ec8, (wrb) t1  <-- 0x80003140
; ?? (start_snitch.S:31)
      0x80002ed0 sw      t0, 0(t1)              #; t1  = 0x80003140, 1 ~~> Word[0x80003140]
; ?? (start_snitch.S:32)
      0x80002ed4 ret                            #; ra  = 0x80002c78, goto 0x80002c78
; ?? (start.S:198)
      0x80002c78 wfi                            #; 
                        tion 0 @ (12, 19936):
                          140
                          142
                            5
                           15
                      11.9786
                       0.1256
                       0.6218
                          1.0
                          1.0
                            0
                       2.7266
                       6.3333
                       0.2065
                       0.2051
                       0.9932
                        19925
                       0.3320
