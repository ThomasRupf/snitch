; ?? (start.S:20)
      800028a0  x3=800038a0                             # auipc   gp, 0x1
; ?? (start.S:21)
      800028a4  x3:800038a0 x3=80003748                 # addi    gp, gp, -344
; ?? (start.S:28)
      800028a8  x1=800028a8                             # auipc   ra, 0x0
      800028ac  x1:800028a8 x1=800028b0                 # jalr    ra, ra, 964
; ?? (start_snitch.S:16)
      80002c6c  x11:01000000 x14=01000000               # mv      a4, a1
; ?? (start.S:20)
      800028a0  x3=800038a0                             # auipc   gp, 0x1
      800028a0  x3=800038a0                             # auipc   gp, 0x1
      800028a0  x3=800038a0                             # auipc   gp, 0x1
; ?? (start_snitch.S:17)
      80002c70  x14:01000000 RA:01000004 x11=00000009   # lw      a1, 4(a4)
; ?? (start.S:21)
      800028a4  x3:800038a0 x3=80003748                 # addi    gp, gp, -344
      800028a4  x3:800038a0 x3=80003748                 # addi    gp, gp, -344
; ?? (start.S:20)
      800028a0  x3=800038a0                             # auipc   gp, 0x1
; ?? (start.S:21)
      800028a4  x3:800038a0 x3=80003748                 # addi    gp, gp, -344
      800028a4  x3:800038a0 x3=80003748                 # addi    gp, gp, -344
; ?? (start.S:20)
      800028a0  x3=800038a0                             # auipc   gp, 0x1
; ?? (start.S:21)
      800028a4  x3:800038a0 x3=80003748                 # addi    gp, gp, -344
; ?? (start.S:28)
      800028a8  x1=800028a8                             # auipc   ra, 0x0
; ?? (start.S:20)
      800028a0  x3=800038a0                             # auipc   gp, 0x1
; ?? (start.S:21)
      800028a4  x3:800038a0 x3=80003748                 # addi    gp, gp, -344
; ?? (start.S:28)
      800028a8  x1=800028a8                             # auipc   ra, 0x0
      800028a8  x1=800028a8                             # auipc   ra, 0x0
; ?? (start.S:20)
      800028a0  x3=800038a0                             # auipc   gp, 0x1
; ?? (start_snitch.S:18)
      80002c74  x14:01000000 RA:01000008 x5=00000000    # lw      t0, 8(a4)
; ?? (start_snitch.S:19)
      80002c78  x14:01000000 RA:0100000c x12=00100000   # lw      a2, 12(a4)
; ?? (start_snitch.S:20)
      80002c7c  x14:01000000 RA:01000010 x6=00020000    # lw      t1, 16(a4)
; ?? (start_snitch.S:21)
      80002c80  x14:01000000 RA:01000014 x7=00000000    # lw      t2, 20(a4)
; ?? (start_snitch.S:22)
      80002c84  x10:00000000 x5:00000000 x10=00000000   # sub     a0, a0, t0
; ?? (start_snitch.S:23)
      80002c88  x10:00000000 x11:00000009 x28=00000000  # div     t3, a0, a1
; ?? (start_snitch.S:24)
      80002c8c  x28:00000000 x7:00000000 x29=00000000   # mul     t4, t3, t2
; ?? (start_snitch.S:25)
      80002c90  x12:00100000 x29:00000000 x12=00100000  # add     a2, a2, t4
; ?? (start_snitch.S:26)
      80002c94  x12:00100000 x6:00020000 x13=00120000   # add     a3, a2, t1
; ?? (start_snitch.S:27)
      80002c98  x10:00000000 x11:00000009 x10=00000000  # remu    a0, a0, a1
; ?? (start.S:28)
      800028a8  x1=800028a8                             # auipc   ra, 0x0
      800028a8  x1=800028a8                             # auipc   ra, 0x0
      800028ac  x1:800028a8 x1=800028b0                 # jalr    ra, ra, 964
      800028ac  x1:800028a8 x1=800028b0                 # jalr    ra, ra, 964
      800028ac  x1:800028a8 x1=800028b0                 # jalr    ra, ra, 964
; ?? (start.S:21)
      800028a4  x3:800038a0 x3=80003748                 # addi    gp, gp, -344
; ?? (start_snitch.S:16)
      80002c6c  x11:01000000 x14=01000000               # mv      a4, a1
; ?? (start.S:28)
      800028a8  x1=800028a8                             # auipc   ra, 0x0
      800028a8  x1=800028a8                             # auipc   ra, 0x0
      800028ac  x1:800028a8 x1=800028b0                 # jalr    ra, ra, 964
      800028ac  x1:800028a8 x1=800028b0                 # jalr    ra, ra, 964
; ?? (start_snitch.S:16)
      80002c6c  x11:01000000 x14=01000000               # mv      a4, a1
      80002c6c  x11:01000000 x14=01000000               # mv      a4, a1
      80002c6c  x11:01000000 x14=01000000               # mv      a4, a1
; ?? (start_snitch.S:17)
      80002c70  x14:01000000 RA:01000004 x11=00000009   # lw      a1, 4(a4)
; ?? (start_snitch.S:28)
      80002c9c  x1:800028b0                             # ret
; ?? (start.S:39)
      800028b0  x10:00000000 x8=00000000                # mv      s0, a0
; ?? (start.S:40)
      800028b4  x14:01000000 x10=01000000               # mv      a0, a4
; ?? (start.S:41)
      800028b8  x1=800028b8                             # auipc   ra, 0x0
; ?? (start_snitch.S:17)
      80002c70  x14:01000000 RA:01000004 x11=00000009   # lw      a1, 4(a4)
; ?? (start.S:20)
      800028a0  x3=800038a0                             # auipc   gp, 0x1
; ?? (start_snitch.S:17)
      80002c70  x14:01000000 RA:01000004 x11=00000009   # lw      a1, 4(a4)
; ?? (start_snitch.S:18)
      80002c74  x14:01000000 RA:01000008 x5=00000000    # lw      t0, 8(a4)
; ?? (start_snitch.S:19)
      80002c78  x14:01000000 RA:0100000c x12=00100000   # lw      a2, 12(a4)
; ?? (start_snitch.S:20)
      80002c7c  x14:01000000 RA:01000010 x6=00020000    # lw      t1, 16(a4)
; ?? (start_snitch.S:21)
      80002c80  x14:01000000 RA:01000014 x7=00000000    # lw      t2, 20(a4)
; ?? (start_snitch.S:22)
      80002c84  x10:00000003 x5:00000000 x10=00000003   # sub     a0, a0, t0
; ?? (start.S:41)
      800028bc  x1:800028b8 x1=800028c0                 # jalr    ra, ra, 1036
; ?? (start_snitch.S:18)
      80002c74  x14:01000000 RA:01000008 x5=00000000    # lw      t0, 8(a4)
; ?? (start.S:21)
      800028a4  x3:800038a0 x3=80003748                 # addi    gp, gp, -344
; ?? (start_snitch.S:17)
      80002c70  x14:01000000 RA:01000004 x11=00000009   # lw      a1, 4(a4)
; ?? (start_snitch.S:18)
      80002c74  x14:01000000 RA:01000008 x5=00000000    # lw      t0, 8(a4)
; ?? (start.S:28)
      800028ac  x1:800028a8 x1=800028b0                 # jalr    ra, ra, 964
      800028ac  x1:800028a8 x1=800028b0                 # jalr    ra, ra, 964
; ?? (start_snitch.S:16)
      80002c6c  x11:01000000 x14=01000000               # mv      a4, a1
      80002c6c  x11:01000000 x14=01000000               # mv      a4, a1
; ?? (start_snitch.S:17)
      80002c70  x14:01000000 RA:01000004 x11=00000009   # lw      a1, 4(a4)
      80002c70  x14:01000000 RA:01000004 x11=00000009   # lw      a1, 4(a4)
; ?? (start_snitch.S:18)
      80002c74  x14:01000000 RA:01000008 x5=00000000    # lw      t0, 8(a4)
; ?? (start.S:28)
      800028a8  x1=800028a8                             # auipc   ra, 0x0
; ?? (start_snitch.S:18)
      80002c74  x14:01000000 RA:01000008 x5=00000000    # lw      t0, 8(a4)
; ?? (start_snitch.S:19)
      80002c78  x14:01000000 RA:0100000c x12=00100000   # lw      a2, 12(a4)
; ?? (start_snitch.S:16)
      80002c6c  x11:01000000 x14=01000000               # mv      a4, a1
; ?? (start_snitch.S:23)
      80002c88  x10:00000003 x11:00000009 x28=00000000  # div     t3, a0, a1
; ?? (start_snitch.S:48)
      80002cc4  x10:01000000 RA:01000008 x10=00000000   # lw      a0, 8(a0)
; ?? (start_snitch.S:19)
      80002c78  x14:01000000 RA:0100000c x12=00100000   # lw      a2, 12(a4)
; ?? (start_snitch.S:18)
      80002c74  x14:01000000 RA:01000008 x5=00000000    # lw      t0, 8(a4)
; ?? (start_snitch.S:19)
      80002c78  x14:01000000 RA:0100000c x12=00100000   # lw      a2, 12(a4)
; ?? (start.S:28)
      800028ac  x1:800028a8 x1=800028b0                 # jalr    ra, ra, 964
; ?? (start_snitch.S:19)
      80002c78  x14:01000000 RA:0100000c x12=00100000   # lw      a2, 12(a4)
; ?? (start_snitch.S:16)
      80002c6c  x11:01000000 x14=01000000               # mv      a4, a1
; ?? (start_snitch.S:20)
      80002c7c  x14:01000000 RA:01000010 x6=00020000    # lw      t1, 16(a4)
; ?? (start_snitch.S:17)
      80002c70  x14:01000000 RA:01000004 x11=00000009   # lw      a1, 4(a4)
      80002c70  x14:01000000 RA:01000004 x11=00000009   # lw      a1, 4(a4)
; ?? (start_snitch.S:18)
      80002c74  x14:01000000 RA:01000008 x5=00000000    # lw      t0, 8(a4)
; ?? (start_snitch.S:49)
      80002cc8  x1:800028c0                             # ret
; ?? (start_snitch.S:24)
      80002c8c  x28:00000000 x7:00000000 x29=00000000   # mul     t4, t3, t2
; ?? (start.S:42)
      800028c0  x10:00000000 x5=00000000                # mv      t0, a0
; ?? (start_snitch.S:25)
      80002c90  x12:00100000 x29:00000000 x12=00100000  # add     a2, a2, t4
; ?? (start_snitch.S:20)
      80002c7c  x14:01000000 RA:01000010 x6=00020000    # lw      t1, 16(a4)
      80002c7c  x14:01000000 RA:01000010 x6=00020000    # lw      t1, 16(a4)
; ?? (start_snitch.S:21)
      80002c80  x14:01000000 RA:01000014 x7=00000000    # lw      t2, 20(a4)
; ?? (start_snitch.S:18)
      80002c74  x14:01000000 RA:01000008 x5=00000000    # lw      t0, 8(a4)
; ?? (start_snitch.S:19)
      80002c78  x14:01000000 RA:0100000c x12=00100000   # lw      a2, 12(a4)
; ?? (start_snitch.S:20)
      80002c7c  x14:01000000 RA:01000010 x6=00020000    # lw      t1, 16(a4)
; ?? (start_snitch.S:19)
      80002c78  x14:01000000 RA:0100000c x12=00100000   # lw      a2, 12(a4)
; ?? (start_snitch.S:26)
      80002c94  x12:00100000 x6:00020000 x13=00120000   # add     a3, a2, t1
; ?? (start.S:43)
      800028c4  x8:00000000 x10=00000000                # mv      a0, s0
; ?? (start_snitch.S:21)
      80002c80  x14:01000000 RA:01000014 x7=00000000    # lw      t2, 20(a4)
      80002c80  x14:01000000 RA:01000014 x7=00000000    # lw      t2, 20(a4)
; ?? (start_snitch.S:22)
      80002c84  x10:00000008 x5:00000000 x10=00000008   # sub     a0, a0, t0
; ?? (start_snitch.S:19)
      80002c78  x14:01000000 RA:0100000c x12=00100000   # lw      a2, 12(a4)
; ?? (start_snitch.S:20)
      80002c7c  x14:01000000 RA:01000010 x6=00020000    # lw      t1, 16(a4)
; ?? (start_snitch.S:21)
      80002c80  x14:01000000 RA:01000014 x7=00000000    # lw      t2, 20(a4)
; ?? (start_snitch.S:20)
      80002c7c  x14:01000000 RA:01000010 x6=00020000    # lw      t1, 16(a4)
; ?? (start_snitch.S:27)
      80002c98  x10:00000003 x11:00000009 x10=00000003  # remu    a0, a0, a1
; ?? (start.S:45)
      800028c8  x6=00000000                             # csrr    t1, mhartid
; ?? (start_snitch.S:22)
      80002c84  x10:00000007 x5:00000000 x10=00000007   # sub     a0, a0, t0
      80002c84  x10:00000004 x5:00000000 x10=00000004   # sub     a0, a0, t0
; ?? (start_snitch.S:23)
      80002c88  x10:00000008 x11:00000009 x28=00000000  # div     t3, a0, a1
; ?? (start_snitch.S:20)
      80002c7c  x14:01000000 RA:01000010 x6=00020000    # lw      t1, 16(a4)
; ?? (start_snitch.S:21)
      80002c80  x14:01000000 RA:01000014 x7=00000000    # lw      t2, 20(a4)
; ?? (start_snitch.S:22)
      80002c84  x10:00000005 x5:00000000 x10=00000005   # sub     a0, a0, t0
; ?? (start_snitch.S:21)
      80002c80  x14:01000000 RA:01000014 x7=00000000    # lw      t2, 20(a4)
; ?? (start_snitch.S:28)
      80002c9c  x1:800028b0                             # ret
; ?? (start.S:46)
      800028cc  x6:00000000 x5:00000000 x5=00000000     # sub     t0, t1, t0
; ?? (start_snitch.S:23)
      80002c88  x10:00000007 x11:00000009 x28=00000000  # div     t3, a0, a1
      80002c88  x10:00000004 x11:00000009 x28=00000000  # div     t3, a0, a1
; ?? (start_snitch.S:24)
      80002c8c  x28:00000000 x7:00000000 x29=00000000   # mul     t4, t3, t2
; ?? (start_snitch.S:21)
      80002c80  x14:01000000 RA:01000014 x7=00000000    # lw      t2, 20(a4)
; ?? (start_snitch.S:22)
      80002c84  x10:00000002 x5:00000000 x10=00000002   # sub     a0, a0, t0
; ?? (start_snitch.S:23)
      80002c88  x10:00000005 x11:00000009 x28=00000000  # div     t3, a0, a1
; ?? (start_snitch.S:22)
      80002c84  x10:00000001 x5:00000000 x10=00000001   # sub     a0, a0, t0
; ?? (start.S:39)
      800028b0  x10:00000003 x8=00000003                # mv      s0, a0
; ?? (start.S:47)
      800028d0  x5:00000000                             # bnez    t0, pc + 36
; ?? (start_snitch.S:24)
      80002c8c  x28:00000000 x7:00000000 x29=00000000   # mul     t4, t3, t2
      80002c8c  x28:00000000 x7:00000000 x29=00000000   # mul     t4, t3, t2
; ?? (start_snitch.S:25)
      80002c90  x12:00100000 x29:00000000 x12=00100000  # add     a2, a2, t4
; ?? (start_snitch.S:22)
      80002c84  x10:00000006 x5:00000000 x10=00000006   # sub     a0, a0, t0
; ?? (start_snitch.S:23)
      80002c88  x10:00000002 x11:00000009 x28=00000000  # div     t3, a0, a1
; ?? (start_snitch.S:24)
      80002c8c  x28:00000000 x7:00000000 x29=00000000   # mul     t4, t3, t2
; ?? (start_snitch.S:23)
      80002c88  x10:00000001 x11:00000009 x28=00000000  # div     t3, a0, a1
; ?? (start.S:40)
      800028b4  x14:01000000 x10=01000000               # mv      a0, a4
; ?? (start.S:48)
      800028d4  x5=800028d4                             # auipc   t0, 0x0
; ?? (start_snitch.S:25)
      80002c90  x12:00100000 x29:00000000 x12=00100000  # add     a2, a2, t4
      80002c90  x12:00100000 x29:00000000 x12=00100000  # add     a2, a2, t4
; ?? (start_snitch.S:26)
      80002c94  x12:00100000 x6:00020000 x13=00120000   # add     a3, a2, t1
; ?? (start_snitch.S:23)
      80002c88  x10:00000006 x11:00000009 x28=00000000  # div     t3, a0, a1
; ?? (start_snitch.S:24)
      80002c8c  x28:00000000 x7:00000000 x29=00000000   # mul     t4, t3, t2
; ?? (start_snitch.S:25)
      80002c90  x12:00100000 x29:00000000 x12=00100000  # add     a2, a2, t4
; ?? (start_snitch.S:24)
      80002c8c  x28:00000000 x7:00000000 x29=00000000   # mul     t4, t3, t2
; ?? (start_snitch.S:25)
      80002c90  x12:00100000 x29:00000000 x12=00100000  # add     a2, a2, t4
; ?? (start_snitch.S:26)
      80002c94  x12:00100000 x6:00020000 x13=00120000   # add     a3, a2, t1
      80002c94  x12:00100000 x6:00020000 x13=00120000   # add     a3, a2, t1
      80002c94  x12:00100000 x6:00020000 x13=00120000   # add     a3, a2, t1
; ?? (start_snitch.S:27)
      80002c98  x10:00000004 x11:00000009 x10=00000004  # remu    a0, a0, a1
; ?? (start_snitch.S:24)
      80002c8c  x28:00000000 x7:00000000 x29=00000000   # mul     t4, t3, t2
; ?? (start_snitch.S:25)
      80002c90  x12:00100000 x29:00000000 x12=00100000  # add     a2, a2, t4
; ?? (start_snitch.S:26)
      80002c94  x12:00100000 x6:00020000 x13=00120000   # add     a3, a2, t1
; ?? (start.S:41)
      800028b8  x1=800028b8                             # auipc   ra, 0x0
; ?? (start.S:48)
      800028d8  x5:800028d4 x5=80003018                 # addi    t0, t0, 1860
; ?? (start_snitch.S:27)
      80002c98  x10:00000001 x11:00000009 x10=00000001  # remu    a0, a0, a1
      80002c98  x10:00000007 x11:00000009 x10=00000007  # remu    a0, a0, a1
      80002c98  x10:00000008 x11:00000009 x10=00000008  # remu    a0, a0, a1
; ?? (start_snitch.S:28)
      80002c9c  x1:800028b0                             # ret
; ?? (start_snitch.S:25)
      80002c90  x12:00100000 x29:00000000 x12=00100000  # add     a2, a2, t4
; ?? (start_snitch.S:26)
      80002c94  x12:00100000 x6:00020000 x13=00120000   # add     a3, a2, t1
; ?? (start_snitch.S:27)
      80002c98  x10:00000005 x11:00000009 x10=00000005  # remu    a0, a0, a1
; ?? (start_snitch.S:28)
      80002c9c  x1:800028b0                             # ret
; ?? (start.S:39)
      800028b0  x10:00000005 x8=00000005                # mv      s0, a0
; ?? (start_snitch.S:28)
      80002c9c  x1:800028b0                             # ret
      80002c9c  x1:800028b0                             # ret
; ?? (start.S:39)
      800028b0  x10:00000007 x8=00000007                # mv      s0, a0
      800028b0  x10:00000008 x8=00000008                # mv      s0, a0
; ?? (start_snitch.S:26)
      80002c94  x12:00100000 x6:00020000 x13=00120000   # add     a3, a2, t1
; ?? (start_snitch.S:27)
      80002c98  x10:00000006 x11:00000009 x10=00000006  # remu    a0, a0, a1
; ?? (start_snitch.S:28)
      80002c9c  x1:800028b0                             # ret
; ?? (start.S:39)
      800028b0  x10:00000006 x8=00000006                # mv      s0, a0
; ?? (start.S:40)
      800028b4  x14:01000000 x10=01000000               # mv      a0, a4
; ?? (start.S:39)
      800028b0  x10:00000001 x8=00000001                # mv      s0, a0
; ?? (start.S:40)
      800028b4  x14:01000000 x10=01000000               # mv      a0, a4
      800028b4  x14:01000000 x10=01000000               # mv      a0, a4
      800028b4  x14:01000000 x10=01000000               # mv      a0, a4
; ?? (start.S:41)
      800028b8  x1=800028b8                             # auipc   ra, 0x0
      800028bc  x1:800028b8 x1=800028c0                 # jalr    ra, ra, 1036
; ?? (start.S:49)
      800028dc  x6=800028dc                             # auipc   t1, 0x0
; ?? (start.S:40)
      800028b4  x14:01000000 x10=01000000               # mv      a0, a4
; ?? (start.S:41)
      800028b8  x1=800028b8                             # auipc   ra, 0x0
; ?? (start_snitch.S:28)
      80002c9c  x1:800028b0                             # ret
; ?? (start.S:41)
      800028b8  x1=800028b8                             # auipc   ra, 0x0
      800028b8  x1=800028b8                             # auipc   ra, 0x0
      800028bc  x1:800028b8 x1=800028c0                 # jalr    ra, ra, 1036
      800028bc  x1:800028b8 x1=800028c0                 # jalr    ra, ra, 1036
; ?? (start_snitch.S:48)
      80002cc4  x10:01000000 RA:01000008 x10=00000000   # lw      a0, 8(a0)
; ?? (start.S:49)
      800028e0  x6:800028dc x6=8000301c                 # addi    t1, t1, 1856
; ?? (start.S:41)
      800028b8  x1=800028b8                             # auipc   ra, 0x0
      800028bc  x1:800028b8 x1=800028c0                 # jalr    ra, ra, 1036
; ?? (start.S:39)
      800028b0  x10:00000004 x8=00000004                # mv      s0, a0
; ?? (start.S:41)
      800028bc  x1:800028b8 x1=800028c0                 # jalr    ra, ra, 1036
; ?? (start_snitch.S:27)
      80002c98  x10:00000002 x11:00000009 x10=00000002  # remu    a0, a0, a1
; ?? (start_snitch.S:48)
      80002cc4  x10:01000000 RA:01000008 x10=00000000   # lw      a0, 8(a0)
      80002cc4  x10:01000000 RA:01000008 x10=00000000   # lw      a0, 8(a0)
; ?? (start_snitch.S:49)
      80002cc8  x1:800028c0                             # ret
; ?? (start.S:50)
      800028e4  x5:80003018 x6:8000301c                 # bge     t0, t1, pc + 16
; ?? (start.S:41)
      800028bc  x1:800028b8 x1=800028c0                 # jalr    ra, ra, 1036
; ?? (start_snitch.S:48)
      80002cc4  x10:01000000 RA:01000008 x10=00000000   # lw      a0, 8(a0)
; ?? (start_snitch.S:49)
      80002cc8  x1:800028c0                             # ret
; ?? (start_snitch.S:48)
      80002cc4  x10:01000000 RA:01000008 x10=00000000   # lw      a0, 8(a0)
; ?? (start_snitch.S:49)
      80002cc8  x1:800028c0                             # ret
      80002cc8  x1:800028c0                             # ret
      80002cc8  x1:800028c0                             # ret
; ?? (start.S:42)
      800028c0  x10:00000000 x5=00000000                # mv      t0, a0
; ?? (start.S:51)
      800028e8  x5:80003018 WA:80003018                 # sw      zero, 0(t0)
; ?? (start_snitch.S:48)
      80002cc4  x10:01000000 RA:01000008 x10=00000000   # lw      a0, 8(a0)
; ?? (start_snitch.S:49)
      80002cc8  x1:800028c0                             # ret
; ?? (start.S:42)
      800028c0  x10:00000000 x5=00000000                # mv      t0, a0
; ?? (start_snitch.S:28)
      80002c9c  x1:800028b0                             # ret
; ?? (start.S:42)
      800028c0  x10:00000000 x5=00000000                # mv      t0, a0
      800028c0  x10:00000000 x5=00000000                # mv      t0, a0
; ?? (start.S:43)
      800028c4  x8:00000001 x10=00000001                # mv      a0, s0
; ?? (start.S:42)
      800028c0  x10:00000000 x5=00000000                # mv      t0, a0
; ?? (start.S:43)
      800028c4  x8:00000007 x10=00000007                # mv      a0, s0
; ?? (start.S:45)
      800028c8  x6=00000007                             # csrr    t1, mhartid
; ?? (start.S:46)
      800028cc  x6:00000007 x5:00000000 x5=00000007     # sub     t0, t1, t0
; ?? (start.S:47)
      800028d0  x5:00000007                             # bnez    t0, pc + 36
; ?? (start.S:58)
      800028f4  x5=40801129                             # csrr    t0, misa
; ?? (start.S:59)
      800028f8  x5:40801129 x5=00000028                 # andi    t0, t0, 40
; ?? (start.S:60)
      800028fc  x5:00000028                             # beqz    t0, pc + 132
; ?? (start.S:43)
      800028c4  x8:00000003 x10=00000003                # mv      a0, s0
; ?? (start.S:61)
      80002900  f00=        0.000000                    # fcvt.d.w ft0, zero
; ?? (start.S:52)
      800028ec  x5:80003018 x5=8000301c                 # addi    t0, t0, 4
; ?? (start.S:43)
      800028c4  x8:00000008 x10=00000008                # mv      a0, s0
; ?? (start.S:45)
      800028c8  x6=00000008                             # csrr    t1, mhartid
; ?? (start.S:42)
      800028c0  x10:00000000 x5=00000000                # mv      t0, a0
; ?? (start.S:43)
      800028c4  x8:00000005 x10=00000005                # mv      a0, s0
; ?? (start.S:39)
      800028b0  x10:00000002 x8=00000002                # mv      s0, a0
; ?? (start.S:45)
      800028c8  x6=00000001                             # csrr    t1, mhartid
; ?? (start.S:62)
      80002904  f01=        0.000000                    # fcvt.d.w ft1, zero
; ?? (start.S:45)
      800028c8  x6=00000003                             # csrr    t1, mhartid
; ?? (start.S:53)
      800028f0  x5:8000301c x6:8000301c                 # blt     t0, t1, pc - 8
; ?? (start.S:58)
      800028f4  x5=40801129                             # csrr    t0, misa
; ?? (start.S:46)
      800028cc  x6:00000008 x5:00000000 x5=00000008     # sub     t0, t1, t0
; ?? (start.S:43)
      800028c4  x8:00000006 x10=00000006                # mv      a0, s0
; ?? (start.S:45)
      800028c8  x6=00000005                             # csrr    t1, mhartid
; ?? (start.S:40)
      800028b4  x14:01000000 x10=01000000               # mv      a0, a4
; ?? (start.S:46)
      800028cc  x6:00000001 x5:00000000 x5=00000001     # sub     t0, t1, t0
; ?? (start.S:63)
      80002908  f02=        0.000000                    # fcvt.d.w ft2, zero
; ?? (start.S:46)
      800028cc  x6:00000003 x5:00000000 x5=00000003     # sub     t0, t1, t0
; ?? (start.S:47)
      800028d0  x5:00000003                             # bnez    t0, pc + 36
; ?? (start.S:59)
      800028f8  x5:40801129 x5=00000028                 # andi    t0, t0, 40
; ?? (start.S:47)
      800028d0  x5:00000008                             # bnez    t0, pc + 36
; ?? (start.S:45)
      800028c8  x6=00000006                             # csrr    t1, mhartid
; ?? (start.S:46)
      800028cc  x6:00000005 x5:00000000 x5=00000005     # sub     t0, t1, t0
; ?? (start.S:47)
      800028d0  x5:00000005                             # bnez    t0, pc + 36
; ?? (start.S:58)
      800028f4  x5=40801129                             # csrr    t0, misa
; ?? (start.S:64)
      8000290c  f03=        0.000000                    # fcvt.d.w ft3, zero
; ?? (start.S:40)
      800028b4  x14:01000000 x10=01000000               # mv      a0, a4
; ?? (start.S:58)
      800028f4  x5=40801129                             # csrr    t0, misa
; ?? (start.S:60)
      800028fc  x5:00000028                             # beqz    t0, pc + 132
; ?? (start.S:58)
      800028f4  x5=40801129                             # csrr    t0, misa
; ?? (start.S:61)
      80002900  f00=        0.000000                    # fcvt.d.w ft0, zero
; ?? (start.S:46)
      800028cc  x6:00000006 x5:00000000 x5=00000006     # sub     t0, t1, t0
; ?? (start.S:62)
      80002904  f01=        0.000000                    # fcvt.d.w ft1, zero
; ?? (start.S:47)
      800028d0  x5:00000001                             # bnez    t0, pc + 36
; ?? (start.S:63)
      80002908  f02=        0.000000                    # fcvt.d.w ft2, zero
; ?? (start.S:58)
      800028f4  x5=40801129                             # csrr    t0, misa
; ?? (start.S:59)
      800028f8  x5:40801129 x5=00000028                 # andi    t0, t0, 40
      800028f8  x5:40801129 x5=00000028                 # andi    t0, t0, 40
; ?? (start.S:60)
      800028fc  x5:00000028                             # beqz    t0, pc + 132
; ?? (start.S:61)
      80002900  f00=        0.000000                    # fcvt.d.w ft0, zero
; ?? (start.S:59)
      800028f8  x5:40801129 x5=00000028                 # andi    t0, t0, 40
; ?? (start.S:65)
      80002910  f04=        0.000000                    # fcvt.d.w ft4, zero
; ?? (start.S:41)
      800028b8  x1=800028b8                             # auipc   ra, 0x0
; ?? (start.S:64)
      8000290c  f03=        0.000000                    # fcvt.d.w ft3, zero
; ?? (start.S:59)
      800028f8  x5:40801129 x5=00000028                 # andi    t0, t0, 40
; ?? (start.S:60)
      800028fc  x5:00000028                             # beqz    t0, pc + 132
; ?? (start.S:41)
      800028b8  x1=800028b8                             # auipc   ra, 0x0
; ?? (start.S:47)
      800028d0  x5:00000006                             # bnez    t0, pc + 36
; ?? (start.S:58)
      800028f4  x5=40801129                             # csrr    t0, misa
; ?? (start.S:60)
      800028fc  x5:00000028                             # beqz    t0, pc + 132
; ?? (start.S:66)
      80002914  f05=        0.000000                    # fcvt.d.w ft5, zero
; ?? (start.S:41)
      800028bc  x1:800028b8 x1=800028c0                 # jalr    ra, ra, 1036
; ?? (start.S:65)
      80002910  f04=        0.000000                    # fcvt.d.w ft4, zero
; ?? (start.S:66)
      80002914  f05=        0.000000                    # fcvt.d.w ft5, zero
; ?? (start.S:61)
      80002900  f00=        0.000000                    # fcvt.d.w ft0, zero
; ?? (start.S:41)
      800028bc  x1:800028b8 x1=800028c0                 # jalr    ra, ra, 1036
; ?? (start.S:62)
      80002904  f01=        0.000000                    # fcvt.d.w ft1, zero
; ?? (start.S:59)
      800028f8  x5:40801129 x5=00000028                 # andi    t0, t0, 40
; ?? (start.S:61)
      80002900  f00=        0.000000                    # fcvt.d.w ft0, zero
; ?? (start.S:62)
      80002904  f01=        0.000000                    # fcvt.d.w ft1, zero
; ?? (start.S:63)
      80002908  f02=        0.000000                    # fcvt.d.w ft2, zero
; ?? (start.S:64)
      8000290c  f03=        0.000000                    # fcvt.d.w ft3, zero
; ?? (start.S:67)
      80002918  f06=        0.000000                    # fcvt.d.w ft6, zero
; ?? (start.S:62)
      80002904  f01=        0.000000                    # fcvt.d.w ft1, zero
; ?? (start.S:63)
      80002908  f02=        0.000000                    # fcvt.d.w ft2, zero
; ?? (start.S:64)
      8000290c  f03=        0.000000                    # fcvt.d.w ft3, zero
; ?? (start.S:65)
      80002910  f04=        0.000000                    # fcvt.d.w ft4, zero
; ?? (start.S:66)
      80002914  f05=        0.000000                    # fcvt.d.w ft5, zero
; ?? (start.S:67)
      80002918  f06=        0.000000                    # fcvt.d.w ft6, zero
; ?? (start.S:68)
      8000291c  f07=        0.000000                    # fcvt.d.w ft7, zero
; ?? (start.S:69)
      80002920  f08=        0.000000                    # fcvt.d.w fs0, zero
; ?? (start.S:68)
      8000291c  f07=        0.000000                    # fcvt.d.w ft7, zero
; ?? (start_snitch.S:48)
      80002cc4  x10:01000000 RA:01000008 x10=00000000   # lw      a0, 8(a0)
; ?? (start.S:63)
      80002908  f02=        0.000000                    # fcvt.d.w ft2, zero
; ?? (start.S:60)
      800028fc  x5:00000028                             # beqz    t0, pc + 132
; ?? (start.S:67)
      80002918  f06=        0.000000                    # fcvt.d.w ft6, zero
; ?? (start_snitch.S:48)
      80002cc4  x10:01000000 RA:01000008 x10=00000000   # lw      a0, 8(a0)
; ?? (start.S:60)
      800028fc  x5:00000028                             # beqz    t0, pc + 132
; ?? (start.S:65)
      80002910  f04=        0.000000                    # fcvt.d.w ft4, zero
; ?? (start.S:66)
      80002914  f05=        0.000000                    # fcvt.d.w ft5, zero
; ?? (start.S:69)
      80002920  f08=        0.000000                    # fcvt.d.w fs0, zero
; ?? (start_snitch.S:49)
      80002cc8  x1:800028c0                             # ret
; ?? (start.S:64)
      8000290c  f03=        0.000000                    # fcvt.d.w ft3, zero
; ?? (start.S:61)
      80002900  f00=        0.000000                    # fcvt.d.w ft0, zero
; ?? (start.S:62)
      80002904  f01=        0.000000                    # fcvt.d.w ft1, zero
; ?? (start.S:63)
      80002908  f02=        0.000000                    # fcvt.d.w ft2, zero
; ?? (start.S:64)
      8000290c  f03=        0.000000                    # fcvt.d.w ft3, zero
; ?? (start.S:65)
      80002910  f04=        0.000000                    # fcvt.d.w ft4, zero
; ?? (start.S:67)
      80002918  f06=        0.000000                    # fcvt.d.w ft6, zero
; ?? (start.S:70)
      80002924  f09=        0.000000                    # fcvt.d.w fs1, zero
; ?? (start.S:42)
      800028c0  x10:00000000 x5=00000000                # mv      t0, a0
; ?? (start.S:65)
      80002910  f04=        0.000000                    # fcvt.d.w ft4, zero
; ?? (start.S:66)
      80002914  f05=        0.000000                    # fcvt.d.w ft5, zero
; ?? (start.S:67)
      80002918  f06=        0.000000                    # fcvt.d.w ft6, zero
; ?? (start.S:68)
      8000291c  f07=        0.000000                    # fcvt.d.w ft7, zero
; ?? (start.S:69)
      80002920  f08=        0.000000                    # fcvt.d.w fs0, zero
; ?? (start.S:66)
      80002914  f05=        0.000000                    # fcvt.d.w ft5, zero
; ?? (start.S:68)
      8000291c  f07=        0.000000                    # fcvt.d.w ft7, zero
; ?? (start.S:71)
      80002928  f10=        0.000000                    # fcvt.d.w fa0, zero
; ?? (start.S:43)
      800028c4  x8:00000002 x10=00000002                # mv      a0, s0
; ?? (start.S:68)
      8000291c  f07=        0.000000                    # fcvt.d.w ft7, zero
; ?? (start_snitch.S:49)
      80002cc8  x1:800028c0                             # ret
; ?? (start.S:61)
      80002900  f00=        0.000000                    # fcvt.d.w ft0, zero
; ?? (start.S:62)
      80002904  f01=        0.000000                    # fcvt.d.w ft1, zero
; ?? (start.S:63)
      80002908  f02=        0.000000                    # fcvt.d.w ft2, zero
; ?? (start.S:64)
      8000290c  f03=        0.000000                    # fcvt.d.w ft3, zero
; ?? (start.S:69)
      80002920  f08=        0.000000                    # fcvt.d.w fs0, zero
; ?? (start.S:72)
      8000292c  f11=        0.000000                    # fcvt.d.w fa1, zero
; ?? (start.S:73)
      80002930  f12=        0.000000                    # fcvt.d.w fa2, zero
; ?? (start.S:74)
      80002934  f13=        0.000000                    # fcvt.d.w fa3, zero
; ?? (start.S:42)
      800028c0  x10:00000000 x5=00000000                # mv      t0, a0
; ?? (start.S:70)
      80002924  f09=        0.000000                    # fcvt.d.w fs1, zero
      80002924  f09=        0.000000                    # fcvt.d.w fs1, zero
; ?? (start.S:67)
      80002918  f06=        0.000000                    # fcvt.d.w ft6, zero
; ?? (start.S:65)
      80002910  f04=        0.000000                    # fcvt.d.w ft4, zero
; ?? (start.S:70)
      80002924  f09=        0.000000                    # fcvt.d.w fs1, zero
; ?? (start.S:45)
      800028c8  x6=00000002                             # csrr    t1, mhartid
; ?? (start.S:69)
      80002920  f08=        0.000000                    # fcvt.d.w fs0, zero
; ?? (start.S:75)
      80002938  f14=        0.000000                    # fcvt.d.w fa4, zero
; ?? (start.S:43)
      800028c4  x8:00000004 x10=00000004                # mv      a0, s0
; ?? (start.S:71)
      80002928  f10=        0.000000                    # fcvt.d.w fa0, zero
      80002928  f10=        0.000000                    # fcvt.d.w fa0, zero
; ?? (start.S:68)
      8000291c  f07=        0.000000                    # fcvt.d.w ft7, zero
; ?? (start.S:66)
      80002914  f05=        0.000000                    # fcvt.d.w ft5, zero
; ?? (start.S:71)
      80002928  f10=        0.000000                    # fcvt.d.w fa0, zero
; ?? (start.S:46)
      800028cc  x6:00000002 x5:00000000 x5=00000002     # sub     t0, t1, t0
; ?? (start.S:47)
      800028d0  x5:00000002                             # bnez    t0, pc + 36
; ?? (start.S:76)
      8000293c  f15=        0.000000                    # fcvt.d.w fa5, zero
; ?? (start.S:45)
      800028c8  x6=00000004                             # csrr    t1, mhartid
; ?? (start.S:72)
      8000292c  f11=        0.000000                    # fcvt.d.w fa1, zero
      8000292c  f11=        0.000000                    # fcvt.d.w fa1, zero
; ?? (start.S:69)
      80002920  f08=        0.000000                    # fcvt.d.w fs0, zero
; ?? (start.S:67)
      80002918  f06=        0.000000                    # fcvt.d.w ft6, zero
; ?? (start.S:72)
      8000292c  f11=        0.000000                    # fcvt.d.w fa1, zero
; ?? (start.S:73)
      80002930  f12=        0.000000                    # fcvt.d.w fa2, zero
; ?? (start.S:74)
      80002934  f13=        0.000000                    # fcvt.d.w fa3, zero
; ?? (start.S:77)
      80002940  f16=        0.000000                    # fcvt.d.w fa6, zero
; ?? (start.S:46)
      800028cc  x6:00000004 x5:00000000 x5=00000004     # sub     t0, t1, t0
; ?? (start.S:73)
      80002930  f12=        0.000000                    # fcvt.d.w fa2, zero
; ?? (start.S:74)
      80002934  f13=        0.000000                    # fcvt.d.w fa3, zero
; ?? (start.S:70)
      80002924  f09=        0.000000                    # fcvt.d.w fs1, zero
; ?? (start.S:68)
      8000291c  f07=        0.000000                    # fcvt.d.w ft7, zero
; ?? (start.S:70)
      80002924  f09=        0.000000                    # fcvt.d.w fs1, zero
; ?? (start.S:58)
      800028f4  x5=40801129                             # csrr    t0, misa
; ?? (start.S:75)
      80002938  f14=        0.000000                    # fcvt.d.w fa4, zero
; ?? (start.S:78)
      80002944  f17=        0.000000                    # fcvt.d.w fa7, zero
; ?? (start.S:47)
      800028d0  x5:00000004                             # bnez    t0, pc + 36
; ?? (start.S:58)
      800028f4  x5=40801129                             # csrr    t0, misa
; ?? (start.S:75)
      80002938  f14=        0.000000                    # fcvt.d.w fa4, zero
; ?? (start.S:71)
      80002928  f10=        0.000000                    # fcvt.d.w fa0, zero
; ?? (start.S:72)
      8000292c  f11=        0.000000                    # fcvt.d.w fa1, zero
; ?? (start.S:73)
      80002930  f12=        0.000000                    # fcvt.d.w fa2, zero
; ?? (start.S:74)
      80002934  f13=        0.000000                    # fcvt.d.w fa3, zero
; ?? (start.S:76)
      8000293c  f15=        0.000000                    # fcvt.d.w fa5, zero
; ?? (start.S:79)
      80002948  f18=        0.000000                    # fcvt.d.w fs2, zero
; ?? (start.S:73)
      80002930  f12=        0.000000                    # fcvt.d.w fa2, zero
; ?? (start.S:59)
      800028f8  x5:40801129 x5=00000028                 # andi    t0, t0, 40
; ?? (start.S:76)
      8000293c  f15=        0.000000                    # fcvt.d.w fa5, zero
; ?? (start.S:77)
      80002940  f16=        0.000000                    # fcvt.d.w fa6, zero
; ?? (start.S:78)
      80002944  f17=        0.000000                    # fcvt.d.w fa7, zero
; ?? (start.S:79)
      80002948  f18=        0.000000                    # fcvt.d.w fs2, zero
; ?? (start.S:75)
      80002938  f14=        0.000000                    # fcvt.d.w fa4, zero
; ?? (start.S:77)
      80002940  f16=        0.000000                    # fcvt.d.w fa6, zero
; ?? (start.S:80)
      8000294c  f19=        0.000000                    # fcvt.d.w fs3, zero
; ?? (start.S:74)
      80002934  f13=        0.000000                    # fcvt.d.w fa3, zero
; ?? (start.S:60)
      800028fc  x5:00000028                             # beqz    t0, pc + 132
; ?? (start.S:69)
      80002920  f08=        0.000000                    # fcvt.d.w fs0, zero
; ?? (start.S:70)
      80002924  f09=        0.000000                    # fcvt.d.w fs1, zero
; ?? (start.S:71)
      80002928  f10=        0.000000                    # fcvt.d.w fa0, zero
; ?? (start.S:80)
      8000294c  f19=        0.000000                    # fcvt.d.w fs3, zero
; ?? (start.S:76)
      8000293c  f15=        0.000000                    # fcvt.d.w fa5, zero
; ?? (start.S:78)
      80002944  f17=        0.000000                    # fcvt.d.w fa7, zero
; ?? (start.S:81)
      80002950  f20=        0.000000                    # fcvt.d.w fs4, zero
; ?? (start.S:75)
      80002938  f14=        0.000000                    # fcvt.d.w fa4, zero
; ?? (start.S:61)
      80002900  f00=        0.000000                    # fcvt.d.w ft0, zero
; ?? (start.S:62)
      80002904  f01=        0.000000                    # fcvt.d.w ft1, zero
; ?? (start.S:59)
      800028f8  x5:40801129 x5=00000028                 # andi    t0, t0, 40
; ?? (start.S:72)
      8000292c  f11=        0.000000                    # fcvt.d.w fa1, zero
; ?? (start.S:81)
      80002950  f20=        0.000000                    # fcvt.d.w fs4, zero
; ?? (start.S:77)
      80002940  f16=        0.000000                    # fcvt.d.w fa6, zero
; ?? (start.S:79)
      80002948  f18=        0.000000                    # fcvt.d.w fs2, zero
; ?? (start.S:82)
      80002954  f21=        0.000000                    # fcvt.d.w fs5, zero
; ?? (start.S:83)
      80002958  f22=        0.000000                    # fcvt.d.w fs6, zero
; ?? (start.S:84)
      8000295c  f23=        0.000000                    # fcvt.d.w fs7, zero
; ?? (start.S:85)
      80002960  f24=        0.000000                    # fcvt.d.w fs8, zero
; ?? (start.S:60)
      800028fc  x5:00000028                             # beqz    t0, pc + 132
; ?? (start.S:73)
      80002930  f12=        0.000000                    # fcvt.d.w fa2, zero
; ?? (start.S:82)
      80002954  f21=        0.000000                    # fcvt.d.w fs5, zero
; ?? (start.S:78)
      80002944  f17=        0.000000                    # fcvt.d.w fa7, zero
; ?? (start.S:80)
      8000294c  f19=        0.000000                    # fcvt.d.w fs3, zero
; ?? (start.S:81)
      80002950  f20=        0.000000                    # fcvt.d.w fs4, zero
; ?? (start.S:82)
      80002954  f21=        0.000000                    # fcvt.d.w fs5, zero
; ?? (start.S:83)
      80002958  f22=        0.000000                    # fcvt.d.w fs6, zero
; ?? (start.S:86)
      80002964  f25=        0.000000                    # fcvt.d.w fs9, zero
; ?? (start.S:61)
      80002900  f00=        0.000000                    # fcvt.d.w ft0, zero
; ?? (start.S:74)
      80002934  f13=        0.000000                    # fcvt.d.w fa3, zero
; ?? (start.S:83)
      80002958  f22=        0.000000                    # fcvt.d.w fs6, zero
; ?? (start.S:79)
      80002948  f18=        0.000000                    # fcvt.d.w fs2, zero
; ?? (start.S:80)
      8000294c  f19=        0.000000                    # fcvt.d.w fs3, zero
; ?? (start.S:81)
      80002950  f20=        0.000000                    # fcvt.d.w fs4, zero
; ?? (start.S:82)
      80002954  f21=        0.000000                    # fcvt.d.w fs5, zero
; ?? (start.S:84)
      8000295c  f23=        0.000000                    # fcvt.d.w fs7, zero
; ?? (start.S:87)
      80002968  f26=        0.000000                    # fcvt.d.w fs10, zero
; ?? (start.S:62)
      80002904  f01=        0.000000                    # fcvt.d.w ft1, zero
; ?? (start.S:75)
      80002938  f14=        0.000000                    # fcvt.d.w fa4, zero
; ?? (start.S:84)
      8000295c  f23=        0.000000                    # fcvt.d.w fs7, zero
; ?? (start.S:85)
      80002960  f24=        0.000000                    # fcvt.d.w fs8, zero
; ?? (start.S:86)
      80002964  f25=        0.000000                    # fcvt.d.w fs9, zero
; ?? (start.S:87)
      80002968  f26=        0.000000                    # fcvt.d.w fs10, zero
; ?? (start.S:83)
      80002958  f22=        0.000000                    # fcvt.d.w fs6, zero
; ?? (start.S:85)
      80002960  f24=        0.000000                    # fcvt.d.w fs8, zero
; ?? (start.S:88)
      8000296c  f27=        0.000000                    # fcvt.d.w fs11, zero
; ?? (start.S:63)
      80002908  f02=        0.000000                    # fcvt.d.w ft2, zero
; ?? (start.S:64)
      8000290c  f03=        0.000000                    # fcvt.d.w ft3, zero
; ?? (start.S:65)
      80002910  f04=        0.000000                    # fcvt.d.w ft4, zero
; ?? (start.S:66)
      80002914  f05=        0.000000                    # fcvt.d.w ft5, zero
; ?? (start.S:67)
      80002918  f06=        0.000000                    # fcvt.d.w ft6, zero
; ?? (start.S:68)
      8000291c  f07=        0.000000                    # fcvt.d.w ft7, zero
; ?? (start.S:69)
      80002920  f08=        0.000000                    # fcvt.d.w fs0, zero
; ?? (start.S:70)
      80002924  f09=        0.000000                    # fcvt.d.w fs1, zero
; ?? (start.S:84)
      8000295c  f23=        0.000000                    # fcvt.d.w fs7, zero
; ?? (start.S:86)
      80002964  f25=        0.000000                    # fcvt.d.w fs9, zero
; ?? (start.S:89)
      80002970  f28=        0.000000                    # fcvt.d.w ft8, zero
; ?? (start.S:76)
      8000293c  f15=        0.000000                    # fcvt.d.w fa5, zero
      8000293c  f15=        0.000000                    # fcvt.d.w fa5, zero
; ?? (start.S:71)
      80002928  f10=        0.000000                    # fcvt.d.w fa0, zero
; ?? (start.S:63)
      80002908  f02=        0.000000                    # fcvt.d.w ft2, zero
; ?? (start.S:88)
      8000296c  f27=        0.000000                    # fcvt.d.w fs11, zero
; ?? (start.S:71)
      80002928  f10=        0.000000                    # fcvt.d.w fa0, zero
; ?? (start.S:85)
      80002960  f24=        0.000000                    # fcvt.d.w fs8, zero
; ?? (start.S:87)
      80002968  f26=        0.000000                    # fcvt.d.w fs10, zero
; ?? (start.S:90)
      80002974  f29=        0.000000                    # fcvt.d.w ft9, zero
; ?? (start.S:77)
      80002940  f16=        0.000000                    # fcvt.d.w fa6, zero
; ?? (start.S:78)
      80002944  f17=        0.000000                    # fcvt.d.w fa7, zero
; ?? (start.S:79)
      80002948  f18=        0.000000                    # fcvt.d.w fs2, zero
; ?? (start.S:80)
      8000294c  f19=        0.000000                    # fcvt.d.w fs3, zero
; ?? (start.S:64)
      8000290c  f03=        0.000000                    # fcvt.d.w ft3, zero
; ?? (start.S:72)
      8000292c  f11=        0.000000                    # fcvt.d.w fa1, zero
; ?? (start.S:86)
      80002964  f25=        0.000000                    # fcvt.d.w fs9, zero
; ?? (start.S:87)
      80002968  f26=        0.000000                    # fcvt.d.w fs10, zero
; ?? (start.S:91)
      80002978  f30=        0.000000                    # fcvt.d.w ft10, zero
; ?? (start.S:77)
      80002940  f16=        0.000000                    # fcvt.d.w fa6, zero
; ?? (start.S:72)
      8000292c  f11=        0.000000                    # fcvt.d.w fa1, zero
; ?? (start.S:81)
      80002950  f20=        0.000000                    # fcvt.d.w fs4, zero
; ?? (start.S:89)
      80002970  f28=        0.000000                    # fcvt.d.w ft8, zero
; ?? (start.S:65)
      80002910  f04=        0.000000                    # fcvt.d.w ft4, zero
; ?? (start.S:66)
      80002914  f05=        0.000000                    # fcvt.d.w ft5, zero
; ?? (start.S:67)
      80002918  f06=        0.000000                    # fcvt.d.w ft6, zero
; ?? (start.S:68)
      8000291c  f07=        0.000000                    # fcvt.d.w ft7, zero
; ?? (start.S:69)
      80002920  f08=        0.000000                    # fcvt.d.w fs0, zero
; ?? (start.S:70)
      80002924  f09=        0.000000                    # fcvt.d.w fs1, zero
; ?? (start.S:78)
      80002944  f17=        0.000000                    # fcvt.d.w fa7, zero
; ?? (start.S:82)
      80002954  f21=        0.000000                    # fcvt.d.w fs5, zero
; ?? (start.S:90)
      80002974  f29=        0.000000                    # fcvt.d.w ft9, zero
; ?? (start.S:91)
      80002978  f30=        0.000000                    # fcvt.d.w ft10, zero
; ?? (start.S:92)
      8000297c  f31=        0.000000                    # fcvt.d.w ft11, zero
; ?? (start.S:99)
      80002980  x13:00120000 x13=0011fff8               # addi    a3, a3, -8
; ?? (start.S:100)
      80002984  x13:0011fff8 WA:0011fff8                # sw      zero, 0(a3)
; ?? (start.S:103)
      80002988  x5=80002988                             # auipc   t0, 0x0
      8000298c  x5:80002988 RA:80002d08 x5=00000088     # lw      t0, 896(t0)
; ?? (start.S:104)
      80002990  x13:0011fff8 x5:00000088 x13=0011ff70   # sub     a3, a3, t0
; ?? (start.S:105)
      80002994  x13:0011ff70 x15=0011ff70               # mv      a5, a3
; ?? (start.S:108)
      80002998  x7=80002998                             # auipc   t2, 0x0
      8000299c  x7:80002998 RA:80002d0c x7=0000000a     # lw      t2, 884(t2)
; ?? (start.S:110)
      800029a0  x10:00000003 x7:0000000a x5=00000c00    # sll     t0, a0, t2
; ?? (start.S:111)
      800029a4  x11:00000009 x7:0000000a x6=00002400    # sll     t1, a1, t2
; ?? (start.S:112)
      800029a8  x13:0011ff70 x5:00000c00 x2=0011f370    # sub     sp, a3, t0
; ?? (start.S:113)
      800029ac  x13:0011ff70 x6:00002400 x13=0011db70   # sub     a3, a3, t1
; ?? (start.S:116)
      800029b0  x10:00000003 x5=00000018                # slli    t0, a0, 3
; ?? (start.S:117)
      800029b4  x11:00000009 x6=00000048                # slli    t1, a1, 3
; ?? (start.S:118)
      800029b8  x2:0011f370 x5:00000018 x2=0011f358     # sub     sp, sp, t0
; ?? (start.S:119)
      800029bc  x13:0011db70 x6:00000048 x13=0011db28   # sub     a3, a3, t1
; ?? (start.S:124)
      800029c0  x5=800029c0                             # auipc   t0, 0x0
      800029c4  x5:800029c0 x5=80002f48                 # addi    t0, t0, 1416
; ?? (start.S:125)
      800029c8  x6=800029c8                             # auipc   t1, 0x0
      800029cc  x6:800029c8 x6=80002f48                 # addi    t1, t1, 1408
; ?? (start.S:126)
      800029d0  x7=800029d0                             # auipc   t2, 0x0
      800029d4  x7:800029d0 x7=80002f48                 # addi    t2, t2, 1400
; ?? (start.S:127)
      800029d8  x28=800029d8                            # auipc   t3, 0x0
      800029dc  x28:800029d8 x28=80002f58               # addi    t3, t3, 1408
; ?? (start.S:128)
      800029e0  x2:0011f358 x5:80002f48 x2=801222a0     # add     sp, sp, t0
; ?? (start.S:129)
      800029e4  x2:801222a0 x6:80002f48 x2=0011f358     # sub     sp, sp, t1
; ?? (start.S:130)
      800029e8  x2:0011f358 x7:80002f48 x2=801222a0     # add     sp, sp, t2
; ?? (start.S:131)
      800029ec  x2:801222a0 x28:80002f58 x2=0011f348    # sub     sp, sp, t3
; ?? (start.S:132)
      800029f0  x2:0011f348 x2=0011f348                 # andi    sp, sp, -8
; ?? (start.S:133)
      800029f4  x2:0011f348 x4=0011f348                 # mv      tp, sp
; ?? (start.S:134)
      800029f8  x2:0011f348 x2=0011f348                 # andi    sp, sp, -8
; ?? (start.S:137)
      800029fc  x4:0011f348 x29=0011f348                # mv      t4, tp
; ?? (start.S:138)
      80002a00  x5:80002f48 x6:80002f48                 # bge     t0, t1, pc + 24
; ?? (start.S:147)
      80002a18  x5=80002a18                             # auipc   t0, 0x0
      80002a1c  x5:80002a18 x5=80002f48                 # addi    t0, t0, 1328
; ?? (start.S:148)
      80002a20  x6=80002a20                             # auipc   t1, 0x0
      80002a24  x6:80002a20 x6=80002f58                 # addi    t1, t1, 1336
; ?? (start.S:149)
      80002a28  x5:80002f48 x6:80002f58                 # bge     t0, t1, pc + 20
; ?? (start.S:150)
      80002a2c  x29:0011f348 WA:0011f348                # sw      zero, 0(t4)
; ?? (start.S:151)
      80002a30  x5:80002f48 x5=80002f4c                 # addi    t0, t0, 4
; ?? (start.S:152)
      80002a34  x29:0011f348 x29=0011f34c               # addi    t4, t4, 4
; ?? (start.S:153)
      80002a38  x5:80002f4c x7:80002f48                 # blt     t0, t2, pc - 12
; ?? (start.S:158)
      80002a3c  x2:0011f348 x2=0011f334                 # addi    sp, sp, -20
; ?? (start.S:159)
      80002a40  x2:0011f334 x10:00000003 WA:0011f334    # sw      a0, 0(sp)
; ?? (start.S:160)
      80002a44  x2:0011f334 x11:00000009 WA:0011f338    # sw      a1, 4(sp)
; ?? (start.S:161)
      80002a48  x2:0011f334 x12:00100000 WA:0011f33c    # sw      a2, 8(sp)
; ?? (start.S:162)
      80002a4c  x2:0011f334 x13:0011db28 WA:0011f340    # sw      a3, 12(sp)
; ?? (start.S:163)
      80002a50  x2:0011f334 x14:01000000 WA:0011f344    # sw      a4, 16(sp)
; ?? (start.S:164)
      80002a54  x1=80002a54                             # auipc   ra, 0x0
      80002a58  x1:80002a54 x1=80002a5c                 # jalr    ra, ra, -796
; _snrt_init_team (start.c:49)
      80002738  x15:0011ff70 x15:0011ff70 WA:0011ff70   # sw      a5, 0(a5)
; _snrt_init_team (start.c:50)
      8000273c  x15:0011ff70 x14:01000000 WA:0011ff74   # sw      a4, 4(a5)
; _snrt_init_team (start.c:51)
      80002740  x14:01000000 RA:01000008 x6=00000000    # lw      t1, 8(a4)
      80002744  x15:0011ff70 x6:00000000 WA:0011ff78    # sw      t1, 8(a5)
; _snrt_init_team (start.c:52)
      80002748  x14:01000000 RA:01000028 x16=00000001   # lw      a6, 40(a4)
; _snrt_init_team (start.c:53)
      8000274c  x14:01000000 RA:0100002c x17=00000001   # lw      a7, 44(a4)
; _snrt_init_team (start.c:52)
      80002750  x14:01000000 RA:01000004 x5=00000009    # lw      t0, 4(a4)
      80002754  x17:00000001 x16:00000001 x16=00000001  # mul     a6, a7, a6
      80002758  x16:00000001 x5:00000009 x10=00000009   # mul     a0, a6, t0
      8000275c  x15:0011ff70 x10:00000009 WA:0011ff7c   # sw      a0, 12(a5)
; snrt_hartid (snrt.h:181)
;  in _snrt_init_team (start.c:55)
      80002760  x17=00000003                            # csrr    a7, mhartid
; _snrt_init_team (start.c:55)
      80002764  x17:00000003 x6:00000000 x10=00000003   # sub     a0, a7, t1
      80002768  x10:00000003 x5:00000009 x10=00000000   # divu    a0, a0, t0
; _snrt_init_team (start.c:54)
      8000276c  x15:0011ff70 x10:00000000 WA:0011ff80   # sw      a0, 16(a5)
; _snrt_init_team (start.c:56)
      80002770  x15:0011ff70 x16:00000001 WA:0011ff84   # sw      a6, 20(a5)
; _snrt_init_team (start.c:57)
      80002774  x15:0011ff70 x6:00000000 WA:0011ff88    # sw      t1, 24(a5)
; _snrt_init_team (start.c:58)
      80002778  x15:0011ff70 x11:00000009 WA:0011ff8c   # sw      a1, 28(a5)
; _snrt_init_team (start.c:60)
      8000277c  x14:01000000 RA:01000018 x10=80000000   # lw      a0, 24(a4)
      80002780  x11=10000000                            # lui     a1, 0x10000
      80002784  x10:80000000 x11:10000000 x10=90000000  # add     a0, a0, a1
; _snrt_init_team (start.c:59)
      80002788  x15:0011ff70 WA:0011ff94                # sw      zero, 36(a5)
      8000278c  x15:0011ff70 x10:90000000 WA:0011ff90   # sw      a0, 32(a5)
; _snrt_init_team (start.c:61)
      80002790  x14:01000000 RA:01000020 x10=00000000   # lw      a0, 32(a4)
      80002794  x14:01000000 RA:01000024 x11=00000001   # lw      a1, 36(a4)
      80002798  x15:0011ff70 x10:00000000 WA:0011ff98   # sw      a0, 40(a5)
      8000279c  x15:0011ff70 x11:00000001 WA:0011ff9c   # sw      a1, 44(a5)
; _snrt_init_team (start.c:62)
      800027a0  x15:0011ff70 x12:00100000 WA:0011ffa0   # sw      a2, 48(a5)
      800027a4  x15:0011ff70 WA:0011ffa4                # sw      zero, 52(a5)
; _snrt_init_team (start.c:63)
      800027a8  x15:0011ff70 x13:0011db28 WA:0011ffa8   # sw      a3, 56(a5)
      800027ac  x15:0011ff70 WA:0011ffac                # sw      zero, 60(a5)
; _snrt_init_team (start.c:64)
      800027b0  x14:01000000 RA:01000010 x10=00020000   # lw      a0, 16(a4)
      800027b4  x12:00100000 x10:00020000 x16=00120000  # add     a6, a2, a0
      800027b8  x16:00120000 x11=00120190               # addi    a1, a6, 400
      800027bc  x15:0011ff70 x11:00120190 WA:0011ffe0   # sw      a1, 112(a5)
; _snrt_init_team (start.c:67)
      800027c0  x16:00120000 x10:00020000 x5=00000000   # sltu    t0, a6, a0
      800027c4  x10:00020000 x11=00010000               # srli    a1, a0, 1
      800027c8  x16:00120000 x11:00010000 x6=00130000   # add     t1, a6, a1
      800027cc  x6:00130000 x16:00120000 x11=00000000   # sltu    a1, t1, a6
      800027d0  x5:00000000 x11:00000000 x11=00000000   # add     a1, t0, a1
; _snrt_init_team (start.c:66)
      800027d4  x15:0011ff70 x6:00130000 WA:0011ffb0    # sw      t1, 64(a5)
      800027d8  x15:0011ff70 x11:00000000 WA:0011ffb4   # sw      a1, 68(a5)
; _snrt_init_team (start.c:68)
      800027dc  x10:00020000 x10=00040000               # slli    a0, a0, 1
      800027e0  x10:00040000 x12:00100000 x11=00140000  # add     a1, a0, a2
      800027e4  x11:00140000 x10:00040000 x10=00000000  # sltu    a0, a1, a0
      800027e8  x15:0011ff70 x11:00140000 WA:0011ffb8   # sw      a1, 72(a5)
      800027ec  x15:0011ff70 x10:00000000 WA:0011ffbc   # sw      a0, 76(a5)
; _snrt_init_team (start.c:71)
      800027f0  x15:0011ff70 WA:0011ffd8                # sw      zero, 104(a5)
; _snrt_init_team (start.c:72)
      800027f4  x15:0011ff70 WA:0011ffdc                # sw      zero, 108(a5)
; _snrt_init_team (start.c:75)
      800027f8  x10=00000000                            # lui     a0, 0x0
      800027fc  x10:00000000 x4:0011f348 x10=0011f348   # add     a0, a0, tp
      80002800  x10:0011f348 x15:0011ff70 WA:0011f348   # sw      a5, 0(a0)
; _snrt_init_team (start.c:77)
      80002804  x15:0011ff70 RA:0011ff70 x10=0011ff70   # lw      a0, 0(a5)
      80002808  x10:0011ff70 RA:0011ff88 x11=00000000   # lw      a1, 24(a0)
; _snrt_init_team (start.c:78)
      8000280c  x10:0011ff70 RA:0011ff8c x10=00000009   # lw      a0, 28(a0)
; _snrt_init_team (start.c:77)
      80002810  x17:00000003 x11:00000000 x11=00000003  # sub     a1, a7, a1
      80002814  x11:00000003 x10:00000009 x10=00000003  # remu    a0, a1, a0
; _snrt_init_team (start.c:76)
      80002818  x11=00000000                            # lui     a1, 0x0
      8000281c  x11:00000000 x4:0011f348 x11=0011f348   # add     a1, a1, tp
      80002820  x11:0011f348 x10:00000003 WA:0011f34c   # sw      a0, 4(a1)
      80002824  x10=00000448                            # li      a0, 1096
; _snrt_init_team (start.c:83)
      80002828  x17:00000003 x10:00000448 x10=00000cd8  # mul     a0, a7, a0
      8000282c  x11=8000282c                            # auipc   a1, 0x0
      80002830  x11:8000282c x11=8000301c               # addi    a1, a1, 2032
      80002834  x10:00000cd8 x11:8000301c x10=80003cf4  # add     a0, a0, a1
      80002838  x10:80003cf4 WA:80003cf4                # sw      zero, 0(a0)
; _snrt_init_team (start.c:86)
      8000283c  x14:01000000 RA:01000030 x17=ffff0000   # lw      a7, 48(a4)
      80002840  x15:0011ff70 x17:ffff0000 WA:0011ffe4   # sw      a7, 116(a5)
; _snrt_init_team (start.c:87)
      80002844  x15:0011ff70 x16:00120000 WA:0011ffec   # sw      a6, 124(a5)
; _snrt_init_team (start.c:91)
      80002848  x15:0011ff70 WA:0011ffe8                # sw      zero, 120(a5)
; _snrt_init_team (start.c:93)
      8000284c  x16:00120000 x14=00120180               # addi    a4, a6, 384
; _snrt_init_team (start.c:92)
      80002850  x15:0011ff70 x14:00120180 WA:0011fff0   # sw      a4, 128(a5)
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      80002854  x12:00100000 x10=00100007               # addi    a0, a2, 7
      80002858  x10:00100007 x10=00100000               # andi    a0, a0, -8
; snrt_alloc_init (alloc.c:64)
;  in _snrt_init_team (start.c:97)
      8000285c  x15:0011ff70 x10:00100000 WA:0011ffc0   # sw      a0, 80(a5)
; snrt_alloc_init (alloc.c:67)
;  in _snrt_init_team (start.c:97)
      80002860  x13:0011db28 x12:00100000 x12=0001db28  # sub     a2, a3, a2
; snrt_alloc_init (alloc.c:66)
;  in _snrt_init_team (start.c:97)
      80002864  x15:0011ff70 x12:0001db28 WA:0011ffc4   # sw      a2, 84(a5)
; snrt_alloc_init (alloc.c:68)
;  in _snrt_init_team (start.c:97)
      80002868  x15:0011ff70 x10:00100000 WA:0011ffc8   # sw      a0, 88(a5)
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      8000286c  x11:8000301c RA:8000301c x10=00000000   # lw      a0, 0(a1)
      80002870  x10:00000000 x10=0000044f               # addi    a0, a0, 1103
      80002874  x10:0000044f x10=00000448               # andi    a0, a0, -8
; snrt_alloc_init (alloc.c:71)
;  in _snrt_init_team (start.c:97)
      80002878  x15:0011ff70 x10:00000448 WA:0011ffcc   # sw      a0, 92(a5)
; snrt_alloc_init (alloc.c:74)
;  in _snrt_init_team (start.c:97)
      8000287c  x15:0011ff70 WA:0011ffd0                # sw      zero, 96(a5)
; snrt_alloc_init (alloc.c:75)
;  in _snrt_init_team (start.c:97)
      80002880  x15:0011ff70 x10:00000448 WA:0011ffd4   # sw      a0, 100(a5)
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      80002884  x10=00000000                            # lui     a0, 0x0
      80002888  x10:00000000 x4:0011f348 x10=0011f348   # add     a0, a0, tp
      8000288c  x10:0011f348 x17:ffff0000 WA:0011f350   # sw      a7, 8(a0)
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      80002890  x10=00000000                            # lui     a0, 0x0
      80002894  x10:00000000 x4:0011f348 x10=0011f348   # add     a0, a0, tp
      80002898  x10:0011f348 x14:00120180 WA:0011f354   # sw      a4, 12(a0)
; _snrt_init_team (start.c:99)
      8000289c  x1:80002a5c                             # ret
; ?? (start.S:165)
      80002a5c  x2:0011f334 RA:0011f334 x10=00000003    # lw      a0, 0(sp)
; ?? (start.S:166)
      80002a60  x2:0011f334 RA:0011f338 x11=00000009    # lw      a1, 4(sp)
; ?? (start.S:167)
      80002a64  x2:0011f334 RA:0011f33c x12=00100000    # lw      a2, 8(sp)
; ?? (start.S:168)
      80002a68  x2:0011f334 RA:0011f340 x13=0011db28    # lw      a3, 12(sp)
; ?? (start.S:169)
      80002a6c  x2:0011f334 RA:0011f344 x14=01000000    # lw      a4, 16(sp)
; ?? (start.S:170)
      80002a70  x2:0011f334 x2=0011f348                 # addi    sp, sp, 20
; ?? (start.S:174)
      80002a74  x5=80002a74                             # auipc   t0, 0x0
      80002a78  x5:80002a74 x5=80002ab0                 # addi    t0, t0, 60
; ?? (start.S:175)
      80002a7c  x5:80002ab0                             # csrw    mtvec, t0
; ?? (start.S:179)
      80002a80  x1=80002a80                             # auipc   ra, 0x0
      80002a84  x1:80002a80 x1=80002a88                 # jalr    ra, ra, 544
; ?? (start_snitch.S:33)
      80002ca0  x2:0011f348 x2=0011f344                 # addi    sp, sp, -4
; ?? (start_snitch.S:34)
      80002ca4  x2:0011f344 x1:80002a88 WA:0011f344     # sw      ra, 0(sp)
; ?? (start_snitch.S:35)
      80002ca8  x1=80002ca8                             # auipc   ra, 0x0
      80002cac  x1:80002ca8 x1=80002cb0                 # jalr    ra, ra, -1616
; _snrt_barrier_reg_ptr (team.c:80)
      80002658  x10=00000000                            # lui     a0, 0x0
      8000265c  x10:00000000 x4:0011f348 x10=0011f348   # add     a0, a0, tp
      80002660  x10:0011f348 RA:0011f348 x10=0011ff70   # lw      a0, 0(a0)
      80002664  x10:0011ff70 RA:0011ff70 x10=0011ff70   # lw      a0, 0(a0)
      80002668  x10:0011ff70 RA:0011ffe0 x10=00120190   # lw      a0, 112(a0)
      8000266c  x1:80002cb0                             # ret
; ?? (start.S:73)
      80002930  f12=        0.000000                    # fcvt.d.w fa2, zero
; ?? (start.S:88)
      8000296c  f27=        0.000000                    # fcvt.d.w fs11, zero
; ?? (start.S:89)
      80002970  f28=        0.000000                    # fcvt.d.w ft8, zero
; ?? (start.S:90)
      80002974  f29=        0.000000                    # fcvt.d.w ft9, zero
; ?? (start.S:91)
      80002978  f30=        0.000000                    # fcvt.d.w ft10, zero
; ?? (start.S:88)
      8000296c  f27=        0.000000                    # fcvt.d.w fs11, zero
; ?? (start.S:92)
      8000297c  f31=        0.000000                    # fcvt.d.w ft11, zero
; ?? (start.S:73)
      80002930  f12=        0.000000                    # fcvt.d.w fa2, zero
; ?? (start.S:71)
      80002928  f10=        0.000000                    # fcvt.d.w fa0, zero
; ?? (start.S:79)
      80002948  f18=        0.000000                    # fcvt.d.w fs2, zero
; ?? (start.S:83)
      80002958  f22=        0.000000                    # fcvt.d.w fs6, zero
; ?? (start.S:74)
      80002934  f13=        0.000000                    # fcvt.d.w fa3, zero
; ?? (start.S:92)
      8000297c  f31=        0.000000                    # fcvt.d.w ft11, zero
; ?? (start.S:89)
      80002970  f28=        0.000000                    # fcvt.d.w ft8, zero
; ?? (start.S:99)
      80002980  x13:00120000 x13=0011fff8               # addi    a3, a3, -8
; ?? (start.S:90)
      80002974  f29=        0.000000                    # fcvt.d.w ft9, zero
; ?? (start.S:74)
      80002934  f13=        0.000000                    # fcvt.d.w fa3, zero
; ?? (start.S:75)
      80002938  f14=        0.000000                    # fcvt.d.w fa4, zero
; ?? (start.S:76)
      8000293c  f15=        0.000000                    # fcvt.d.w fa5, zero
; ?? (start.S:77)
      80002940  f16=        0.000000                    # fcvt.d.w fa6, zero
; ?? (start.S:78)
      80002944  f17=        0.000000                    # fcvt.d.w fa7, zero
; ?? (start.S:79)
      80002948  f18=        0.000000                    # fcvt.d.w fs2, zero
; ?? (start.S:80)
      8000294c  f19=        0.000000                    # fcvt.d.w fs3, zero
; ?? (start.S:91)
      80002978  f30=        0.000000                    # fcvt.d.w ft10, zero
; ?? (start.S:72)
      8000292c  f11=        0.000000                    # fcvt.d.w fa1, zero
; ?? (start.S:80)
      8000294c  f19=        0.000000                    # fcvt.d.w fs3, zero
; ?? (start.S:84)
      8000295c  f23=        0.000000                    # fcvt.d.w fs7, zero
; ?? (start.S:75)
      80002938  f14=        0.000000                    # fcvt.d.w fa4, zero
; ?? (start.S:99)
      80002980  x13:00120000 x13=0011fff8               # addi    a3, a3, -8
; ?? (start.S:100)
      80002984  x13:0011fff8 WA:0011fff8                # sw      zero, 0(a3)
; ?? (start.S:81)
      80002950  f20=        0.000000                    # fcvt.d.w fs4, zero
; ?? (start.S:92)
      8000297c  f31=        0.000000                    # fcvt.d.w ft11, zero
; ?? (start.S:99)
      80002980  x13:00120000 x13=0011fff8               # addi    a3, a3, -8
; ?? (start.S:81)
      80002950  f20=        0.000000                    # fcvt.d.w fs4, zero
; ?? (start.S:82)
      80002954  f21=        0.000000                    # fcvt.d.w fs5, zero
; ?? (start.S:83)
      80002958  f22=        0.000000                    # fcvt.d.w fs6, zero
; ?? (start.S:100)
      80002984  x13:0011fff8 WA:0011fff8                # sw      zero, 0(a3)
; ?? (start.S:103)
      80002988  x5=80002988                             # auipc   t0, 0x0
; ?? (start.S:82)
      80002954  f21=        0.000000                    # fcvt.d.w fs5, zero
; ?? (start.S:73)
      80002930  f12=        0.000000                    # fcvt.d.w fa2, zero
; ?? (start.S:100)
      80002984  x13:0011fff8 WA:0011fff8                # sw      zero, 0(a3)
; ?? (start.S:103)
      80002988  x5=80002988                             # auipc   t0, 0x0
; ?? (start.S:76)
      8000293c  f15=        0.000000                    # fcvt.d.w fa5, zero
; ?? (start.S:84)
      8000295c  f23=        0.000000                    # fcvt.d.w fs7, zero
; ?? (start.S:103)
      80002988  x5=80002988                             # auipc   t0, 0x0
      8000298c  x5:80002988 RA:80002d08 x5=00000088     # lw      t0, 896(t0)
; ?? (start.S:83)
      80002958  f22=        0.000000                    # fcvt.d.w fs6, zero
; ?? (start.S:84)
      8000295c  f23=        0.000000                    # fcvt.d.w fs7, zero
; ?? (start.S:85)
      80002960  f24=        0.000000                    # fcvt.d.w fs8, zero
; ?? (start.S:86)
      80002964  f25=        0.000000                    # fcvt.d.w fs9, zero
; ?? (start.S:87)
      80002968  f26=        0.000000                    # fcvt.d.w fs10, zero
; ?? (start.S:85)
      80002960  f24=        0.000000                    # fcvt.d.w fs8, zero
; ?? (start.S:103)
      8000298c  x5:80002988 RA:80002d08 x5=00000088     # lw      t0, 896(t0)
; ?? (start.S:104)
      80002990  x13:0011fff8 x5:00000088 x13=0011ff70   # sub     a3, a3, t0
; ?? (start.S:105)
      80002994  x13:0011ff70 x15=0011ff70               # mv      a5, a3
; ?? (start.S:108)
      80002998  x7=80002998                             # auipc   t2, 0x0
; ?? (start.S:103)
      8000298c  x5:80002988 RA:80002d08 x5=00000088     # lw      t0, 896(t0)
; ?? (start.S:77)
      80002940  f16=        0.000000                    # fcvt.d.w fa6, zero
; ?? (start.S:88)
      8000296c  f27=        0.000000                    # fcvt.d.w fs11, zero
; ?? (start.S:86)
      80002964  f25=        0.000000                    # fcvt.d.w fs9, zero
; ?? (start.S:104)
      80002990  x13:0011fff8 x5:00000088 x13=0011ff70   # sub     a3, a3, t0
; ?? (start.S:105)
      80002994  x13:0011ff70 x15=0011ff70               # mv      a5, a3
; ?? (start.S:108)
      80002998  x7=80002998                             # auipc   t2, 0x0
      8000299c  x7:80002998 RA:80002d0c x7=0000000a     # lw      t2, 884(t2)
; ?? (start.S:104)
      80002990  x13:0011fff8 x5:00000088 x13=0011ff70   # sub     a3, a3, t0
; ?? (start.S:78)
      80002944  f17=        0.000000                    # fcvt.d.w fa7, zero
; ?? (start.S:89)
      80002970  f28=        0.000000                    # fcvt.d.w ft8, zero
; ?? (start.S:87)
      80002968  f26=        0.000000                    # fcvt.d.w fs10, zero
; ?? (start.S:90)
      80002974  f29=        0.000000                    # fcvt.d.w ft9, zero
; ?? (start.S:74)
      80002934  f13=        0.000000                    # fcvt.d.w fa3, zero
; ?? (start.S:85)
      80002960  f24=        0.000000                    # fcvt.d.w fs8, zero
; ?? (start.S:108)
      8000299c  x7:80002998 RA:80002d0c x7=0000000a     # lw      t2, 884(t2)
; ?? (start.S:110)
      800029a0  x10:00000000 x7:0000000a x5=00000000    # sll     t0, a0, t2
; ?? (start.S:105)
      80002994  x13:0011ff70 x15=0011ff70               # mv      a5, a3
; ?? (start.S:108)
      80002998  x7=80002998                             # auipc   t2, 0x0
; ?? (start.S:88)
      8000296c  f27=        0.000000                    # fcvt.d.w fs11, zero
; ?? (start.S:91)
      80002978  f30=        0.000000                    # fcvt.d.w ft10, zero
; ?? (start.S:92)
      8000297c  f31=        0.000000                    # fcvt.d.w ft11, zero
; ?? (start.S:86)
      80002964  f25=        0.000000                    # fcvt.d.w fs9, zero
; ?? (start.S:110)
      800029a0  x10:00000005 x7:0000000a x5=00001400    # sll     t0, a0, t2
; ?? (start.S:111)
      800029a4  x11:00000009 x7:0000000a x6=00002400    # sll     t1, a1, t2
; ?? (start.S:79)
      80002948  f18=        0.000000                    # fcvt.d.w fs2, zero
; ?? (start.S:108)
      8000299c  x7:80002998 RA:80002d0c x7=0000000a     # lw      t2, 884(t2)
; ?? (start.S:89)
      80002970  f28=        0.000000                    # fcvt.d.w ft8, zero
; ?? (start.S:75)
      80002938  f14=        0.000000                    # fcvt.d.w fa4, zero
; ?? (start.S:99)
      80002980  x13:00120000 x13=0011fff8               # addi    a3, a3, -8
; ?? (start.S:87)
      80002968  f26=        0.000000                    # fcvt.d.w fs10, zero
; ?? (start.S:111)
      800029a4  x11:00000009 x7:0000000a x6=00002400    # sll     t1, a1, t2
; ?? (start.S:112)
      800029a8  x13:0011ff70 x5:00000000 x2=0011ff70    # sub     sp, a3, t0
; ?? (start.S:80)
      8000294c  f19=        0.000000                    # fcvt.d.w fs3, zero
; ?? (start.S:110)
      800029a0  x10:00000006 x7:0000000a x5=00001800    # sll     t0, a0, t2
; ?? (start.S:90)
      80002974  f29=        0.000000                    # fcvt.d.w ft9, zero
; ?? (start.S:76)
      8000293c  f15=        0.000000                    # fcvt.d.w fa5, zero
; ?? (start.S:100)
      80002984  x13:0011fff8 WA:0011fff8                # sw      zero, 0(a3)
; ?? (start.S:88)
      8000296c  f27=        0.000000                    # fcvt.d.w fs11, zero
; ?? (start.S:112)
      800029a8  x13:0011ff70 x5:00001400 x2=0011eb70    # sub     sp, a3, t0
; ?? (start.S:113)
      800029ac  x13:0011ff70 x6:00002400 x13=0011db70   # sub     a3, a3, t1
; ?? (start.S:116)
      800029b0  x10:00000000 x5=00000000                # slli    t0, a0, 3
; ?? (start.S:111)
      800029a4  x11:00000009 x7:0000000a x6=00002400    # sll     t1, a1, t2
; ?? (start.S:91)
      80002978  f30=        0.000000                    # fcvt.d.w ft10, zero
; ?? (start.S:92)
      8000297c  f31=        0.000000                    # fcvt.d.w ft11, zero
; ?? (start.S:103)
      80002988  x5=80002988                             # auipc   t0, 0x0
; ?? (start.S:89)
      80002970  f28=        0.000000                    # fcvt.d.w ft8, zero
; ?? (start.S:113)
      800029ac  x13:0011ff70 x6:00002400 x13=0011db70   # sub     a3, a3, t1
; ?? (start.S:90)
      80002974  f29=        0.000000                    # fcvt.d.w ft9, zero
; ?? (start.S:116)
      800029b0  x10:00000005 x5=00000028                # slli    t0, a0, 3
; ?? (start.S:117)
      800029b4  x11:00000009 x6=00000048                # slli    t1, a1, 3
; ?? (start.S:112)
      800029a8  x13:0011ff70 x5:00001800 x2=0011e770    # sub     sp, a3, t0
; ?? (start.S:77)
      80002940  f16=        0.000000                    # fcvt.d.w fa6, zero
; ?? (start.S:99)
      80002980  x13:00120000 x13=0011fff8               # addi    a3, a3, -8
; ?? (start.S:100)
      80002984  x13:0011fff8 WA:0011fff8                # sw      zero, 0(a3)
; ?? (start.S:103)
      80002988  x5=80002988                             # auipc   t0, 0x0
; ?? (start.S:91)
      80002978  f30=        0.000000                    # fcvt.d.w ft10, zero
; ?? (start.S:117)
      800029b4  x11:00000009 x6=00000048                # slli    t1, a1, 3
; ?? (start.S:118)
      800029b8  x2:0011ff70 x5:00000000 x2=0011ff70     # sub     sp, sp, t0
; ?? (start.S:113)
      800029ac  x13:0011ff70 x6:00002400 x13=0011db70   # sub     a3, a3, t1
; ?? (start.S:116)
      800029b0  x10:00000006 x5=00000030                # slli    t0, a0, 3
; ?? (start.S:117)
      800029b4  x11:00000009 x6=00000048                # slli    t1, a1, 3
; ?? (start.S:118)
      800029b8  x2:0011e770 x5:00000030 x2=0011e740     # sub     sp, sp, t0
; ?? (start.S:119)
      800029bc  x13:0011db70 x6:00000048 x13=0011db28   # sub     a3, a3, t1
; ?? (start.S:92)
      8000297c  f31=        0.000000                    # fcvt.d.w ft11, zero
; ?? (start.S:118)
      800029b8  x2:0011eb70 x5:00000028 x2=0011eb48     # sub     sp, sp, t0
; ?? (start.S:119)
      800029bc  x13:0011db70 x6:00000048 x13=0011db28   # sub     a3, a3, t1
; ?? (start.S:78)
      80002944  f17=        0.000000                    # fcvt.d.w fa7, zero
; ?? (start.S:103)
      8000298c  x5:80002988 RA:80002d08 x5=00000088     # lw      t0, 896(t0)
; ?? (start.S:81)
      80002950  f20=        0.000000                    # fcvt.d.w fs4, zero
; ?? (start.S:103)
      8000298c  x5:80002988 RA:80002d08 x5=00000088     # lw      t0, 896(t0)
; ?? (start.S:124)
      800029c0  x5=800029c0                             # auipc   t0, 0x0
; ?? (start.S:99)
      80002980  x13:00120000 x13=0011fff8               # addi    a3, a3, -8
; ?? (start.S:119)
      800029bc  x13:0011db70 x6:00000048 x13=0011db28   # sub     a3, a3, t1
; ?? (start.S:124)
      800029c0  x5=800029c0                             # auipc   t0, 0x0
      800029c4  x5:800029c0 x5=80002f48                 # addi    t0, t0, 1416
; ?? (start.S:125)
      800029c8  x6=800029c8                             # auipc   t1, 0x0
; ?? (start.S:82)
      80002954  f21=        0.000000                    # fcvt.d.w fs5, zero
; ?? (start.S:104)
      80002990  x13:0011fff8 x5:00000088 x13=0011ff70   # sub     a3, a3, t0
; ?? (start.S:124)
      800029c4  x5:800029c0 x5=80002f48                 # addi    t0, t0, 1416
; ?? (start.S:125)
      800029c8  x6=800029c8                             # auipc   t1, 0x0
      800029cc  x6:800029c8 x6=80002f48                 # addi    t1, t1, 1408
; ?? (start.S:126)
      800029d0  x7=800029d0                             # auipc   t2, 0x0
      800029d4  x7:800029d0 x7=80002f48                 # addi    t2, t2, 1400
; ?? (start.S:125)
      800029cc  x6:800029c8 x6=80002f48                 # addi    t1, t1, 1408
; ?? (start.S:83)
      80002958  f22=        0.000000                    # fcvt.d.w fs6, zero
; ?? (start.S:105)
      80002994  x13:0011ff70 x15=0011ff70               # mv      a5, a3
; ?? (start.S:100)
      80002984  x13:0011fff8 WA:0011fff8                # sw      zero, 0(a3)
; ?? (start.S:124)
      800029c0  x5=800029c0                             # auipc   t0, 0x0
; ?? (start.S:79)
      80002948  f18=        0.000000                    # fcvt.d.w fs2, zero
; ?? (start.S:104)
      80002990  x13:0011fff8 x5:00000088 x13=0011ff70   # sub     a3, a3, t0
; ?? (start.S:127)
      800029d8  x28=800029d8                            # auipc   t3, 0x0
; ?? (start.S:126)
      800029d0  x7=800029d0                             # auipc   t2, 0x0
      800029d4  x7:800029d0 x7=80002f48                 # addi    t2, t2, 1400
; ?? (start.S:108)
      80002998  x7=80002998                             # auipc   t2, 0x0
; ?? (start.S:103)
      80002988  x5=80002988                             # auipc   t0, 0x0
; ?? (start.S:124)
      800029c4  x5:800029c0 x5=80002f48                 # addi    t0, t0, 1416
; ?? (start.S:80)
      8000294c  f19=        0.000000                    # fcvt.d.w fs3, zero
; ?? (start.S:105)
      80002994  x13:0011ff70 x15=0011ff70               # mv      a5, a3
; ?? (start.S:127)
      800029dc  x28:800029d8 x28=80002f58               # addi    t3, t3, 1408
; ?? (start.S:84)
      8000295c  f23=        0.000000                    # fcvt.d.w fs7, zero
; ?? (start.S:127)
      800029d8  x28=800029d8                            # auipc   t3, 0x0
; ?? (start.S:108)
      8000299c  x7:80002998 RA:80002d0c x7=0000000a     # lw      t2, 884(t2)
; ?? (start.S:103)
      8000298c  x5:80002988 RA:80002d08 x5=00000088     # lw      t0, 896(t0)
; ?? (start.S:125)
      800029c8  x6=800029c8                             # auipc   t1, 0x0
; ?? (start.S:81)
      80002950  f20=        0.000000                    # fcvt.d.w fs4, zero
; ?? (start.S:108)
      80002998  x7=80002998                             # auipc   t2, 0x0
; ?? (start.S:128)
      800029e0  x2:0011e740 x5:80002f48 x2=80121688     # add     sp, sp, t0
; ?? (start.S:85)
      80002960  f24=        0.000000                    # fcvt.d.w fs8, zero
; ?? (start.S:127)
      800029dc  x28:800029d8 x28=80002f58               # addi    t3, t3, 1408
; ?? (start.S:110)
      800029a0  x10:00000008 x7:0000000a x5=00002000    # sll     t0, a0, t2
; ?? (start.S:104)
      80002990  x13:0011fff8 x5:00000088 x13=0011ff70   # sub     a3, a3, t0
; ?? (start.S:125)
      800029cc  x6:800029c8 x6=80002f48                 # addi    t1, t1, 1408
; ?? (start.S:126)
      800029d0  x7=800029d0                             # auipc   t2, 0x0
; ?? (start.S:108)
      8000299c  x7:80002998 RA:80002d0c x7=0000000a     # lw      t2, 884(t2)
; ?? (start.S:129)
      800029e4  x2:80121688 x6:80002f48 x2=0011e740     # sub     sp, sp, t1
; ?? (start.S:86)
      80002964  f25=        0.000000                    # fcvt.d.w fs9, zero
; ?? (start.S:128)
      800029e0  x2:0011eb48 x5:80002f48 x2=80121a90     # add     sp, sp, t0
; ?? (start.S:111)
      800029a4  x11:00000009 x7:0000000a x6=00002400    # sll     t1, a1, t2
; ?? (start.S:105)
      80002994  x13:0011ff70 x15=0011ff70               # mv      a5, a3
; ?? (start.S:108)
      80002998  x7=80002998                             # auipc   t2, 0x0
; ?? (start.S:126)
      800029d4  x7:800029d0 x7=80002f48                 # addi    t2, t2, 1400
; ?? (start.S:110)
      800029a0  x10:00000007 x7:0000000a x5=00001c00    # sll     t0, a0, t2
; ?? (start.S:130)
      800029e8  x2:0011e740 x7:80002f48 x2=80121688     # add     sp, sp, t2
; ?? (start.S:87)
      80002968  f26=        0.000000                    # fcvt.d.w fs10, zero
; ?? (start.S:129)
      800029e4  x2:80121a90 x6:80002f48 x2=0011eb48     # sub     sp, sp, t1
; ?? (start.S:112)
      800029a8  x13:0011ff70 x5:00002000 x2=0011df70    # sub     sp, a3, t0
; ?? (start.S:82)
      80002954  f21=        0.000000                    # fcvt.d.w fs5, zero
; ?? (start.S:108)
      8000299c  x7:80002998 RA:80002d0c x7=0000000a     # lw      t2, 884(t2)
; ?? (start.S:127)
      800029d8  x28=800029d8                            # auipc   t3, 0x0
; ?? (start.S:111)
      800029a4  x11:00000009 x7:0000000a x6=00002400    # sll     t1, a1, t2
; ?? (start.S:131)
      800029ec  x2:80121688 x28:80002f58 x2=0011e730    # sub     sp, sp, t3
; ?? (start.S:88)
      8000296c  f27=        0.000000                    # fcvt.d.w fs11, zero
; ?? (start.S:130)
      800029e8  x2:0011eb48 x7:80002f48 x2=80121a90     # add     sp, sp, t2
; ?? (start.S:113)
      800029ac  x13:0011ff70 x6:00002400 x13=0011db70   # sub     a3, a3, t1
; ?? (start.S:116)
      800029b0  x10:00000008 x5=00000040                # slli    t0, a0, 3
; ?? (start.S:110)
      800029a0  x10:00000001 x7:0000000a x5=00000400    # sll     t0, a0, t2
; ?? (start.S:127)
      800029dc  x28:800029d8 x28=80002f58               # addi    t3, t3, 1408
; ?? (start.S:112)
      800029a8  x13:0011ff70 x5:00001c00 x2=0011e370    # sub     sp, a3, t0
; ?? (start.S:132)
      800029f0  x2:0011e730 x2=0011e730                 # andi    sp, sp, -8
; ?? (start.S:89)
      80002970  f28=        0.000000                    # fcvt.d.w ft8, zero
; ?? (start.S:131)
      800029ec  x2:80121a90 x28:80002f58 x2=0011eb38    # sub     sp, sp, t3
; ?? (start.S:90)
      80002974  f29=        0.000000                    # fcvt.d.w ft9, zero
; ?? (start.S:83)
      80002958  f22=        0.000000                    # fcvt.d.w fs6, zero
; ?? (start.S:111)
      800029a4  x11:00000009 x7:0000000a x6=00002400    # sll     t1, a1, t2
; ?? (start.S:128)
      800029e0  x2:0011ff70 x5:80002f48 x2=80122eb8     # add     sp, sp, t0
; ?? (start.S:113)
      800029ac  x13:0011ff70 x6:00002400 x13=0011db70   # sub     a3, a3, t1
; ?? (start.S:133)
      800029f4  x2:0011e730 x4=0011e730                 # mv      tp, sp
; ?? (start.S:132)
      800029f0  x2:0011eb38 x2=0011eb38                 # andi    sp, sp, -8
; ?? (start.S:117)
      800029b4  x11:00000009 x6=00000048                # slli    t1, a1, 3
; ?? (start.S:91)
      80002978  f30=        0.000000                    # fcvt.d.w ft10, zero
; ?? (start.S:92)
      8000297c  f31=        0.000000                    # fcvt.d.w ft11, zero
; ?? (start.S:99)
      80002980  x13:00120000 x13=0011fff8               # addi    a3, a3, -8
; ?? (start.S:100)
      80002984  x13:0011fff8 WA:0011fff8                # sw      zero, 0(a3)
; ?? (start.S:116)
      800029b0  x10:00000007 x5=00000038                # slli    t0, a0, 3
; ?? (start.S:134)
      800029f8  x2:0011e730 x2=0011e730                 # andi    sp, sp, -8
; ?? (start.S:133)
      800029f4  x2:0011eb38 x4=0011eb38                 # mv      tp, sp
; ?? (start.S:118)
      800029b8  x2:0011df70 x5:00000040 x2=0011df30     # sub     sp, sp, t0
; ?? (start.S:84)
      8000295c  f23=        0.000000                    # fcvt.d.w fs7, zero
; ?? (start.S:112)
      800029a8  x13:0011ff70 x5:00000400 x2=0011fb70    # sub     sp, a3, t0
; ?? (start.S:129)
      800029e4  x2:80122eb8 x6:80002f48 x2=0011ff70     # sub     sp, sp, t1
; ?? (start.S:103)
      80002988  x5=80002988                             # auipc   t0, 0x0
; ?? (start.S:117)
      800029b4  x11:00000009 x6=00000048                # slli    t1, a1, 3
; ?? (start.S:137)
      800029fc  x4:0011e730 x29=0011e730                # mv      t4, tp
; ?? (start.S:134)
      800029f8  x2:0011eb38 x2=0011eb38                 # andi    sp, sp, -8
; ?? (start.S:119)
      800029bc  x13:0011db70 x6:00000048 x13=0011db28   # sub     a3, a3, t1
; ?? (start.S:124)
      800029c0  x5=800029c0                             # auipc   t0, 0x0
      800029c4  x5:800029c0 x5=80002f48                 # addi    t0, t0, 1416
; ?? (start.S:125)
      800029c8  x6=800029c8                             # auipc   t1, 0x0
      800029cc  x6:800029c8 x6=80002f48                 # addi    t1, t1, 1408
; ?? (start.S:118)
      800029b8  x2:0011e370 x5:00000038 x2=0011e338     # sub     sp, sp, t0
; ?? (start.S:138)
      80002a00  x5:80002f48 x6:80002f48                 # bge     t0, t1, pc + 24
; ?? (start.S:137)
      800029fc  x4:0011eb38 x29=0011eb38                # mv      t4, tp
; ?? (start.S:85)
      80002960  f24=        0.000000                    # fcvt.d.w fs8, zero
; ?? (start.S:113)
      800029ac  x13:0011ff70 x6:00002400 x13=0011db70   # sub     a3, a3, t1
; ?? (start.S:130)
      800029e8  x2:0011ff70 x7:80002f48 x2=80122eb8     # add     sp, sp, t2
; ?? (start.S:103)
      8000298c  x5:80002988 RA:80002d08 x5=00000088     # lw      t0, 896(t0)
; ?? (start.S:126)
      800029d0  x7=800029d0                             # auipc   t2, 0x0
; ?? (start.S:119)
      800029bc  x13:0011db70 x6:00000048 x13=0011db28   # sub     a3, a3, t1
; ?? (start.S:147)
      80002a18  x5=80002a18                             # auipc   t0, 0x0
; ?? (start.S:138)
      80002a00  x5:80002f48 x6:80002f48                 # bge     t0, t1, pc + 24
; ?? (start.S:86)
      80002964  f25=        0.000000                    # fcvt.d.w fs9, zero
; ?? (start.S:116)
      800029b0  x10:00000001 x5=00000008                # slli    t0, a0, 3
; ?? (start.S:131)
      800029ec  x2:80122eb8 x28:80002f58 x2=0011ff60    # sub     sp, sp, t3
; ?? (start.S:104)
      80002990  x13:0011fff8 x5:00000088 x13=0011ff70   # sub     a3, a3, t0
; ?? (start.S:126)
      800029d4  x7:800029d0 x7=80002f48                 # addi    t2, t2, 1400
; ?? (start.S:124)
      800029c0  x5=800029c0                             # auipc   t0, 0x0
; ?? (start.S:147)
      80002a1c  x5:80002a18 x5=80002f48                 # addi    t0, t0, 1328
      80002a18  x5=80002a18                             # auipc   t0, 0x0
      80002a1c  x5:80002a18 x5=80002f48                 # addi    t0, t0, 1328
; ?? (start.S:117)
      800029b4  x11:00000009 x6=00000048                # slli    t1, a1, 3
; ?? (start.S:132)
      800029f0  x2:0011ff60 x2=0011ff60                 # andi    sp, sp, -8
; ?? (start.S:105)
      80002994  x13:0011ff70 x15=0011ff70               # mv      a5, a3
; ?? (start.S:127)
      800029d8  x28=800029d8                            # auipc   t3, 0x0
; ?? (start.S:124)
      800029c4  x5:800029c0 x5=80002f48                 # addi    t0, t0, 1416
; ?? (start.S:125)
      800029c8  x6=800029c8                             # auipc   t1, 0x0
      800029cc  x6:800029c8 x6=80002f48                 # addi    t1, t1, 1408
; ?? (start.S:148)
      80002a20  x6=80002a20                             # auipc   t1, 0x0
; ?? (start.S:118)
      800029b8  x2:0011fb70 x5:00000008 x2=0011fb68     # sub     sp, sp, t0
; ?? (start.S:133)
      800029f4  x2:0011ff60 x4=0011ff60                 # mv      tp, sp
; ?? (start.S:108)
      80002998  x7=80002998                             # auipc   t2, 0x0
; ?? (start.S:127)
      800029dc  x28:800029d8 x28=80002f58               # addi    t3, t3, 1408
; ?? (start.S:148)
      80002a20  x6=80002a20                             # auipc   t1, 0x0
; ?? (start.S:87)
      80002968  f26=        0.000000                    # fcvt.d.w fs10, zero
; ?? (start.S:126)
      800029d0  x7=800029d0                             # auipc   t2, 0x0
; ?? (start.S:148)
      80002a24  x6:80002a20 x6=80002f58                 # addi    t1, t1, 1336
; ?? (start.S:119)
      800029bc  x13:0011db70 x6:00000048 x13=0011db28   # sub     a3, a3, t1
; ?? (start.S:134)
      800029f8  x2:0011ff60 x2=0011ff60                 # andi    sp, sp, -8
; ?? (start.S:108)
      8000299c  x7:80002998 RA:80002d0c x7=0000000a     # lw      t2, 884(t2)
; ?? (start.S:128)
      800029e0  x2:0011df30 x5:80002f48 x2=80120e78     # add     sp, sp, t0
; ?? (start.S:148)
      80002a24  x6:80002a20 x6=80002f58                 # addi    t1, t1, 1336
; ?? (start.S:88)
      8000296c  f27=        0.000000                    # fcvt.d.w fs11, zero
; ?? (start.S:126)
      800029d4  x7:800029d0 x7=80002f48                 # addi    t2, t2, 1400
; ?? (start.S:149)
      80002a28  x5:80002f48 x6:80002f58                 # bge     t0, t1, pc + 20
; ?? (start.S:150)
      80002a2c  x29:0011eb38 WA:0011eb38                # sw      zero, 0(t4)
; ?? (start.S:137)
      800029fc  x4:0011ff60 x29=0011ff60                # mv      t4, tp
; ?? (start.S:110)
      800029a0  x10:00000002 x7:0000000a x5=00000800    # sll     t0, a0, t2
; ?? (start.S:129)
      800029e4  x2:80120e78 x6:80002f48 x2=0011df30     # sub     sp, sp, t1
; ?? (start.S:149)
      80002a28  x5:80002f48 x6:80002f58                 # bge     t0, t1, pc + 20
; ?? (start.S:150)
      80002a2c  x29:0011e730 WA:0011e730                # sw      zero, 0(t4)
; ?? (start.S:127)
      800029d8  x28=800029d8                            # auipc   t3, 0x0
; ?? (start.S:124)
      800029c0  x5=800029c0                             # auipc   t0, 0x0
; ?? (start.S:151)
      80002a30  x5:80002f48 x5=80002f4c                 # addi    t0, t0, 4
; ?? (start.S:138)
      80002a00  x5:80002f48 x6:80002f48                 # bge     t0, t1, pc + 24
; ?? (start.S:111)
      800029a4  x11:00000009 x7:0000000a x6=00002400    # sll     t1, a1, t2
; ?? (start.S:147)
      80002a18  x5=80002a18                             # auipc   t0, 0x0
; ?? (start.S:130)
      800029e8  x2:0011df30 x7:80002f48 x2=80120e78     # add     sp, sp, t2
; ?? (start.S:131)
      800029ec  x2:80120e78 x28:80002f58 x2=0011df20    # sub     sp, sp, t3
; ?? (start.S:151)
      80002a30  x5:80002f48 x5=80002f4c                 # addi    t0, t0, 4
; ?? (start.S:127)
      800029dc  x28:800029d8 x28=80002f58               # addi    t3, t3, 1408
; ?? (start.S:124)
      800029c4  x5:800029c0 x5=80002f48                 # addi    t0, t0, 1416
; ?? (start.S:152)
      80002a34  x29:0011eb38 x29=0011eb3c               # addi    t4, t4, 4
; ?? (start.S:147)
      80002a1c  x5:80002a18 x5=80002f48                 # addi    t0, t0, 1328
; ?? (start.S:112)
      800029a8  x13:0011ff70 x5:00000800 x2=0011f770    # sub     sp, a3, t0
; ?? (start.S:89)
      80002970  f28=        0.000000                    # fcvt.d.w ft8, zero
; ?? (start.S:132)
      800029f0  x2:0011df20 x2=0011df20                 # andi    sp, sp, -8
; ?? (start.S:90)
      80002974  f29=        0.000000                    # fcvt.d.w ft9, zero
; ?? (start.S:128)
      800029e0  x2:0011e338 x5:80002f48 x2=80121280     # add     sp, sp, t0
; ?? (start.S:125)
      800029c8  x6=800029c8                             # auipc   t1, 0x0
; ?? (start.S:153)
      80002a38  x5:80002f4c x7:80002f48                 # blt     t0, t2, pc - 12
; ?? (start.S:148)
      80002a20  x6=80002a20                             # auipc   t1, 0x0
; ?? (start.S:113)
      800029ac  x13:0011ff70 x6:00002400 x13=0011db70   # sub     a3, a3, t1
; ?? (start.S:152)
      80002a34  x29:0011e730 x29=0011e734               # addi    t4, t4, 4
; ?? (start.S:133)
      800029f4  x2:0011df20 x4=0011df20                 # mv      tp, sp
; ?? (start.S:91)
      80002978  f30=        0.000000                    # fcvt.d.w ft10, zero
; ?? (start.S:129)
      800029e4  x2:80121280 x6:80002f48 x2=0011e338     # sub     sp, sp, t1
; ?? (start.S:125)
      800029cc  x6:800029c8 x6=80002f48                 # addi    t1, t1, 1408
; ?? (start.S:126)
      800029d0  x7=800029d0                             # auipc   t2, 0x0
      800029d4  x7:800029d0 x7=80002f48                 # addi    t2, t2, 1400
; ?? (start.S:116)
      800029b0  x10:00000002 x5=00000010                # slli    t0, a0, 3
; ?? (start.S:153)
      80002a38  x5:80002f4c x7:80002f48                 # blt     t0, t2, pc - 12
; ?? (start.S:134)
      800029f8  x2:0011df20 x2=0011df20                 # andi    sp, sp, -8
; ?? (start.S:92)
      8000297c  f31=        0.000000                    # fcvt.d.w ft11, zero
; ?? (start.S:130)
      800029e8  x2:0011e338 x7:80002f48 x2=80121280     # add     sp, sp, t2
; ?? (start.S:99)
      80002980  x13:00120000 x13=0011fff8               # addi    a3, a3, -8
; ?? (start.S:131)
      800029ec  x2:80121280 x28:80002f58 x2=0011e328    # sub     sp, sp, t3
; ?? (start.S:148)
      80002a24  x6:80002a20 x6=80002f58                 # addi    t1, t1, 1336
; ?? (start.S:127)
      800029d8  x28=800029d8                            # auipc   t3, 0x0
; ?? (start.S:117)
      800029b4  x11:00000009 x6=00000048                # slli    t1, a1, 3
; ?? (start.S:158)
      80002a3c  x2:0011e730 x2=0011e71c                 # addi    sp, sp, -20
; ?? (start.S:137)
      800029fc  x4:0011df20 x29=0011df20                # mv      t4, tp
; ?? (start.S:158)
      80002a3c  x2:0011eb38 x2=0011eb24                 # addi    sp, sp, -20
; ?? (start.S:132)
      800029f0  x2:0011e328 x2=0011e328                 # andi    sp, sp, -8
; ?? (start.S:100)
      80002984  x13:0011fff8 WA:0011fff8                # sw      zero, 0(a3)
; ?? (start.S:149)
      80002a28  x5:80002f48 x6:80002f58                 # bge     t0, t1, pc + 20
; ?? (start.S:127)
      800029dc  x28:800029d8 x28=80002f58               # addi    t3, t3, 1408
; ?? (start.S:118)
      800029b8  x2:0011f770 x5:00000010 x2=0011f760     # sub     sp, sp, t0
; ?? (start.S:159)
      80002a40  x2:0011e71c x10:00000006 WA:0011e71c    # sw      a0, 0(sp)
; ?? (start.S:138)
      80002a00  x5:80002f48 x6:80002f48                 # bge     t0, t1, pc + 24
; ?? (start.S:159)
      80002a40  x2:0011eb24 x10:00000005 WA:0011eb24    # sw      a0, 0(sp)
; ?? (start.S:147)
      80002a18  x5=80002a18                             # auipc   t0, 0x0
; ?? (start.S:133)
      800029f4  x2:0011e328 x4=0011e328                 # mv      tp, sp
; ?? (start.S:134)
      800029f8  x2:0011e328 x2=0011e328                 # andi    sp, sp, -8
; ?? (start.S:150)
      80002a2c  x29:0011ff60 WA:0011ff60                # sw      zero, 0(t4)
; ?? (start.S:128)
      800029e0  x2:0011fb68 x5:80002f48 x2=80122ab0     # add     sp, sp, t0
; ?? (start.S:119)
      800029bc  x13:0011db70 x6:00000048 x13=0011db28   # sub     a3, a3, t1
; ?? (start.S:160)
      80002a44  x2:0011e71c x11:00000009 WA:0011e720    # sw      a1, 4(sp)
      80002a44  x2:0011eb24 x11:00000009 WA:0011eb28    # sw      a1, 4(sp)
; ?? (start.S:147)
      80002a1c  x5:80002a18 x5=80002f48                 # addi    t0, t0, 1328
; ?? (start.S:148)
      80002a20  x6=80002a20                             # auipc   t1, 0x0
; ?? (start.S:137)
      800029fc  x4:0011e328 x29=0011e328                # mv      t4, tp
; ?? (start.S:151)
      80002a30  x5:80002f48 x5=80002f4c                 # addi    t0, t0, 4
; ?? (start.S:129)
      800029e4  x2:80122ab0 x6:80002f48 x2=0011fb68     # sub     sp, sp, t1
; ?? (start.S:124)
      800029c0  x5=800029c0                             # auipc   t0, 0x0
; ?? (start.S:161)
      80002a48  x2:0011e71c x12:00100000 WA:0011e724    # sw      a2, 8(sp)
      80002a48  x2:0011eb24 x12:00100000 WA:0011eb2c    # sw      a2, 8(sp)
; ?? (start.S:103)
      80002988  x5=80002988                             # auipc   t0, 0x0
; ?? (start.S:148)
      80002a24  x6:80002a20 x6=80002f58                 # addi    t1, t1, 1336
; ?? (start.S:138)
      80002a00  x5:80002f48 x6:80002f48                 # bge     t0, t1, pc + 24
; ?? (start.S:152)
      80002a34  x29:0011ff60 x29=0011ff64               # addi    t4, t4, 4
; ?? (start.S:130)
      800029e8  x2:0011fb68 x7:80002f48 x2=80122ab0     # add     sp, sp, t2
; ?? (start.S:124)
      800029c4  x5:800029c0 x5=80002f48                 # addi    t0, t0, 1416
; ?? (start.S:162)
      80002a4c  x2:0011e71c x13:0011db28 WA:0011e728    # sw      a3, 12(sp)
      80002a4c  x2:0011eb24 x13:0011db28 WA:0011eb30    # sw      a3, 12(sp)
; ?? (start.S:163)
      80002a50  x2:0011eb24 x14:01000000 WA:0011eb34    # sw      a4, 16(sp)
; ?? (start.S:149)
      80002a28  x5:80002f48 x6:80002f58                 # bge     t0, t1, pc + 20
; ?? (start.S:147)
      80002a18  x5=80002a18                             # auipc   t0, 0x0
; ?? (start.S:153)
      80002a38  x5:80002f4c x7:80002f48                 # blt     t0, t2, pc - 12
; ?? (start.S:131)
      800029ec  x2:80122ab0 x28:80002f58 x2=0011fb58    # sub     sp, sp, t3
; ?? (start.S:125)
      800029c8  x6=800029c8                             # auipc   t1, 0x0
; ?? (start.S:163)
      80002a50  x2:0011e71c x14:01000000 WA:0011e72c    # sw      a4, 16(sp)
; ?? (start.S:164)
      80002a54  x1=80002a54                             # auipc   ra, 0x0
      80002a58  x1:80002a54 x1=80002a5c                 # jalr    ra, ra, -796
; ?? (start.S:150)
      80002a2c  x29:0011df20 WA:0011df20                # sw      zero, 0(t4)
; _snrt_init_team (start.c:49)
      80002738  x15:0011ff70 x15:0011ff70 WA:0011ff70   # sw      a5, 0(a5)
; ?? (start.S:158)
      80002a3c  x2:0011ff60 x2=0011ff4c                 # addi    sp, sp, -20
; ?? (start.S:132)
      800029f0  x2:0011fb58 x2=0011fb58                 # andi    sp, sp, -8
; ?? (start.S:125)
      800029cc  x6:800029c8 x6=80002f48                 # addi    t1, t1, 1408
; ?? (start.S:126)
      800029d0  x7=800029d0                             # auipc   t2, 0x0
; ?? (start.S:164)
      80002a54  x1=80002a54                             # auipc   ra, 0x0
; ?? (start.S:147)
      80002a1c  x5:80002a18 x5=80002f48                 # addi    t0, t0, 1328
; ?? (start.S:151)
      80002a30  x5:80002f48 x5=80002f4c                 # addi    t0, t0, 4
; _snrt_init_team (start.c:50)
      8000273c  x15:0011ff70 x14:01000000 WA:0011ff74   # sw      a4, 4(a5)
; ?? (start.S:159)
      80002a40  x2:0011ff4c x10:00000000 WA:0011ff4c    # sw      a0, 0(sp)
; ?? (start.S:133)
      800029f4  x2:0011fb58 x4=0011fb58                 # mv      tp, sp
; ?? (start.S:134)
      800029f8  x2:0011fb58 x2=0011fb58                 # andi    sp, sp, -8
; ?? (start.S:126)
      800029d4  x7:800029d0 x7=80002f48                 # addi    t2, t2, 1400
; ?? (start.S:164)
      80002a58  x1:80002a54 x1=80002a5c                 # jalr    ra, ra, -796
; ?? (start.S:148)
      80002a20  x6=80002a20                             # auipc   t1, 0x0
; _snrt_init_team (start.c:49)
      80002738  x15:0011ff70 x15:0011ff70 WA:0011ff70   # sw      a5, 0(a5)
; ?? (start.S:152)
      80002a34  x29:0011df20 x29=0011df24               # addi    t4, t4, 4
; _snrt_init_team (start.c:51)
      80002740  x14:01000000 RA:01000008 x6=00000000    # lw      t1, 8(a4)
; ?? (start.S:153)
      80002a38  x5:80002f4c x7:80002f48                 # blt     t0, t2, pc - 12
; _snrt_init_team (start.c:51)
      80002744  x15:0011ff70 x6:00000000 WA:0011ff78    # sw      t1, 8(a5)
; ?? (start.S:137)
      800029fc  x4:0011fb58 x29=0011fb58                # mv      t4, tp
; ?? (start.S:127)
      800029d8  x28=800029d8                            # auipc   t3, 0x0
; ?? (start.S:148)
      80002a24  x6:80002a20 x6=80002f58                 # addi    t1, t1, 1336
; _snrt_init_team (start.c:50)
      8000273c  x15:0011ff70 x14:01000000 WA:0011ff74   # sw      a4, 4(a5)
; ?? (start.S:160)
      80002a44  x2:0011ff4c x11:00000009 WA:0011ff50    # sw      a1, 4(sp)
; _snrt_init_team (start.c:51)
      80002740  x14:01000000 RA:01000008 x6=00000000    # lw      t1, 8(a4)
; ?? (start.S:161)
      80002a48  x2:0011ff4c x12:00100000 WA:0011ff54    # sw      a2, 8(sp)
; ?? (start.S:158)
      80002a3c  x2:0011df20 x2=0011df0c                 # addi    sp, sp, -20
; _snrt_init_team (start.c:52)
      80002748  x14:01000000 RA:01000028 x16=00000001   # lw      a6, 40(a4)
; ?? (start.S:138)
      80002a00  x5:80002f48 x6:80002f48                 # bge     t0, t1, pc + 24
; ?? (start.S:127)
      800029dc  x28:800029d8 x28=80002f58               # addi    t3, t3, 1408
; ?? (start.S:147)
      80002a18  x5=80002a18                             # auipc   t0, 0x0
; ?? (start.S:149)
      80002a28  x5:80002f48 x6:80002f58                 # bge     t0, t1, pc + 20
; ?? (start.S:150)
      80002a2c  x29:0011e328 WA:0011e328                # sw      zero, 0(t4)
; _snrt_init_team (start.c:51)
      80002744  x15:0011ff70 x6:00000000 WA:0011ff78    # sw      t1, 8(a5)
; ?? (start.S:162)
      80002a4c  x2:0011ff4c x13:0011db28 WA:0011ff58    # sw      a3, 12(sp)
; ?? (start.S:159)
      80002a40  x2:0011df0c x10:00000008 WA:0011df0c    # sw      a0, 0(sp)
; ?? (start.S:160)
      80002a44  x2:0011df0c x11:00000009 WA:0011df10    # sw      a1, 4(sp)
; ?? (start.S:147)
      80002a1c  x5:80002a18 x5=80002f48                 # addi    t0, t0, 1328
; ?? (start.S:128)
      800029e0  x2:0011f760 x5:80002f48 x2=801226a8     # add     sp, sp, t0
; ?? (start.S:103)
      8000298c  x5:80002988 RA:80002d08 x5=00000088     # lw      t0, 896(t0)
; ?? (start.S:151)
      80002a30  x5:80002f48 x5=80002f4c                 # addi    t0, t0, 4
; _snrt_init_team (start.c:52)
      80002748  x14:01000000 RA:01000028 x16=00000001   # lw      a6, 40(a4)
; ?? (start.S:163)
      80002a50  x2:0011ff4c x14:01000000 WA:0011ff5c    # sw      a4, 16(sp)
; _snrt_init_team (start.c:53)
      8000274c  x14:01000000 RA:0100002c x17=00000001   # lw      a7, 44(a4)
; ?? (start.S:161)
      80002a48  x2:0011df0c x12:00100000 WA:0011df14    # sw      a2, 8(sp)
; ?? (start.S:148)
      80002a20  x6=80002a20                             # auipc   t1, 0x0
; ?? (start.S:129)
      800029e4  x2:801226a8 x6:80002f48 x2=0011f760     # sub     sp, sp, t1
; ?? (start.S:104)
      80002990  x13:0011fff8 x5:00000088 x13=0011ff70   # sub     a3, a3, t0
; ?? (start.S:152)
      80002a34  x29:0011e328 x29=0011e32c               # addi    t4, t4, 4
; _snrt_init_team (start.c:53)
      8000274c  x14:01000000 RA:0100002c x17=00000001   # lw      a7, 44(a4)
; ?? (start.S:164)
      80002a54  x1=80002a54                             # auipc   ra, 0x0
; _snrt_init_team (start.c:52)
      80002750  x14:01000000 RA:01000004 x5=00000009    # lw      t0, 4(a4)
; ?? (start.S:162)
      80002a4c  x2:0011df0c x13:0011db28 WA:0011df18    # sw      a3, 12(sp)
; ?? (start.S:148)
      80002a24  x6:80002a20 x6=80002f58                 # addi    t1, t1, 1336
; ?? (start.S:130)
      800029e8  x2:0011f760 x7:80002f48 x2=801226a8     # add     sp, sp, t2
; ?? (start.S:105)
      80002994  x13:0011ff70 x15=0011ff70               # mv      a5, a3
; ?? (start.S:153)
      80002a38  x5:80002f4c x7:80002f48                 # blt     t0, t2, pc - 12
; _snrt_init_team (start.c:52)
      80002750  x14:01000000 RA:01000004 x5=00000009    # lw      t0, 4(a4)
; ?? (start.S:164)
      80002a58  x1:80002a54 x1=80002a5c                 # jalr    ra, ra, -796
; _snrt_init_team (start.c:52)
      80002754  x17:00000001 x16:00000001 x16=00000001  # mul     a6, a7, a6
; _snrt_init_team (start.c:49)
      80002738  x15:0011ff70 x15:0011ff70 WA:0011ff70   # sw      a5, 0(a5)
; ?? (start.S:163)
      80002a50  x2:0011df0c x14:01000000 WA:0011df1c    # sw      a4, 16(sp)
; ?? (start.S:149)
      80002a28  x5:80002f48 x6:80002f58                 # bge     t0, t1, pc + 20
; ?? (start.S:131)
      800029ec  x2:801226a8 x28:80002f58 x2=0011f750    # sub     sp, sp, t3
; ?? (start.S:108)
      80002998  x7=80002998                             # auipc   t2, 0x0
; ?? (start.S:158)
      80002a3c  x2:0011e328 x2=0011e314                 # addi    sp, sp, -20
; ?? (start.S:108)
      8000299c  x7:80002998 RA:80002d0c x7=0000000a     # lw      t2, 884(t2)
; _snrt_init_team (start.c:52)
      80002758  x16:00000001 x5:00000009 x10=00000009   # mul     a0, a6, t0
      80002754  x17:00000001 x16:00000001 x16=00000001  # mul     a6, a7, a6
      8000275c  x15:0011ff70 x10:00000009 WA:0011ff7c   # sw      a0, 12(a5)
      80002758  x16:00000001 x5:00000009 x10=00000009   # mul     a0, a6, t0
; snrt_hartid (snrt.h:181)
;  in _snrt_init_team (start.c:55)
      80002760  x17=00000006                            # csrr    a7, mhartid
; ?? (start.S:132)
      800029f0  x2:0011f750 x2=0011f750                 # andi    sp, sp, -8
; ?? (start.S:110)
      800029a0  x10:00000004 x7:0000000a x5=00001000    # sll     t0, a0, t2
; ?? (start.S:159)
      80002a40  x2:0011e314 x10:00000007 WA:0011e314    # sw      a0, 0(sp)
; _snrt_init_team (start.c:50)
      8000273c  x15:0011ff70 x14:01000000 WA:0011ff74   # sw      a4, 4(a5)
; ?? (start.S:164)
      80002a54  x1=80002a54                             # auipc   ra, 0x0
; ?? (start.S:150)
      80002a2c  x29:0011fb58 WA:0011fb58                # sw      zero, 0(t4)
; _snrt_init_team (start.c:52)
      8000275c  x15:0011ff70 x10:00000009 WA:0011ff7c   # sw      a0, 12(a5)
; _snrt_init_team (start.c:55)
      80002764  x17:00000006 x6:00000000 x10=00000006   # sub     a0, a7, t1
; ?? (start.S:133)
      800029f4  x2:0011f750 x4=0011f750                 # mv      tp, sp
; ?? (start.S:111)
      800029a4  x11:00000009 x7:0000000a x6=00002400    # sll     t1, a1, t2
; ?? (start.S:160)
      80002a44  x2:0011e314 x11:00000009 WA:0011e318    # sw      a1, 4(sp)
; _snrt_init_team (start.c:51)
      80002740  x14:01000000 RA:01000008 x6=00000000    # lw      t1, 8(a4)
; ?? (start.S:164)
      80002a58  x1:80002a54 x1=80002a5c                 # jalr    ra, ra, -796
; ?? (start.S:151)
      80002a30  x5:80002f48 x5=80002f4c                 # addi    t0, t0, 4
; snrt_hartid (snrt.h:181)
;  in _snrt_init_team (start.c:55)
      80002760  x17=00000005                            # csrr    a7, mhartid
; _snrt_init_team (start.c:55)
      80002768  x10:00000006 x5:00000009 x10=00000000   # divu    a0, a0, t0
; ?? (start.S:134)
      800029f8  x2:0011f750 x2=0011f750                 # andi    sp, sp, -8
; ?? (start.S:112)
      800029a8  x13:0011ff70 x5:00001000 x2=0011ef70    # sub     sp, a3, t0
; ?? (start.S:161)
      80002a48  x2:0011e314 x12:00100000 WA:0011e31c    # sw      a2, 8(sp)
; _snrt_init_team (start.c:51)
      80002744  x15:0011ff70 x6:00000000 WA:0011ff78    # sw      t1, 8(a5)
; _snrt_init_team (start.c:49)
      80002738  x15:0011ff70 x15:0011ff70 WA:0011ff70   # sw      a5, 0(a5)
; ?? (start.S:152)
      80002a34  x29:0011fb58 x29=0011fb5c               # addi    t4, t4, 4
; _snrt_init_team (start.c:55)
      80002764  x17:00000005 x6:00000000 x10=00000005   # sub     a0, a7, t1
; _snrt_init_team (start.c:54)
      8000276c  x15:0011ff70 x10:00000000 WA:0011ff80   # sw      a0, 16(a5)
; ?? (start.S:137)
      800029fc  x4:0011f750 x29=0011f750                # mv      t4, tp
; ?? (start.S:113)
      800029ac  x13:0011ff70 x6:00002400 x13=0011db70   # sub     a3, a3, t1
; ?? (start.S:116)
      800029b0  x10:00000004 x5=00000020                # slli    t0, a0, 3
; _snrt_init_team (start.c:52)
      80002748  x14:01000000 RA:01000028 x16=00000001   # lw      a6, 40(a4)
; _snrt_init_team (start.c:50)
      8000273c  x15:0011ff70 x14:01000000 WA:0011ff74   # sw      a4, 4(a5)
; ?? (start.S:153)
      80002a38  x5:80002f4c x7:80002f48                 # blt     t0, t2, pc - 12
; _snrt_init_team (start.c:55)
      80002768  x10:00000005 x5:00000009 x10=00000000   # divu    a0, a0, t0
; _snrt_init_team (start.c:56)
      80002770  x15:0011ff70 x16:00000001 WA:0011ff84   # sw      a6, 20(a5)
; ?? (start.S:138)
      80002a00  x5:80002f48 x6:80002f48                 # bge     t0, t1, pc + 24
; ?? (start.S:162)
      80002a4c  x2:0011e314 x13:0011db28 WA:0011e320    # sw      a3, 12(sp)
; ?? (start.S:117)
      800029b4  x11:00000009 x6=00000048                # slli    t1, a1, 3
; _snrt_init_team (start.c:53)
      8000274c  x14:01000000 RA:0100002c x17=00000001   # lw      a7, 44(a4)
; _snrt_init_team (start.c:51)
      80002740  x14:01000000 RA:01000008 x6=00000000    # lw      t1, 8(a4)
; ?? (start.S:158)
      80002a3c  x2:0011fb58 x2=0011fb44                 # addi    sp, sp, -20
; _snrt_init_team (start.c:54)
      8000276c  x15:0011ff70 x10:00000000 WA:0011ff80   # sw      a0, 16(a5)
; ?? (start.S:159)
      80002a40  x2:0011fb44 x10:00000001 WA:0011fb44    # sw      a0, 0(sp)
; ?? (start.S:147)
      80002a18  x5=80002a18                             # auipc   t0, 0x0
; ?? (start.S:163)
      80002a50  x2:0011e314 x14:01000000 WA:0011e324    # sw      a4, 16(sp)
; ?? (start.S:118)
      800029b8  x2:0011ef70 x5:00000020 x2=0011ef50     # sub     sp, sp, t0
; _snrt_init_team (start.c:52)
      80002750  x14:01000000 RA:01000004 x5=00000009    # lw      t0, 4(a4)
; _snrt_init_team (start.c:51)
      80002744  x15:0011ff70 x6:00000000 WA:0011ff78    # sw      t1, 8(a5)
; _snrt_init_team (start.c:57)
      80002774  x15:0011ff70 x6:00000000 WA:0011ff88    # sw      t1, 24(a5)
; _snrt_init_team (start.c:56)
      80002770  x15:0011ff70 x16:00000001 WA:0011ff84   # sw      a6, 20(a5)
; _snrt_init_team (start.c:57)
      80002774  x15:0011ff70 x6:00000000 WA:0011ff88    # sw      t1, 24(a5)
; ?? (start.S:147)
      80002a1c  x5:80002a18 x5=80002f48                 # addi    t0, t0, 1328
; ?? (start.S:148)
      80002a20  x6=80002a20                             # auipc   t1, 0x0
; ?? (start.S:119)
      800029bc  x13:0011db70 x6:00000048 x13=0011db28   # sub     a3, a3, t1
; _snrt_init_team (start.c:52)
      80002754  x17:00000001 x16:00000001 x16=00000001  # mul     a6, a7, a6
      80002748  x14:01000000 RA:01000028 x16=00000001   # lw      a6, 40(a4)
; _snrt_init_team (start.c:58)
      80002778  x15:0011ff70 x11:00000009 WA:0011ff8c   # sw      a1, 28(a5)
; ?? (start.S:160)
      80002a44  x2:0011fb44 x11:00000009 WA:0011fb48    # sw      a1, 4(sp)
; _snrt_init_team (start.c:58)
      80002778  x15:0011ff70 x11:00000009 WA:0011ff8c   # sw      a1, 28(a5)
; ?? (start.S:164)
      80002a54  x1=80002a54                             # auipc   ra, 0x0
; ?? (start.S:148)
      80002a24  x6:80002a20 x6=80002f58                 # addi    t1, t1, 1336
; ?? (start.S:124)
      800029c0  x5=800029c0                             # auipc   t0, 0x0
; _snrt_init_team (start.c:52)
      80002758  x16:00000001 x5:00000009 x10=00000009   # mul     a0, a6, t0
; _snrt_init_team (start.c:53)
      8000274c  x14:01000000 RA:0100002c x17=00000001   # lw      a7, 44(a4)
; _snrt_init_team (start.c:60)
      8000277c  x14:01000000 RA:01000018 x10=80000000   # lw      a0, 24(a4)
; ?? (start.S:161)
      80002a48  x2:0011fb44 x12:00100000 WA:0011fb4c    # sw      a2, 8(sp)
; _snrt_init_team (start.c:60)
      8000277c  x14:01000000 RA:01000018 x10=80000000   # lw      a0, 24(a4)
      80002780  x11=10000000                            # lui     a1, 0x10000
; ?? (start.S:149)
      80002a28  x5:80002f48 x6:80002f58                 # bge     t0, t1, pc + 20
; ?? (start.S:124)
      800029c4  x5:800029c0 x5=80002f48                 # addi    t0, t0, 1416
; _snrt_init_team (start.c:52)
      8000275c  x15:0011ff70 x10:00000009 WA:0011ff7c   # sw      a0, 12(a5)
      80002750  x14:01000000 RA:01000004 x5=00000009    # lw      t0, 4(a4)
; _snrt_init_team (start.c:60)
      80002780  x11=10000000                            # lui     a1, 0x10000
; ?? (start.S:162)
      80002a4c  x2:0011fb44 x13:0011db28 WA:0011fb50    # sw      a3, 12(sp)
; ?? (start.S:164)
      80002a58  x1:80002a54 x1=80002a5c                 # jalr    ra, ra, -796
; ?? (start.S:163)
      80002a50  x2:0011fb44 x14:01000000 WA:0011fb54    # sw      a4, 16(sp)
; _snrt_init_team (start.c:49)
      80002738  x15:0011ff70 x15:0011ff70 WA:0011ff70   # sw      a5, 0(a5)
; ?? (start.S:164)
      80002a54  x1=80002a54                             # auipc   ra, 0x0
; snrt_hartid (snrt.h:181)
;  in _snrt_init_team (start.c:55)
      80002760  x17=00000000                            # csrr    a7, mhartid
; _snrt_init_team (start.c:52)
      80002754  x17:00000001 x16:00000001 x16=00000001  # mul     a6, a7, a6
; _snrt_init_team (start.c:60)
      80002784  x10:80000000 x11:10000000 x10=90000000  # add     a0, a0, a1
      80002784  x10:80000000 x11:10000000 x10=90000000  # add     a0, a0, a1
; ?? (start.S:150)
      80002a2c  x29:0011f750 WA:0011f750                # sw      zero, 0(t4)
; ?? (start.S:125)
      800029c8  x6=800029c8                             # auipc   t1, 0x0
; _snrt_init_team (start.c:50)
      8000273c  x15:0011ff70 x14:01000000 WA:0011ff74   # sw      a4, 4(a5)
; _snrt_init_team (start.c:51)
      80002740  x14:01000000 RA:01000008 x6=00000000    # lw      t1, 8(a4)
; _snrt_init_team (start.c:55)
      80002764  x17:00000000 x6:00000000 x10=00000000   # sub     a0, a7, t1
; _snrt_init_team (start.c:52)
      80002758  x16:00000001 x5:00000009 x10=00000009   # mul     a0, a6, t0
; _snrt_init_team (start.c:59)
      80002788  x15:0011ff70 WA:0011ff94                # sw      zero, 36(a5)
      80002788  x15:0011ff70 WA:0011ff94                # sw      zero, 36(a5)
; ?? (start.S:151)
      80002a30  x5:80002f48 x5=80002f4c                 # addi    t0, t0, 4
; ?? (start.S:125)
      800029cc  x6:800029c8 x6=80002f48                 # addi    t1, t1, 1408
; ?? (start.S:126)
      800029d0  x7=800029d0                             # auipc   t2, 0x0
      800029d4  x7:800029d0 x7=80002f48                 # addi    t2, t2, 1400
; _snrt_init_team (start.c:55)
      80002768  x10:00000000 x5:00000009 x10=00000000   # divu    a0, a0, t0
; _snrt_init_team (start.c:52)
      8000275c  x15:0011ff70 x10:00000009 WA:0011ff7c   # sw      a0, 12(a5)
; _snrt_init_team (start.c:59)
      8000278c  x15:0011ff70 x10:90000000 WA:0011ff90   # sw      a0, 32(a5)
      8000278c  x15:0011ff70 x10:90000000 WA:0011ff90   # sw      a0, 32(a5)
; ?? (start.S:152)
      80002a34  x29:0011f750 x29=0011f754               # addi    t4, t4, 4
; ?? (start.S:153)
      80002a38  x5:80002f4c x7:80002f48                 # blt     t0, t2, pc - 12
; ?? (start.S:158)
      80002a3c  x2:0011f750 x2=0011f73c                 # addi    sp, sp, -20
; ?? (start.S:127)
      800029d8  x28=800029d8                            # auipc   t3, 0x0
; _snrt_init_team (start.c:54)
      8000276c  x15:0011ff70 x10:00000000 WA:0011ff80   # sw      a0, 16(a5)
; snrt_hartid (snrt.h:181)
;  in _snrt_init_team (start.c:55)
      80002760  x17=00000008                            # csrr    a7, mhartid
; _snrt_init_team (start.c:61)
      80002790  x14:01000000 RA:01000020 x10=00000000   # lw      a0, 32(a4)
      80002790  x14:01000000 RA:01000020 x10=00000000   # lw      a0, 32(a4)
; ?? (start.S:164)
      80002a58  x1:80002a54 x1=80002a5c                 # jalr    ra, ra, -796
; _snrt_init_team (start.c:51)
      80002744  x15:0011ff70 x6:00000000 WA:0011ff78    # sw      t1, 8(a5)
; _snrt_init_team (start.c:49)
      80002738  x15:0011ff70 x15:0011ff70 WA:0011ff70   # sw      a5, 0(a5)
; ?? (start.S:127)
      800029dc  x28:800029d8 x28=80002f58               # addi    t3, t3, 1408
; _snrt_init_team (start.c:56)
      80002770  x15:0011ff70 x16:00000001 WA:0011ff84   # sw      a6, 20(a5)
; _snrt_init_team (start.c:55)
      80002764  x17:00000008 x6:00000000 x10=00000008   # sub     a0, a7, t1
; _snrt_init_team (start.c:61)
      80002794  x14:01000000 RA:01000024 x11=00000001   # lw      a1, 36(a4)
      80002794  x14:01000000 RA:01000024 x11=00000001   # lw      a1, 36(a4)
; ?? (start.S:159)
      80002a40  x2:0011f73c x10:00000002 WA:0011f73c    # sw      a0, 0(sp)
; _snrt_init_team (start.c:52)
      80002748  x14:01000000 RA:01000028 x16=00000001   # lw      a6, 40(a4)
; _snrt_init_team (start.c:50)
      8000273c  x15:0011ff70 x14:01000000 WA:0011ff74   # sw      a4, 4(a5)
; ?? (start.S:128)
      800029e0  x2:0011ef50 x5:80002f48 x2=80121e98     # add     sp, sp, t0
; _snrt_init_team (start.c:57)
      80002774  x15:0011ff70 x6:00000000 WA:0011ff88    # sw      t1, 24(a5)
; _snrt_init_team (start.c:55)
      80002768  x10:00000008 x5:00000009 x10=00000000   # divu    a0, a0, t0
; _snrt_init_team (start.c:61)
      80002798  x15:0011ff70 x10:00000000 WA:0011ff98   # sw      a0, 40(a5)
      80002798  x15:0011ff70 x10:00000000 WA:0011ff98   # sw      a0, 40(a5)
      8000279c  x15:0011ff70 x11:00000001 WA:0011ff9c   # sw      a1, 44(a5)
      8000279c  x15:0011ff70 x11:00000001 WA:0011ff9c   # sw      a1, 44(a5)
; _snrt_init_team (start.c:62)
      800027a0  x15:0011ff70 x12:00100000 WA:0011ffa0   # sw      a2, 48(a5)
; ?? (start.S:129)
      800029e4  x2:80121e98 x6:80002f48 x2=0011ef50     # sub     sp, sp, t1
; _snrt_init_team (start.c:58)
      80002778  x15:0011ff70 x11:00000009 WA:0011ff8c   # sw      a1, 28(a5)
; _snrt_init_team (start.c:54)
      8000276c  x15:0011ff70 x10:00000000 WA:0011ff80   # sw      a0, 16(a5)
; ?? (start.S:160)
      80002a44  x2:0011f73c x11:00000009 WA:0011f740    # sw      a1, 4(sp)
; _snrt_init_team (start.c:53)
      8000274c  x14:01000000 RA:0100002c x17=00000001   # lw      a7, 44(a4)
; _snrt_init_team (start.c:62)
      800027a0  x15:0011ff70 x12:00100000 WA:0011ffa0   # sw      a2, 48(a5)
      800027a4  x15:0011ff70 WA:0011ffa4                # sw      zero, 52(a5)
      800027a4  x15:0011ff70 WA:0011ffa4                # sw      zero, 52(a5)
; _snrt_init_team (start.c:63)
      800027a8  x15:0011ff70 x13:0011db28 WA:0011ffa8   # sw      a3, 56(a5)
; _snrt_init_team (start.c:60)
      8000277c  x14:01000000 RA:01000018 x10=80000000   # lw      a0, 24(a4)
; _snrt_init_team (start.c:56)
      80002770  x15:0011ff70 x16:00000001 WA:0011ff84   # sw      a6, 20(a5)
; ?? (start.S:161)
      80002a48  x2:0011f73c x12:00100000 WA:0011f744    # sw      a2, 8(sp)
; _snrt_init_team (start.c:52)
      80002750  x14:01000000 RA:01000004 x5=00000009    # lw      t0, 4(a4)
; _snrt_init_team (start.c:51)
      80002740  x14:01000000 RA:01000008 x6=00000000    # lw      t1, 8(a4)
; _snrt_init_team (start.c:63)
      800027a8  x15:0011ff70 x13:0011db28 WA:0011ffa8   # sw      a3, 56(a5)
; _snrt_init_team (start.c:51)
      80002744  x15:0011ff70 x6:00000000 WA:0011ff78    # sw      t1, 8(a5)
; _snrt_init_team (start.c:63)
      800027ac  x15:0011ff70 WA:0011ffac                # sw      zero, 60(a5)
; _snrt_init_team (start.c:60)
      80002780  x11=10000000                            # lui     a1, 0x10000
; _snrt_init_team (start.c:57)
      80002774  x15:0011ff70 x6:00000000 WA:0011ff88    # sw      t1, 24(a5)
; ?? (start.S:162)
      80002a4c  x2:0011f73c x13:0011db28 WA:0011f748    # sw      a3, 12(sp)
; _snrt_init_team (start.c:52)
      80002754  x17:00000001 x16:00000001 x16=00000001  # mul     a6, a7, a6
      80002758  x16:00000001 x5:00000009 x10=00000009   # mul     a0, a6, t0
; _snrt_init_team (start.c:63)
      800027ac  x15:0011ff70 WA:0011ffac                # sw      zero, 60(a5)
; _snrt_init_team (start.c:64)
      800027b0  x14:01000000 RA:01000010 x10=00020000   # lw      a0, 16(a4)
      800027b0  x14:01000000 RA:01000010 x10=00020000   # lw      a0, 16(a4)
; _snrt_init_team (start.c:60)
      80002784  x10:80000000 x11:10000000 x10=90000000  # add     a0, a0, a1
; _snrt_init_team (start.c:58)
      80002778  x15:0011ff70 x11:00000009 WA:0011ff8c   # sw      a1, 28(a5)
; ?? (start.S:163)
      80002a50  x2:0011f73c x14:01000000 WA:0011f74c    # sw      a4, 16(sp)
; ?? (start.S:164)
      80002a54  x1=80002a54                             # auipc   ra, 0x0
      80002a58  x1:80002a54 x1=80002a5c                 # jalr    ra, ra, -796
; _snrt_init_team (start.c:52)
      80002748  x14:01000000 RA:01000028 x16=00000001   # lw      a6, 40(a4)
; _snrt_init_team (start.c:64)
      800027b4  x12:00100000 x10:00020000 x16=00120000  # add     a6, a2, a0
; _snrt_init_team (start.c:53)
      8000274c  x14:01000000 RA:0100002c x17=00000001   # lw      a7, 44(a4)
; _snrt_init_team (start.c:59)
      80002788  x15:0011ff70 WA:0011ff94                # sw      zero, 36(a5)
; _snrt_init_team (start.c:52)
      80002750  x14:01000000 RA:01000004 x5=00000009    # lw      t0, 4(a4)
; ?? (start.S:130)
      800029e8  x2:0011ef50 x7:80002f48 x2=80121e98     # add     sp, sp, t2
; _snrt_init_team (start.c:52)
      80002754  x17:00000001 x16:00000001 x16=00000001  # mul     a6, a7, a6
; _snrt_init_team (start.c:49)
      80002738  x15:0011ff70 x15:0011ff70 WA:0011ff70   # sw      a5, 0(a5)
; _snrt_init_team (start.c:52)
      80002758  x16:00000001 x5:00000009 x10=00000009   # mul     a0, a6, t0
; _snrt_init_team (start.c:50)
      8000273c  x15:0011ff70 x14:01000000 WA:0011ff74   # sw      a4, 4(a5)
; _snrt_init_team (start.c:64)
      800027b8  x16:00120000 x11=00120190               # addi    a1, a6, 400
; _snrt_init_team (start.c:59)
      8000278c  x15:0011ff70 x10:90000000 WA:0011ff90   # sw      a0, 32(a5)
; _snrt_init_team (start.c:52)
      8000275c  x15:0011ff70 x10:00000009 WA:0011ff7c   # sw      a0, 12(a5)
; ?? (start.S:131)
      800029ec  x2:80121e98 x28:80002f58 x2=0011ef40    # sub     sp, sp, t3
; _snrt_init_team (start.c:64)
      800027b4  x12:00100000 x10:00020000 x16=00120000  # add     a6, a2, a0
      800027b8  x16:00120000 x11=00120190               # addi    a1, a6, 400
      800027bc  x15:0011ff70 x11:00120190 WA:0011ffe0   # sw      a1, 112(a5)
; _snrt_init_team (start.c:51)
      80002740  x14:01000000 RA:01000008 x6=00000000    # lw      t1, 8(a4)
; _snrt_init_team (start.c:64)
      800027bc  x15:0011ff70 x11:00120190 WA:0011ffe0   # sw      a1, 112(a5)
; _snrt_init_team (start.c:61)
      80002790  x14:01000000 RA:01000020 x10=00000000   # lw      a0, 32(a4)
; _snrt_init_team (start.c:67)
      800027c0  x16:00120000 x10:00020000 x5=00000000   # sltu    t0, a6, a0
; ?? (start.S:132)
      800029f0  x2:0011ef40 x2=0011ef40                 # andi    sp, sp, -8
; ?? (start.S:133)
      800029f4  x2:0011ef40 x4=0011ef40                 # mv      tp, sp
; ?? (start.S:134)
      800029f8  x2:0011ef40 x2=0011ef40                 # andi    sp, sp, -8
; _snrt_init_team (start.c:67)
      800027c0  x16:00120000 x10:00020000 x5=00000000   # sltu    t0, a6, a0
; _snrt_init_team (start.c:51)
      80002744  x15:0011ff70 x6:00000000 WA:0011ff78    # sw      t1, 8(a5)
; _snrt_init_team (start.c:61)
      80002794  x14:01000000 RA:01000024 x11=00000001   # lw      a1, 36(a4)
; snrt_hartid (snrt.h:181)
;  in _snrt_init_team (start.c:55)
      80002760  x17=00000007                            # csrr    a7, mhartid
; _snrt_init_team (start.c:67)
      800027c4  x10:00020000 x11=00010000               # srli    a1, a0, 1
; _snrt_init_team (start.c:60)
      8000277c  x14:01000000 RA:01000018 x10=80000000   # lw      a0, 24(a4)
      80002780  x11=10000000                            # lui     a1, 0x10000
; ?? (start.S:137)
      800029fc  x4:0011ef40 x29=0011ef40                # mv      t4, tp
; _snrt_init_team (start.c:67)
      800027c4  x10:00020000 x11=00010000               # srli    a1, a0, 1
; _snrt_init_team (start.c:52)
      80002748  x14:01000000 RA:01000028 x16=00000001   # lw      a6, 40(a4)
; _snrt_init_team (start.c:61)
      80002798  x15:0011ff70 x10:00000000 WA:0011ff98   # sw      a0, 40(a5)
; _snrt_init_team (start.c:55)
      80002764  x17:00000007 x6:00000000 x10=00000007   # sub     a0, a7, t1
; _snrt_init_team (start.c:61)
      8000279c  x15:0011ff70 x11:00000001 WA:0011ff9c   # sw      a1, 44(a5)
; _snrt_init_team (start.c:67)
      800027c8  x16:00120000 x11:00010000 x6=00130000   # add     t1, a6, a1
; _snrt_init_team (start.c:52)
      8000275c  x15:0011ff70 x10:00000009 WA:0011ff7c   # sw      a0, 12(a5)
; _snrt_init_team (start.c:60)
      80002784  x10:80000000 x11:10000000 x10=90000000  # add     a0, a0, a1
; ?? (start.S:138)
      80002a00  x5:80002f48 x6:80002f48                 # bge     t0, t1, pc + 24
; _snrt_init_team (start.c:67)
      800027c8  x16:00120000 x11:00010000 x6=00130000   # add     t1, a6, a1
; ?? (start.S:147)
      80002a18  x5=80002a18                             # auipc   t0, 0x0
; _snrt_init_team (start.c:53)
      8000274c  x14:01000000 RA:0100002c x17=00000001   # lw      a7, 44(a4)
; ?? (start.S:147)
      80002a1c  x5:80002a18 x5=80002f48                 # addi    t0, t0, 1328
; _snrt_init_team (start.c:62)
      800027a0  x15:0011ff70 x12:00100000 WA:0011ffa0   # sw      a2, 48(a5)
; _snrt_init_team (start.c:67)
      800027cc  x6:00130000 x16:00120000 x11=00000000   # sltu    a1, t1, a6
; _snrt_init_team (start.c:59)
      80002788  x15:0011ff70 WA:0011ff94                # sw      zero, 36(a5)
; _snrt_init_team (start.c:67)
      800027cc  x6:00130000 x16:00120000 x11=00000000   # sltu    a1, t1, a6
; _snrt_init_team (start.c:55)
      80002768  x10:00000007 x5:00000009 x10=00000000   # divu    a0, a0, t0
; _snrt_init_team (start.c:52)
      80002750  x14:01000000 RA:01000004 x5=00000009    # lw      t0, 4(a4)
; ?? (start.S:148)
      80002a20  x6=80002a20                             # auipc   t1, 0x0
; _snrt_init_team (start.c:62)
      800027a4  x15:0011ff70 WA:0011ffa4                # sw      zero, 52(a5)
; snrt_hartid (snrt.h:181)
;  in _snrt_init_team (start.c:55)
      80002760  x17=00000001                            # csrr    a7, mhartid
; _snrt_init_team (start.c:67)
      800027d0  x5:00000000 x11:00000000 x11=00000000   # add     a1, t0, a1
; _snrt_init_team (start.c:66)
      800027d4  x15:0011ff70 x6:00130000 WA:0011ffb0    # sw      t1, 64(a5)
; _snrt_init_team (start.c:67)
      800027d0  x5:00000000 x11:00000000 x11=00000000   # add     a1, t0, a1
; _snrt_init_team (start.c:66)
      800027d4  x15:0011ff70 x6:00130000 WA:0011ffb0    # sw      t1, 64(a5)
; _snrt_init_team (start.c:52)
      80002754  x17:00000001 x16:00000001 x16=00000001  # mul     a6, a7, a6
; ?? (start.S:148)
      80002a24  x6:80002a20 x6=80002f58                 # addi    t1, t1, 1336
; _snrt_init_team (start.c:63)
      800027a8  x15:0011ff70 x13:0011db28 WA:0011ffa8   # sw      a3, 56(a5)
; _snrt_init_team (start.c:55)
      80002764  x17:00000001 x6:00000000 x10=00000001   # sub     a0, a7, t1
; _snrt_init_team (start.c:59)
      8000278c  x15:0011ff70 x10:90000000 WA:0011ff90   # sw      a0, 32(a5)
; _snrt_init_team (start.c:66)
      800027d8  x15:0011ff70 x11:00000000 WA:0011ffb4   # sw      a1, 68(a5)
; _snrt_init_team (start.c:54)
      8000276c  x15:0011ff70 x10:00000000 WA:0011ff80   # sw      a0, 16(a5)
; _snrt_init_team (start.c:66)
      800027d8  x15:0011ff70 x11:00000000 WA:0011ffb4   # sw      a1, 68(a5)
; _snrt_init_team (start.c:52)
      80002758  x16:00000001 x5:00000009 x10=00000009   # mul     a0, a6, t0
; ?? (start.S:149)
      80002a28  x5:80002f48 x6:80002f58                 # bge     t0, t1, pc + 20
; _snrt_init_team (start.c:63)
      800027ac  x15:0011ff70 WA:0011ffac                # sw      zero, 60(a5)
; _snrt_init_team (start.c:55)
      80002768  x10:00000001 x5:00000009 x10=00000000   # divu    a0, a0, t0
; _snrt_init_team (start.c:61)
      80002790  x14:01000000 RA:01000020 x10=00000000   # lw      a0, 32(a4)
; _snrt_init_team (start.c:68)
      800027dc  x10:00020000 x10=00040000               # slli    a0, a0, 1
      800027e0  x10:00040000 x12:00100000 x11=00140000  # add     a1, a0, a2
      800027dc  x10:00020000 x10=00040000               # slli    a0, a0, 1
; _snrt_init_team (start.c:52)
      8000275c  x15:0011ff70 x10:00000009 WA:0011ff7c   # sw      a0, 12(a5)
; ?? (start.S:150)
      80002a2c  x29:0011ef40 WA:0011ef40                # sw      zero, 0(t4)
; _snrt_init_team (start.c:64)
      800027b0  x14:01000000 RA:01000010 x10=00020000   # lw      a0, 16(a4)
; _snrt_init_team (start.c:54)
      8000276c  x15:0011ff70 x10:00000000 WA:0011ff80   # sw      a0, 16(a5)
; _snrt_init_team (start.c:56)
      80002770  x15:0011ff70 x16:00000001 WA:0011ff84   # sw      a6, 20(a5)
      80002770  x15:0011ff70 x16:00000001 WA:0011ff84   # sw      a6, 20(a5)
; _snrt_init_team (start.c:68)
      800027e4  x11:00140000 x10:00040000 x10=00000000  # sltu    a0, a1, a0
      800027e0  x10:00040000 x12:00100000 x11=00140000  # add     a1, a0, a2
; snrt_hartid (snrt.h:181)
;  in _snrt_init_team (start.c:55)
      80002760  x17=00000002                            # csrr    a7, mhartid
; ?? (start.S:151)
      80002a30  x5:80002f48 x5=80002f4c                 # addi    t0, t0, 4
; _snrt_init_team (start.c:64)
      800027b4  x12:00100000 x10:00020000 x16=00120000  # add     a6, a2, a0
      800027b8  x16:00120000 x11=00120190               # addi    a1, a6, 400
; _snrt_init_team (start.c:57)
      80002774  x15:0011ff70 x6:00000000 WA:0011ff88    # sw      t1, 24(a5)
      80002774  x15:0011ff70 x6:00000000 WA:0011ff88    # sw      t1, 24(a5)
; _snrt_init_team (start.c:68)
      800027e8  x15:0011ff70 x11:00140000 WA:0011ffb8   # sw      a1, 72(a5)
      800027e4  x11:00140000 x10:00040000 x10=00000000  # sltu    a0, a1, a0
; _snrt_init_team (start.c:55)
      80002764  x17:00000002 x6:00000000 x10=00000002   # sub     a0, a7, t1
; ?? (start.S:152)
      80002a34  x29:0011ef40 x29=0011ef44               # addi    t4, t4, 4
; _snrt_init_team (start.c:61)
      80002794  x14:01000000 RA:01000024 x11=00000001   # lw      a1, 36(a4)
; _snrt_init_team (start.c:64)
      800027bc  x15:0011ff70 x11:00120190 WA:0011ffe0   # sw      a1, 112(a5)
; _snrt_init_team (start.c:58)
      80002778  x15:0011ff70 x11:00000009 WA:0011ff8c   # sw      a1, 28(a5)
      80002778  x15:0011ff70 x11:00000009 WA:0011ff8c   # sw      a1, 28(a5)
; _snrt_init_team (start.c:68)
      800027ec  x15:0011ff70 x10:00000000 WA:0011ffbc   # sw      a0, 76(a5)
      800027e8  x15:0011ff70 x11:00140000 WA:0011ffb8   # sw      a1, 72(a5)
; _snrt_init_team (start.c:55)
      80002768  x10:00000002 x5:00000009 x10=00000000   # divu    a0, a0, t0
; ?? (start.S:153)
      80002a38  x5:80002f4c x7:80002f48                 # blt     t0, t2, pc - 12
; _snrt_init_team (start.c:61)
      80002798  x15:0011ff70 x10:00000000 WA:0011ff98   # sw      a0, 40(a5)
; _snrt_init_team (start.c:67)
      800027c0  x16:00120000 x10:00020000 x5=00000000   # sltu    t0, a6, a0
; _snrt_init_team (start.c:61)
      8000279c  x15:0011ff70 x11:00000001 WA:0011ff9c   # sw      a1, 44(a5)
; _snrt_init_team (start.c:60)
      8000277c  x14:01000000 RA:01000018 x10=80000000   # lw      a0, 24(a4)
      8000277c  x14:01000000 RA:01000018 x10=80000000   # lw      a0, 24(a4)
; _snrt_init_team (start.c:71)
      800027f0  x15:0011ff70 WA:0011ffd8                # sw      zero, 104(a5)
; _snrt_init_team (start.c:68)
      800027ec  x15:0011ff70 x10:00000000 WA:0011ffbc   # sw      a0, 76(a5)
; _snrt_init_team (start.c:54)
      8000276c  x15:0011ff70 x10:00000000 WA:0011ff80   # sw      a0, 16(a5)
; ?? (start.S:158)
      80002a3c  x2:0011ef40 x2=0011ef2c                 # addi    sp, sp, -20
; _snrt_init_team (start.c:67)
      800027c4  x10:00020000 x11=00010000               # srli    a1, a0, 1
; _snrt_init_team (start.c:62)
      800027a0  x15:0011ff70 x12:00100000 WA:0011ffa0   # sw      a2, 48(a5)
; _snrt_init_team (start.c:60)
      80002780  x11=10000000                            # lui     a1, 0x10000
      80002780  x11=10000000                            # lui     a1, 0x10000
; _snrt_init_team (start.c:72)
      800027f4  x15:0011ff70 WA:0011ffdc                # sw      zero, 108(a5)
; _snrt_init_team (start.c:60)
      80002784  x10:80000000 x11:10000000 x10=90000000  # add     a0, a0, a1
; _snrt_init_team (start.c:71)
      800027f0  x15:0011ff70 WA:0011ffd8                # sw      zero, 104(a5)
; _snrt_init_team (start.c:56)
      80002770  x15:0011ff70 x16:00000001 WA:0011ff84   # sw      a6, 20(a5)
; ?? (start.S:159)
      80002a40  x2:0011ef2c x10:00000004 WA:0011ef2c    # sw      a0, 0(sp)
; _snrt_init_team (start.c:67)
      800027c8  x16:00120000 x11:00010000 x6=00130000   # add     t1, a6, a1
; _snrt_init_team (start.c:62)
      800027a4  x15:0011ff70 WA:0011ffa4                # sw      zero, 52(a5)
; _snrt_init_team (start.c:60)
      80002784  x10:80000000 x11:10000000 x10=90000000  # add     a0, a0, a1
; _snrt_init_team (start.c:75)
      800027f8  x10=00000000                            # lui     a0, 0x0
; _snrt_init_team (start.c:59)
      80002788  x15:0011ff70 WA:0011ff94                # sw      zero, 36(a5)
; _snrt_init_team (start.c:72)
      800027f4  x15:0011ff70 WA:0011ffdc                # sw      zero, 108(a5)
; _snrt_init_team (start.c:75)
      800027f8  x10=00000000                            # lui     a0, 0x0
; ?? (start.S:160)
      80002a44  x2:0011ef2c x11:00000009 WA:0011ef30    # sw      a1, 4(sp)
; _snrt_init_team (start.c:67)
      800027cc  x6:00130000 x16:00120000 x11=00000000   # sltu    a1, t1, a6
      800027d0  x5:00000000 x11:00000000 x11=00000000   # add     a1, t0, a1
; _snrt_init_team (start.c:59)
      80002788  x15:0011ff70 WA:0011ff94                # sw      zero, 36(a5)
; _snrt_init_team (start.c:75)
      800027fc  x10:00000000 x4:0011e730 x10=0011e730   # add     a0, a0, tp
; _snrt_init_team (start.c:59)
      8000278c  x15:0011ff70 x10:90000000 WA:0011ff90   # sw      a0, 32(a5)
; _snrt_init_team (start.c:57)
      80002774  x15:0011ff70 x6:00000000 WA:0011ff88    # sw      t1, 24(a5)
; _snrt_init_team (start.c:75)
      800027fc  x10:00000000 x4:0011eb38 x10=0011eb38   # add     a0, a0, tp
      80002800  x10:0011eb38 x15:0011ff70 WA:0011eb38   # sw      a5, 0(a0)
; _snrt_init_team (start.c:63)
      800027a8  x15:0011ff70 x13:0011db28 WA:0011ffa8   # sw      a3, 56(a5)
; _snrt_init_team (start.c:66)
      800027d4  x15:0011ff70 x6:00130000 WA:0011ffb0    # sw      t1, 64(a5)
; _snrt_init_team (start.c:59)
      8000278c  x15:0011ff70 x10:90000000 WA:0011ff90   # sw      a0, 32(a5)
; _snrt_init_team (start.c:75)
      80002800  x10:0011e730 x15:0011ff70 WA:0011e730   # sw      a5, 0(a0)
; _snrt_init_team (start.c:61)
      80002790  x14:01000000 RA:01000020 x10=00000000   # lw      a0, 32(a4)
; _snrt_init_team (start.c:58)
      80002778  x15:0011ff70 x11:00000009 WA:0011ff8c   # sw      a1, 28(a5)
; ?? (start.S:161)
      80002a48  x2:0011ef2c x12:00100000 WA:0011ef34    # sw      a2, 8(sp)
; _snrt_init_team (start.c:77)
      80002804  x15:0011ff70 RA:0011ff70 x10=0011ff70   # lw      a0, 0(a5)
; _snrt_init_team (start.c:63)
      800027ac  x15:0011ff70 WA:0011ffac                # sw      zero, 60(a5)
; _snrt_init_team (start.c:66)
      800027d8  x15:0011ff70 x11:00000000 WA:0011ffb4   # sw      a1, 68(a5)
; _snrt_init_team (start.c:61)
      80002790  x14:01000000 RA:01000020 x10=00000000   # lw      a0, 32(a4)
; _snrt_init_team (start.c:77)
      80002804  x15:0011ff70 RA:0011ff70 x10=0011ff70   # lw      a0, 0(a5)
; _snrt_init_team (start.c:61)
      80002794  x14:01000000 RA:01000024 x11=00000001   # lw      a1, 36(a4)
      80002798  x15:0011ff70 x10:00000000 WA:0011ff98   # sw      a0, 40(a5)
; ?? (start.S:162)
      80002a4c  x2:0011ef2c x13:0011db28 WA:0011ef38    # sw      a3, 12(sp)
; _snrt_init_team (start.c:77)
      80002808  x10:0011ff70 RA:0011ff88 x11=00000000   # lw      a1, 24(a0)
; _snrt_init_team (start.c:64)
      800027b0  x14:01000000 RA:01000010 x10=00020000   # lw      a0, 16(a4)
; _snrt_init_team (start.c:68)
      800027dc  x10:00020000 x10=00040000               # slli    a0, a0, 1
; _snrt_init_team (start.c:61)
      80002794  x14:01000000 RA:01000024 x11=00000001   # lw      a1, 36(a4)
; _snrt_init_team (start.c:77)
      80002808  x10:0011ff70 RA:0011ff88 x11=00000000   # lw      a1, 24(a0)
; _snrt_init_team (start.c:60)
      8000277c  x14:01000000 RA:01000018 x10=80000000   # lw      a0, 24(a4)
; _snrt_init_team (start.c:61)
      8000279c  x15:0011ff70 x11:00000001 WA:0011ff9c   # sw      a1, 44(a5)
; ?? (start.S:163)
      80002a50  x2:0011ef2c x14:01000000 WA:0011ef3c    # sw      a4, 16(sp)
; _snrt_init_team (start.c:78)
      8000280c  x10:0011ff70 RA:0011ff8c x10=00000009   # lw      a0, 28(a0)
; _snrt_init_team (start.c:64)
      800027b4  x12:00100000 x10:00020000 x16=00120000  # add     a6, a2, a0
; _snrt_init_team (start.c:68)
      800027e0  x10:00040000 x12:00100000 x11=00140000  # add     a1, a0, a2
; _snrt_init_team (start.c:61)
      80002798  x15:0011ff70 x10:00000000 WA:0011ff98   # sw      a0, 40(a5)
; _snrt_init_team (start.c:78)
      8000280c  x10:0011ff70 RA:0011ff8c x10=00000009   # lw      a0, 28(a0)
; _snrt_init_team (start.c:60)
      80002780  x11=10000000                            # lui     a1, 0x10000
; _snrt_init_team (start.c:62)
      800027a0  x15:0011ff70 x12:00100000 WA:0011ffa0   # sw      a2, 48(a5)
; ?? (start.S:164)
      80002a54  x1=80002a54                             # auipc   ra, 0x0
; _snrt_init_team (start.c:77)
      80002810  x17:00000005 x11:00000000 x11=00000005  # sub     a1, a7, a1
; _snrt_init_team (start.c:64)
      800027b8  x16:00120000 x11=00120190               # addi    a1, a6, 400
; _snrt_init_team (start.c:68)
      800027e4  x11:00140000 x10:00040000 x10=00000000  # sltu    a0, a1, a0
; _snrt_init_team (start.c:61)
      8000279c  x15:0011ff70 x11:00000001 WA:0011ff9c   # sw      a1, 44(a5)
; _snrt_init_team (start.c:77)
      80002810  x17:00000006 x11:00000000 x11=00000006  # sub     a1, a7, a1
; _snrt_init_team (start.c:60)
      80002784  x10:80000000 x11:10000000 x10=90000000  # add     a0, a0, a1
; _snrt_init_team (start.c:77)
      80002814  x11:00000006 x10:00000009 x10=00000006  # remu    a0, a1, a0
; _snrt_init_team (start.c:62)
      800027a4  x15:0011ff70 WA:0011ffa4                # sw      zero, 52(a5)
; _snrt_init_team (start.c:76)
      80002818  x11=00000000                            # lui     a1, 0x0
; _snrt_init_team (start.c:77)
      80002814  x11:00000005 x10:00000009 x10=00000005  # remu    a0, a1, a0
; _snrt_init_team (start.c:76)
      8000281c  x11:00000000 x4:0011e730 x11=0011e730   # add     a1, a1, tp
; _snrt_init_team (start.c:68)
      800027e8  x15:0011ff70 x11:00140000 WA:0011ffb8   # sw      a1, 72(a5)
; _snrt_init_team (start.c:62)
      800027a0  x15:0011ff70 x12:00100000 WA:0011ffa0   # sw      a2, 48(a5)
; _snrt_init_team (start.c:59)
      80002788  x15:0011ff70 WA:0011ff94                # sw      zero, 36(a5)
      8000278c  x15:0011ff70 x10:90000000 WA:0011ff90   # sw      a0, 32(a5)
; _snrt_init_team (start.c:63)
      800027a8  x15:0011ff70 x13:0011db28 WA:0011ffa8   # sw      a3, 56(a5)
; _snrt_init_team (start.c:64)
      800027bc  x15:0011ff70 x11:00120190 WA:0011ffe0   # sw      a1, 112(a5)
; _snrt_init_team (start.c:76)
      80002818  x11=00000000                            # lui     a1, 0x0
      80002820  x11:0011e730 x10:00000006 WA:0011e734   # sw      a0, 4(a1)
; _snrt_init_team (start.c:68)
      800027ec  x15:0011ff70 x10:00000000 WA:0011ffbc   # sw      a0, 76(a5)
; _snrt_init_team (start.c:62)
      800027a4  x15:0011ff70 WA:0011ffa4                # sw      zero, 52(a5)
; ?? (start.S:164)
      80002a58  x1:80002a54 x1=80002a5c                 # jalr    ra, ra, -796
; _snrt_init_team (start.c:61)
      80002790  x14:01000000 RA:01000020 x10=00000000   # lw      a0, 32(a4)
; _snrt_init_team (start.c:49)
      80002738  x15:0011ff70 x15:0011ff70 WA:0011ff70   # sw      a5, 0(a5)
; _snrt_init_team (start.c:61)
      80002794  x14:01000000 RA:01000024 x11=00000001   # lw      a1, 36(a4)
; _snrt_init_team (start.c:50)
      8000273c  x15:0011ff70 x14:01000000 WA:0011ff74   # sw      a4, 4(a5)
; _snrt_init_team (start.c:61)
      80002798  x15:0011ff70 x10:00000000 WA:0011ff98   # sw      a0, 40(a5)
; _snrt_init_team (start.c:51)
      80002740  x14:01000000 RA:01000008 x6=00000000    # lw      t1, 8(a4)
; _snrt_init_team (start.c:61)
      8000279c  x15:0011ff70 x11:00000001 WA:0011ff9c   # sw      a1, 44(a5)
; _snrt_init_team (start.c:63)
      800027ac  x15:0011ff70 WA:0011ffac                # sw      zero, 60(a5)
; _snrt_init_team (start.c:67)
      800027c0  x16:00120000 x10:00020000 x5=00000000   # sltu    t0, a6, a0
; _snrt_init_team (start.c:76)
      8000281c  x11:00000000 x4:0011eb38 x11=0011eb38   # add     a1, a1, tp
      80002824  x10=00000448                            # li      a0, 1096
; _snrt_init_team (start.c:71)
      800027f0  x15:0011ff70 WA:0011ffd8                # sw      zero, 104(a5)
; _snrt_init_team (start.c:63)
      800027a8  x15:0011ff70 x13:0011db28 WA:0011ffa8   # sw      a3, 56(a5)
; _snrt_init_team (start.c:51)
      80002744  x15:0011ff70 x6:00000000 WA:0011ff78    # sw      t1, 8(a5)
; _snrt_init_team (start.c:62)
      800027a0  x15:0011ff70 x12:00100000 WA:0011ffa0   # sw      a2, 48(a5)
; _snrt_init_team (start.c:64)
      800027b0  x14:01000000 RA:01000010 x10=00020000   # lw      a0, 16(a4)
; _snrt_init_team (start.c:67)
      800027c4  x10:00020000 x11=00010000               # srli    a1, a0, 1
; _snrt_init_team (start.c:76)
      80002820  x11:0011eb38 x10:00000005 WA:0011eb3c   # sw      a0, 4(a1)
; _snrt_init_team (start.c:83)
      80002828  x17:00000006 x10:00000448 x10=000019b0  # mul     a0, a7, a0
; _snrt_init_team (start.c:72)
      800027f4  x15:0011ff70 WA:0011ffdc                # sw      zero, 108(a5)
; _snrt_init_team (start.c:63)
      800027ac  x15:0011ff70 WA:0011ffac                # sw      zero, 60(a5)
; _snrt_init_team (start.c:52)
      80002748  x14:01000000 RA:01000028 x16=00000001   # lw      a6, 40(a4)
; _snrt_init_team (start.c:62)
      800027a4  x15:0011ff70 WA:0011ffa4                # sw      zero, 52(a5)
; _snrt_init_team (start.c:64)
      800027b4  x12:00100000 x10:00020000 x16=00120000  # add     a6, a2, a0
; _snrt_init_team (start.c:67)
      800027c8  x16:00120000 x11:00010000 x6=00130000   # add     t1, a6, a1
; _snrt_init_team (start.c:76)
      80002824  x10=00000448                            # li      a0, 1096
; _snrt_init_team (start.c:83)
      8000282c  x11=8000282c                            # auipc   a1, 0x0
; _snrt_init_team (start.c:75)
      800027f8  x10=00000000                            # lui     a0, 0x0
; _snrt_init_team (start.c:64)
      800027b0  x14:01000000 RA:01000010 x10=00020000   # lw      a0, 16(a4)
; _snrt_init_team (start.c:53)
      8000274c  x14:01000000 RA:0100002c x17=00000001   # lw      a7, 44(a4)
; _snrt_init_team (start.c:63)
      800027a8  x15:0011ff70 x13:0011db28 WA:0011ffa8   # sw      a3, 56(a5)
; _snrt_init_team (start.c:64)
      800027b8  x16:00120000 x11=00120190               # addi    a1, a6, 400
; _snrt_init_team (start.c:67)
      800027cc  x6:00130000 x16:00120000 x11=00000000   # sltu    a1, t1, a6
; _snrt_init_team (start.c:83)
      80002828  x17:00000005 x10:00000448 x10=00001568  # mul     a0, a7, a0
      80002830  x11:8000282c x11=8000301c               # addi    a1, a1, 2032
; _snrt_init_team (start.c:75)
      800027fc  x10:00000000 x4:0011ff60 x10=0011ff60   # add     a0, a0, tp
; _snrt_init_team (start.c:64)
      800027b4  x12:00100000 x10:00020000 x16=00120000  # add     a6, a2, a0
; _snrt_init_team (start.c:52)
      80002750  x14:01000000 RA:01000004 x5=00000009    # lw      t0, 4(a4)
; _snrt_init_team (start.c:63)
      800027ac  x15:0011ff70 WA:0011ffac                # sw      zero, 60(a5)
; _snrt_init_team (start.c:64)
      800027bc  x15:0011ff70 x11:00120190 WA:0011ffe0   # sw      a1, 112(a5)
; _snrt_init_team (start.c:67)
      800027d0  x5:00000000 x11:00000000 x11=00000000   # add     a1, t0, a1
; _snrt_init_team (start.c:83)
      8000282c  x11=8000282c                            # auipc   a1, 0x0
      80002834  x10:000019b0 x11:8000301c x10=800049cc  # add     a0, a0, a1
; _snrt_init_team (start.c:75)
      80002800  x10:0011ff60 x15:0011ff70 WA:0011ff60   # sw      a5, 0(a0)
; _snrt_init_team (start.c:64)
      800027b8  x16:00120000 x11=00120190               # addi    a1, a6, 400
; _snrt_init_team (start.c:52)
      80002754  x17:00000001 x16:00000001 x16=00000001  # mul     a6, a7, a6
; _snrt_init_team (start.c:64)
      800027b0  x14:01000000 RA:01000010 x10=00020000   # lw      a0, 16(a4)
; _snrt_init_team (start.c:67)
      800027c0  x16:00120000 x10:00020000 x5=00000000   # sltu    t0, a6, a0
; _snrt_init_team (start.c:66)
      800027d4  x15:0011ff70 x6:00130000 WA:0011ffb0    # sw      t1, 64(a5)
; _snrt_init_team (start.c:83)
      80002830  x11:8000282c x11=8000301c               # addi    a1, a1, 2032
      80002838  x10:800049cc WA:800049cc                # sw      zero, 0(a0)
; _snrt_init_team (start.c:77)
      80002804  x15:0011ff70 RA:0011ff70 x10=0011ff70   # lw      a0, 0(a5)
; _snrt_init_team (start.c:64)
      800027bc  x15:0011ff70 x11:00120190 WA:0011ffe0   # sw      a1, 112(a5)
; _snrt_init_team (start.c:52)
      80002758  x16:00000001 x5:00000009 x10=00000009   # mul     a0, a6, t0
; _snrt_init_team (start.c:64)
      800027b4  x12:00100000 x10:00020000 x16=00120000  # add     a6, a2, a0
; _snrt_init_team (start.c:67)
      800027c4  x10:00020000 x11=00010000               # srli    a1, a0, 1
; _snrt_init_team (start.c:66)
      800027d8  x15:0011ff70 x11:00000000 WA:0011ffb4   # sw      a1, 68(a5)
; _snrt_init_team (start.c:83)
      80002834  x10:00001568 x11:8000301c x10=80004584  # add     a0, a0, a1
; _snrt_init_team (start.c:86)
      8000283c  x14:01000000 RA:01000030 x17=ffff0000   # lw      a7, 48(a4)
; _snrt_init_team (start.c:83)
      80002838  x10:80004584 WA:80004584                # sw      zero, 0(a0)
; _snrt_init_team (start.c:77)
      80002808  x10:0011ff70 RA:0011ff88 x11=00000000   # lw      a1, 24(a0)
; _snrt_init_team (start.c:67)
      800027c0  x16:00120000 x10:00020000 x5=00000000   # sltu    t0, a6, a0
; _snrt_init_team (start.c:78)
      8000280c  x10:0011ff70 RA:0011ff8c x10=00000009   # lw      a0, 28(a0)
; _snrt_init_team (start.c:67)
      800027c4  x10:00020000 x11=00010000               # srli    a1, a0, 1
; _snrt_init_team (start.c:77)
      80002810  x17:00000000 x11:00000000 x11=00000000  # sub     a1, a7, a1
; _snrt_init_team (start.c:86)
      80002840  x15:0011ff70 x17:ffff0000 WA:0011ffe4   # sw      a7, 116(a5)
      8000283c  x14:01000000 RA:01000030 x17=ffff0000   # lw      a7, 48(a4)
; _snrt_init_team (start.c:52)
      8000275c  x15:0011ff70 x10:00000009 WA:0011ff7c   # sw      a0, 12(a5)
; _snrt_init_team (start.c:64)
      800027b8  x16:00120000 x11=00120190               # addi    a1, a6, 400
; _snrt_init_team (start.c:67)
      800027c8  x16:00120000 x11:00010000 x6=00130000   # add     t1, a6, a1
; _snrt_init_team (start.c:68)
      800027dc  x10:00020000 x10=00040000               # slli    a0, a0, 1
; _snrt_init_team (start.c:67)
      800027c8  x16:00120000 x11:00010000 x6=00130000   # add     t1, a6, a1
; _snrt_init_team (start.c:77)
      80002814  x11:00000000 x10:00000009 x10=00000000  # remu    a0, a1, a0
; _snrt_init_team (start.c:87)
      80002844  x15:0011ff70 x16:00120000 WA:0011ffec   # sw      a6, 124(a5)
; _snrt_init_team (start.c:86)
      80002840  x15:0011ff70 x17:ffff0000 WA:0011ffe4   # sw      a7, 116(a5)
; snrt_hartid (snrt.h:181)
;  in _snrt_init_team (start.c:55)
      80002760  x17=00000004                            # csrr    a7, mhartid
; _snrt_init_team (start.c:64)
      800027bc  x15:0011ff70 x11:00120190 WA:0011ffe0   # sw      a1, 112(a5)
; _snrt_init_team (start.c:67)
      800027cc  x6:00130000 x16:00120000 x11=00000000   # sltu    a1, t1, a6
; _snrt_init_team (start.c:68)
      800027e0  x10:00040000 x12:00100000 x11=00140000  # add     a1, a0, a2
; _snrt_init_team (start.c:67)
      800027cc  x6:00130000 x16:00120000 x11=00000000   # sltu    a1, t1, a6
; _snrt_init_team (start.c:76)
      80002818  x11=00000000                            # lui     a1, 0x0
; _snrt_init_team (start.c:91)
      80002848  x15:0011ff70 WA:0011ffe8                # sw      zero, 120(a5)
; _snrt_init_team (start.c:93)
      8000284c  x16:00120000 x14=00120180               # addi    a4, a6, 384
; _snrt_init_team (start.c:92)
      80002850  x15:0011ff70 x14:00120180 WA:0011fff0   # sw      a4, 128(a5)
; _snrt_init_team (start.c:67)
      800027c0  x16:00120000 x10:00020000 x5=00000000   # sltu    t0, a6, a0
      800027d0  x5:00000000 x11:00000000 x11=00000000   # add     a1, t0, a1
; _snrt_init_team (start.c:68)
      800027e4  x11:00140000 x10:00040000 x10=00000000  # sltu    a0, a1, a0
; _snrt_init_team (start.c:67)
      800027d0  x5:00000000 x11:00000000 x11=00000000   # add     a1, t0, a1
; _snrt_init_team (start.c:76)
      8000281c  x11:00000000 x4:0011ff60 x11=0011ff60   # add     a1, a1, tp
; _snrt_init_team (start.c:87)
      80002844  x15:0011ff70 x16:00120000 WA:0011ffec   # sw      a6, 124(a5)
; _snrt_init_team (start.c:55)
      80002764  x17:00000004 x6:00000000 x10=00000004   # sub     a0, a7, t1
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      80002854  x12:00100000 x10=00100007               # addi    a0, a2, 7
; _snrt_init_team (start.c:67)
      800027c4  x10:00020000 x11=00010000               # srli    a1, a0, 1
; _snrt_init_team (start.c:66)
      800027d4  x15:0011ff70 x6:00130000 WA:0011ffb0    # sw      t1, 64(a5)
; _snrt_init_team (start.c:68)
      800027e8  x15:0011ff70 x11:00140000 WA:0011ffb8   # sw      a1, 72(a5)
; _snrt_init_team (start.c:66)
      800027d4  x15:0011ff70 x6:00130000 WA:0011ffb0    # sw      t1, 64(a5)
; _snrt_init_team (start.c:76)
      80002820  x11:0011ff60 x10:00000000 WA:0011ff64   # sw      a0, 4(a1)
; _snrt_init_team (start.c:91)
      80002848  x15:0011ff70 WA:0011ffe8                # sw      zero, 120(a5)
; _snrt_init_team (start.c:55)
      80002768  x10:00000004 x5:00000009 x10=00000000   # divu    a0, a0, t0
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      80002858  x10:00100007 x10=00100000               # andi    a0, a0, -8
; _snrt_init_team (start.c:67)
      800027c8  x16:00120000 x11:00010000 x6=00130000   # add     t1, a6, a1
; _snrt_init_team (start.c:66)
      800027d8  x15:0011ff70 x11:00000000 WA:0011ffb4   # sw      a1, 68(a5)
; _snrt_init_team (start.c:68)
      800027ec  x15:0011ff70 x10:00000000 WA:0011ffbc   # sw      a0, 76(a5)
; _snrt_init_team (start.c:66)
      800027d8  x15:0011ff70 x11:00000000 WA:0011ffb4   # sw      a1, 68(a5)
; _snrt_init_team (start.c:76)
      80002824  x10=00000448                            # li      a0, 1096
; _snrt_init_team (start.c:93)
      8000284c  x16:00120000 x14=00120180               # addi    a4, a6, 384
; _snrt_init_team (start.c:54)
      8000276c  x15:0011ff70 x10:00000000 WA:0011ff80   # sw      a0, 16(a5)
; snrt_alloc_init (alloc.c:64)
;  in _snrt_init_team (start.c:97)
      8000285c  x15:0011ff70 x10:00100000 WA:0011ffc0   # sw      a0, 80(a5)
; _snrt_init_team (start.c:67)
      800027cc  x6:00130000 x16:00120000 x11=00000000   # sltu    a1, t1, a6
; _snrt_init_team (start.c:68)
      800027dc  x10:00020000 x10=00040000               # slli    a0, a0, 1
; _snrt_init_team (start.c:71)
      800027f0  x15:0011ff70 WA:0011ffd8                # sw      zero, 104(a5)
; _snrt_init_team (start.c:68)
      800027dc  x10:00020000 x10=00040000               # slli    a0, a0, 1
; _snrt_init_team (start.c:83)
      80002828  x17:00000000 x10:00000448 x10=00000000  # mul     a0, a7, a0
; _snrt_init_team (start.c:92)
      80002850  x15:0011ff70 x14:00120180 WA:0011fff0   # sw      a4, 128(a5)
; _snrt_init_team (start.c:56)
      80002770  x15:0011ff70 x16:00000001 WA:0011ff84   # sw      a6, 20(a5)
; snrt_alloc_init (alloc.c:67)
;  in _snrt_init_team (start.c:97)
      80002860  x13:0011db28 x12:00100000 x12=0001db28  # sub     a2, a3, a2
; _snrt_init_team (start.c:67)
      800027d0  x5:00000000 x11:00000000 x11=00000000   # add     a1, t0, a1
; _snrt_init_team (start.c:68)
      800027e0  x10:00040000 x12:00100000 x11=00140000  # add     a1, a0, a2
; _snrt_init_team (start.c:72)
      800027f4  x15:0011ff70 WA:0011ffdc                # sw      zero, 108(a5)
; _snrt_init_team (start.c:68)
      800027e0  x10:00040000 x12:00100000 x11=00140000  # add     a1, a0, a2
; _snrt_init_team (start.c:83)
      8000282c  x11=8000282c                            # auipc   a1, 0x0
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      80002854  x12:00100000 x10=00100007               # addi    a0, a2, 7
; _snrt_init_team (start.c:57)
      80002774  x15:0011ff70 x6:00000000 WA:0011ff88    # sw      t1, 24(a5)
; snrt_alloc_init (alloc.c:66)
;  in _snrt_init_team (start.c:97)
      80002864  x15:0011ff70 x12:0001db28 WA:0011ffc4   # sw      a2, 84(a5)
; _snrt_init_team (start.c:66)
      800027d4  x15:0011ff70 x6:00130000 WA:0011ffb0    # sw      t1, 64(a5)
; _snrt_init_team (start.c:68)
      800027e4  x11:00140000 x10:00040000 x10=00000000  # sltu    a0, a1, a0
; _snrt_init_team (start.c:75)
      800027f8  x10=00000000                            # lui     a0, 0x0
; _snrt_init_team (start.c:68)
      800027e4  x11:00140000 x10:00040000 x10=00000000  # sltu    a0, a1, a0
; _snrt_init_team (start.c:83)
      80002830  x11:8000282c x11=8000301c               # addi    a1, a1, 2032
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      80002858  x10:00100007 x10=00100000               # andi    a0, a0, -8
; _snrt_init_team (start.c:58)
      80002778  x15:0011ff70 x11:00000009 WA:0011ff8c   # sw      a1, 28(a5)
; snrt_alloc_init (alloc.c:68)
;  in _snrt_init_team (start.c:97)
      80002868  x15:0011ff70 x10:00100000 WA:0011ffc8   # sw      a0, 88(a5)
; _snrt_init_team (start.c:66)
      800027d8  x15:0011ff70 x11:00000000 WA:0011ffb4   # sw      a1, 68(a5)
; _snrt_init_team (start.c:68)
      800027e8  x15:0011ff70 x11:00140000 WA:0011ffb8   # sw      a1, 72(a5)
      800027ec  x15:0011ff70 x10:00000000 WA:0011ffbc   # sw      a0, 76(a5)
      800027e8  x15:0011ff70 x11:00140000 WA:0011ffb8   # sw      a1, 72(a5)
      800027ec  x15:0011ff70 x10:00000000 WA:0011ffbc   # sw      a0, 76(a5)
; snrt_alloc_init (alloc.c:64)
;  in _snrt_init_team (start.c:97)
      8000285c  x15:0011ff70 x10:00100000 WA:0011ffc0   # sw      a0, 80(a5)
; _snrt_init_team (start.c:60)
      8000277c  x14:01000000 RA:01000018 x10=80000000   # lw      a0, 24(a4)
      80002780  x11=10000000                            # lui     a1, 0x10000
; _snrt_init_team (start.c:68)
      800027dc  x10:00020000 x10=00040000               # slli    a0, a0, 1
; _snrt_init_team (start.c:75)
      800027fc  x10:00000000 x4:0011df20 x10=0011df20   # add     a0, a0, tp
; _snrt_init_team (start.c:71)
      800027f0  x15:0011ff70 WA:0011ffd8                # sw      zero, 104(a5)
; _snrt_init_team (start.c:83)
      80002834  x10:00000000 x11:8000301c x10=8000301c  # add     a0, a0, a1
; _snrt_init_team (start.c:71)
      800027f0  x15:0011ff70 WA:0011ffd8                # sw      zero, 104(a5)
; snrt_alloc_init (alloc.c:67)
;  in _snrt_init_team (start.c:97)
      80002860  x13:0011db28 x12:00100000 x12=0001db28  # sub     a2, a3, a2
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      8000286c  x11:8000301c RA:8000301c x10=00000000   # lw      a0, 0(a1)
; _snrt_init_team (start.c:60)
      80002784  x10:80000000 x11:10000000 x10=90000000  # add     a0, a0, a1
; _snrt_init_team (start.c:68)
      800027e0  x10:00040000 x12:00100000 x11=00140000  # add     a1, a0, a2
; _snrt_init_team (start.c:75)
      80002800  x10:0011df20 x15:0011ff70 WA:0011df20   # sw      a5, 0(a0)
; _snrt_init_team (start.c:72)
      800027f4  x15:0011ff70 WA:0011ffdc                # sw      zero, 108(a5)
; _snrt_init_team (start.c:75)
      800027f8  x10=00000000                            # lui     a0, 0x0
; _snrt_init_team (start.c:72)
      800027f4  x15:0011ff70 WA:0011ffdc                # sw      zero, 108(a5)
; snrt_alloc_init (alloc.c:66)
;  in _snrt_init_team (start.c:97)
      80002864  x15:0011ff70 x12:0001db28 WA:0011ffc4   # sw      a2, 84(a5)
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      80002870  x10:00000000 x10=0000044f               # addi    a0, a0, 1103
; _snrt_init_team (start.c:59)
      80002788  x15:0011ff70 WA:0011ff94                # sw      zero, 36(a5)
; _snrt_init_team (start.c:68)
      800027e4  x11:00140000 x10:00040000 x10=00000000  # sltu    a0, a1, a0
; _snrt_init_team (start.c:77)
      80002804  x15:0011ff70 RA:0011ff70 x10=0011ff70   # lw      a0, 0(a5)
; _snrt_init_team (start.c:83)
      80002838  x10:8000301c WA:8000301c                # sw      zero, 0(a0)
; _snrt_init_team (start.c:75)
      800027fc  x10:00000000 x4:0011e328 x10=0011e328   # add     a0, a0, tp
      800027f8  x10=00000000                            # lui     a0, 0x0
; snrt_alloc_init (alloc.c:68)
;  in _snrt_init_team (start.c:97)
      80002868  x15:0011ff70 x10:00100000 WA:0011ffc8   # sw      a0, 88(a5)
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      80002874  x10:0000044f x10=00000448               # andi    a0, a0, -8
; _snrt_init_team (start.c:59)
      8000278c  x15:0011ff70 x10:90000000 WA:0011ff90   # sw      a0, 32(a5)
; _snrt_init_team (start.c:68)
      800027e8  x15:0011ff70 x11:00140000 WA:0011ffb8   # sw      a1, 72(a5)
; _snrt_init_team (start.c:77)
      80002808  x10:0011ff70 RA:0011ff88 x11=00000000   # lw      a1, 24(a0)
; _snrt_init_team (start.c:86)
      8000283c  x14:01000000 RA:01000030 x17=ffff0000   # lw      a7, 48(a4)
; _snrt_init_team (start.c:75)
      80002800  x10:0011e328 x15:0011ff70 WA:0011e328   # sw      a5, 0(a0)
      800027fc  x10:00000000 x4:0011fb58 x10=0011fb58   # add     a0, a0, tp
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      8000286c  x11:8000301c RA:8000301c x10=00000000   # lw      a0, 0(a1)
; snrt_alloc_init (alloc.c:71)
;  in _snrt_init_team (start.c:97)
      80002878  x15:0011ff70 x10:00000448 WA:0011ffcc   # sw      a0, 92(a5)
; _snrt_init_team (start.c:61)
      80002790  x14:01000000 RA:01000020 x10=00000000   # lw      a0, 32(a4)
; _snrt_init_team (start.c:68)
      800027ec  x15:0011ff70 x10:00000000 WA:0011ffbc   # sw      a0, 76(a5)
; _snrt_init_team (start.c:78)
      8000280c  x10:0011ff70 RA:0011ff8c x10=00000009   # lw      a0, 28(a0)
; _snrt_init_team (start.c:86)
      80002840  x15:0011ff70 x17:ffff0000 WA:0011ffe4   # sw      a7, 116(a5)
; _snrt_init_team (start.c:77)
      80002804  x15:0011ff70 RA:0011ff70 x10=0011ff70   # lw      a0, 0(a5)
; _snrt_init_team (start.c:75)
      80002800  x10:0011fb58 x15:0011ff70 WA:0011fb58   # sw      a5, 0(a0)
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      80002870  x10:00000000 x10=0000044f               # addi    a0, a0, 1103
      80002874  x10:0000044f x10=00000448               # andi    a0, a0, -8
; _snrt_init_team (start.c:61)
      80002794  x14:01000000 RA:01000024 x11=00000001   # lw      a1, 36(a4)
; _snrt_init_team (start.c:71)
      800027f0  x15:0011ff70 WA:0011ffd8                # sw      zero, 104(a5)
; _snrt_init_team (start.c:77)
      80002810  x17:00000008 x11:00000000 x11=00000008  # sub     a1, a7, a1
; _snrt_init_team (start.c:87)
      80002844  x15:0011ff70 x16:00120000 WA:0011ffec   # sw      a6, 124(a5)
; _snrt_init_team (start.c:77)
      80002808  x10:0011ff70 RA:0011ff88 x11=00000000   # lw      a1, 24(a0)
      80002804  x15:0011ff70 RA:0011ff70 x10=0011ff70   # lw      a0, 0(a5)
; snrt_alloc_init (alloc.c:74)
;  in _snrt_init_team (start.c:97)
      8000287c  x15:0011ff70 WA:0011ffd0                # sw      zero, 96(a5)
; snrt_alloc_init (alloc.c:71)
;  in _snrt_init_team (start.c:97)
      80002878  x15:0011ff70 x10:00000448 WA:0011ffcc   # sw      a0, 92(a5)
; _snrt_init_team (start.c:61)
      80002798  x15:0011ff70 x10:00000000 WA:0011ff98   # sw      a0, 40(a5)
; _snrt_init_team (start.c:72)
      800027f4  x15:0011ff70 WA:0011ffdc                # sw      zero, 108(a5)
; _snrt_init_team (start.c:77)
      80002814  x11:00000008 x10:00000009 x10=00000008  # remu    a0, a1, a0
; _snrt_init_team (start.c:91)
      80002848  x15:0011ff70 WA:0011ffe8                # sw      zero, 120(a5)
; _snrt_init_team (start.c:78)
      8000280c  x10:0011ff70 RA:0011ff8c x10=00000009   # lw      a0, 28(a0)
; _snrt_init_team (start.c:77)
      80002808  x10:0011ff70 RA:0011ff88 x11=00000000   # lw      a1, 24(a0)
; snrt_alloc_init (alloc.c:75)
;  in _snrt_init_team (start.c:97)
      80002880  x15:0011ff70 x10:00000448 WA:0011ffd4   # sw      a0, 100(a5)
; snrt_alloc_init (alloc.c:74)
;  in _snrt_init_team (start.c:97)
      8000287c  x15:0011ff70 WA:0011ffd0                # sw      zero, 96(a5)
; _snrt_init_team (start.c:61)
      8000279c  x15:0011ff70 x11:00000001 WA:0011ff9c   # sw      a1, 44(a5)
; _snrt_init_team (start.c:75)
      800027f8  x10=00000000                            # lui     a0, 0x0
; _snrt_init_team (start.c:76)
      80002818  x11=00000000                            # lui     a1, 0x0
; _snrt_init_team (start.c:93)
      8000284c  x16:00120000 x14=00120180               # addi    a4, a6, 384
; _snrt_init_team (start.c:77)
      80002810  x17:00000007 x11:00000000 x11=00000007  # sub     a1, a7, a1
; _snrt_init_team (start.c:78)
      8000280c  x10:0011ff70 RA:0011ff8c x10=00000009   # lw      a0, 28(a0)
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      80002884  x10=00000000                            # lui     a0, 0x0
; snrt_alloc_init (alloc.c:75)
;  in _snrt_init_team (start.c:97)
      80002880  x15:0011ff70 x10:00000448 WA:0011ffd4   # sw      a0, 100(a5)
; _snrt_init_team (start.c:62)
      800027a0  x15:0011ff70 x12:00100000 WA:0011ffa0   # sw      a2, 48(a5)
; _snrt_init_team (start.c:75)
      800027fc  x10:00000000 x4:0011f750 x10=0011f750   # add     a0, a0, tp
; _snrt_init_team (start.c:76)
      8000281c  x11:00000000 x4:0011df20 x11=0011df20   # add     a1, a1, tp
; _snrt_init_team (start.c:92)
      80002850  x15:0011ff70 x14:00120180 WA:0011fff0   # sw      a4, 128(a5)
; _snrt_init_team (start.c:77)
      80002814  x11:00000007 x10:00000009 x10=00000007  # remu    a0, a1, a0
      80002810  x17:00000001 x11:00000000 x11=00000001  # sub     a1, a7, a1
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      80002888  x10:00000000 x4:0011e730 x10=0011e730   # add     a0, a0, tp
      80002884  x10=00000000                            # lui     a0, 0x0
; _snrt_init_team (start.c:62)
      800027a4  x15:0011ff70 WA:0011ffa4                # sw      zero, 52(a5)
; _snrt_init_team (start.c:75)
      80002800  x10:0011f750 x15:0011ff70 WA:0011f750   # sw      a5, 0(a0)
; _snrt_init_team (start.c:76)
      80002820  x11:0011df20 x10:00000008 WA:0011df24   # sw      a0, 4(a1)
      80002824  x10=00000448                            # li      a0, 1096
      80002818  x11=00000000                            # lui     a1, 0x0
; _snrt_init_team (start.c:77)
      80002814  x11:00000001 x10:00000009 x10=00000001  # remu    a0, a1, a0
; _snrt_init_team (start.c:76)
      80002818  x11=00000000                            # lui     a1, 0x0
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      80002888  x10:00000000 x4:0011eb38 x10=0011eb38   # add     a0, a0, tp
; _snrt_init_team (start.c:63)
      800027a8  x15:0011ff70 x13:0011db28 WA:0011ffa8   # sw      a3, 56(a5)
; _snrt_init_team (start.c:77)
      80002804  x15:0011ff70 RA:0011ff70 x10=0011ff70   # lw      a0, 0(a5)
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      80002854  x12:00100000 x10=00100007               # addi    a0, a2, 7
; _snrt_init_team (start.c:83)
      80002828  x17:00000008 x10:00000448 x10=00002240  # mul     a0, a7, a0
; _snrt_init_team (start.c:76)
      8000281c  x11:00000000 x4:0011e328 x11=0011e328   # add     a1, a1, tp
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      8000288c  x10:0011e730 x17:ffff0000 WA:0011e738   # sw      a7, 8(a0)
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      80002890  x10=00000000                            # lui     a0, 0x0
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      8000288c  x10:0011eb38 x17:ffff0000 WA:0011eb40   # sw      a7, 8(a0)
; _snrt_init_team (start.c:63)
      800027ac  x15:0011ff70 WA:0011ffac                # sw      zero, 60(a5)
; _snrt_init_team (start.c:77)
      80002808  x10:0011ff70 RA:0011ff88 x11=00000000   # lw      a1, 24(a0)
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      80002858  x10:00100007 x10=00100000               # andi    a0, a0, -8
; snrt_alloc_init (alloc.c:64)
;  in _snrt_init_team (start.c:97)
      8000285c  x15:0011ff70 x10:00100000 WA:0011ffc0   # sw      a0, 80(a5)
; _snrt_init_team (start.c:83)
      8000282c  x11=8000282c                            # auipc   a1, 0x0
; _snrt_init_team (start.c:76)
      8000281c  x11:00000000 x4:0011fb58 x11=0011fb58   # add     a1, a1, tp
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      80002894  x10:00000000 x4:0011e730 x10=0011e730   # add     a0, a0, tp
      80002898  x10:0011e730 x14:00120180 WA:0011e73c   # sw      a4, 12(a0)
; _snrt_init_team (start.c:99)
      8000289c  x1:80002a5c                             # ret
; _snrt_init_team (start.c:78)
      8000280c  x10:0011ff70 RA:0011ff8c x10=00000009   # lw      a0, 28(a0)
; snrt_alloc_init (alloc.c:67)
;  in _snrt_init_team (start.c:97)
      80002860  x13:0011db28 x12:00100000 x12=0001db28  # sub     a2, a3, a2
; _snrt_init_team (start.c:76)
      80002820  x11:0011e328 x10:00000007 WA:0011e32c   # sw      a0, 4(a1)
; _snrt_init_team (start.c:83)
      80002830  x11:8000282c x11=8000301c               # addi    a1, a1, 2032
; _snrt_init_team (start.c:76)
      80002820  x11:0011fb58 x10:00000001 WA:0011fb5c   # sw      a0, 4(a1)
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      80002890  x10=00000000                            # lui     a0, 0x0
; _snrt_init_team (start.c:64)
      800027b0  x14:01000000 RA:01000010 x10=00020000   # lw      a0, 16(a4)
; ?? (start.S:165)
      80002a5c  x2:0011e71c RA:0011e71c x10=00000006    # lw      a0, 0(sp)
; _snrt_init_team (start.c:77)
      80002810  x17:00000002 x11:00000000 x11=00000002  # sub     a1, a7, a1
; snrt_alloc_init (alloc.c:66)
;  in _snrt_init_team (start.c:97)
      80002864  x15:0011ff70 x12:0001db28 WA:0011ffc4   # sw      a2, 84(a5)
; _snrt_init_team (start.c:76)
      80002824  x10=00000448                            # li      a0, 1096
; _snrt_init_team (start.c:83)
      80002834  x10:00002240 x11:8000301c x10=8000525c  # add     a0, a0, a1
; _snrt_init_team (start.c:76)
      80002824  x10=00000448                            # li      a0, 1096
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      80002894  x10:00000000 x4:0011eb38 x10=0011eb38   # add     a0, a0, tp
; _snrt_init_team (start.c:64)
      800027b4  x12:00100000 x10:00020000 x16=00120000  # add     a6, a2, a0
; ?? (start.S:166)
      80002a60  x2:0011e71c RA:0011e720 x11=00000009    # lw      a1, 4(sp)
; _snrt_init_team (start.c:77)
      80002814  x11:00000002 x10:00000009 x10=00000002  # remu    a0, a1, a0
; _snrt_init_team (start.c:76)
      80002818  x11=00000000                            # lui     a1, 0x0
; _snrt_init_team (start.c:83)
      80002828  x17:00000007 x10:00000448 x10=00001df8  # mul     a0, a7, a0
      80002838  x10:8000525c WA:8000525c                # sw      zero, 0(a0)
      80002828  x17:00000001 x10:00000448 x10=00000448  # mul     a0, a7, a0
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      80002898  x10:0011eb38 x14:00120180 WA:0011eb44   # sw      a4, 12(a0)
; _snrt_init_team (start.c:64)
      800027b8  x16:00120000 x11=00120190               # addi    a1, a6, 400
; ?? (start.S:167)
      80002a64  x2:0011e71c RA:0011e724 x12=00100000    # lw      a2, 8(sp)
; snrt_alloc_init (alloc.c:68)
;  in _snrt_init_team (start.c:97)
      80002868  x15:0011ff70 x10:00100000 WA:0011ffc8   # sw      a0, 88(a5)
; _snrt_init_team (start.c:76)
      8000281c  x11:00000000 x4:0011f750 x11=0011f750   # add     a1, a1, tp
; _snrt_init_team (start.c:83)
      8000282c  x11=8000282c                            # auipc   a1, 0x0
; _snrt_init_team (start.c:86)
      8000283c  x14:01000000 RA:01000030 x17=ffff0000   # lw      a7, 48(a4)
; _snrt_init_team (start.c:83)
      8000282c  x11=8000282c                            # auipc   a1, 0x0
; _snrt_init_team (start.c:99)
      8000289c  x1:80002a5c                             # ret
; _snrt_init_team (start.c:64)
      800027bc  x15:0011ff70 x11:00120190 WA:0011ffe0   # sw      a1, 112(a5)
; ?? (start.S:168)
      80002a68  x2:0011e71c RA:0011e728 x13=0011db28    # lw      a3, 12(sp)
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      8000286c  x11:8000301c RA:8000301c x10=00000000   # lw      a0, 0(a1)
; _snrt_init_team (start.c:76)
      80002820  x11:0011f750 x10:00000002 WA:0011f754   # sw      a0, 4(a1)
; _snrt_init_team (start.c:83)
      80002830  x11:8000282c x11=8000301c               # addi    a1, a1, 2032
; _snrt_init_team (start.c:86)
      80002840  x15:0011ff70 x17:ffff0000 WA:0011ffe4   # sw      a7, 116(a5)
; _snrt_init_team (start.c:83)
      80002830  x11:8000282c x11=8000301c               # addi    a1, a1, 2032
; ?? (start.S:165)
      80002a5c  x2:0011eb24 RA:0011eb24 x10=00000005    # lw      a0, 0(sp)
; _snrt_init_team (start.c:67)
      800027c0  x16:00120000 x10:00020000 x5=00000000   # sltu    t0, a6, a0
; ?? (start.S:169)
      80002a6c  x2:0011e71c RA:0011e72c x14=01000000    # lw      a4, 16(sp)
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      80002870  x10:00000000 x10=0000044f               # addi    a0, a0, 1103
; _snrt_init_team (start.c:76)
      80002824  x10=00000448                            # li      a0, 1096
; _snrt_init_team (start.c:83)
      80002834  x10:00001df8 x11:8000301c x10=80004e14  # add     a0, a0, a1
; _snrt_init_team (start.c:87)
      80002844  x15:0011ff70 x16:00120000 WA:0011ffec   # sw      a6, 124(a5)
; _snrt_init_team (start.c:83)
      80002834  x10:00000448 x11:8000301c x10=80003464  # add     a0, a0, a1
; ?? (start.S:166)
      80002a60  x2:0011eb24 RA:0011eb28 x11=00000009    # lw      a1, 4(sp)
; _snrt_init_team (start.c:67)
      800027c4  x10:00020000 x11=00010000               # srli    a1, a0, 1
; ?? (start.S:170)
      80002a70  x2:0011e71c x2=0011e730                 # addi    sp, sp, 20
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      80002874  x10:0000044f x10=00000448               # andi    a0, a0, -8
; _snrt_init_team (start.c:83)
      80002828  x17:00000002 x10:00000448 x10=00000890  # mul     a0, a7, a0
      8000282c  x11=8000282c                            # auipc   a1, 0x0
; _snrt_init_team (start.c:91)
      80002848  x15:0011ff70 WA:0011ffe8                # sw      zero, 120(a5)
; _snrt_init_team (start.c:83)
      80002838  x10:80003464 WA:80003464                # sw      zero, 0(a0)
; ?? (start.S:167)
      80002a64  x2:0011eb24 RA:0011eb2c x12=00100000    # lw      a2, 8(sp)
; _snrt_init_team (start.c:67)
      800027c8  x16:00120000 x11:00010000 x6=00130000   # add     t1, a6, a1
; ?? (start.S:174)
      80002a74  x5=80002a74                             # auipc   t0, 0x0
; snrt_alloc_init (alloc.c:71)
;  in _snrt_init_team (start.c:97)
      80002878  x15:0011ff70 x10:00000448 WA:0011ffcc   # sw      a0, 92(a5)
; _snrt_init_team (start.c:83)
      80002838  x10:80004e14 WA:80004e14                # sw      zero, 0(a0)
      80002830  x11:8000282c x11=8000301c               # addi    a1, a1, 2032
; _snrt_init_team (start.c:93)
      8000284c  x16:00120000 x14=00120180               # addi    a4, a6, 384
; _snrt_init_team (start.c:86)
      8000283c  x14:01000000 RA:01000030 x17=ffff0000   # lw      a7, 48(a4)
; ?? (start.S:168)
      80002a68  x2:0011eb24 RA:0011eb30 x13=0011db28    # lw      a3, 12(sp)
; _snrt_init_team (start.c:67)
      800027cc  x6:00130000 x16:00120000 x11=00000000   # sltu    a1, t1, a6
; ?? (start.S:174)
      80002a78  x5:80002a74 x5=80002ab0                 # addi    t0, t0, 60
; snrt_alloc_init (alloc.c:74)
;  in _snrt_init_team (start.c:97)
      8000287c  x15:0011ff70 WA:0011ffd0                # sw      zero, 96(a5)
; _snrt_init_team (start.c:86)
      8000283c  x14:01000000 RA:01000030 x17=ffff0000   # lw      a7, 48(a4)
; _snrt_init_team (start.c:83)
      80002834  x10:00000890 x11:8000301c x10=800038ac  # add     a0, a0, a1
; _snrt_init_team (start.c:92)
      80002850  x15:0011ff70 x14:00120180 WA:0011fff0   # sw      a4, 128(a5)
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      80002854  x12:00100000 x10=00100007               # addi    a0, a2, 7
; ?? (start.S:169)
      80002a6c  x2:0011eb24 RA:0011eb34 x14=01000000    # lw      a4, 16(sp)
; _snrt_init_team (start.c:67)
      800027d0  x5:00000000 x11:00000000 x11=00000000   # add     a1, t0, a1
; ?? (start.S:175)
      80002a7c  x5:80002ab0                             # csrw    mtvec, t0
; snrt_alloc_init (alloc.c:75)
;  in _snrt_init_team (start.c:97)
      80002880  x15:0011ff70 x10:00000448 WA:0011ffd4   # sw      a0, 100(a5)
; _snrt_init_team (start.c:86)
      80002840  x15:0011ff70 x17:ffff0000 WA:0011ffe4   # sw      a7, 116(a5)
; _snrt_init_team (start.c:83)
      80002838  x10:800038ac WA:800038ac                # sw      zero, 0(a0)
; _snrt_init_team (start.c:86)
      80002840  x15:0011ff70 x17:ffff0000 WA:0011ffe4   # sw      a7, 116(a5)
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      80002858  x10:00100007 x10=00100000               # andi    a0, a0, -8
; ?? (start.S:170)
      80002a70  x2:0011eb24 x2=0011eb38                 # addi    sp, sp, 20
; ?? (start.S:174)
      80002a74  x5=80002a74                             # auipc   t0, 0x0
; ?? (start.S:179)
      80002a80  x1=80002a80                             # auipc   ra, 0x0
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      80002884  x10=00000000                            # lui     a0, 0x0
; _snrt_init_team (start.c:87)
      80002844  x15:0011ff70 x16:00120000 WA:0011ffec   # sw      a6, 124(a5)
; _snrt_init_team (start.c:86)
      8000283c  x14:01000000 RA:01000030 x17=ffff0000   # lw      a7, 48(a4)
; _snrt_init_team (start.c:87)
      80002844  x15:0011ff70 x16:00120000 WA:0011ffec   # sw      a6, 124(a5)
; snrt_alloc_init (alloc.c:64)
;  in _snrt_init_team (start.c:97)
      8000285c  x15:0011ff70 x10:00100000 WA:0011ffc0   # sw      a0, 80(a5)
; _snrt_init_team (start.c:66)
      800027d4  x15:0011ff70 x6:00130000 WA:0011ffb0    # sw      t1, 64(a5)
; ?? (start.S:174)
      80002a78  x5:80002a74 x5=80002ab0                 # addi    t0, t0, 60
; ?? (start.S:179)
      80002a84  x1:80002a80 x1=80002a88                 # jalr    ra, ra, 544
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      80002888  x10:00000000 x4:0011ff60 x10=0011ff60   # add     a0, a0, tp
; _snrt_init_team (start.c:91)
      80002848  x15:0011ff70 WA:0011ffe8                # sw      zero, 120(a5)
; _snrt_init_team (start.c:86)
      80002840  x15:0011ff70 x17:ffff0000 WA:0011ffe4   # sw      a7, 116(a5)
; _snrt_init_team (start.c:91)
      80002848  x15:0011ff70 WA:0011ffe8                # sw      zero, 120(a5)
; snrt_alloc_init (alloc.c:67)
;  in _snrt_init_team (start.c:97)
      80002860  x13:0011db28 x12:00100000 x12=0001db28  # sub     a2, a3, a2
; _snrt_init_team (start.c:66)
      800027d8  x15:0011ff70 x11:00000000 WA:0011ffb4   # sw      a1, 68(a5)
; _snrt_init_team (start.c:68)
      800027dc  x10:00020000 x10=00040000               # slli    a0, a0, 1
; ?? (start_snitch.S:33)
      80002ca0  x2:0011e730 x2=0011e72c                 # addi    sp, sp, -4
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      8000288c  x10:0011ff60 x17:ffff0000 WA:0011ff68   # sw      a7, 8(a0)
; _snrt_init_team (start.c:93)
      8000284c  x16:00120000 x14=00120180               # addi    a4, a6, 384
; _snrt_init_team (start.c:87)
      80002844  x15:0011ff70 x16:00120000 WA:0011ffec   # sw      a6, 124(a5)
; _snrt_init_team (start.c:93)
      8000284c  x16:00120000 x14=00120180               # addi    a4, a6, 384
; snrt_alloc_init (alloc.c:66)
;  in _snrt_init_team (start.c:97)
      80002864  x15:0011ff70 x12:0001db28 WA:0011ffc4   # sw      a2, 84(a5)
; ?? (start.S:175)
      80002a7c  x5:80002ab0                             # csrw    mtvec, t0
; _snrt_init_team (start.c:68)
      800027e0  x10:00040000 x12:00100000 x11=00140000  # add     a1, a0, a2
; ?? (start_snitch.S:34)
      80002ca4  x2:0011e72c x1:80002a88 WA:0011e72c     # sw      ra, 0(sp)
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      80002890  x10=00000000                            # lui     a0, 0x0
      80002894  x10:00000000 x4:0011ff60 x10=0011ff60   # add     a0, a0, tp
; _snrt_init_team (start.c:91)
      80002848  x15:0011ff70 WA:0011ffe8                # sw      zero, 120(a5)
; _snrt_init_team (start.c:93)
      8000284c  x16:00120000 x14=00120180               # addi    a4, a6, 384
; snrt_alloc_init (alloc.c:68)
;  in _snrt_init_team (start.c:97)
      80002868  x15:0011ff70 x10:00100000 WA:0011ffc8   # sw      a0, 88(a5)
; ?? (start.S:179)
      80002a80  x1=80002a80                             # auipc   ra, 0x0
; _snrt_init_team (start.c:68)
      800027e4  x11:00140000 x10:00040000 x10=00000000  # sltu    a0, a1, a0
; ?? (start_snitch.S:35)
      80002ca8  x1=80002ca8                             # auipc   ra, 0x0
; _snrt_init_team (start.c:92)
      80002850  x15:0011ff70 x14:00120180 WA:0011fff0   # sw      a4, 128(a5)
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      80002898  x10:0011ff60 x14:00120180 WA:0011ff6c   # sw      a4, 12(a0)
; _snrt_init_team (start.c:92)
      80002850  x15:0011ff70 x14:00120180 WA:0011fff0   # sw      a4, 128(a5)
      80002850  x15:0011ff70 x14:00120180 WA:0011fff0   # sw      a4, 128(a5)
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      8000286c  x11:8000301c RA:8000301c x10=00000000   # lw      a0, 0(a1)
; ?? (start.S:179)
      80002a84  x1:80002a80 x1=80002a88                 # jalr    ra, ra, 544
; _snrt_init_team (start.c:68)
      800027e8  x15:0011ff70 x11:00140000 WA:0011ffb8   # sw      a1, 72(a5)
; ?? (start_snitch.S:35)
      80002cac  x1:80002ca8 x1=80002cb0                 # jalr    ra, ra, -1616
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      80002854  x12:00100000 x10=00100007               # addi    a0, a2, 7
; _snrt_barrier_reg_ptr (team.c:80)
      80002658  x10=00000000                            # lui     a0, 0x0
; _snrt_init_team (start.c:99)
      8000289c  x1:80002a5c                             # ret
; _snrt_barrier_reg_ptr (team.c:80)
      8000265c  x10:00000000 x4:0011e730 x10=0011e730   # add     a0, a0, tp
; ?? (start.S:165)
      80002a5c  x2:0011ff4c RA:0011ff4c x10=00000000    # lw      a0, 0(sp)
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      80002870  x10:00000000 x10=0000044f               # addi    a0, a0, 1103
; ?? (start_snitch.S:33)
      80002ca0  x2:0011eb38 x2=0011eb34                 # addi    sp, sp, -4
; _snrt_init_team (start.c:68)
      800027ec  x15:0011ff70 x10:00000000 WA:0011ffbc   # sw      a0, 76(a5)
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      80002858  x10:00100007 x10=00100000               # andi    a0, a0, -8
; _snrt_barrier_reg_ptr (team.c:80)
      80002660  x10:0011e730 RA:0011e730 x10=0011ff70   # lw      a0, 0(a0)
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      80002854  x12:00100000 x10=00100007               # addi    a0, a2, 7
; ?? (start.S:166)
      80002a60  x2:0011ff4c RA:0011ff50 x11=00000009    # lw      a1, 4(sp)
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      80002854  x12:00100000 x10=00100007               # addi    a0, a2, 7
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      80002874  x10:0000044f x10=00000448               # andi    a0, a0, -8
; ?? (start_snitch.S:34)
      80002ca4  x2:0011eb34 x1:80002a88 WA:0011eb34     # sw      ra, 0(sp)
; ?? (start_snitch.S:35)
      80002ca8  x1=80002ca8                             # auipc   ra, 0x0
      80002cac  x1:80002ca8 x1=80002cb0                 # jalr    ra, ra, -1616
; _snrt_barrier_reg_ptr (team.c:80)
      80002664  x10:0011ff70 RA:0011ff70 x10=0011ff70   # lw      a0, 0(a0)
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      80002858  x10:00100007 x10=00100000               # andi    a0, a0, -8
; ?? (start.S:167)
      80002a64  x2:0011ff4c RA:0011ff54 x12=00100000    # lw      a2, 8(sp)
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      80002858  x10:00100007 x10=00100000               # andi    a0, a0, -8
; snrt_alloc_init (alloc.c:71)
;  in _snrt_init_team (start.c:97)
      80002878  x15:0011ff70 x10:00000448 WA:0011ffcc   # sw      a0, 92(a5)
; _snrt_init_team (start.c:71)
      800027f0  x15:0011ff70 WA:0011ffd8                # sw      zero, 104(a5)
; snrt_alloc_init (alloc.c:64)
;  in _snrt_init_team (start.c:97)
      8000285c  x15:0011ff70 x10:00100000 WA:0011ffc0   # sw      a0, 80(a5)
; _snrt_barrier_reg_ptr (team.c:80)
      80002658  x10=00000000                            # lui     a0, 0x0
      80002668  x10:0011ff70 RA:0011ffe0 x10=00120190   # lw      a0, 112(a0)
      8000266c  x1:80002cb0                             # ret
; ?? (start.S:168)
      80002a68  x2:0011ff4c RA:0011ff58 x13=0011db28    # lw      a3, 12(sp)
; snrt_alloc_init (alloc.c:64)
;  in _snrt_init_team (start.c:97)
      8000285c  x15:0011ff70 x10:00100000 WA:0011ffc0   # sw      a0, 80(a5)
; snrt_alloc_init (alloc.c:74)
;  in _snrt_init_team (start.c:97)
      8000287c  x15:0011ff70 WA:0011ffd0                # sw      zero, 96(a5)
; snrt_alloc_init (alloc.c:67)
;  in _snrt_init_team (start.c:97)
      80002860  x13:0011db28 x12:00100000 x12=0001db28  # sub     a2, a3, a2
; _snrt_init_team (start.c:72)
      800027f4  x15:0011ff70 WA:0011ffdc                # sw      zero, 108(a5)
; _snrt_barrier_reg_ptr (team.c:80)
      8000265c  x10:00000000 x4:0011eb38 x10=0011eb38   # add     a0, a0, tp
      80002660  x10:0011eb38 RA:0011eb38 x10=0011ff70   # lw      a0, 0(a0)
; ?? (start.S:169)
      80002a6c  x2:0011ff4c RA:0011ff5c x14=01000000    # lw      a4, 16(sp)
; snrt_alloc_init (alloc.c:75)
;  in _snrt_init_team (start.c:97)
      80002880  x15:0011ff70 x10:00000448 WA:0011ffd4   # sw      a0, 100(a5)
; snrt_alloc_init (alloc.c:67)
;  in _snrt_init_team (start.c:97)
      80002860  x13:0011db28 x12:00100000 x12=0001db28  # sub     a2, a3, a2
; snrt_alloc_init (alloc.c:66)
;  in _snrt_init_team (start.c:97)
      80002864  x15:0011ff70 x12:0001db28 WA:0011ffc4   # sw      a2, 84(a5)
; _snrt_init_team (start.c:75)
      800027f8  x10=00000000                            # lui     a0, 0x0
      800027fc  x10:00000000 x4:0011ef40 x10=0011ef40   # add     a0, a0, tp
; _snrt_barrier_reg_ptr (team.c:80)
      80002664  x10:0011ff70 RA:0011ff70 x10=0011ff70   # lw      a0, 0(a0)
      80002668  x10:0011ff70 RA:0011ffe0 x10=00120190   # lw      a0, 112(a0)
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      80002884  x10=00000000                            # lui     a0, 0x0
; snrt_alloc_init (alloc.c:66)
;  in _snrt_init_team (start.c:97)
      80002864  x15:0011ff70 x12:0001db28 WA:0011ffc4   # sw      a2, 84(a5)
; snrt_alloc_init (alloc.c:68)
;  in _snrt_init_team (start.c:97)
      80002868  x15:0011ff70 x10:00100000 WA:0011ffc8   # sw      a0, 88(a5)
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      8000286c  x11:8000301c RA:8000301c x10=00000000   # lw      a0, 0(a1)
; _snrt_init_team (start.c:75)
      80002800  x10:0011ef40 x15:0011ff70 WA:0011ef40   # sw      a5, 0(a0)
; _snrt_init_team (start.c:77)
      80002804  x15:0011ff70 RA:0011ff70 x10=0011ff70   # lw      a0, 0(a5)
; _snrt_barrier_reg_ptr (team.c:80)
      8000266c  x1:80002cb0                             # ret
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      80002888  x10:00000000 x4:0011df20 x10=0011df20   # add     a0, a0, tp
; snrt_alloc_init (alloc.c:68)
;  in _snrt_init_team (start.c:97)
      80002868  x15:0011ff70 x10:00100000 WA:0011ffc8   # sw      a0, 88(a5)
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      8000286c  x11:8000301c RA:8000301c x10=00000000   # lw      a0, 0(a1)
      80002870  x10:00000000 x10=0000044f               # addi    a0, a0, 1103
      80002874  x10:0000044f x10=00000448               # andi    a0, a0, -8
; snrt_alloc_init (alloc.c:71)
;  in _snrt_init_team (start.c:97)
      80002878  x15:0011ff70 x10:00000448 WA:0011ffcc   # sw      a0, 92(a5)
; snrt_alloc_init (alloc.c:74)
;  in _snrt_init_team (start.c:97)
      8000287c  x15:0011ff70 WA:0011ffd0                # sw      zero, 96(a5)
; snrt_alloc_init (alloc.c:75)
;  in _snrt_init_team (start.c:97)
      80002880  x15:0011ff70 x10:00000448 WA:0011ffd4   # sw      a0, 100(a5)
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      80002884  x10=00000000                            # lui     a0, 0x0
      80002888  x10:00000000 x4:0011fb58 x10=0011fb58   # add     a0, a0, tp
      8000288c  x10:0011fb58 x17:ffff0000 WA:0011fb60   # sw      a7, 8(a0)
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      80002890  x10=00000000                            # lui     a0, 0x0
      80002894  x10:00000000 x4:0011fb58 x10=0011fb58   # add     a0, a0, tp
      80002898  x10:0011fb58 x14:00120180 WA:0011fb64   # sw      a4, 12(a0)
; _snrt_init_team (start.c:99)
      8000289c  x1:80002a5c                             # ret
; ?? (start.S:165)
      80002a5c  x2:0011fb44 RA:0011fb44 x10=00000001    # lw      a0, 0(sp)
; ?? (start.S:166)
      80002a60  x2:0011fb44 RA:0011fb48 x11=00000009    # lw      a1, 4(sp)
; ?? (start.S:167)
      80002a64  x2:0011fb44 RA:0011fb4c x12=00100000    # lw      a2, 8(sp)
; ?? (start.S:168)
      80002a68  x2:0011fb44 RA:0011fb50 x13=0011db28    # lw      a3, 12(sp)
; ?? (start.S:169)
      80002a6c  x2:0011fb44 RA:0011fb54 x14=01000000    # lw      a4, 16(sp)
; ?? (start.S:170)
      80002a70  x2:0011fb44 x2=0011fb58                 # addi    sp, sp, 20
; ?? (start.S:174)
      80002a74  x5=80002a74                             # auipc   t0, 0x0
      80002a78  x5:80002a74 x5=80002ab0                 # addi    t0, t0, 60
; ?? (start.S:175)
      80002a7c  x5:80002ab0                             # csrw    mtvec, t0
; ?? (start.S:179)
      80002a80  x1=80002a80                             # auipc   ra, 0x0
      80002a84  x1:80002a80 x1=80002a88                 # jalr    ra, ra, 544
; ?? (start_snitch.S:33)
      80002ca0  x2:0011fb58 x2=0011fb54                 # addi    sp, sp, -4
; ?? (start_snitch.S:34)
      80002ca4  x2:0011fb54 x1:80002a88 WA:0011fb54     # sw      ra, 0(sp)
; ?? (start_snitch.S:35)
      80002ca8  x1=80002ca8                             # auipc   ra, 0x0
      80002cac  x1:80002ca8 x1=80002cb0                 # jalr    ra, ra, -1616
; _snrt_barrier_reg_ptr (team.c:80)
      80002658  x10=00000000                            # lui     a0, 0x0
      8000265c  x10:00000000 x4:0011fb58 x10=0011fb58   # add     a0, a0, tp
      80002660  x10:0011fb58 RA:0011fb58 x10=0011ff70   # lw      a0, 0(a0)
      80002664  x10:0011ff70 RA:0011ff70 x10=0011ff70   # lw      a0, 0(a0)
      80002668  x10:0011ff70 RA:0011ffe0 x10=00120190   # lw      a0, 112(a0)
      8000266c  x1:80002cb0                             # ret
; snrt_alloc_init (alloc.c:64)
;  in _snrt_init_team (start.c:97)
      8000285c  x15:0011ff70 x10:00100000 WA:0011ffc0   # sw      a0, 80(a5)
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      80002870  x10:00000000 x10=0000044f               # addi    a0, a0, 1103
      80002874  x10:0000044f x10=00000448               # andi    a0, a0, -8
; snrt_alloc_init (alloc.c:71)
;  in _snrt_init_team (start.c:97)
      80002878  x15:0011ff70 x10:00000448 WA:0011ffcc   # sw      a0, 92(a5)
; snrt_alloc_init (alloc.c:74)
;  in _snrt_init_team (start.c:97)
      8000287c  x15:0011ff70 WA:0011ffd0                # sw      zero, 96(a5)
; snrt_alloc_init (alloc.c:75)
;  in _snrt_init_team (start.c:97)
      80002880  x15:0011ff70 x10:00000448 WA:0011ffd4   # sw      a0, 100(a5)
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      80002884  x10=00000000                            # lui     a0, 0x0
      80002888  x10:00000000 x4:0011e328 x10=0011e328   # add     a0, a0, tp
      8000288c  x10:0011e328 x17:ffff0000 WA:0011e330   # sw      a7, 8(a0)
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      80002890  x10=00000000                            # lui     a0, 0x0
      80002894  x10:00000000 x4:0011e328 x10=0011e328   # add     a0, a0, tp
      80002898  x10:0011e328 x14:00120180 WA:0011e334   # sw      a4, 12(a0)
; _snrt_init_team (start.c:99)
      8000289c  x1:80002a5c                             # ret
; ?? (start.S:165)
      80002a5c  x2:0011e314 RA:0011e314 x10=00000007    # lw      a0, 0(sp)
; ?? (start.S:166)
      80002a60  x2:0011e314 RA:0011e318 x11=00000009    # lw      a1, 4(sp)
; ?? (start.S:167)
      80002a64  x2:0011e314 RA:0011e31c x12=00100000    # lw      a2, 8(sp)
; ?? (start.S:168)
      80002a68  x2:0011e314 RA:0011e320 x13=0011db28    # lw      a3, 12(sp)
; ?? (start.S:169)
      80002a6c  x2:0011e314 RA:0011e324 x14=01000000    # lw      a4, 16(sp)
; ?? (start.S:170)
      80002a70  x2:0011e314 x2=0011e328                 # addi    sp, sp, 20
; ?? (start.S:174)
      80002a74  x5=80002a74                             # auipc   t0, 0x0
      80002a78  x5:80002a74 x5=80002ab0                 # addi    t0, t0, 60
; ?? (start.S:175)
      80002a7c  x5:80002ab0                             # csrw    mtvec, t0
; ?? (start.S:179)
      80002a80  x1=80002a80                             # auipc   ra, 0x0
      80002a84  x1:80002a80 x1=80002a88                 # jalr    ra, ra, 544
; ?? (start_snitch.S:33)
      80002ca0  x2:0011e328 x2=0011e324                 # addi    sp, sp, -4
; ?? (start_snitch.S:34)
      80002ca4  x2:0011e324 x1:80002a88 WA:0011e324     # sw      ra, 0(sp)
; ?? (start_snitch.S:35)
      80002ca8  x1=80002ca8                             # auipc   ra, 0x0
      80002cac  x1:80002ca8 x1=80002cb0                 # jalr    ra, ra, -1616
; _snrt_barrier_reg_ptr (team.c:80)
      80002658  x10=00000000                            # lui     a0, 0x0
      8000265c  x10:00000000 x4:0011e328 x10=0011e328   # add     a0, a0, tp
      80002660  x10:0011e328 RA:0011e328 x10=0011ff70   # lw      a0, 0(a0)
      80002664  x10:0011ff70 RA:0011ff70 x10=0011ff70   # lw      a0, 0(a0)
      80002668  x10:0011ff70 RA:0011ffe0 x10=00120190   # lw      a0, 112(a0)
      8000266c  x1:80002cb0                             # ret
; ?? (start.S:170)
      80002a70  x2:0011ff4c x2=0011ff60                 # addi    sp, sp, 20
; ?? (start.S:174)
      80002a74  x5=80002a74                             # auipc   t0, 0x0
      80002a78  x5:80002a74 x5=80002ab0                 # addi    t0, t0, 60
; ?? (start.S:175)
      80002a7c  x5:80002ab0                             # csrw    mtvec, t0
; ?? (start.S:179)
      80002a80  x1=80002a80                             # auipc   ra, 0x0
      80002a84  x1:80002a80 x1=80002a88                 # jalr    ra, ra, 544
; ?? (start_snitch.S:33)
      80002ca0  x2:0011ff60 x2=0011ff5c                 # addi    sp, sp, -4
; ?? (start_snitch.S:34)
      80002ca4  x2:0011ff5c x1:80002a88 WA:0011ff5c     # sw      ra, 0(sp)
; ?? (start_snitch.S:35)
      80002ca8  x1=80002ca8                             # auipc   ra, 0x0
      80002cac  x1:80002ca8 x1=80002cb0                 # jalr    ra, ra, -1616
; _snrt_barrier_reg_ptr (team.c:80)
      80002658  x10=00000000                            # lui     a0, 0x0
      8000265c  x10:00000000 x4:0011ff60 x10=0011ff60   # add     a0, a0, tp
      80002660  x10:0011ff60 RA:0011ff60 x10=0011ff70   # lw      a0, 0(a0)
      80002664  x10:0011ff70 RA:0011ff70 x10=0011ff70   # lw      a0, 0(a0)
      80002668  x10:0011ff70 RA:0011ffe0 x10=00120190   # lw      a0, 112(a0)
      8000266c  x1:80002cb0                             # ret
; _snrt_init_team (start.c:77)
      80002808  x10:0011ff70 RA:0011ff88 x11=00000000   # lw      a1, 24(a0)
; _snrt_init_team (start.c:78)
      8000280c  x10:0011ff70 RA:0011ff8c x10=00000009   # lw      a0, 28(a0)
; _snrt_init_team (start.c:77)
      80002810  x17:00000004 x11:00000000 x11=00000004  # sub     a1, a7, a1
      80002814  x11:00000004 x10:00000009 x10=00000004  # remu    a0, a1, a0
; _snrt_init_team (start.c:76)
      80002818  x11=00000000                            # lui     a1, 0x0
      8000281c  x11:00000000 x4:0011ef40 x11=0011ef40   # add     a1, a1, tp
      80002820  x11:0011ef40 x10:00000004 WA:0011ef44   # sw      a0, 4(a1)
      80002824  x10=00000448                            # li      a0, 1096
; _snrt_init_team (start.c:83)
      80002828  x17:00000004 x10:00000448 x10=00001120  # mul     a0, a7, a0
      8000282c  x11=8000282c                            # auipc   a1, 0x0
      80002830  x11:8000282c x11=8000301c               # addi    a1, a1, 2032
      80002834  x10:00001120 x11:8000301c x10=8000413c  # add     a0, a0, a1
      80002838  x10:8000413c WA:8000413c                # sw      zero, 0(a0)
; _snrt_init_team (start.c:86)
      8000283c  x14:01000000 RA:01000030 x17=ffff0000   # lw      a7, 48(a4)
      80002840  x15:0011ff70 x17:ffff0000 WA:0011ffe4   # sw      a7, 116(a5)
; _snrt_init_team (start.c:87)
      80002844  x15:0011ff70 x16:00120000 WA:0011ffec   # sw      a6, 124(a5)
; _snrt_init_team (start.c:91)
      80002848  x15:0011ff70 WA:0011ffe8                # sw      zero, 120(a5)
; _snrt_init_team (start.c:93)
      8000284c  x16:00120000 x14=00120180               # addi    a4, a6, 384
; _snrt_init_team (start.c:92)
      80002850  x15:0011ff70 x14:00120180 WA:0011fff0   # sw      a4, 128(a5)
; snrt_alloc_init (alloc.c:65)
;  in _snrt_init_team (start.c:97)
      80002854  x12:00100000 x10=00100007               # addi    a0, a2, 7
      80002858  x10:00100007 x10=00100000               # andi    a0, a0, -8
; snrt_alloc_init (alloc.c:64)
;  in _snrt_init_team (start.c:97)
      8000285c  x15:0011ff70 x10:00100000 WA:0011ffc0   # sw      a0, 80(a5)
; snrt_alloc_init (alloc.c:67)
;  in _snrt_init_team (start.c:97)
      80002860  x13:0011db28 x12:00100000 x12=0001db28  # sub     a2, a3, a2
; snrt_alloc_init (alloc.c:66)
;  in _snrt_init_team (start.c:97)
      80002864  x15:0011ff70 x12:0001db28 WA:0011ffc4   # sw      a2, 84(a5)
; snrt_alloc_init (alloc.c:68)
;  in _snrt_init_team (start.c:97)
      80002868  x15:0011ff70 x10:00100000 WA:0011ffc8   # sw      a0, 88(a5)
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      8000286c  x11:8000301c RA:8000301c x10=00000000   # lw      a0, 0(a1)
      80002870  x10:00000000 x10=0000044f               # addi    a0, a0, 1103
      80002874  x10:0000044f x10=00000448               # andi    a0, a0, -8
; snrt_alloc_init (alloc.c:71)
;  in _snrt_init_team (start.c:97)
      80002878  x15:0011ff70 x10:00000448 WA:0011ffcc   # sw      a0, 92(a5)
; snrt_alloc_init (alloc.c:74)
;  in _snrt_init_team (start.c:97)
      8000287c  x15:0011ff70 WA:0011ffd0                # sw      zero, 96(a5)
; snrt_alloc_init (alloc.c:75)
;  in _snrt_init_team (start.c:97)
      80002880  x15:0011ff70 x10:00000448 WA:0011ffd4   # sw      a0, 100(a5)
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      80002884  x10=00000000                            # lui     a0, 0x0
      80002888  x10:00000000 x4:0011ef40 x10=0011ef40   # add     a0, a0, tp
      8000288c  x10:0011ef40 x17:ffff0000 WA:0011ef48   # sw      a7, 8(a0)
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      80002890  x10=00000000                            # lui     a0, 0x0
      80002894  x10:00000000 x4:0011ef40 x10=0011ef40   # add     a0, a0, tp
      80002898  x10:0011ef40 x14:00120180 WA:0011ef4c   # sw      a4, 12(a0)
; _snrt_init_team (start.c:99)
      8000289c  x1:80002a5c                             # ret
; ?? (start.S:165)
      80002a5c  x2:0011ef2c RA:0011ef2c x10=00000004    # lw      a0, 0(sp)
; ?? (start.S:166)
      80002a60  x2:0011ef2c RA:0011ef30 x11=00000009    # lw      a1, 4(sp)
; ?? (start.S:167)
      80002a64  x2:0011ef2c RA:0011ef34 x12=00100000    # lw      a2, 8(sp)
; ?? (start.S:168)
      80002a68  x2:0011ef2c RA:0011ef38 x13=0011db28    # lw      a3, 12(sp)
; ?? (start.S:169)
      80002a6c  x2:0011ef2c RA:0011ef3c x14=01000000    # lw      a4, 16(sp)
; ?? (start.S:170)
      80002a70  x2:0011ef2c x2=0011ef40                 # addi    sp, sp, 20
; ?? (start.S:174)
      80002a74  x5=80002a74                             # auipc   t0, 0x0
      80002a78  x5:80002a74 x5=80002ab0                 # addi    t0, t0, 60
; ?? (start.S:175)
      80002a7c  x5:80002ab0                             # csrw    mtvec, t0
; ?? (start.S:179)
      80002a80  x1=80002a80                             # auipc   ra, 0x0
      80002a84  x1:80002a80 x1=80002a88                 # jalr    ra, ra, 544
; ?? (start_snitch.S:33)
      80002ca0  x2:0011ef40 x2=0011ef3c                 # addi    sp, sp, -4
; ?? (start_snitch.S:34)
      80002ca4  x2:0011ef3c x1:80002a88 WA:0011ef3c     # sw      ra, 0(sp)
; ?? (start_snitch.S:35)
      80002ca8  x1=80002ca8                             # auipc   ra, 0x0
      80002cac  x1:80002ca8 x1=80002cb0                 # jalr    ra, ra, -1616
; _snrt_barrier_reg_ptr (team.c:80)
      80002658  x10=00000000                            # lui     a0, 0x0
      8000265c  x10:00000000 x4:0011ef40 x10=0011ef40   # add     a0, a0, tp
      80002660  x10:0011ef40 RA:0011ef40 x10=0011ff70   # lw      a0, 0(a0)
      80002664  x10:0011ff70 RA:0011ff70 x10=0011ff70   # lw      a0, 0(a0)
      80002668  x10:0011ff70 RA:0011ffe0 x10=00120190   # lw      a0, 112(a0)
      8000266c  x1:80002cb0                             # ret
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      8000288c  x10:0011df20 x17:ffff0000 WA:0011df28   # sw      a7, 8(a0)
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      80002890  x10=00000000                            # lui     a0, 0x0
      80002894  x10:00000000 x4:0011df20 x10=0011df20   # add     a0, a0, tp
      80002898  x10:0011df20 x14:00120180 WA:0011df2c   # sw      a4, 12(a0)
; _snrt_init_team (start.c:99)
      8000289c  x1:80002a5c                             # ret
; ?? (start.S:165)
      80002a5c  x2:0011df0c RA:0011df0c x10=00000008    # lw      a0, 0(sp)
; ?? (start.S:166)
      80002a60  x2:0011df0c RA:0011df10 x11=00000009    # lw      a1, 4(sp)
; ?? (start.S:167)
      80002a64  x2:0011df0c RA:0011df14 x12=00100000    # lw      a2, 8(sp)
; ?? (start.S:168)
      80002a68  x2:0011df0c RA:0011df18 x13=0011db28    # lw      a3, 12(sp)
; ?? (start.S:169)
      80002a6c  x2:0011df0c RA:0011df1c x14=01000000    # lw      a4, 16(sp)
; ?? (start.S:170)
      80002a70  x2:0011df0c x2=0011df20                 # addi    sp, sp, 20
; ?? (start.S:174)
      80002a74  x5=80002a74                             # auipc   t0, 0x0
      80002a78  x5:80002a74 x5=80002ab0                 # addi    t0, t0, 60
; ?? (start.S:175)
      80002a7c  x5:80002ab0                             # csrw    mtvec, t0
; ?? (start.S:179)
      80002a80  x1=80002a80                             # auipc   ra, 0x0
      80002a84  x1:80002a80 x1=80002a88                 # jalr    ra, ra, 544
; ?? (start_snitch.S:33)
      80002ca0  x2:0011df20 x2=0011df1c                 # addi    sp, sp, -4
; ?? (start_snitch.S:34)
      80002ca4  x2:0011df1c x1:80002a88 WA:0011df1c     # sw      ra, 0(sp)
; ?? (start_snitch.S:35)
      80002ca8  x1=80002ca8                             # auipc   ra, 0x0
      80002cac  x1:80002ca8 x1=80002cb0                 # jalr    ra, ra, -1616
; _snrt_barrier_reg_ptr (team.c:80)
      80002658  x10=00000000                            # lui     a0, 0x0
      8000265c  x10:00000000 x4:0011df20 x10=0011df20   # add     a0, a0, tp
      80002660  x10:0011df20 RA:0011df20 x10=0011ff70   # lw      a0, 0(a0)
      80002664  x10:0011ff70 RA:0011ff70 x10=0011ff70   # lw      a0, 0(a0)
      80002668  x10:0011ff70 RA:0011ffe0 x10=00120190   # lw      a0, 112(a0)
      8000266c  x1:80002cb0                             # ret
; snrt_alloc_init (alloc.c:67)
;  in _snrt_init_team (start.c:97)
      80002860  x13:0011db28 x12:00100000 x12=0001db28  # sub     a2, a3, a2
; snrt_alloc_init (alloc.c:66)
;  in _snrt_init_team (start.c:97)
      80002864  x15:0011ff70 x12:0001db28 WA:0011ffc4   # sw      a2, 84(a5)
; snrt_alloc_init (alloc.c:68)
;  in _snrt_init_team (start.c:97)
      80002868  x15:0011ff70 x10:00100000 WA:0011ffc8   # sw      a0, 88(a5)
; snrt_alloc_init (alloc.c:72)
;  in _snrt_init_team (start.c:97)
      8000286c  x11:8000301c RA:8000301c x10=00000000   # lw      a0, 0(a1)
      80002870  x10:00000000 x10=0000044f               # addi    a0, a0, 1103
      80002874  x10:0000044f x10=00000448               # andi    a0, a0, -8
; snrt_alloc_init (alloc.c:71)
;  in _snrt_init_team (start.c:97)
      80002878  x15:0011ff70 x10:00000448 WA:0011ffcc   # sw      a0, 92(a5)
; snrt_alloc_init (alloc.c:74)
;  in _snrt_init_team (start.c:97)
      8000287c  x15:0011ff70 WA:0011ffd0                # sw      zero, 96(a5)
; snrt_alloc_init (alloc.c:75)
;  in _snrt_init_team (start.c:97)
      80002880  x15:0011ff70 x10:00000448 WA:0011ffd4   # sw      a0, 100(a5)
; snrt_int_init (interrupt.c:40)
;  in _snrt_init_team (start.c:98)
      80002884  x10=00000000                            # lui     a0, 0x0
      80002888  x10:00000000 x4:0011f750 x10=0011f750   # add     a0, a0, tp
      8000288c  x10:0011f750 x17:ffff0000 WA:0011f758   # sw      a7, 8(a0)
; snrt_int_init (interrupt.c:41)
;  in _snrt_init_team (start.c:98)
      80002890  x10=00000000                            # lui     a0, 0x0
      80002894  x10:00000000 x4:0011f750 x10=0011f750   # add     a0, a0, tp
      80002898  x10:0011f750 x14:00120180 WA:0011f75c   # sw      a4, 12(a0)
; _snrt_init_team (start.c:99)
      8000289c  x1:80002a5c                             # ret
; ?? (start.S:165)
      80002a5c  x2:0011f73c RA:0011f73c x10=00000002    # lw      a0, 0(sp)
; ?? (start.S:166)
      80002a60  x2:0011f73c RA:0011f740 x11=00000009    # lw      a1, 4(sp)
; ?? (start.S:167)
      80002a64  x2:0011f73c RA:0011f744 x12=00100000    # lw      a2, 8(sp)
; ?? (start.S:168)
      80002a68  x2:0011f73c RA:0011f748 x13=0011db28    # lw      a3, 12(sp)
; ?? (start.S:169)
      80002a6c  x2:0011f73c RA:0011f74c x14=01000000    # lw      a4, 16(sp)
; ?? (start.S:170)
      80002a70  x2:0011f73c x2=0011f750                 # addi    sp, sp, 20
; ?? (start.S:174)
      80002a74  x5=80002a74                             # auipc   t0, 0x0
      80002a78  x5:80002a74 x5=80002ab0                 # addi    t0, t0, 60
; ?? (start.S:175)
      80002a7c  x5:80002ab0                             # csrw    mtvec, t0
; ?? (start.S:179)
      80002a80  x1=80002a80                             # auipc   ra, 0x0
      80002a84  x1:80002a80 x1=80002a88                 # jalr    ra, ra, 544
; ?? (start_snitch.S:33)
      80002ca0  x2:0011f750 x2=0011f74c                 # addi    sp, sp, -4
; ?? (start_snitch.S:34)
      80002ca4  x2:0011f74c x1:80002a88 WA:0011f74c     # sw      ra, 0(sp)
; ?? (start_snitch.S:35)
      80002ca8  x1=80002ca8                             # auipc   ra, 0x0
      80002cac  x1:80002ca8 x1=80002cb0                 # jalr    ra, ra, -1616
; _snrt_barrier_reg_ptr (team.c:80)
      80002658  x10=00000000                            # lui     a0, 0x0
      8000265c  x10:00000000 x4:0011f750 x10=0011f750   # add     a0, a0, tp
      80002660  x10:0011f750 RA:0011f750 x10=0011ff70   # lw      a0, 0(a0)
      80002664  x10:0011ff70 RA:0011ff70 x10=0011ff70   # lw      a0, 0(a0)
      80002668  x10:0011ff70 RA:0011ffe0 x10=00120190   # lw      a0, 112(a0)
      8000266c  x1:80002cb0                             # ret
; ?? (start_snitch.S:36)
      80002cb0  x10:00120190 RA:00120190 x10=00000000   # lw      a0, 0(a0)
      80002cb0  x10:00120190 RA:00120190 x10=00000000   # lw      a0, 0(a0)
      80002cb0  x10:00120190 RA:00120190 x10=00000000   # lw      a0, 0(a0)
      80002cb0  x10:00120190 RA:00120190 x10=00000000   # lw      a0, 0(a0)
      80002cb0  x10:00120190 RA:00120190 x10=00000000   # lw      a0, 0(a0)
; ?? (start_snitch.S:37)
      80002cb4  x10:00000000                            # mv      zero, a0
      80002cb4  x10:00000000                            # mv      zero, a0
; ?? (start_snitch.S:36)
      80002cb0  x10:00120190 RA:00120190 x10=00000000   # lw      a0, 0(a0)
; ?? (start_snitch.S:37)
      80002cb4  x10:00000000                            # mv      zero, a0
; ?? (start_snitch.S:36)
      80002cb0  x10:00120190 RA:00120190 x10=00000000   # lw      a0, 0(a0)
; ?? (start_snitch.S:37)
      80002cb4  x10:00000000                            # mv      zero, a0
; ?? (start_snitch.S:36)
      80002cb0  x10:00120190 RA:00120190 x10=00000000   # lw      a0, 0(a0)
; ?? (start_snitch.S:37)
      80002cb4  x10:00000000                            # mv      zero, a0
; ?? (start_snitch.S:38)
      80002cb8  x2:0011f344 RA:0011f344 x1=80002a88     # lw      ra, 0(sp)
; ?? (start_snitch.S:39)
      80002cbc  x2:0011f344 x2=0011f348                 # addi    sp, sp, 4
; ?? (start_snitch.S:40)
      80002cc0  x1:80002a88                             # ret
; ?? (start.S:183)
      80002a88  x1=80000a88                             # auipc   ra, 0xffffe
      80002a8c  x1:80000a88 x1=80002a90                 # jalr    ra, ra, -844
; ?? (start_snitch.S:37)
      80002cb4  x10:00000000                            # mv      zero, a0
; ?? (start_snitch.S:38)
      80002cb8  x2:0011eb34 RA:0011eb34 x1=80002a88     # lw      ra, 0(sp)
; ?? (start_snitch.S:37)
      80002cb4  x10:00000000                            # mv      zero, a0
; ?? (start_snitch.S:36)
      80002cb0  x10:00120190 RA:00120190 x10=00000000   # lw      a0, 0(a0)
; ?? (start_snitch.S:38)
      80002cb8  x2:0011df1c RA:0011df1c x1=80002a88     # lw      ra, 0(sp)
      80002cb8  x2:0011fb54 RA:0011fb54 x1=80002a88     # lw      ra, 0(sp)
; ?? (start_snitch.S:37)
      80002cb4  x10:00000000                            # mv      zero, a0
; ?? (start_snitch.S:38)
      80002cb8  x2:0011ef3c RA:0011ef3c x1=80002a88     # lw      ra, 0(sp)
; main (bench_matmul.c:13)
      8000073c  x2:0011f348 x2=0011f318                 # addi    sp, sp, -48
; ?? (start_snitch.S:38)
      80002cb8  x2:0011ff5c RA:0011ff5c x1=80002a88     # lw      ra, 0(sp)
; ?? (start_snitch.S:39)
      80002cbc  x2:0011eb34 x2=0011eb38                 # addi    sp, sp, 4
; ?? (start_snitch.S:40)
      80002cc0  x1:80002a88                             # ret
; ?? (start.S:183)
      80002a88  x1=80000a88                             # auipc   ra, 0xffffe
      80002a8c  x1:80000a88 x1=80002a90                 # jalr    ra, ra, -844
; ?? (start_snitch.S:39)
      80002cbc  x2:0011fb54 x2=0011fb58                 # addi    sp, sp, 4
; ?? (start_snitch.S:38)
      80002cb8  x2:0011e324 RA:0011e324 x1=80002a88     # lw      ra, 0(sp)
; ?? (start_snitch.S:39)
      80002cbc  x2:0011ef3c x2=0011ef40                 # addi    sp, sp, 4
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_matmul.c:14)
      80000740  x2:0011f318 x1:80002a90 WA:0011f344     # sw      ra, 44(sp)
; ?? (start_snitch.S:39)
      80002cbc  x2:0011ff5c x2=0011ff60                 # addi    sp, sp, 4
; ?? (start_snitch.S:38)
      80002cb8  x2:0011f74c RA:0011f74c x1=80002a88     # lw      ra, 0(sp)
; ?? (start_snitch.S:39)
      80002cbc  x2:0011f74c x2=0011f750                 # addi    sp, sp, 4
; ?? (start_snitch.S:40)
      80002cc0  x1:80002a88                             # ret
; main (bench_matmul.c:13)
      8000073c  x2:0011eb38 x2=0011eb08                 # addi    sp, sp, -48
; ?? (start_snitch.S:40)
      80002cc0  x1:80002a88                             # ret
; ?? (start.S:183)
      80002a88  x1=80000a88                             # auipc   ra, 0xffffe
      80002a8c  x1:80000a88 x1=80002a90                 # jalr    ra, ra, -844
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_matmul.c:14)
      80000744  x2:0011f318 x8:00000003 WA:0011f340     # sw      s0, 40(sp)
; ?? (start_snitch.S:40)
      80002cc0  x1:80002a88                             # ret
; ?? (start.S:183)
      80002a88  x1=80000a88                             # auipc   ra, 0xffffe
      80002a8c  x1:80000a88 x1=80002a90                 # jalr    ra, ra, -844
      80002a88  x1=80000a88                             # auipc   ra, 0xffffe
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_matmul.c:14)
      80000740  x2:0011eb08 x1:80002a90 WA:0011eb34     # sw      ra, 44(sp)
; ?? (start_snitch.S:39)
      80002cbc  x2:0011e324 x2=0011e328                 # addi    sp, sp, 4
; ?? (start_snitch.S:40)
      80002cc0  x1:80002a88                             # ret
; main (bench_matmul.c:13)
      8000073c  x2:0011fb58 x2=0011fb28                 # addi    sp, sp, -48
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_matmul.c:14)
      80000740  x2:0011fb28 x1:80002a90 WA:0011fb54     # sw      ra, 44(sp)
      80000744  x2:0011fb28 x8:00000001 WA:0011fb50     # sw      s0, 40(sp)
      80000748  x2:0011fb28 x9:00000000 WA:0011fb4c     # sw      s1, 36(sp)
      8000074c  x2:0011fb28 x18:00000000 WA:0011fb48    # sw      s2, 32(sp)
      80000750  x2:0011fb28 x19:00000000 WA:0011fb44    # sw      s3, 28(sp)
      80000744  x2:0011eb08 x8:00000005 WA:0011eb30     # sw      s0, 40(sp)
; ?? (start_snitch.S:40)
      80002cc0  x1:80002a88                             # ret
; ?? (start.S:183)
      80002a88  x1=80000a88                             # auipc   ra, 0xffffe
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_matmul.c:14)
      80000748  x2:0011f318 x9:00000000 WA:0011f33c     # sw      s1, 36(sp)
; ?? (start_snitch.S:37)
      80002cb4  x10:00000000                            # mv      zero, a0
; ?? (start_snitch.S:39)
      80002cbc  x2:0011df1c x2=0011df20                 # addi    sp, sp, 4
; main (bench_matmul.c:13)
      8000073c  x2:0011ff60 x2=0011ff30                 # addi    sp, sp, -48
; ?? (start.S:183)
      80002a8c  x1:80000a88 x1=80002a90                 # jalr    ra, ra, -844
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_matmul.c:14)
      80000754  x2:0011fb28 f08:        0.000000 WA:0011fb38 WA:0011fb3c  # fsd     fs0, 16(sp)
; main (bench_matmul.c:13)
      8000073c  x2:0011f750 x2=0011f720                 # addi    sp, sp, -48
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_matmul.c:14)
      80000748  x2:0011eb08 x9:00000000 WA:0011eb2c     # sw      s1, 36(sp)
; ?? (start.S:183)
      80002a88  x1=80000a88                             # auipc   ra, 0xffffe
      80002a8c  x1:80000a88 x1=80002a90                 # jalr    ra, ra, -844
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_matmul.c:14)
      8000074c  x2:0011f318 x18:00000000 WA:0011f338    # sw      s2, 32(sp)
; main (bench_matmul.c:13)
      8000073c  x2:0011ef40 x2=0011ef10                 # addi    sp, sp, -48
; ?? (start_snitch.S:38)
      80002cb8  x2:0011e72c RA:0011e72c x1=80002a88     # lw      ra, 0(sp)
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_matmul.c:14)
      80000740  x2:0011ef10 x1:80002a90 WA:0011ef3c     # sw      ra, 44(sp)
      80000740  x2:0011ff30 x1:80002a90 WA:0011ff5c     # sw      ra, 44(sp)
      80000758  x10=00000000                            # lui     a0, 0x0
      80000740  x2:0011f720 x1:80002a90 WA:0011f74c     # sw      ra, 44(sp)
      8000074c  x2:0011eb08 x18:00000000 WA:0011eb28    # sw      s2, 32(sp)
; ?? (start.S:183)
      80002a8c  x1:80000a88 x1=80002a90                 # jalr    ra, ra, -844
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_matmul.c:14)
      80000750  x2:0011f318 x19:00000000 WA:0011f334    # sw      s3, 28(sp)
; main (bench_matmul.c:13)
      8000073c  x2:0011e328 x2=0011e2f8                 # addi    sp, sp, -48
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_matmul.c:14)
      80000754  x2:0011f318 f08:        0.000000 WA:0011f328 WA:0011f32c  # fsd     fs0, 16(sp)
      80000740  x2:0011e2f8 x1:80002a90 WA:0011e324     # sw      ra, 44(sp)
; ?? (start_snitch.S:39)
      80002cbc  x2:0011e72c x2=0011e730                 # addi    sp, sp, 4
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_matmul.c:14)
      80000744  x2:0011e2f8 x8:00000007 WA:0011e320     # sw      s0, 40(sp)
      8000075c  x10:00000000 x4:0011fb58 x10=0011fb58   # add     a0, a0, tp
      80000744  x2:0011f720 x8:00000002 WA:0011f748     # sw      s0, 40(sp)
      80000750  x2:0011eb08 x19:00000000 WA:0011eb24    # sw      s3, 28(sp)
; ?? (start_snitch.S:40)
      80002cc0  x1:80002a88                             # ret
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_matmul.c:14)
      80000744  x2:0011ef10 x8:00000004 WA:0011ef38     # sw      s0, 40(sp)
      80000758  x10=00000000                            # lui     a0, 0x0
      80000744  x2:0011ff30 x8:00000000 WA:0011ff58     # sw      s0, 40(sp)
; ?? (start_snitch.S:40)
      80002cc0  x1:80002a88                             # ret
; ?? (start.S:183)
      80002a88  x1=80000a88                             # auipc   ra, 0xffffe
      80002a8c  x1:80000a88 x1=80002a90                 # jalr    ra, ra, -844
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_matmul.c:14)
      80000748  x2:0011f720 x9:00000000 WA:0011f744     # sw      s1, 36(sp)
      80000754  x2:0011eb08 f08:        0.000000 WA:0011eb18 WA:0011eb1c  # fsd     fs0, 16(sp)
; ?? (start.S:183)
      80002a88  x1=80000a88                             # auipc   ra, 0xffffe
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_matmul.c:14)
      80000748  x2:0011ef10 x9:00000000 WA:0011ef34     # sw      s1, 36(sp)
      8000075c  x10:00000000 x4:0011f348 x10=0011f348   # add     a0, a0, tp
      80000748  x2:0011ff30 x9:00000000 WA:0011ff54     # sw      s1, 36(sp)
      80000748  x2:0011e2f8 x9:00000000 WA:0011e31c     # sw      s1, 36(sp)
      80000760  x10:0011fb58 RA:0011fb5c x11=00000001   # lw      a1, 4(a0)
; main (bench_matmul.c:13)
      8000073c  x2:0011e730 x2=0011e700                 # addi    sp, sp, -48
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_matmul.c:14)
      8000074c  x2:0011f720 x18:00000000 WA:0011f740    # sw      s2, 32(sp)
      80000758  x10=00000000                            # lui     a0, 0x0
; ?? (start.S:183)
      80002a8c  x1:80000a88 x1=80002a90                 # jalr    ra, ra, -844
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_matmul.c:14)
      8000074c  x2:0011ef10 x18:00000000 WA:0011ef30    # sw      s2, 32(sp)
      80000760  x10:0011f348 RA:0011f34c x11=00000003   # lw      a1, 4(a0)
      8000074c  x2:0011ff30 x18:00000000 WA:0011ff50    # sw      s2, 32(sp)
      8000074c  x2:0011e2f8 x18:00000000 WA:0011e318    # sw      s2, 32(sp)
; main (bench_matmul.c:0)
      80000764  x10=00000000                            # li      a0, 0
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_matmul.c:14)
      80000740  x2:0011e700 x1:80002a90 WA:0011e72c     # sw      ra, 44(sp)
      80000750  x2:0011f720 x19:00000000 WA:0011f73c    # sw      s3, 28(sp)
      8000075c  x10:00000000 x4:0011eb38 x10=0011eb38   # add     a0, a0, tp
; main (bench_matmul.c:13)
      8000073c  x2:0011df20 x2=0011def0                 # addi    sp, sp, -48
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_matmul.c:14)
      80000750  x2:0011ef10 x19:00000000 WA:0011ef2c    # sw      s3, 28(sp)
; main (bench_matmul.c:0)
      80000764  x10=00000000                            # li      a0, 0
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_matmul.c:14)
      80000750  x2:0011ff30 x19:00000000 WA:0011ff4c    # sw      s3, 28(sp)
      80000750  x2:0011e2f8 x19:00000000 WA:0011e314    # sw      s3, 28(sp)
; main (bench_matmul.c:14)
      80000768  x11:00000001                            # bnez    a1, pc + 296
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_matmul.c:14)
      80000754  x2:0011e2f8 f08:        0.000000 WA:0011e308 WA:0011e30c  # fsd     fs0, 16(sp)
; main (bench_matmul.c:47)
      80000890  x2:0011fb28 RA:0011fb38 RA:0011fb3c f08=        0.000000  # fld     fs0, 16(sp)
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_matmul.c:14)
      80000760  x10:0011eb38 RA:0011eb3c x11=00000005   # lw      a1, 4(a0)
      80000740  x2:0011def0 x1:80002a90 WA:0011df1c     # sw      ra, 44(sp)
      80000754  x2:0011ef10 f08:        0.000000 WA:0011ef20 WA:0011ef24  # fsd     fs0, 16(sp)
; main (bench_matmul.c:14)
      80000768  x11:00000003                            # bnez    a1, pc + 296
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_matmul.c:14)
      80000754  x2:0011ff30 f08:        0.000000 WA:0011ff40 WA:0011ff44  # fsd     fs0, 16(sp)
; main (bench_matmul.c:47)
      80000890  x2:0011f318 RA:0011f328 RA:0011f32c f08=        0.000000  # fld     fs0, 16(sp)
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_matmul.c:14)
      80000744  x2:0011e700 x8:00000006 WA:0011e728     # sw      s0, 40(sp)
      80000754  x2:0011f720 f08:        0.000000 WA:0011f730 WA:0011f734  # fsd     fs0, 16(sp)
      80000758  x10=00000000                            # lui     a0, 0x0
; main (bench_matmul.c:47)
      80000894  x2:0011fb28 RA:0011fb44 x19=00000000    # lw      s3, 28(sp)
; main (bench_matmul.c:0)
      80000764  x10=00000000                            # li      a0, 0
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_matmul.c:14)
      80000744  x2:0011def0 x8:00000008 WA:0011df18     # sw      s0, 40(sp)
      80000758  x10=00000000                            # lui     a0, 0x0
      80000758  x10=00000000                            # lui     a0, 0x0
; main (bench_matmul.c:47)
      80000894  x2:0011f318 RA:0011f334 x19=00000000    # lw      s3, 28(sp)
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_matmul.c:14)
      80000748  x2:0011e700 x9:00000000 WA:0011e724     # sw      s1, 36(sp)
      80000758  x10=00000000                            # lui     a0, 0x0
      8000075c  x10:00000000 x4:0011f750 x10=0011f750   # add     a0, a0, tp
; main (bench_matmul.c:47)
      80000898  x2:0011fb28 RA:0011fb48 x18=00000000    # lw      s2, 32(sp)
; main (bench_matmul.c:14)
      80000768  x11:00000005                            # bnez    a1, pc + 296
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_matmul.c:14)
      80000748  x2:0011def0 x9:00000000 WA:0011df14     # sw      s1, 36(sp)
; main (bench_matmul.c:47)
      80000890  x2:0011eb08 RA:0011eb18 RA:0011eb1c f08=        0.000000  # fld     fs0, 16(sp)
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_matmul.c:14)
      8000074c  x2:0011def0 x18:00000000 WA:0011df10    # sw      s2, 32(sp)
      8000075c  x10:00000000 x4:0011ff60 x10=0011ff60   # add     a0, a0, tp
; main (bench_matmul.c:47)
      80000898  x2:0011f318 RA:0011f338 x18=00000000    # lw      s2, 32(sp)
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_matmul.c:14)
      8000074c  x2:0011e700 x18:00000000 WA:0011e720    # sw      s2, 32(sp)
      8000075c  x10:00000000 x4:0011e328 x10=0011e328   # add     a0, a0, tp
      80000760  x10:0011f750 RA:0011f754 x11=00000002   # lw      a1, 4(a0)
; main (bench_matmul.c:47)
      8000089c  x2:0011fb28 RA:0011fb4c x9=00000000     # lw      s1, 36(sp)
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_matmul.c:14)
      8000075c  x10:00000000 x4:0011ef40 x10=0011ef40   # add     a0, a0, tp
; main (bench_matmul.c:47)
      80000894  x2:0011eb08 RA:0011eb24 x19=00000000    # lw      s3, 28(sp)
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_matmul.c:14)
      80000750  x2:0011def0 x19:00000000 WA:0011df0c    # sw      s3, 28(sp)
      80000760  x10:0011ff60 RA:0011ff64 x11=00000000   # lw      a1, 4(a0)
; main (bench_matmul.c:47)
      8000089c  x2:0011f318 RA:0011f33c x9=00000000     # lw      s1, 36(sp)
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_matmul.c:14)
      80000750  x2:0011e700 x19:00000000 WA:0011e71c    # sw      s3, 28(sp)
      80000760  x10:0011e328 RA:0011e32c x11=00000007   # lw      a1, 4(a0)
; main (bench_matmul.c:0)
      80000764  x10=00000000                            # li      a0, 0
; main (bench_matmul.c:47)
      800008a0  x2:0011fb28 RA:0011fb50 x8=00000001     # lw      s0, 40(sp)
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_matmul.c:14)
      80000760  x10:0011ef40 RA:0011ef44 x11=00000004   # lw      a1, 4(a0)
; main (bench_matmul.c:47)
      80000898  x2:0011eb08 RA:0011eb28 x18=00000000    # lw      s2, 32(sp)
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_matmul.c:14)
      80000754  x2:0011def0 f08:        0.000000 WA:0011df00 WA:0011df04  # fsd     fs0, 16(sp)
; main (bench_matmul.c:0)
      80000764  x10=00000000                            # li      a0, 0
; main (bench_matmul.c:47)
      800008a0  x2:0011f318 RA:0011f340 x8=00000003     # lw      s0, 40(sp)
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_matmul.c:14)
      80000754  x2:0011e700 f08:        0.000000 WA:0011e710 WA:0011e714  # fsd     fs0, 16(sp)
; main (bench_matmul.c:0)
      80000764  x10=00000000                            # li      a0, 0
; main (bench_matmul.c:14)
      80000768  x11:00000002                            # bnez    a1, pc + 296
; main (bench_matmul.c:47)
      800008a4  x2:0011fb28 RA:0011fb54 x1=80002a90     # lw      ra, 44(sp)
      80000890  x2:0011f720 RA:0011f730 RA:0011f734 f08=        0.000000  # fld     fs0, 16(sp)
; main (bench_matmul.c:0)
      80000764  x10=00000000                            # li      a0, 0
; main (bench_matmul.c:47)
      8000089c  x2:0011eb08 RA:0011eb2c x9=00000000     # lw      s1, 36(sp)
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_matmul.c:14)
      80000758  x10=00000000                            # lui     a0, 0x0
; main (bench_matmul.c:14)
      80000768  x11:00000000                            # bnez    a1, pc + 296
; main (bench_matmul.c:47)
      800008a4  x2:0011f318 RA:0011f344 x1=80002a90     # lw      ra, 44(sp)
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_matmul.c:14)
      80000758  x10=00000000                            # lui     a0, 0x0
; main (bench_matmul.c:14)
      80000768  x11:00000007                            # bnez    a1, pc + 296
; main (bench_matmul.c:47)
      800008a8  x2:0011fb28 x2=0011fb58                 # addi    sp, sp, 48
      80000890  x2:0011e2f8 RA:0011e308 RA:0011e30c f08=        0.000000  # fld     fs0, 16(sp)
; main (bench_matmul.c:14)
      80000768  x11:00000004                            # bnez    a1, pc + 296
; main (bench_matmul.c:47)
      800008a0  x2:0011eb08 RA:0011eb30 x8=00000005     # lw      s0, 40(sp)
      80000890  x2:0011ef10 RA:0011ef20 RA:0011ef24 f08=        0.000000  # fld     fs0, 16(sp)
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_matmul.c:14)
      8000075c  x10:00000000 x4:0011df20 x10=0011df20   # add     a0, a0, tp
; main (bench_matmul.c:47)
      80000894  x2:0011ef10 RA:0011ef2c x19=00000000    # lw      s3, 28(sp)
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_matmul.c:14)
      80000760  x10:0011df20 RA:0011df24 x11=00000008   # lw      a1, 4(a0)
; main (bench_matmul.c:47)
      80000898  x2:0011ef10 RA:0011ef30 x18=00000000    # lw      s2, 32(sp)
; main (bench_matmul.c:0)
      80000764  x10=00000000                            # li      a0, 0
; main (bench_matmul.c:47)
      80000894  x2:0011f720 RA:0011f73c x19=00000000    # lw      s3, 28(sp)
      800008a4  x2:0011eb08 RA:0011eb34 x1=80002a90     # lw      ra, 44(sp)
; snrt_current_team (team.c:16)
;  in snrt_l1alloc (alloc.c:21)
;  in main (bench_matmul.c:22)
      8000076c  x10=00000000                            # lui     a0, 0x0
; main (bench_matmul.c:47)
      800008a8  x2:0011f318 x2=0011f348                 # addi    sp, sp, 48
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_matmul.c:14)
      8000075c  x10:00000000 x4:0011e730 x10=0011e730   # add     a0, a0, tp
; main (bench_matmul.c:47)
      800008ac  x1:80002a90                             # ret
      8000089c  x2:0011ef10 RA:0011ef34 x9=00000000     # lw      s1, 36(sp)
; main (bench_matmul.c:14)
      80000768  x11:00000008                            # bnez    a1, pc + 296
; main (bench_matmul.c:47)
      80000894  x2:0011e2f8 RA:0011e314 x19=00000000    # lw      s3, 28(sp)
      80000890  x2:0011def0 RA:0011df00 RA:0011df04 f08=        0.000000  # fld     fs0, 16(sp)
      80000898  x2:0011f720 RA:0011f740 x18=00000000    # lw      s2, 32(sp)
      800008a8  x2:0011eb08 x2=0011eb38                 # addi    sp, sp, 48
      8000089c  x2:0011f720 RA:0011f744 x9=00000000     # lw      s1, 36(sp)
; snrt_cluster_core_idx (team.c:43)
;  in snrt_cluster_compute_core_idx (team.c:51)
;  in main (bench_matmul.c:14)
      80000760  x10:0011e730 RA:0011e734 x11=00000006   # lw      a1, 4(a0)
; ?? (start.S:184)
      80002a90  x10:00000000 x8=00000000                # mv      s0, a0
; main (bench_matmul.c:47)
      800008a0  x2:0011ef10 RA:0011ef38 x8=00000004     # lw      s0, 40(sp)
      80000898  x2:0011e2f8 RA:0011e318 x18=00000000    # lw      s2, 32(sp)
      80000894  x2:0011def0 RA:0011df0c x19=00000000    # lw      s3, 28(sp)
; snrt_current_team (team.c:16)
;  in snrt_l1alloc (alloc.c:21)
;  in main (bench_matmul.c:22)
      80000770  x10:00000000 x4:0011ff60 x10=0011ff60   # add     a0, a0, tp
; main (bench_matmul.c:47)
      800008ac  x1:80002a90                             # ret
      800008ac  x1:80002a90                             # ret
      800008a0  x2:0011f720 RA:0011f748 x8=00000002     # lw      s0, 40(sp)
; main (bench_matmul.c:0)
      80000764  x10=00000000                            # li      a0, 0
; ?? (start.S:191)
      80002a94  x1=80002a94                             # auipc   ra, 0x0
; main (bench_matmul.c:47)
      800008a4  x2:0011ef10 RA:0011ef3c x1=80002a90     # lw      ra, 44(sp)
      8000089c  x2:0011e2f8 RA:0011e31c x9=00000000     # lw      s1, 36(sp)
      80000898  x2:0011def0 RA:0011df10 x18=00000000    # lw      s2, 32(sp)
; snrt_current_team (team.c:16)
;  in snrt_l1alloc (alloc.c:21)
;  in main (bench_matmul.c:22)
      80000774  x10:0011ff60 RA:0011ff60 x10=0011ff70   # lw      a0, 0(a0)
; ?? (start.S:184)
      80002a90  x10:00000000 x8=00000000                # mv      s0, a0
; snrt_current_team (team.c:16)
;  in snrt_l1alloc (alloc.c:21)
;  in main (bench_matmul.c:22)
      80000778  x10:0011ff70 RA:0011ff70 x10=0011ff70   # lw      a0, 0(a0)
; ?? (start.S:184)
      80002a90  x10:00000000 x8=00000000                # mv      s0, a0
; main (bench_matmul.c:47)
      800008a4  x2:0011f720 RA:0011f74c x1=80002a90     # lw      ra, 44(sp)
; main (bench_matmul.c:14)
      80000768  x11:00000006                            # bnez    a1, pc + 296
; ?? (start.S:191)
      80002a98  x1:80002a94 x1=80002a9c                 # jalr    ra, ra, 524
; main (bench_matmul.c:47)
      80000890  x2:0011e700 RA:0011e710 RA:0011e714 f08=        0.000000  # fld     fs0, 16(sp)
      800008a8  x2:0011ef10 x2=0011ef40                 # addi    sp, sp, 48
      800008a0  x2:0011e2f8 RA:0011e320 x8=00000007     # lw      s0, 40(sp)
      8000089c  x2:0011def0 RA:0011df14 x9=00000000     # lw      s1, 36(sp)
; ?? (start.S:191)
      80002a94  x1=80002a94                             # auipc   ra, 0x0
; snrt_l1alloc (alloc.c:25)
;  in main (bench_matmul.c:22)
      8000077c  x10:0011ff70 RA:0011ffc8 x8=00100000    # lw      s0, 88(a0)
; ?? (start.S:191)
      80002a94  x1=80002a94                             # auipc   ra, 0x0
; main (bench_matmul.c:47)
      800008a8  x2:0011f720 x2=0011f750                 # addi    sp, sp, 48
; ?? (start_snitch.S:33)
      80002ca0  x2:0011fb58 x2=0011fb54                 # addi    sp, sp, -4
; main (bench_matmul.c:47)
      80000894  x2:0011e700 RA:0011e71c x19=00000000    # lw      s3, 28(sp)
      800008ac  x1:80002a90                             # ret
      800008a4  x2:0011e2f8 RA:0011e324 x1=80002a90     # lw      ra, 44(sp)
      800008a0  x2:0011def0 RA:0011df18 x8=00000008     # lw      s0, 40(sp)
; ?? (start.S:191)
      80002a98  x1:80002a94 x1=80002a9c                 # jalr    ra, ra, 524
; snrt_l1alloc (alloc.c:25)
;  in main (bench_matmul.c:22)
      80000780  x10:0011ff70 RA:0011ffc0 x11=00100000   # lw      a1, 80(a0)
; ?? (start.S:191)
      80002a98  x1:80002a94 x1=80002a9c                 # jalr    ra, ra, 524
; main (bench_matmul.c:47)
      800008ac  x1:80002a90                             # ret
; ?? (start_snitch.S:34)
      80002ca4  x2:0011fb54 x1:80002a9c WA:0011fb54     # sw      ra, 0(sp)
; main (bench_matmul.c:47)
      80000898  x2:0011e700 RA:0011e720 x18=00000000    # lw      s2, 32(sp)
; ?? (start.S:184)
      80002a90  x10:00000000 x8=00000000                # mv      s0, a0
; main (bench_matmul.c:47)
      800008a8  x2:0011e2f8 x2=0011e328                 # addi    sp, sp, 48
      800008a4  x2:0011def0 RA:0011df1c x1=80002a90     # lw      ra, 44(sp)
; ?? (start_snitch.S:33)
      80002ca0  x2:0011f348 x2=0011f344                 # addi    sp, sp, -4
; snrt_l1alloc (alloc.c:25)
;  in main (bench_matmul.c:22)
      80000784  x10:0011ff70 RA:0011ffc4 x13=0001db28   # lw      a3, 84(a0)
; ?? (start_snitch.S:33)
      80002ca0  x2:0011eb38 x2=0011eb34                 # addi    sp, sp, -4
; ?? (start.S:184)
      80002a90  x10:00000000 x8=00000000                # mv      s0, a0
; ?? (start_snitch.S:35)
      80002ca8  x1=80002ca8                             # auipc   ra, 0x0
; main (bench_matmul.c:47)
      8000089c  x2:0011e700 RA:0011e724 x9=00000000     # lw      s1, 36(sp)
; ?? (start.S:191)
      80002a94  x1=80002a94                             # auipc   ra, 0x0
; main (bench_matmul.c:47)
      800008ac  x1:80002a90                             # ret
      800008a8  x2:0011def0 x2=0011df20                 # addi    sp, sp, 48
; ?? (start_snitch.S:34)
      80002ca4  x2:0011f344 x1:80002a9c WA:0011f344     # sw      ra, 0(sp)
; snrt_l1alloc (alloc.c:25)
;  in main (bench_matmul.c:22)
      80000788  x8:00100000 x12=001000f0                # addi    a2, s0, 240
; ?? (start_snitch.S:34)
      80002ca4  x2:0011eb34 x1:80002a9c WA:0011eb34     # sw      ra, 0(sp)
; ?? (start.S:191)
      80002a94  x1=80002a94                             # auipc   ra, 0x0
; ?? (start_snitch.S:35)
      80002cac  x1:80002ca8 x1=80002cb0                 # jalr    ra, ra, -1616
; main (bench_matmul.c:47)
      800008a0  x2:0011e700 RA:0011e728 x8=00000006     # lw      s0, 40(sp)
; ?? (start.S:191)
      80002a98  x1:80002a94 x1=80002a9c                 # jalr    ra, ra, 524
; ?? (start.S:184)
      80002a90  x10:00000000 x8=00000000                # mv      s0, a0
; main (bench_matmul.c:47)
      800008ac  x1:80002a90                             # ret
; ?? (start_snitch.S:35)
      80002ca8  x1=80002ca8                             # auipc   ra, 0x0
; snrt_l1alloc (alloc.c:25)
;  in main (bench_matmul.c:22)
      8000078c  x13:0001db28 x11:00100000 x11=0011db28  # add     a1, a3, a1
; ?? (start_snitch.S:35)
      80002ca8  x1=80002ca8                             # auipc   ra, 0x0
; ?? (start.S:191)
      80002a98  x1:80002a94 x1=80002a9c                 # jalr    ra, ra, 524
; _snrt_barrier_reg_ptr (team.c:80)
      80002658  x10=00000000                            # lui     a0, 0x0
; main (bench_matmul.c:47)
      800008a4  x2:0011e700 RA:0011e72c x1=80002a90     # lw      ra, 44(sp)
; ?? (start_snitch.S:33)
      80002ca0  x2:0011ef40 x2=0011ef3c                 # addi    sp, sp, -4
; ?? (start.S:191)
      80002a94  x1=80002a94                             # auipc   ra, 0x0
; ?? (start.S:184)
      80002a90  x10:00000000 x8=00000000                # mv      s0, a0
; ?? (start_snitch.S:35)
      80002cac  x1:80002ca8 x1=80002cb0                 # jalr    ra, ra, -1616
; snrt_l1alloc (alloc.c:25)
;  in main (bench_matmul.c:22)
      80000790  x11:0011db28 x12:001000f0               # bgeu    a1, a2, pc + 44
; ?? (start_snitch.S:35)
      80002cac  x1:80002ca8 x1=80002cb0                 # jalr    ra, ra, -1616
; ?? (start_snitch.S:33)
      80002ca0  x2:0011f750 x2=0011f74c                 # addi    sp, sp, -4
; _snrt_barrier_reg_ptr (team.c:80)
      8000265c  x10:00000000 x4:0011fb58 x10=0011fb58   # add     a0, a0, tp
; main (bench_matmul.c:47)
      800008a8  x2:0011e700 x2=0011e730                 # addi    sp, sp, 48
; ?? (start_snitch.S:34)
      80002ca4  x2:0011ef3c x1:80002a9c WA:0011ef3c     # sw      ra, 0(sp)
; ?? (start.S:191)
      80002a98  x1:80002a94 x1=80002a9c                 # jalr    ra, ra, 524
      80002a94  x1=80002a94                             # auipc   ra, 0x0
; _snrt_barrier_reg_ptr (team.c:80)
      80002658  x10=00000000                            # lui     a0, 0x0
; snrt_l1alloc (alloc.c:34)
;  in main (bench_matmul.c:22)
      800007bc  x10:0011ff70 x12:001000f0 WA:0011ffc8   # sw      a2, 88(a0)
; _snrt_barrier_reg_ptr (team.c:80)
      80002658  x10=00000000                            # lui     a0, 0x0
; ?? (start_snitch.S:34)
      80002ca4  x2:0011f74c x1:80002a9c WA:0011f74c     # sw      ra, 0(sp)
; _snrt_barrier_reg_ptr (team.c:80)
      80002660  x10:0011fb58 RA:0011fb58 x10=0011ff70   # lw      a0, 0(a0)
; main (bench_matmul.c:47)
      800008ac  x1:80002a90                             # ret
; ?? (start_snitch.S:35)
      80002ca8  x1=80002ca8                             # auipc   ra, 0x0
; ?? (start_snitch.S:33)
      80002ca0  x2:0011e328 x2=0011e324                 # addi    sp, sp, -4
; ?? (start.S:191)
      80002a98  x1:80002a94 x1=80002a9c                 # jalr    ra, ra, 524
; _snrt_barrier_reg_ptr (team.c:80)
      8000265c  x10:00000000 x4:0011f348 x10=0011f348   # add     a0, a0, tp
; snrt_l1alloc (alloc.c:34)
;  in main (bench_matmul.c:22)
      800007c0  x8:00100000 x18=00100000                # mv      s2, s0
; _snrt_barrier_reg_ptr (team.c:80)
      8000265c  x10:00000000 x4:0011eb38 x10=0011eb38   # add     a0, a0, tp
; ?? (start_snitch.S:35)
      80002ca8  x1=80002ca8                             # auipc   ra, 0x0
; _snrt_barrier_reg_ptr (team.c:80)
      80002664  x10:0011ff70 RA:0011ff70 x10=0011ff70   # lw      a0, 0(a0)
; ?? (start.S:184)
      80002a90  x10:00000000 x8=00000000                # mv      s0, a0
; ?? (start_snitch.S:35)
      80002cac  x1:80002ca8 x1=80002cb0                 # jalr    ra, ra, -1616
; ?? (start_snitch.S:34)
      80002ca4  x2:0011e324 x1:80002a9c WA:0011e324     # sw      ra, 0(sp)
; ?? (start_snitch.S:33)
      80002ca0  x2:0011df20 x2=0011df1c                 # addi    sp, sp, -4
; _snrt_barrier_reg_ptr (team.c:80)
      80002660  x10:0011f348 RA:0011f348 x10=0011ff70   # lw      a0, 0(a0)
; snrt_l1alloc (alloc.c:25)
;  in main (bench_matmul.c:23)
      800007c4  x12:001000f0 x8=001000f0                # mv      s0, a2
; _snrt_barrier_reg_ptr (team.c:80)
      80002660  x10:0011eb38 RA:0011eb38 x10=0011ff70   # lw      a0, 0(a0)
; ?? (start_snitch.S:35)
      80002cac  x1:80002ca8 x1=80002cb0                 # jalr    ra, ra, -1616
; _snrt_barrier_reg_ptr (team.c:80)
      80002668  x10:0011ff70 RA:0011ffe0 x10=00120190   # lw      a0, 112(a0)
; ?? (start.S:191)
      80002a94  x1=80002a94                             # auipc   ra, 0x0
; _snrt_barrier_reg_ptr (team.c:80)
      80002658  x10=00000000                            # lui     a0, 0x0
; ?? (start_snitch.S:35)
      80002ca8  x1=80002ca8                             # auipc   ra, 0x0
; ?? (start_snitch.S:34)
      80002ca4  x2:0011df1c x1:80002a9c WA:0011df1c     # sw      ra, 0(sp)
; _snrt_barrier_reg_ptr (team.c:80)
      80002664  x10:0011ff70 RA:0011ff70 x10=0011ff70   # lw      a0, 0(a0)
; snrt_l1alloc (alloc.c:25)
;  in main (bench_matmul.c:23)
      800007c8  x8:001000f0 x12=00100240                # addi    a2, s0, 336
; _snrt_barrier_reg_ptr (team.c:80)
      80002664  x10:0011ff70 RA:0011ff70 x10=0011ff70   # lw      a0, 0(a0)
      80002658  x10=00000000                            # lui     a0, 0x0
      8000266c  x1:80002cb0                             # ret
; ?? (start.S:191)
      80002a98  x1:80002a94 x1=80002a9c                 # jalr    ra, ra, 524
; _snrt_barrier_reg_ptr (team.c:80)
      8000265c  x10:00000000 x4:0011ef40 x10=0011ef40   # add     a0, a0, tp
; ?? (start_snitch.S:35)
      80002cac  x1:80002ca8 x1=80002cb0                 # jalr    ra, ra, -1616
      80002ca8  x1=80002ca8                             # auipc   ra, 0x0
      80002cac  x1:80002ca8 x1=80002cb0                 # jalr    ra, ra, -1616
; _snrt_barrier_reg_ptr (team.c:80)
      80002658  x10=00000000                            # lui     a0, 0x0
      8000265c  x10:00000000 x4:0011df20 x10=0011df20   # add     a0, a0, tp
      8000265c  x10:00000000 x4:0011f750 x10=0011f750   # add     a0, a0, tp
      80002660  x10:0011f750 RA:0011f750 x10=0011ff70   # lw      a0, 0(a0)
      80002660  x10:0011ef40 RA:0011ef40 x10=0011ff70   # lw      a0, 0(a0)
      80002658  x10=00000000                            # lui     a0, 0x0
      8000265c  x10:00000000 x4:0011e328 x10=0011e328   # add     a0, a0, tp
; snrt_l1alloc (alloc.c:25)
;  in main (bench_matmul.c:23)
      800007cc  x11:0011db28 x12:00100240               # bgeu    a1, a2, pc - 44
; snrt_l1alloc (alloc.c:34)
;  in main (bench_matmul.c:23)
      800007a0  x10:0011ff70 x12:00100240 WA:0011ffc8   # sw      a2, 88(a0)
; _snrt_barrier_reg_ptr (team.c:80)
      80002660  x10:0011df20 RA:0011df20 x10=0011ff70   # lw      a0, 0(a0)
      80002664  x10:0011ff70 RA:0011ff70 x10=0011ff70   # lw      a0, 0(a0)
      80002664  x10:0011ff70 RA:0011ff70 x10=0011ff70   # lw      a0, 0(a0)
      80002664  x10:0011ff70 RA:0011ff70 x10=0011ff70   # lw      a0, 0(a0)
      80002668  x10:0011ff70 RA:0011ffe0 x10=00120190   # lw      a0, 112(a0)
      80002660  x10:0011e328 RA:0011e328 x10=0011ff70   # lw      a0, 0(a0)
      80002664  x10:0011ff70 RA:0011ff70 x10=0011ff70   # lw      a0, 0(a0)
; snrt_l1alloc (alloc.c:34)
;  in main (bench_matmul.c:23)
      800007a4  x8:001000f0 x19=001000f0                # mv      s3, s0
; snrt_l1alloc (alloc.c:25)
;  in main (bench_matmul.c:24)
      800007a8  x12:00100240 x8=00100240                # mv      s0, a2
; _snrt_barrier_reg_ptr (team.c:80)
      80002668  x10:0011ff70 RA:0011ffe0 x10=00120190   # lw      a0, 112(a0)
      80002668  x10:0011ff70 RA:0011ffe0 x10=00120190   # lw      a0, 112(a0)
      8000266c  x1:80002cb0                             # ret
      8000266c  x1:80002cb0                             # ret
      80002668  x10:0011ff70 RA:0011ffe0 x10=00120190   # lw      a0, 112(a0)
      80002668  x10:0011ff70 RA:0011ffe0 x10=00120190   # lw      a0, 112(a0)
; ?? (start_snitch.S:33)
      80002ca0  x2:0011e730 x2=0011e72c                 # addi    sp, sp, -4
; snrt_l1alloc (alloc.c:25)
;  in main (bench_matmul.c:24)
      800007ac  x8:00100240 x12=00100358                # addi    a2, s0, 280
; _snrt_barrier_reg_ptr (team.c:80)
      8000266c  x1:80002cb0                             # ret
      80002668  x10:0011ff70 RA:0011ffe0 x10=00120190   # lw      a0, 112(a0)
      8000266c  x1:80002cb0                             # ret
      8000266c  x1:80002cb0                             # ret
; ?? (start_snitch.S:34)
      80002ca4  x2:0011e72c x1:80002a9c WA:0011e72c     # sw      ra, 0(sp)
; snrt_l1alloc (alloc.c:25)
;  in main (bench_matmul.c:24)
      800007b0  x11:0011db28 x12:00100358               # bltu    a1, a2, pc + 44
; _snrt_barrier_reg_ptr (team.c:80)
      8000266c  x1:80002cb0                             # ret
; ?? (start_snitch.S:35)
      80002ca8  x1=80002ca8                             # auipc   ra, 0x0
; snrt_l1alloc (alloc.c:34)
;  in main (bench_matmul.c:24)
      800007b4  x10:0011ff70 x12:00100358 WA:0011ffc8   # sw      a2, 88(a0)
      800007b8                                          # j       pc + 0x28
; main (bench_matmul.c:26)
      800007e0  x11=0000001e                            # li      a1, 30
      800007e4  x18:00100000 x10=00100000               # mv      a0, s2
      800007e8  x1=800007e8                             # auipc   ra, 0x0
      800007ec  x1:800007e8 x1=800007f0                 # jalr    ra, ra, -436
; init_data (bench_matmul.c:8)
      80000634  x11:0000001e x12=0000001d               # addi    a2, a1, -1
      80000638  x12:0000001d x15=000000e8               # slli    a5, a2, 3
      8000063c  x15:000000e8 x10:00100000 x14=001000e8  # add     a4, a5, a0
      80000640  x13=00100000                            # lui     a3, 0x100
      80000644  x13:00100000 x13=00100001               # addi    a3, a3, 1
      80000648  x10:00100000 x13:00100001 x13=00000001  # sltu    a3, a0, a3
      8000064c  x14:001000e8 x15:000000e8               # bgeu    a4, a5, pc + 100
; init_data (bench_matmul.c:0)
      800006b0  x15=00120000                            # lui     a5, 0x120
      800006b4  x15:00120000 x15=00120001               # addi    a5, a5, 1
      800006b8  x14:001000e8 x15:00120001 x14=00000001  # sltu    a4, a4, a5
      800006bc  x13:00000001 x14:00000001 x13=00000001  # and     a3, a3, a4
      800006c0  x13:00000001                            # beqz    a3, pc - 100
      800006c4  x13=00000000                            # li      a3, 0
      800006c8  x14=00000008                            # li      a4, 8
; init_data (bench_matmul.c:8)
      800006cc  x15=00000040                            # li      a5, 64
      800006d0  x12:0000001d x15:00000040 WA:00204810   # scfgw   a2, a5
      800006d4  x12=000000c0                            # li      a2, 192
      800006d8  x14:00000008 x12:000000c0 WA:00204830   # scfgw   a4, a2
      800006dc  x12=00000020                            # li      a2, 32
      800006e0  x12:00000020 WA:00204808                # scfgw   zero, a2
      800006e4  x10:00100000 WA:002048e0                # scfgwi  a0, 896
      800006e8  x10=00000000                            # csrrsi  a0, ssr, 1
      800006ec  x10=00000001                            # li      a0, 1
; init_data (bench_matmul.c:0)
      800006f0  x12=800036f0                            # auipc   a2, 0x3
      800006f4  x12:800036f0 x12=80002f58               # addi    a2, a2, -1944
      800006f8  x12:80002f58 RA:80002f58 RA:80002f5c f03=        3.141000  # fld     ft3, 0(a2)
      800006fc  x12=ccccd000                            # lui     a2, 0xccccd
      80000700  x12:ccccd000 x12=cccccccd               # addi    a2, a2, -819
      80000704  x14=00000014                            # li      a4, 20
; init_data (bench_matmul.c:9)
      80000708  x13:00000000 x12:cccccccd x15=00000000  # mulhu   a5, a3, a2
      8000070c  x15:00000000 x15=00000000               # srli    a5, a5, 4
      80000710  x15:00000000 x14:00000014 x15=00000000  # mul     a5, a5, a4
      80000714  x10:00000001 x15:00000000 x15=00000001  # sub     a5, a0, a5
      80000718  x15:00000001 f04=        1.000000       # fcvt.d.wu ft4, a5
      8000071c  f04:        1.000000 f03:        3.141000 f04=        3.141000  # fmul.d  ft4, ft4, ft3
      80000720  f04:        3.141000 f04:        3.141000 f00=        3.141000  # fsgnj.d ft0, ft4, ft4
; init_data (bench_matmul.c:8)
      80000724  x13:00000000 x13=00000001               # addi    a3, a3, 1
      80000728  x11:0000001e x11=0000001d               # addi    a1, a1, -1
      8000072c  x10:00000001 x10=00000002               # addi    a0, a0, 1
      80000730  x11:0000001d                            # bnez    a1, pc - 40
; init_data (bench_matmul.c:9)
      80000708  x13:00000001 x12:cccccccd x15=00000000  # mulhu   a5, a3, a2
      8000070c  x15:00000000 x15=00000000               # srli    a5, a5, 4
      80000710  x15:00000000 x14:00000014 x15=00000000  # mul     a5, a5, a4
      80000714  x10:00000002 x15:00000000 x15=00000002  # sub     a5, a0, a5
      80000718  x15:00000002 f04=        2.000000       # fcvt.d.wu ft4, a5
      8000071c  f04:        2.000000 f03:        3.141000 f04=        6.282000  # fmul.d  ft4, ft4, ft3
      80000720  f04:        6.282000 f04:        6.282000 f00=        6.282000  # fsgnj.d ft0, ft4, ft4
; init_data (bench_matmul.c:8)
      80000724  x13:00000001 x13=00000002               # addi    a3, a3, 1
      80000728  x11:0000001d x11=0000001c               # addi    a1, a1, -1
      8000072c  x10:00000002 x10=00000003               # addi    a0, a0, 1
      80000730  x11:0000001c                            # bnez    a1, pc - 40
; init_data (bench_matmul.c:9)
      80000708  x13:00000002 x12:cccccccd x15=00000001  # mulhu   a5, a3, a2
      8000070c  x15:00000001 x15=00000000               # srli    a5, a5, 4
      80000710  x15:00000000 x14:00000014 x15=00000000  # mul     a5, a5, a4
      80000714  x10:00000003 x15:00000000 x15=00000003  # sub     a5, a0, a5
      80000718  x15:00000003 f04=        3.000000       # fcvt.d.wu ft4, a5
      8000071c  f04:        3.000000 f03:        3.141000 f04=        9.423000  # fmul.d  ft4, ft4, ft3
      80000720  f04:        9.423000 f04:        9.423000 f00=        9.423000  # fsgnj.d ft0, ft4, ft4
; init_data (bench_matmul.c:8)
      80000724  x13:00000002 x13=00000003               # addi    a3, a3, 1
      80000728  x11:0000001c x11=0000001b               # addi    a1, a1, -1
      8000072c  x10:00000003 x10=00000004               # addi    a0, a0, 1
      80000730  x11:0000001b                            # bnez    a1, pc - 40
; init_data (bench_matmul.c:9)
      80000708  x13:00000003 x12:cccccccd x15=00000002  # mulhu   a5, a3, a2
      8000070c  x15:00000002 x15=00000000               # srli    a5, a5, 4
      80000710  x15:00000000 x14:00000014 x15=00000000  # mul     a5, a5, a4
      80000714  x10:00000004 x15:00000000 x15=00000004  # sub     a5, a0, a5
      80000718  x15:00000004 f04=        4.000000       # fcvt.d.wu ft4, a5
      8000071c  f04:        4.000000 f03:        3.141000 f04=       12.564000  # fmul.d  ft4, ft4, ft3
      80000720  f04:       12.564000 f04:       12.564000 f00=       12.564000  # fsgnj.d ft0, ft4, ft4
; init_data (bench_matmul.c:8)
      80000724  x13:00000003 x13=00000004               # addi    a3, a3, 1
      80000728  x11:0000001b x11=0000001a               # addi    a1, a1, -1
      8000072c  x10:00000004 x10=00000005               # addi    a0, a0, 1
      80000730  x11:0000001a                            # bnez    a1, pc - 40
; init_data (bench_matmul.c:9)
      80000708  x13:00000004 x12:cccccccd x15=00000003  # mulhu   a5, a3, a2
      8000070c  x15:00000003 x15=00000000               # srli    a5, a5, 4
      80000710  x15:00000000 x14:00000014 x15=00000000  # mul     a5, a5, a4
      80000714  x10:00000005 x15:00000000 x15=00000005  # sub     a5, a0, a5
      80000718  x15:00000005 f04=        5.000000       # fcvt.d.wu ft4, a5
      8000071c  f04:        5.000000 f03:        3.141000 f04=       15.705000  # fmul.d  ft4, ft4, ft3
      80000720  f04:       15.705000 f04:       15.705000 f00=       15.705000  # fsgnj.d ft0, ft4, ft4
; init_data (bench_matmul.c:8)
      80000724  x13:00000004 x13=00000005               # addi    a3, a3, 1
      80000728  x11:0000001a x11=00000019               # addi    a1, a1, -1
      8000072c  x10:00000005 x10=00000006               # addi    a0, a0, 1
      80000730  x11:00000019                            # bnez    a1, pc - 40
; init_data (bench_matmul.c:9)
      80000708  x13:00000005 x12:cccccccd x15=00000004  # mulhu   a5, a3, a2
      8000070c  x15:00000004 x15=00000000               # srli    a5, a5, 4
      80000710  x15:00000000 x14:00000014 x15=00000000  # mul     a5, a5, a4
      80000714  x10:00000006 x15:00000000 x15=00000006  # sub     a5, a0, a5
      80000718  x15:00000006 f04=        6.000000       # fcvt.d.wu ft4, a5
      8000071c  f04:        6.000000 f03:        3.141000 f04=       18.846000  # fmul.d  ft4, ft4, ft3
      80000720  f04:       18.846000 f04:       18.846000 f00=       18.846000  # fsgnj.d ft0, ft4, ft4
; init_data (bench_matmul.c:8)
      80000724  x13:00000005 x13=00000006               # addi    a3, a3, 1
      80000728  x11:00000019 x11=00000018               # addi    a1, a1, -1
      8000072c  x10:00000006 x10=00000007               # addi    a0, a0, 1
      80000730  x11:00000018                            # bnez    a1, pc - 40
; init_data (bench_matmul.c:9)
      80000708  x13:00000006 x12:cccccccd x15=00000004  # mulhu   a5, a3, a2
      8000070c  x15:00000004 x15=00000000               # srli    a5, a5, 4
      80000710  x15:00000000 x14:00000014 x15=00000000  # mul     a5, a5, a4
      80000714  x10:00000007 x15:00000000 x15=00000007  # sub     a5, a0, a5
      80000718  x15:00000007 f04=        7.000000       # fcvt.d.wu ft4, a5
      8000071c  f04:        7.000000 f03:        3.141000 f04=       21.987000  # fmul.d  ft4, ft4, ft3
      80000720  f04:       21.987000 f04:       21.987000 f00=       21.987000  # fsgnj.d ft0, ft4, ft4
; init_data (bench_matmul.c:8)
      80000724  x13:00000006 x13=00000007               # addi    a3, a3, 1
      80000728  x11:00000018 x11=00000017               # addi    a1, a1, -1
      8000072c  x10:00000007 x10=00000008               # addi    a0, a0, 1
      80000730  x11:00000017                            # bnez    a1, pc - 40
; init_data (bench_matmul.c:9)
      80000708  x13:00000007 x12:cccccccd x15=00000005  # mulhu   a5, a3, a2
      8000070c  x15:00000005 x15=00000000               # srli    a5, a5, 4
      80000710  x15:00000000 x14:00000014 x15=00000000  # mul     a5, a5, a4
      80000714  x10:00000008 x15:00000000 x15=00000008  # sub     a5, a0, a5
      80000718  x15:00000008 f04=        8.000000       # fcvt.d.wu ft4, a5
      8000071c  f04:        8.000000 f03:        3.141000 f04=       25.128000  # fmul.d  ft4, ft4, ft3
      80000720  f04:       25.128000 f04:       25.128000 f00=       25.128000  # fsgnj.d ft0, ft4, ft4
; init_data (bench_matmul.c:8)
      80000724  x13:00000007 x13=00000008               # addi    a3, a3, 1
      80000728  x11:00000017 x11=00000016               # addi    a1, a1, -1
      8000072c  x10:00000008 x10=00000009               # addi    a0, a0, 1
      80000730  x11:00000016                            # bnez    a1, pc - 40
; init_data (bench_matmul.c:9)
      80000708  x13:00000008 x12:cccccccd x15=00000006  # mulhu   a5, a3, a2
      8000070c  x15:00000006 x15=00000000               # srli    a5, a5, 4
      80000710  x15:00000000 x14:00000014 x15=00000000  # mul     a5, a5, a4
      80000714  x10:00000009 x15:00000000 x15=00000009  # sub     a5, a0, a5
      80000718  x15:00000009 f04=        9.000000       # fcvt.d.wu ft4, a5
      8000071c  f04:        9.000000 f03:        3.141000 f04=       28.269000  # fmul.d  ft4, ft4, ft3
      80000720  f04:       28.269000 f04:       28.269000 f00=       28.269000  # fsgnj.d ft0, ft4, ft4
; init_data (bench_matmul.c:8)
      80000724  x13:00000008 x13=00000009               # addi    a3, a3, 1
      80000728  x11:00000016 x11=00000015               # addi    a1, a1, -1
      8000072c  x10:00000009 x10=0000000a               # addi    a0, a0, 1
      80000730  x11:00000015                            # bnez    a1, pc - 40
; init_data (bench_matmul.c:9)
      80000708  x13:00000009 x12:cccccccd x15=00000007  # mulhu   a5, a3, a2
      8000070c  x15:00000007 x15=00000000               # srli    a5, a5, 4
      80000710  x15:00000000 x14:00000014 x15=00000000  # mul     a5, a5, a4
      80000714  x10:0000000a x15:00000000 x15=0000000a  # sub     a5, a0, a5
      80000718  x15:0000000a f04=       10.000000       # fcvt.d.wu ft4, a5
      8000071c  f04:       10.000000 f03:        3.141000 f04=       31.410000  # fmul.d  ft4, ft4, ft3
      80000720  f04:       31.410000 f04:       31.410000 f00=       31.410000  # fsgnj.d ft0, ft4, ft4
; init_data (bench_matmul.c:8)
      80000724  x13:00000009 x13=0000000a               # addi    a3, a3, 1
      80000728  x11:00000015 x11=00000014               # addi    a1, a1, -1
      8000072c  x10:0000000a x10=0000000b               # addi    a0, a0, 1
      80000730  x11:00000014                            # bnez    a1, pc - 40
; init_data (bench_matmul.c:9)
      80000708  x13:0000000a x12:cccccccd x15=00000008  # mulhu   a5, a3, a2
      8000070c  x15:00000008 x15=00000000               # srli    a5, a5, 4
      80000710  x15:00000000 x14:00000014 x15=00000000  # mul     a5, a5, a4
      80000714  x10:0000000b x15:00000000 x15=0000000b  # sub     a5, a0, a5
      80000718  x15:0000000b f04=       11.000000       # fcvt.d.wu ft4, a5
      8000071c  f04:       11.000000 f03:        3.141000 f04=       34.551000  # fmul.d  ft4, ft4, ft3
      80000720  f04:       34.551000 f04:       34.551000 f00=       34.551000  # fsgnj.d ft0, ft4, ft4
; init_data (bench_matmul.c:8)
      80000724  x13:0000000a x13=0000000b               # addi    a3, a3, 1
      80000728  x11:00000014 x11=00000013               # addi    a1, a1, -1
      8000072c  x10:0000000b x10=0000000c               # addi    a0, a0, 1
      80000730  x11:00000013                            # bnez    a1, pc - 40
; init_data (bench_matmul.c:9)
      80000708  x13:0000000b x12:cccccccd x15=00000008  # mulhu   a5, a3, a2
      8000070c  x15:00000008 x15=00000000               # srli    a5, a5, 4
      80000710  x15:00000000 x14:00000014 x15=00000000  # mul     a5, a5, a4
      80000714  x10:0000000c x15:00000000 x15=0000000c  # sub     a5, a0, a5
      80000718  x15:0000000c f04=       12.000000       # fcvt.d.wu ft4, a5
      8000071c  f04:       12.000000 f03:        3.141000 f04=       37.692000  # fmul.d  ft4, ft4, ft3
      80000720  f04:       37.692000 f04:       37.692000 f00=       37.692000  # fsgnj.d ft0, ft4, ft4
; init_data (bench_matmul.c:8)
      80000724  x13:0000000b x13=0000000c               # addi    a3, a3, 1
      80000728  x11:00000013 x11=00000012               # addi    a1, a1, -1
      8000072c  x10:0000000c x10=0000000d               # addi    a0, a0, 1
      80000730  x11:00000012                            # bnez    a1, pc - 40
; init_data (bench_matmul.c:9)
      80000708  x13:0000000c x12:cccccccd x15=00000009  # mulhu   a5, a3, a2
      8000070c  x15:00000009 x15=00000000               # srli    a5, a5, 4
      80000710  x15:00000000 x14:00000014 x15=00000000  # mul     a5, a5, a4
      80000714  x10:0000000d x15:00000000 x15=0000000d  # sub     a5, a0, a5
      80000718  x15:0000000d f04=       13.000000       # fcvt.d.wu ft4, a5
      8000071c  f04:       13.000000 f03:        3.141000 f04=       40.833000  # fmul.d  ft4, ft4, ft3
      80000720  f04:       40.833000 f04:       40.833000 f00=       40.833000  # fsgnj.d ft0, ft4, ft4
; init_data (bench_matmul.c:8)
      80000724  x13:0000000c x13=0000000d               # addi    a3, a3, 1
      80000728  x11:00000012 x11=00000011               # addi    a1, a1, -1
      8000072c  x10:0000000d x10=0000000e               # addi    a0, a0, 1
      80000730  x11:00000011                            # bnez    a1, pc - 40
; init_data (bench_matmul.c:9)
      80000708  x13:0000000d x12:cccccccd x15=0000000a  # mulhu   a5, a3, a2
      8000070c  x15:0000000a x15=00000000               # srli    a5, a5, 4
      80000710  x15:00000000 x14:00000014 x15=00000000  # mul     a5, a5, a4
      80000714  x10:0000000e x15:00000000 x15=0000000e  # sub     a5, a0, a5
      80000718  x15:0000000e f04=       14.000000       # fcvt.d.wu ft4, a5
      8000071c  f04:       14.000000 f03:        3.141000 f04=       43.974000  # fmul.d  ft4, ft4, ft3
      80000720  f04:       43.974000 f04:       43.974000 f00=       43.974000  # fsgnj.d ft0, ft4, ft4
; init_data (bench_matmul.c:8)
      80000724  x13:0000000d x13=0000000e               # addi    a3, a3, 1
      80000728  x11:00000011 x11=00000010               # addi    a1, a1, -1
      8000072c  x10:0000000e x10=0000000f               # addi    a0, a0, 1
      80000730  x11:00000010                            # bnez    a1, pc - 40
; init_data (bench_matmul.c:9)
      80000708  x13:0000000e x12:cccccccd x15=0000000b  # mulhu   a5, a3, a2
      8000070c  x15:0000000b x15=00000000               # srli    a5, a5, 4
      80000710  x15:00000000 x14:00000014 x15=00000000  # mul     a5, a5, a4
      80000714  x10:0000000f x15:00000000 x15=0000000f  # sub     a5, a0, a5
      80000718  x15:0000000f f04=       15.000000       # fcvt.d.wu ft4, a5
      8000071c  f04:       15.000000 f03:        3.141000 f04=       47.115000  # fmul.d  ft4, ft4, ft3
      80000720  f04:       47.115000 f04:       47.115000 f00=       47.115000  # fsgnj.d ft0, ft4, ft4
; init_data (bench_matmul.c:8)
      80000724  x13:0000000e x13=0000000f               # addi    a3, a3, 1
      80000728  x11:00000010 x11=0000000f               # addi    a1, a1, -1
      8000072c  x10:0000000f x10=00000010               # addi    a0, a0, 1
      80000730  x11:0000000f                            # bnez    a1, pc - 40
; init_data (bench_matmul.c:9)
      80000708  x13:0000000f x12:cccccccd x15=0000000c  # mulhu   a5, a3, a2
      8000070c  x15:0000000c x15=00000000               # srli    a5, a5, 4
      80000710  x15:00000000 x14:00000014 x15=00000000  # mul     a5, a5, a4
      80000714  x10:00000010 x15:00000000 x15=00000010  # sub     a5, a0, a5
      80000718  x15:00000010 f04=       16.000000       # fcvt.d.wu ft4, a5
      8000071c  f04:       16.000000 f03:        3.141000 f04=       50.256000  # fmul.d  ft4, ft4, ft3
      80000720  f04:       50.256000 f04:       50.256000 f00=       50.256000  # fsgnj.d ft0, ft4, ft4
; init_data (bench_matmul.c:8)
      80000724  x13:0000000f x13=00000010               # addi    a3, a3, 1
      80000728  x11:0000000f x11=0000000e               # addi    a1, a1, -1
      8000072c  x10:00000010 x10=00000011               # addi    a0, a0, 1
      80000730  x11:0000000e                            # bnez    a1, pc - 40
; init_data (bench_matmul.c:9)
      80000708  x13:00000010 x12:cccccccd x15=0000000c  # mulhu   a5, a3, a2
      8000070c  x15:0000000c x15=00000000               # srli    a5, a5, 4
      80000710  x15:00000000 x14:00000014 x15=00000000  # mul     a5, a5, a4
      80000714  x10:00000011 x15:00000000 x15=00000011  # sub     a5, a0, a5
      80000718  x15:00000011 f04=       17.000000       # fcvt.d.wu ft4, a5
      8000071c  f04:       17.000000 f03:        3.141000 f04=       53.397000  # fmul.d  ft4, ft4, ft3
      80000720  f04:       53.397000 f04:       53.397000 f00=       53.397000  # fsgnj.d ft0, ft4, ft4
; init_data (bench_matmul.c:8)
      80000724  x13:00000010 x13=00000011               # addi    a3, a3, 1
      80000728  x11:0000000e x11=0000000d               # addi    a1, a1, -1
      8000072c  x10:00000011 x10=00000012               # addi    a0, a0, 1
      80000730  x11:0000000d                            # bnez    a1, pc - 40
; init_data (bench_matmul.c:9)
      80000708  x13:00000011 x12:cccccccd x15=0000000d  # mulhu   a5, a3, a2
      8000070c  x15:0000000d x15=00000000               # srli    a5, a5, 4
      80000710  x15:00000000 x14:00000014 x15=00000000  # mul     a5, a5, a4
      80000714  x10:00000012 x15:00000000 x15=00000012  # sub     a5, a0, a5
      80000718  x15:00000012 f04=       18.000000       # fcvt.d.wu ft4, a5
      8000071c  f04:       18.000000 f03:        3.141000 f04=       56.538000  # fmul.d  ft4, ft4, ft3
      80000720  f04:       56.538000 f04:       56.538000 f00=       56.538000  # fsgnj.d ft0, ft4, ft4
; init_data (bench_matmul.c:8)
      80000724  x13:00000011 x13=00000012               # addi    a3, a3, 1
      80000728  x11:0000000d x11=0000000c               # addi    a1, a1, -1
      8000072c  x10:00000012 x10=00000013               # addi    a0, a0, 1
      80000730  x11:0000000c                            # bnez    a1, pc - 40
; init_data (bench_matmul.c:9)
      80000708  x13:00000012 x12:cccccccd x15=0000000e  # mulhu   a5, a3, a2
      8000070c  x15:0000000e x15=00000000               # srli    a5, a5, 4
      80000710  x15:00000000 x14:00000014 x15=00000000  # mul     a5, a5, a4
      80000714  x10:00000013 x15:00000000 x15=00000013  # sub     a5, a0, a5
      80000718  x15:00000013 f04=       19.000000       # fcvt.d.wu ft4, a5
      8000071c  f04:       19.000000 f03:        3.141000 f04=       59.679000  # fmul.d  ft4, ft4, ft3
      80000720  f04:       59.679000 f04:       59.679000 f00=       59.679000  # fsgnj.d ft0, ft4, ft4
; init_data (bench_matmul.c:8)
      80000724  x13:00000012 x13=00000013               # addi    a3, a3, 1
      80000728  x11:0000000c x11=0000000b               # addi    a1, a1, -1
      8000072c  x10:00000013 x10=00000014               # addi    a0, a0, 1
      80000730  x11:0000000b                            # bnez    a1, pc - 40
; init_data (bench_matmul.c:9)
      80000708  x13:00000013 x12:cccccccd x15=0000000f  # mulhu   a5, a3, a2
      8000070c  x15:0000000f x15=00000000               # srli    a5, a5, 4
      80000710  x15:00000000 x14:00000014 x15=00000000  # mul     a5, a5, a4
      80000714  x10:00000014 x15:00000000 x15=00000014  # sub     a5, a0, a5
      80000718  x15:00000014 f04=       20.000000       # fcvt.d.wu ft4, a5
      8000071c  f04:       20.000000 f03:        3.141000 f04=       62.820000  # fmul.d  ft4, ft4, ft3
      80000720  f04:       62.820000 f04:       62.820000 f00=       62.820000  # fsgnj.d ft0, ft4, ft4
; init_data (bench_matmul.c:8)
      80000724  x13:00000013 x13=00000014               # addi    a3, a3, 1
      80000728  x11:0000000b x11=0000000a               # addi    a1, a1, -1
      8000072c  x10:00000014 x10=00000015               # addi    a0, a0, 1
      80000730  x11:0000000a                            # bnez    a1, pc - 40
; init_data (bench_matmul.c:9)
      80000708  x13:00000014 x12:cccccccd x15=00000010  # mulhu   a5, a3, a2
      8000070c  x15:00000010 x15=00000001               # srli    a5, a5, 4
      80000710  x15:00000001 x14:00000014 x15=00000014  # mul     a5, a5, a4
      80000714  x10:00000015 x15:00000014 x15=00000001  # sub     a5, a0, a5
      80000718  x15:00000001 f04=        1.000000       # fcvt.d.wu ft4, a5
      8000071c  f04:        1.000000 f03:        3.141000 f04=        3.141000  # fmul.d  ft4, ft4, ft3
      80000720  f04:        3.141000 f04:        3.141000 f00=        3.141000  # fsgnj.d ft0, ft4, ft4
; init_data (bench_matmul.c:8)
      80000724  x13:00000014 x13=00000015               # addi    a3, a3, 1
      80000728  x11:0000000a x11=00000009               # addi    a1, a1, -1
      8000072c  x10:00000015 x10=00000016               # addi    a0, a0, 1
      80000730  x11:00000009                            # bnez    a1, pc - 40
; init_data (bench_matmul.c:9)
      80000708  x13:00000015 x12:cccccccd x15=00000010  # mulhu   a5, a3, a2
      8000070c  x15:00000010 x15=00000001               # srli    a5, a5, 4
      80000710  x15:00000001 x14:00000014 x15=00000014  # mul     a5, a5, a4
      80000714  x10:00000016 x15:00000014 x15=00000002  # sub     a5, a0, a5
      80000718  x15:00000002 f04=        2.000000       # fcvt.d.wu ft4, a5
      8000071c  f04:        2.000000 f03:        3.141000 f04=        6.282000  # fmul.d  ft4, ft4, ft3
      80000720  f04:        6.282000 f04:        6.282000 f00=        6.282000  # fsgnj.d ft0, ft4, ft4
; init_data (bench_matmul.c:8)
      80000724  x13:00000015 x13=00000016               # addi    a3, a3, 1
      80000728  x11:00000009 x11=00000008               # addi    a1, a1, -1
      8000072c  x10:00000016 x10=00000017               # addi    a0, a0, 1
      80000730  x11:00000008                            # bnez    a1, pc - 40
; init_data (bench_matmul.c:9)
      80000708  x13:00000016 x12:cccccccd x15=00000011  # mulhu   a5, a3, a2
      8000070c  x15:00000011 x15=00000001               # srli    a5, a5, 4
      80000710  x15:00000001 x14:00000014 x15=00000014  # mul     a5, a5, a4
      80000714  x10:00000017 x15:00000014 x15=00000003  # sub     a5, a0, a5
      80000718  x15:00000003 f04=        3.000000       # fcvt.d.wu ft4, a5
      8000071c  f04:        3.000000 f03:        3.141000 f04=        9.423000  # fmul.d  ft4, ft4, ft3
      80000720  f04:        9.423000 f04:        9.423000 f00=        9.423000  # fsgnj.d ft0, ft4, ft4
; init_data (bench_matmul.c:8)
      80000724  x13:00000016 x13=00000017               # addi    a3, a3, 1
      80000728  x11:00000008 x11=00000007               # addi    a1, a1, -1
      8000072c  x10:00000017 x10=00000018               # addi    a0, a0, 1
      80000730  x11:00000007                            # bnez    a1, pc - 40
; init_data (bench_matmul.c:9)
      80000708  x13:00000017 x12:cccccccd x15=00000012  # mulhu   a5, a3, a2
      8000070c  x15:00000012 x15=00000001               # srli    a5, a5, 4
      80000710  x15:00000001 x14:00000014 x15=00000014  # mul     a5, a5, a4
      80000714  x10:00000018 x15:00000014 x15=00000004  # sub     a5, a0, a5
      80000718  x15:00000004 f04=        4.000000       # fcvt.d.wu ft4, a5
      8000071c  f04:        4.000000 f03:        3.141000 f04=       12.564000  # fmul.d  ft4, ft4, ft3
      80000720  f04:       12.564000 f04:       12.564000 f00=       12.564000  # fsgnj.d ft0, ft4, ft4
; init_data (bench_matmul.c:8)
      80000724  x13:00000017 x13=00000018               # addi    a3, a3, 1
      80000728  x11:00000007 x11=00000006               # addi    a1, a1, -1
      8000072c  x10:00000018 x10=00000019               # addi    a0, a0, 1
      80000730  x11:00000006                            # bnez    a1, pc - 40
; init_data (bench_matmul.c:9)
      80000708  x13:00000018 x12:cccccccd x15=00000013  # mulhu   a5, a3, a2
      8000070c  x15:00000013 x15=00000001               # srli    a5, a5, 4
      80000710  x15:00000001 x14:00000014 x15=00000014  # mul     a5, a5, a4
      80000714  x10:00000019 x15:00000014 x15=00000005  # sub     a5, a0, a5
      80000718  x15:00000005 f04=        5.000000       # fcvt.d.wu ft4, a5
      8000071c  f04:        5.000000 f03:        3.141000 f04=       15.705000  # fmul.d  ft4, ft4, ft3
      80000720  f04:       15.705000 f04:       15.705000 f00=       15.705000  # fsgnj.d ft0, ft4, ft4
; init_data (bench_matmul.c:8)
      80000724  x13:00000018 x13=00000019               # addi    a3, a3, 1
      80000728  x11:00000006 x11=00000005               # addi    a1, a1, -1
      8000072c  x10:00000019 x10=0000001a               # addi    a0, a0, 1
      80000730  x11:00000005                            # bnez    a1, pc - 40
; init_data (bench_matmul.c:9)
      80000708  x13:00000019 x12:cccccccd x15=00000014  # mulhu   a5, a3, a2
      8000070c  x15:00000014 x15=00000001               # srli    a5, a5, 4
      80000710  x15:00000001 x14:00000014 x15=00000014  # mul     a5, a5, a4
      80000714  x10:0000001a x15:00000014 x15=00000006  # sub     a5, a0, a5
      80000718  x15:00000006 f04=        6.000000       # fcvt.d.wu ft4, a5
      8000071c  f04:        6.000000 f03:        3.141000 f04=       18.846000  # fmul.d  ft4, ft4, ft3
      80000720  f04:       18.846000 f04:       18.846000 f00=       18.846000  # fsgnj.d ft0, ft4, ft4
; init_data (bench_matmul.c:8)
      80000724  x13:00000019 x13=0000001a               # addi    a3, a3, 1
      80000728  x11:00000005 x11=00000004               # addi    a1, a1, -1
      8000072c  x10:0000001a x10=0000001b               # addi    a0, a0, 1
      80000730  x11:00000004                            # bnez    a1, pc - 40
; init_data (bench_matmul.c:9)
      80000708  x13:0000001a x12:cccccccd x15=00000014  # mulhu   a5, a3, a2
      8000070c  x15:00000014 x15=00000001               # srli    a5, a5, 4
      80000710  x15:00000001 x14:00000014 x15=00000014  # mul     a5, a5, a4
      80000714  x10:0000001b x15:00000014 x15=00000007  # sub     a5, a0, a5
      80000718  x15:00000007 f04=        7.000000       # fcvt.d.wu ft4, a5
      8000071c  f04:        7.000000 f03:        3.141000 f04=       21.987000  # fmul.d  ft4, ft4, ft3
      80000720  f04:       21.987000 f04:       21.987000 f00=       21.987000  # fsgnj.d ft0, ft4, ft4
; init_data (bench_matmul.c:8)
      80000724  x13:0000001a x13=0000001b               # addi    a3, a3, 1
      80000728  x11:00000004 x11=00000003               # addi    a1, a1, -1
      8000072c  x10:0000001b x10=0000001c               # addi    a0, a0, 1
      80000730  x11:00000003                            # bnez    a1, pc - 40
; init_data (bench_matmul.c:9)
      80000708  x13:0000001b x12:cccccccd x15=00000015  # mulhu   a5, a3, a2
      8000070c  x15:00000015 x15=00000001               # srli    a5, a5, 4
      80000710  x15:00000001 x14:00000014 x15=00000014  # mul     a5, a5, a4
      80000714  x10:0000001c x15:00000014 x15=00000008  # sub     a5, a0, a5
      80000718  x15:00000008 f04=        8.000000       # fcvt.d.wu ft4, a5
      8000071c  f04:        8.000000 f03:        3.141000 f04=       25.128000  # fmul.d  ft4, ft4, ft3
      80000720  f04:       25.128000 f04:       25.128000 f00=       25.128000  # fsgnj.d ft0, ft4, ft4
; init_data (bench_matmul.c:8)
      80000724  x13:0000001b x13=0000001c               # addi    a3, a3, 1
      80000728  x11:00000003 x11=00000002               # addi    a1, a1, -1
      8000072c  x10:0000001c x10=0000001d               # addi    a0, a0, 1
      80000730  x11:00000002                            # bnez    a1, pc - 40
; init_data (bench_matmul.c:9)
      80000708  x13:0000001c x12:cccccccd x15=00000016  # mulhu   a5, a3, a2
      8000070c  x15:00000016 x15=00000001               # srli    a5, a5, 4
      80000710  x15:00000001 x14:00000014 x15=00000014  # mul     a5, a5, a4
      80000714  x10:0000001d x15:00000014 x15=00000009  # sub     a5, a0, a5
      80000718  x15:00000009 f04=        9.000000       # fcvt.d.wu ft4, a5
      8000071c  f04:        9.000000 f03:        3.141000 f04=       28.269000  # fmul.d  ft4, ft4, ft3
      80000720  f04:       28.269000 f04:       28.269000 f00=       28.269000  # fsgnj.d ft0, ft4, ft4
; init_data (bench_matmul.c:8)
      80000724  x13:0000001c x13=0000001d               # addi    a3, a3, 1
      80000728  x11:00000002 x11=00000001               # addi    a1, a1, -1
      8000072c  x10:0000001d x10=0000001e               # addi    a0, a0, 1
      80000730  x11:00000001                            # bnez    a1, pc - 40
; init_data (bench_matmul.c:9)
      80000708  x13:0000001d x12:cccccccd x15=00000017  # mulhu   a5, a3, a2
      8000070c  x15:00000017 x15=00000001               # srli    a5, a5, 4
      80000710  x15:00000001 x14:00000014 x15=00000014  # mul     a5, a5, a4
      80000714  x10:0000001e x15:00000014 x15=0000000a  # sub     a5, a0, a5
      80000718  x15:0000000a f04=       10.000000       # fcvt.d.wu ft4, a5
      8000071c  f04:       10.000000 f03:        3.141000 f04=       31.410000  # fmul.d  ft4, ft4, ft3
      80000720  f04:       31.410000 f04:       31.410000 f00=       31.410000  # fsgnj.d ft0, ft4, ft4
; init_data (bench_matmul.c:8)
      80000724  x13:0000001d x13=0000001e               # addi    a3, a3, 1
      80000728  x11:00000001 x11=00000000               # addi    a1, a1, -1
      8000072c  x10:0000001e x10=0000001f               # addi    a0, a0, 1
      80000730  x11:00000000                            # bnez    a1, pc - 40
; init_data (bench_matmul.c:0)
      80000734  x10=00000001                            # csrrci  a0, ssr, 1
; init_data (bench_matmul.c:11)
      80000738  x1:800007f0                             # ret
; main (bench_matmul.c:27)
      800007f0  x11=0000002a                            # li      a1, 42
      800007f4  x19:001000f0 x10=001000f0               # mv      a0, s3
      800007f8  x1=800007f8                             # auipc   ra, 0x0
      800007fc  x1:800007f8 x1=80000800                 # jalr    ra, ra, -452
; init_data (bench_matmul.c:8)
      80000634  x11:0000002a x12=00000029               # addi    a2, a1, -1
      80000638  x12:00000029 x15=00000148               # slli    a5, a2, 3
      8000063c  x15:00000148 x10:001000f0 x14=00100238  # add     a4, a5, a0
      80000640  x13=00100000                            # lui     a3, 0x100
      80000644  x13:00100000 x13=00100001               # addi    a3, a3, 1
      80000648  x10:001000f0 x13:00100001 x13=00000000  # sltu    a3, a0, a3
      8000064c  x14:00100238 x15:00000148               # bgeu    a4, a5, pc + 100
; init_data (bench_matmul.c:0)
      800006b0  x15=00120000                            # lui     a5, 0x120
      800006b4  x15:00120000 x15=00120001               # addi    a5, a5, 1
      800006b8  x14:00100238 x15:00120001 x14=00000001  # sltu    a4, a4, a5
      800006bc  x13:00000000 x14:00000001 x13=00000000  # and     a3, a3, a4
      800006c0  x13:00000000                            # beqz    a3, pc - 100
      8000065c  x12=00000000                            # li      a2, 0
      80000660  x13=00000001                            # li      a3, 1
      80000664  x14=80003664                            # auipc   a4, 0x3
      80000668  x14:80003664 x14=80002f58               # addi    a4, a4, -1804
      8000066c  x14:80002f58 RA:80002f58 RA:80002f5c f03=        3.141000  # fld     ft3, 0(a4)
      80000670  x14=ccccd000                            # lui     a4, 0xccccd
      80000674  x14:ccccd000 x14=cccccccd               # addi    a4, a4, -819
      80000678  x16=00000014                            # li      a6, 20
; init_data (bench_matmul.c:9)
      8000067c  x12:00000000 x14:cccccccd x15=00000000  # mulhu   a5, a2, a4
      80000680  x15:00000000 x15=00000000               # srli    a5, a5, 4
      80000684  x15:00000000 x16:00000014 x15=00000000  # mul     a5, a5, a6
      80000688  x13:00000001 x15:00000000 x15=00000001  # sub     a5, a3, a5
      8000068c  x15:00000001 f04=        1.000000       # fcvt.d.wu ft4, a5
      80000690  f04:        1.000000 f03:        3.141000 f04=        3.141000  # fmul.d  ft4, ft4, ft3
      80000694  x10:001000f0 f04:        3.141000 WA:001000f0 WA:001000f4  # fsd     ft4, 0(a0)
; init_data (bench_matmul.c:8)
      80000698  x12:00000000 x12=00000001               # addi    a2, a2, 1
      8000069c  x11:0000002a x11=00000029               # addi    a1, a1, -1
      800006a0  x10:001000f0 x10=001000f8               # addi    a0, a0, 8
      800006a4  x13:00000001 x13=00000002               # addi    a3, a3, 1
      800006a8  x11:00000029                            # bnez    a1, pc - 44
; init_data (bench_matmul.c:9)
      8000067c  x12:00000001 x14:cccccccd x15=00000000  # mulhu   a5, a2, a4
      80000680  x15:00000000 x15=00000000               # srli    a5, a5, 4
      80000684  x15:00000000 x16:00000014 x15=00000000  # mul     a5, a5, a6
      80000688  x13:00000002 x15:00000000 x15=00000002  # sub     a5, a3, a5
      8000068c  x15:00000002 f04=        2.000000       # fcvt.d.wu ft4, a5
      80000690  f04:        2.000000 f03:        3.141000 f04=        6.282000  # fmul.d  ft4, ft4, ft3
      80000694  x10:001000f8 f04:        6.282000 WA:001000f8 WA:001000fc  # fsd     ft4, 0(a0)
; init_data (bench_matmul.c:8)
      80000698  x12:00000001 x12=00000002               # addi    a2, a2, 1
      8000069c  x11:00000029 x11=00000028               # addi    a1, a1, -1
      800006a0  x10:001000f8 x10=00100100               # addi    a0, a0, 8
      800006a4  x13:00000002 x13=00000003               # addi    a3, a3, 1
      800006a8  x11:00000028                            # bnez    a1, pc - 44
; init_data (bench_matmul.c:9)
      8000067c  x12:00000002 x14:cccccccd x15=00000001  # mulhu   a5, a2, a4
      80000680  x15:00000001 x15=00000000               # srli    a5, a5, 4
      80000684  x15:00000000 x16:00000014 x15=00000000  # mul     a5, a5, a6
      80000688  x13:00000003 x15:00000000 x15=00000003  # sub     a5, a3, a5
      8000068c  x15:00000003 f04=        3.000000       # fcvt.d.wu ft4, a5
      80000690  f04:        3.000000 f03:        3.141000 f04=        9.423000  # fmul.d  ft4, ft4, ft3
      80000694  x10:00100100 f04:        9.423000 WA:00100100 WA:00100104  # fsd     ft4, 0(a0)
; init_data (bench_matmul.c:8)
      80000698  x12:00000002 x12=00000003               # addi    a2, a2, 1
      8000069c  x11:00000028 x11=00000027               # addi    a1, a1, -1
      800006a0  x10:00100100 x10=00100108               # addi    a0, a0, 8
      800006a4  x13:00000003 x13=00000004               # addi    a3, a3, 1
      800006a8  x11:00000027                            # bnez    a1, pc - 44
; init_data (bench_matmul.c:9)
      8000067c  x12:00000003 x14:cccccccd x15=00000002  # mulhu   a5, a2, a4
      80000680  x15:00000002 x15=00000000               # srli    a5, a5, 4
      80000684  x15:00000000 x16:00000014 x15=00000000  # mul     a5, a5, a6
      80000688  x13:00000004 x15:00000000 x15=00000004  # sub     a5, a3, a5
      8000068c  x15:00000004 f04=        4.000000       # fcvt.d.wu ft4, a5
      80000690  f04:        4.000000 f03:        3.141000 f04=       12.564000  # fmul.d  ft4, ft4, ft3
      80000694  x10:00100108 f04:       12.564000 WA:00100108 WA:0010010c  # fsd     ft4, 0(a0)
; init_data (bench_matmul.c:8)
      80000698  x12:00000003 x12=00000004               # addi    a2, a2, 1
      8000069c  x11:00000027 x11=00000026               # addi    a1, a1, -1
      800006a0  x10:00100108 x10=00100110               # addi    a0, a0, 8
      800006a4  x13:00000004 x13=00000005               # addi    a3, a3, 1
      800006a8  x11:00000026                            # bnez    a1, pc - 44
; init_data (bench_matmul.c:9)
      8000067c  x12:00000004 x14:cccccccd x15=00000003  # mulhu   a5, a2, a4
      80000680  x15:00000003 x15=00000000               # srli    a5, a5, 4
      80000684  x15:00000000 x16:00000014 x15=00000000  # mul     a5, a5, a6
      80000688  x13:00000005 x15:00000000 x15=00000005  # sub     a5, a3, a5
      8000068c  x15:00000005 f04=        5.000000       # fcvt.d.wu ft4, a5
      80000690  f04:        5.000000 f03:        3.141000 f04=       15.705000  # fmul.d  ft4, ft4, ft3
      80000694  x10:00100110 f04:       15.705000 WA:00100110 WA:00100114  # fsd     ft4, 0(a0)
; init_data (bench_matmul.c:8)
      80000698  x12:00000004 x12=00000005               # addi    a2, a2, 1
      8000069c  x11:00000026 x11=00000025               # addi    a1, a1, -1
      800006a0  x10:00100110 x10=00100118               # addi    a0, a0, 8
      800006a4  x13:00000005 x13=00000006               # addi    a3, a3, 1
      800006a8  x11:00000025                            # bnez    a1, pc - 44
; init_data (bench_matmul.c:9)
      8000067c  x12:00000005 x14:cccccccd x15=00000004  # mulhu   a5, a2, a4
      80000680  x15:00000004 x15=00000000               # srli    a5, a5, 4
      80000684  x15:00000000 x16:00000014 x15=00000000  # mul     a5, a5, a6
      80000688  x13:00000006 x15:00000000 x15=00000006  # sub     a5, a3, a5
      8000068c  x15:00000006 f04=        6.000000       # fcvt.d.wu ft4, a5
      80000690  f04:        6.000000 f03:        3.141000 f04=       18.846000  # fmul.d  ft4, ft4, ft3
      80000694  x10:00100118 f04:       18.846000 WA:00100118 WA:0010011c  # fsd     ft4, 0(a0)
; init_data (bench_matmul.c:8)
      80000698  x12:00000005 x12=00000006               # addi    a2, a2, 1
      8000069c  x11:00000025 x11=00000024               # addi    a1, a1, -1
      800006a0  x10:00100118 x10=00100120               # addi    a0, a0, 8
      800006a4  x13:00000006 x13=00000007               # addi    a3, a3, 1
      800006a8  x11:00000024                            # bnez    a1, pc - 44
; init_data (bench_matmul.c:9)
      8000067c  x12:00000006 x14:cccccccd x15=00000004  # mulhu   a5, a2, a4
      80000680  x15:00000004 x15=00000000               # srli    a5, a5, 4
      80000684  x15:00000000 x16:00000014 x15=00000000  # mul     a5, a5, a6
      80000688  x13:00000007 x15:00000000 x15=00000007  # sub     a5, a3, a5
      8000068c  x15:00000007 f04=        7.000000       # fcvt.d.wu ft4, a5
      80000690  f04:        7.000000 f03:        3.141000 f04=       21.987000  # fmul.d  ft4, ft4, ft3
      80000694  x10:00100120 f04:       21.987000 WA:00100120 WA:00100124  # fsd     ft4, 0(a0)
; init_data (bench_matmul.c:8)
      80000698  x12:00000006 x12=00000007               # addi    a2, a2, 1
      8000069c  x11:00000024 x11=00000023               # addi    a1, a1, -1
      800006a0  x10:00100120 x10=00100128               # addi    a0, a0, 8
      800006a4  x13:00000007 x13=00000008               # addi    a3, a3, 1
      800006a8  x11:00000023                            # bnez    a1, pc - 44
; init_data (bench_matmul.c:9)
      8000067c  x12:00000007 x14:cccccccd x15=00000005  # mulhu   a5, a2, a4
      80000680  x15:00000005 x15=00000000               # srli    a5, a5, 4
      80000684  x15:00000000 x16:00000014 x15=00000000  # mul     a5, a5, a6
      80000688  x13:00000008 x15:00000000 x15=00000008  # sub     a5, a3, a5
      8000068c  x15:00000008 f04=        8.000000       # fcvt.d.wu ft4, a5
      80000690  f04:        8.000000 f03:        3.141000 f04=       25.128000  # fmul.d  ft4, ft4, ft3
      80000694  x10:00100128 f04:       25.128000 WA:00100128 WA:0010012c  # fsd     ft4, 0(a0)
; init_data (bench_matmul.c:8)
      80000698  x12:00000007 x12=00000008               # addi    a2, a2, 1
      8000069c  x11:00000023 x11=00000022               # addi    a1, a1, -1
      800006a0  x10:00100128 x10=00100130               # addi    a0, a0, 8
      800006a4  x13:00000008 x13=00000009               # addi    a3, a3, 1
      800006a8  x11:00000022                            # bnez    a1, pc - 44
; init_data (bench_matmul.c:9)
      8000067c  x12:00000008 x14:cccccccd x15=00000006  # mulhu   a5, a2, a4
      80000680  x15:00000006 x15=00000000               # srli    a5, a5, 4
      80000684  x15:00000000 x16:00000014 x15=00000000  # mul     a5, a5, a6
      80000688  x13:00000009 x15:00000000 x15=00000009  # sub     a5, a3, a5
      8000068c  x15:00000009 f04=        9.000000       # fcvt.d.wu ft4, a5
      80000690  f04:        9.000000 f03:        3.141000 f04=       28.269000  # fmul.d  ft4, ft4, ft3
      80000694  x10:00100130 f04:       28.269000 WA:00100130 WA:00100134  # fsd     ft4, 0(a0)
; init_data (bench_matmul.c:8)
      80000698  x12:00000008 x12=00000009               # addi    a2, a2, 1
      8000069c  x11:00000022 x11=00000021               # addi    a1, a1, -1
      800006a0  x10:00100130 x10=00100138               # addi    a0, a0, 8
      800006a4  x13:00000009 x13=0000000a               # addi    a3, a3, 1
      800006a8  x11:00000021                            # bnez    a1, pc - 44
; init_data (bench_matmul.c:9)
      8000067c  x12:00000009 x14:cccccccd x15=00000007  # mulhu   a5, a2, a4
      80000680  x15:00000007 x15=00000000               # srli    a5, a5, 4
      80000684  x15:00000000 x16:00000014 x15=00000000  # mul     a5, a5, a6
      80000688  x13:0000000a x15:00000000 x15=0000000a  # sub     a5, a3, a5
      8000068c  x15:0000000a f04=       10.000000       # fcvt.d.wu ft4, a5
      80000690  f04:       10.000000 f03:        3.141000 f04=       31.410000  # fmul.d  ft4, ft4, ft3
      80000694  x10:00100138 f04:       31.410000 WA:00100138 WA:0010013c  # fsd     ft4, 0(a0)
; init_data (bench_matmul.c:8)
      80000698  x12:00000009 x12=0000000a               # addi    a2, a2, 1
      8000069c  x11:00000021 x11=00000020               # addi    a1, a1, -1
      800006a0  x10:00100138 x10=00100140               # addi    a0, a0, 8
      800006a4  x13:0000000a x13=0000000b               # addi    a3, a3, 1
      800006a8  x11:00000020                            # bnez    a1, pc - 44
; init_data (bench_matmul.c:9)
      8000067c  x12:0000000a x14:cccccccd x15=00000008  # mulhu   a5, a2, a4
      80000680  x15:00000008 x15=00000000               # srli    a5, a5, 4
      80000684  x15:00000000 x16:00000014 x15=00000000  # mul     a5, a5, a6
      80000688  x13:0000000b x15:00000000 x15=0000000b  # sub     a5, a3, a5
      8000068c  x15:0000000b f04=       11.000000       # fcvt.d.wu ft4, a5
      80000690  f04:       11.000000 f03:        3.141000 f04=       34.551000  # fmul.d  ft4, ft4, ft3
      80000694  x10:00100140 f04:       34.551000 WA:00100140 WA:00100144  # fsd     ft4, 0(a0)
; init_data (bench_matmul.c:8)
      80000698  x12:0000000a x12=0000000b               # addi    a2, a2, 1
      8000069c  x11:00000020 x11=0000001f               # addi    a1, a1, -1
      800006a0  x10:00100140 x10=00100148               # addi    a0, a0, 8
      800006a4  x13:0000000b x13=0000000c               # addi    a3, a3, 1
      800006a8  x11:0000001f                            # bnez    a1, pc - 44
; init_data (bench_matmul.c:9)
      8000067c  x12:0000000b x14:cccccccd x15=00000008  # mulhu   a5, a2, a4
      80000680  x15:00000008 x15=00000000               # srli    a5, a5, 4
      80000684  x15:00000000 x16:00000014 x15=00000000  # mul     a5, a5, a6
      80000688  x13:0000000c x15:00000000 x15=0000000c  # sub     a5, a3, a5
      8000068c  x15:0000000c f04=       12.000000       # fcvt.d.wu ft4, a5
      80000690  f04:       12.000000 f03:        3.141000 f04=       37.692000  # fmul.d  ft4, ft4, ft3
      80000694  x10:00100148 f04:       37.692000 WA:00100148 WA:0010014c  # fsd     ft4, 0(a0)
; init_data (bench_matmul.c:8)
      80000698  x12:0000000b x12=0000000c               # addi    a2, a2, 1
      8000069c  x11:0000001f x11=0000001e               # addi    a1, a1, -1
      800006a0  x10:00100148 x10=00100150               # addi    a0, a0, 8
      800006a4  x13:0000000c x13=0000000d               # addi    a3, a3, 1
      800006a8  x11:0000001e                            # bnez    a1, pc - 44
; init_data (bench_matmul.c:9)
      8000067c  x12:0000000c x14:cccccccd x15=00000009  # mulhu   a5, a2, a4
      80000680  x15:00000009 x15=00000000               # srli    a5, a5, 4
      80000684  x15:00000000 x16:00000014 x15=00000000  # mul     a5, a5, a6
      80000688  x13:0000000d x15:00000000 x15=0000000d  # sub     a5, a3, a5
      8000068c  x15:0000000d f04=       13.000000       # fcvt.d.wu ft4, a5
      80000690  f04:       13.000000 f03:        3.141000 f04=       40.833000  # fmul.d  ft4, ft4, ft3
      80000694  x10:00100150 f04:       40.833000 WA:00100150 WA:00100154  # fsd     ft4, 0(a0)
; init_data (bench_matmul.c:8)
      80000698  x12:0000000c x12=0000000d               # addi    a2, a2, 1
      8000069c  x11:0000001e x11=0000001d               # addi    a1, a1, -1
      800006a0  x10:00100150 x10=00100158               # addi    a0, a0, 8
      800006a4  x13:0000000d x13=0000000e               # addi    a3, a3, 1
      800006a8  x11:0000001d                            # bnez    a1, pc - 44
; init_data (bench_matmul.c:9)
      8000067c  x12:0000000d x14:cccccccd x15=0000000a  # mulhu   a5, a2, a4
      80000680  x15:0000000a x15=00000000               # srli    a5, a5, 4
      80000684  x15:00000000 x16:00000014 x15=00000000  # mul     a5, a5, a6
      80000688  x13:0000000e x15:00000000 x15=0000000e  # sub     a5, a3, a5
      8000068c  x15:0000000e f04=       14.000000       # fcvt.d.wu ft4, a5
      80000690  f04:       14.000000 f03:        3.141000 f04=       43.974000  # fmul.d  ft4, ft4, ft3
      80000694  x10:00100158 f04:       43.974000 WA:00100158 WA:0010015c  # fsd     ft4, 0(a0)
; init_data (bench_matmul.c:8)
      80000698  x12:0000000d x12=0000000e               # addi    a2, a2, 1
      8000069c  x11:0000001d x11=0000001c               # addi    a1, a1, -1
      800006a0  x10:00100158 x10=00100160               # addi    a0, a0, 8
      800006a4  x13:0000000e x13=0000000f               # addi    a3, a3, 1
      800006a8  x11:0000001c                            # bnez    a1, pc - 44
; init_data (bench_matmul.c:9)
      8000067c  x12:0000000e x14:cccccccd x15=0000000b  # mulhu   a5, a2, a4
      80000680  x15:0000000b x15=00000000               # srli    a5, a5, 4
      80000684  x15:00000000 x16:00000014 x15=00000000  # mul     a5, a5, a6
      80000688  x13:0000000f x15:00000000 x15=0000000f  # sub     a5, a3, a5
      8000068c  x15:0000000f f04=       15.000000       # fcvt.d.wu ft4, a5
      80000690  f04:       15.000000 f03:        3.141000 f04=       47.115000  # fmul.d  ft4, ft4, ft3
      80000694  x10:00100160 f04:       47.115000 WA:00100160 WA:00100164  # fsd     ft4, 0(a0)
; init_data (bench_matmul.c:8)
      80000698  x12:0000000e x12=0000000f               # addi    a2, a2, 1
      8000069c  x11:0000001c x11=0000001b               # addi    a1, a1, -1
      800006a0  x10:00100160 x10=00100168               # addi    a0, a0, 8
      800006a4  x13:0000000f x13=00000010               # addi    a3, a3, 1
      800006a8  x11:0000001b                            # bnez    a1, pc - 44
; init_data (bench_matmul.c:9)
      8000067c  x12:0000000f x14:cccccccd x15=0000000c  # mulhu   a5, a2, a4
      80000680  x15:0000000c x15=00000000               # srli    a5, a5, 4
      80000684  x15:00000000 x16:00000014 x15=00000000  # mul     a5, a5, a6
      80000688  x13:00000010 x15:00000000 x15=00000010  # sub     a5, a3, a5
      8000068c  x15:00000010 f04=       16.000000       # fcvt.d.wu ft4, a5
      80000690  f04:       16.000000 f03:        3.141000 f04=       50.256000  # fmul.d  ft4, ft4, ft3
      80000694  x10:00100168 f04:       50.256000 WA:00100168 WA:0010016c  # fsd     ft4, 0(a0)
; init_data (bench_matmul.c:8)
      80000698  x12:0000000f x12=00000010               # addi    a2, a2, 1
      8000069c  x11:0000001b x11=0000001a               # addi    a1, a1, -1
      800006a0  x10:00100168 x10=00100170               # addi    a0, a0, 8
      800006a4  x13:00000010 x13=00000011               # addi    a3, a3, 1
      800006a8  x11:0000001a                            # bnez    a1, pc - 44
; init_data (bench_matmul.c:9)
      8000067c  x12:00000010 x14:cccccccd x15=0000000c  # mulhu   a5, a2, a4
      80000680  x15:0000000c x15=00000000               # srli    a5, a5, 4
      80000684  x15:00000000 x16:00000014 x15=00000000  # mul     a5, a5, a6
      80000688  x13:00000011 x15:00000000 x15=00000011  # sub     a5, a3, a5
      8000068c  x15:00000011 f04=       17.000000       # fcvt.d.wu ft4, a5
      80000690  f04:       17.000000 f03:        3.141000 f04=       53.397000  # fmul.d  ft4, ft4, ft3
      80000694  x10:00100170 f04:       53.397000 WA:00100170 WA:00100174  # fsd     ft4, 0(a0)
; init_data (bench_matmul.c:8)
      80000698  x12:00000010 x12=00000011               # addi    a2, a2, 1
      8000069c  x11:0000001a x11=00000019               # addi    a1, a1, -1
      800006a0  x10:00100170 x10=00100178               # addi    a0, a0, 8
      800006a4  x13:00000011 x13=00000012               # addi    a3, a3, 1
      800006a8  x11:00000019                            # bnez    a1, pc - 44
; init_data (bench_matmul.c:9)
      8000067c  x12:00000011 x14:cccccccd x15=0000000d  # mulhu   a5, a2, a4
      80000680  x15:0000000d x15=00000000               # srli    a5, a5, 4
      80000684  x15:00000000 x16:00000014 x15=00000000  # mul     a5, a5, a6
      80000688  x13:00000012 x15:00000000 x15=00000012  # sub     a5, a3, a5
      8000068c  x15:00000012 f04=       18.000000       # fcvt.d.wu ft4, a5
      80000690  f04:       18.000000 f03:        3.141000 f04=       56.538000  # fmul.d  ft4, ft4, ft3
      80000694  x10:00100178 f04:       56.538000 WA:00100178 WA:0010017c  # fsd     ft4, 0(a0)
; init_data (bench_matmul.c:8)
      80000698  x12:00000011 x12=00000012               # addi    a2, a2, 1
      8000069c  x11:00000019 x11=00000018               # addi    a1, a1, -1
      800006a0  x10:00100178 x10=00100180               # addi    a0, a0, 8
      800006a4  x13:00000012 x13=00000013               # addi    a3, a3, 1
      800006a8  x11:00000018                            # bnez    a1, pc - 44
; init_data (bench_matmul.c:9)
      8000067c  x12:00000012 x14:cccccccd x15=0000000e  # mulhu   a5, a2, a4
      80000680  x15:0000000e x15=00000000               # srli    a5, a5, 4
      80000684  x15:00000000 x16:00000014 x15=00000000  # mul     a5, a5, a6
      80000688  x13:00000013 x15:00000000 x15=00000013  # sub     a5, a3, a5
      8000068c  x15:00000013 f04=       19.000000       # fcvt.d.wu ft4, a5
      80000690  f04:       19.000000 f03:        3.141000 f04=       59.679000  # fmul.d  ft4, ft4, ft3
      80000694  x10:00100180 f04:       59.679000 WA:00100180 WA:00100184  # fsd     ft4, 0(a0)
; init_data (bench_matmul.c:8)
      80000698  x12:00000012 x12=00000013               # addi    a2, a2, 1
      8000069c  x11:00000018 x11=00000017               # addi    a1, a1, -1
      800006a0  x10:00100180 x10=00100188               # addi    a0, a0, 8
      800006a4  x13:00000013 x13=00000014               # addi    a3, a3, 1
      800006a8  x11:00000017                            # bnez    a1, pc - 44
; init_data (bench_matmul.c:9)
      8000067c  x12:00000013 x14:cccccccd x15=0000000f  # mulhu   a5, a2, a4
      80000680  x15:0000000f x15=00000000               # srli    a5, a5, 4
      80000684  x15:00000000 x16:00000014 x15=00000000  # mul     a5, a5, a6
      80000688  x13:00000014 x15:00000000 x15=00000014  # sub     a5, a3, a5
      8000068c  x15:00000014 f04=       20.000000       # fcvt.d.wu ft4, a5
      80000690  f04:       20.000000 f03:        3.141000 f04=       62.820000  # fmul.d  ft4, ft4, ft3
      80000694  x10:00100188 f04:       62.820000 WA:00100188 WA:0010018c  # fsd     ft4, 0(a0)
; init_data (bench_matmul.c:8)
      80000698  x12:00000013 x12=00000014               # addi    a2, a2, 1
      8000069c  x11:00000017 x11=00000016               # addi    a1, a1, -1
      800006a0  x10:00100188 x10=00100190               # addi    a0, a0, 8
      800006a4  x13:00000014 x13=00000015               # addi    a3, a3, 1
      800006a8  x11:00000016                            # bnez    a1, pc - 44
; init_data (bench_matmul.c:9)
      8000067c  x12:00000014 x14:cccccccd x15=00000010  # mulhu   a5, a2, a4
      80000680  x15:00000010 x15=00000001               # srli    a5, a5, 4
      80000684  x15:00000001 x16:00000014 x15=00000014  # mul     a5, a5, a6
      80000688  x13:00000015 x15:00000014 x15=00000001  # sub     a5, a3, a5
      8000068c  x15:00000001 f04=        1.000000       # fcvt.d.wu ft4, a5
      80000690  f04:        1.000000 f03:        3.141000 f04=        3.141000  # fmul.d  ft4, ft4, ft3
      80000694  x10:00100190 f04:        3.141000 WA:00100190 WA:00100194  # fsd     ft4, 0(a0)
; init_data (bench_matmul.c:8)
      80000698  x12:00000014 x12=00000015               # addi    a2, a2, 1
      8000069c  x11:00000016 x11=00000015               # addi    a1, a1, -1
      800006a0  x10:00100190 x10=00100198               # addi    a0, a0, 8
      800006a4  x13:00000015 x13=00000016               # addi    a3, a3, 1
      800006a8  x11:00000015                            # bnez    a1, pc - 44
; init_data (bench_matmul.c:9)
      8000067c  x12:00000015 x14:cccccccd x15=00000010  # mulhu   a5, a2, a4
      80000680  x15:00000010 x15=00000001               # srli    a5, a5, 4
      80000684  x15:00000001 x16:00000014 x15=00000014  # mul     a5, a5, a6
      80000688  x13:00000016 x15:00000014 x15=00000002  # sub     a5, a3, a5
      8000068c  x15:00000002 f04=        2.000000       # fcvt.d.wu ft4, a5
      80000690  f04:        2.000000 f03:        3.141000 f04=        6.282000  # fmul.d  ft4, ft4, ft3
      80000694  x10:00100198 f04:        6.282000 WA:00100198 WA:0010019c  # fsd     ft4, 0(a0)
; init_data (bench_matmul.c:8)
      80000698  x12:00000015 x12=00000016               # addi    a2, a2, 1
      8000069c  x11:00000015 x11=00000014               # addi    a1, a1, -1
      800006a0  x10:00100198 x10=001001a0               # addi    a0, a0, 8
      800006a4  x13:00000016 x13=00000017               # addi    a3, a3, 1
      800006a8  x11:00000014                            # bnez    a1, pc - 44
; init_data (bench_matmul.c:9)
      8000067c  x12:00000016 x14:cccccccd x15=00000011  # mulhu   a5, a2, a4
      80000680  x15:00000011 x15=00000001               # srli    a5, a5, 4
      80000684  x15:00000001 x16:00000014 x15=00000014  # mul     a5, a5, a6
      80000688  x13:00000017 x15:00000014 x15=00000003  # sub     a5, a3, a5
      8000068c  x15:00000003 f04=        3.000000       # fcvt.d.wu ft4, a5
      80000690  f04:        3.000000 f03:        3.141000 f04=        9.423000  # fmul.d  ft4, ft4, ft3
      80000694  x10:001001a0 f04:        9.423000 WA:001001a0 WA:001001a4  # fsd     ft4, 0(a0)
; init_data (bench_matmul.c:8)
      80000698  x12:00000016 x12=00000017               # addi    a2, a2, 1
      8000069c  x11:00000014 x11=00000013               # addi    a1, a1, -1
      800006a0  x10:001001a0 x10=001001a8               # addi    a0, a0, 8
      800006a4  x13:00000017 x13=00000018               # addi    a3, a3, 1
      800006a8  x11:00000013                            # bnez    a1, pc - 44
; init_data (bench_matmul.c:9)
      8000067c  x12:00000017 x14:cccccccd x15=00000012  # mulhu   a5, a2, a4
      80000680  x15:00000012 x15=00000001               # srli    a5, a5, 4
      80000684  x15:00000001 x16:00000014 x15=00000014  # mul     a5, a5, a6
      80000688  x13:00000018 x15:00000014 x15=00000004  # sub     a5, a3, a5
      8000068c  x15:00000004 f04=        4.000000       # fcvt.d.wu ft4, a5
      80000690  f04:        4.000000 f03:        3.141000 f04=       12.564000  # fmul.d  ft4, ft4, ft3
      80000694  x10:001001a8 f04:       12.564000 WA:001001a8 WA:001001ac  # fsd     ft4, 0(a0)
; init_data (bench_matmul.c:8)
      80000698  x12:00000017 x12=00000018               # addi    a2, a2, 1
      8000069c  x11:00000013 x11=00000012               # addi    a1, a1, -1
      800006a0  x10:001001a8 x10=001001b0               # addi    a0, a0, 8
      800006a4  x13:00000018 x13=00000019               # addi    a3, a3, 1
      800006a8  x11:00000012                            # bnez    a1, pc - 44
; init_data (bench_matmul.c:9)
      8000067c  x12:00000018 x14:cccccccd x15=00000013  # mulhu   a5, a2, a4
      80000680  x15:00000013 x15=00000001               # srli    a5, a5, 4
      80000684  x15:00000001 x16:00000014 x15=00000014  # mul     a5, a5, a6
      80000688  x13:00000019 x15:00000014 x15=00000005  # sub     a5, a3, a5
      8000068c  x15:00000005 f04=        5.000000       # fcvt.d.wu ft4, a5
      80000690  f04:        5.000000 f03:        3.141000 f04=       15.705000  # fmul.d  ft4, ft4, ft3
      80000694  x10:001001b0 f04:       15.705000 WA:001001b0 WA:001001b4  # fsd     ft4, 0(a0)
; init_data (bench_matmul.c:8)
      80000698  x12:00000018 x12=00000019               # addi    a2, a2, 1
      8000069c  x11:00000012 x11=00000011               # addi    a1, a1, -1
      800006a0  x10:001001b0 x10=001001b8               # addi    a0, a0, 8
      800006a4  x13:00000019 x13=0000001a               # addi    a3, a3, 1
      800006a8  x11:00000011                            # bnez    a1, pc - 44
; init_data (bench_matmul.c:9)
      8000067c  x12:00000019 x14:cccccccd x15=00000014  # mulhu   a5, a2, a4
      80000680  x15:00000014 x15=00000001               # srli    a5, a5, 4
      80000684  x15:00000001 x16:00000014 x15=00000014  # mul     a5, a5, a6
      80000688  x13:0000001a x15:00000014 x15=00000006  # sub     a5, a3, a5
      8000068c  x15:00000006 f04=        6.000000       # fcvt.d.wu ft4, a5
      80000690  f04:        6.000000 f03:        3.141000 f04=       18.846000  # fmul.d  ft4, ft4, ft3
      80000694  x10:001001b8 f04:       18.846000 WA:001001b8 WA:001001bc  # fsd     ft4, 0(a0)
; init_data (bench_matmul.c:8)
      80000698  x12:00000019 x12=0000001a               # addi    a2, a2, 1
      8000069c  x11:00000011 x11=00000010               # addi    a1, a1, -1
      800006a0  x10:001001b8 x10=001001c0               # addi    a0, a0, 8
      800006a4  x13:0000001a x13=0000001b               # addi    a3, a3, 1
      800006a8  x11:00000010                            # bnez    a1, pc - 44
; init_data (bench_matmul.c:9)
      8000067c  x12:0000001a x14:cccccccd x15=00000014  # mulhu   a5, a2, a4
      80000680  x15:00000014 x15=00000001               # srli    a5, a5, 4
      80000684  x15:00000001 x16:00000014 x15=00000014  # mul     a5, a5, a6
      80000688  x13:0000001b x15:00000014 x15=00000007  # sub     a5, a3, a5
      8000068c  x15:00000007 f04=        7.000000       # fcvt.d.wu ft4, a5
      80000690  f04:        7.000000 f03:        3.141000 f04=       21.987000  # fmul.d  ft4, ft4, ft3
      80000694  x10:001001c0 f04:       21.987000 WA:001001c0 WA:001001c4  # fsd     ft4, 0(a0)
; init_data (bench_matmul.c:8)
      80000698  x12:0000001a x12=0000001b               # addi    a2, a2, 1
      8000069c  x11:00000010 x11=0000000f               # addi    a1, a1, -1
      800006a0  x10:001001c0 x10=001001c8               # addi    a0, a0, 8
      800006a4  x13:0000001b x13=0000001c               # addi    a3, a3, 1
      800006a8  x11:0000000f                            # bnez    a1, pc - 44
; init_data (bench_matmul.c:9)
      8000067c  x12:0000001b x14:cccccccd x15=00000015  # mulhu   a5, a2, a4
      80000680  x15:00000015 x15=00000001               # srli    a5, a5, 4
      80000684  x15:00000001 x16:00000014 x15=00000014  # mul     a5, a5, a6
      80000688  x13:0000001c x15:00000014 x15=00000008  # sub     a5, a3, a5
      8000068c  x15:00000008 f04=        8.000000       # fcvt.d.wu ft4, a5
      80000690  f04:        8.000000 f03:        3.141000 f04=       25.128000  # fmul.d  ft4, ft4, ft3
      80000694  x10:001001c8 f04:       25.128000 WA:001001c8 WA:001001cc  # fsd     ft4, 0(a0)
; init_data (bench_matmul.c:8)
      80000698  x12:0000001b x12=0000001c               # addi    a2, a2, 1
      8000069c  x11:0000000f x11=0000000e               # addi    a1, a1, -1
      800006a0  x10:001001c8 x10=001001d0               # addi    a0, a0, 8
      800006a4  x13:0000001c x13=0000001d               # addi    a3, a3, 1
      800006a8  x11:0000000e                            # bnez    a1, pc - 44
; init_data (bench_matmul.c:9)
      8000067c  x12:0000001c x14:cccccccd x15=00000016  # mulhu   a5, a2, a4
      80000680  x15:00000016 x15=00000001               # srli    a5, a5, 4
      80000684  x15:00000001 x16:00000014 x15=00000014  # mul     a5, a5, a6
      80000688  x13:0000001d x15:00000014 x15=00000009  # sub     a5, a3, a5
      8000068c  x15:00000009 f04=        9.000000       # fcvt.d.wu ft4, a5
      80000690  f04:        9.000000 f03:        3.141000 f04=       28.269000  # fmul.d  ft4, ft4, ft3
      80000694  x10:001001d0 f04:       28.269000 WA:001001d0 WA:001001d4  # fsd     ft4, 0(a0)
; init_data (bench_matmul.c:8)
      80000698  x12:0000001c x12=0000001d               # addi    a2, a2, 1
      8000069c  x11:0000000e x11=0000000d               # addi    a1, a1, -1
      800006a0  x10:001001d0 x10=001001d8               # addi    a0, a0, 8
      800006a4  x13:0000001d x13=0000001e               # addi    a3, a3, 1
      800006a8  x11:0000000d                            # bnez    a1, pc - 44
; init_data (bench_matmul.c:9)
      8000067c  x12:0000001d x14:cccccccd x15=00000017  # mulhu   a5, a2, a4
      80000680  x15:00000017 x15=00000001               # srli    a5, a5, 4
      80000684  x15:00000001 x16:00000014 x15=00000014  # mul     a5, a5, a6
      80000688  x13:0000001e x15:00000014 x15=0000000a  # sub     a5, a3, a5
      8000068c  x15:0000000a f04=       10.000000       # fcvt.d.wu ft4, a5
      80000690  f04:       10.000000 f03:        3.141000 f04=       31.410000  # fmul.d  ft4, ft4, ft3
      80000694  x10:001001d8 f04:       31.410000 WA:001001d8 WA:001001dc  # fsd     ft4, 0(a0)
; init_data (bench_matmul.c:8)
      80000698  x12:0000001d x12=0000001e               # addi    a2, a2, 1
      8000069c  x11:0000000d x11=0000000c               # addi    a1, a1, -1
      800006a0  x10:001001d8 x10=001001e0               # addi    a0, a0, 8
      800006a4  x13:0000001e x13=0000001f               # addi    a3, a3, 1
      800006a8  x11:0000000c                            # bnez    a1, pc - 44
; init_data (bench_matmul.c:9)
      8000067c  x12:0000001e x14:cccccccd x15=00000018  # mulhu   a5, a2, a4
      80000680  x15:00000018 x15=00000001               # srli    a5, a5, 4
      80000684  x15:00000001 x16:00000014 x15=00000014  # mul     a5, a5, a6
      80000688  x13:0000001f x15:00000014 x15=0000000b  # sub     a5, a3, a5
      8000068c  x15:0000000b f04=       11.000000       # fcvt.d.wu ft4, a5
      80000690  f04:       11.000000 f03:        3.141000 f04=       34.551000  # fmul.d  ft4, ft4, ft3
      80000694  x10:001001e0 f04:       34.551000 WA:001001e0 WA:001001e4  # fsd     ft4, 0(a0)
; init_data (bench_matmul.c:8)
      80000698  x12:0000001e x12=0000001f               # addi    a2, a2, 1
      8000069c  x11:0000000c x11=0000000b               # addi    a1, a1, -1
      800006a0  x10:001001e0 x10=001001e8               # addi    a0, a0, 8
      800006a4  x13:0000001f x13=00000020               # addi    a3, a3, 1
      800006a8  x11:0000000b                            # bnez    a1, pc - 44
; init_data (bench_matmul.c:9)
      8000067c  x12:0000001f x14:cccccccd x15=00000018  # mulhu   a5, a2, a4
      80000680  x15:00000018 x15=00000001               # srli    a5, a5, 4
      80000684  x15:00000001 x16:00000014 x15=00000014  # mul     a5, a5, a6
      80000688  x13:00000020 x15:00000014 x15=0000000c  # sub     a5, a3, a5
      8000068c  x15:0000000c f04=       12.000000       # fcvt.d.wu ft4, a5
      80000690  f04:       12.000000 f03:        3.141000 f04=       37.692000  # fmul.d  ft4, ft4, ft3
      80000694  x10:001001e8 f04:       37.692000 WA:001001e8 WA:001001ec  # fsd     ft4, 0(a0)
; init_data (bench_matmul.c:8)
      80000698  x12:0000001f x12=00000020               # addi    a2, a2, 1
      8000069c  x11:0000000b x11=0000000a               # addi    a1, a1, -1
      800006a0  x10:001001e8 x10=001001f0               # addi    a0, a0, 8
      800006a4  x13:00000020 x13=00000021               # addi    a3, a3, 1
      800006a8  x11:0000000a                            # bnez    a1, pc - 44
; init_data (bench_matmul.c:9)
      8000067c  x12:00000020 x14:cccccccd x15=00000019  # mulhu   a5, a2, a4
      80000680  x15:00000019 x15=00000001               # srli    a5, a5, 4
      80000684  x15:00000001 x16:00000014 x15=00000014  # mul     a5, a5, a6
      80000688  x13:00000021 x15:00000014 x15=0000000d  # sub     a5, a3, a5
      8000068c  x15:0000000d f04=       13.000000       # fcvt.d.wu ft4, a5
      80000690  f04:       13.000000 f03:        3.141000 f04=       40.833000  # fmul.d  ft4, ft4, ft3
      80000694  x10:001001f0 f04:       40.833000 WA:001001f0 WA:001001f4  # fsd     ft4, 0(a0)
; init_data (bench_matmul.c:8)
      80000698  x12:00000020 x12=00000021               # addi    a2, a2, 1
      8000069c  x11:0000000a x11=00000009               # addi    a1, a1, -1
      800006a0  x10:001001f0 x10=001001f8               # addi    a0, a0, 8
      800006a4  x13:00000021 x13=00000022               # addi    a3, a3, 1
      800006a8  x11:00000009                            # bnez    a1, pc - 44
; init_data (bench_matmul.c:9)
      8000067c  x12:00000021 x14:cccccccd x15=0000001a  # mulhu   a5, a2, a4
      80000680  x15:0000001a x15=00000001               # srli    a5, a5, 4
      80000684  x15:00000001 x16:00000014 x15=00000014  # mul     a5, a5, a6
      80000688  x13:00000022 x15:00000014 x15=0000000e  # sub     a5, a3, a5
      8000068c  x15:0000000e f04=       14.000000       # fcvt.d.wu ft4, a5
      80000690  f04:       14.000000 f03:        3.141000 f04=       43.974000  # fmul.d  ft4, ft4, ft3
      80000694  x10:001001f8 f04:       43.974000 WA:001001f8 WA:001001fc  # fsd     ft4, 0(a0)
; init_data (bench_matmul.c:8)
      80000698  x12:00000021 x12=00000022               # addi    a2, a2, 1
      8000069c  x11:00000009 x11=00000008               # addi    a1, a1, -1
      800006a0  x10:001001f8 x10=00100200               # addi    a0, a0, 8
      800006a4  x13:00000022 x13=00000023               # addi    a3, a3, 1
      800006a8  x11:00000008                            # bnez    a1, pc - 44
; init_data (bench_matmul.c:9)
      8000067c  x12:00000022 x14:cccccccd x15=0000001b  # mulhu   a5, a2, a4
      80000680  x15:0000001b x15=00000001               # srli    a5, a5, 4
      80000684  x15:00000001 x16:00000014 x15=00000014  # mul     a5, a5, a6
      80000688  x13:00000023 x15:00000014 x15=0000000f  # sub     a5, a3, a5
      8000068c  x15:0000000f f04=       15.000000       # fcvt.d.wu ft4, a5
      80000690  f04:       15.000000 f03:        3.141000 f04=       47.115000  # fmul.d  ft4, ft4, ft3
      80000694  x10:00100200 f04:       47.115000 WA:00100200 WA:00100204  # fsd     ft4, 0(a0)
; init_data (bench_matmul.c:8)
      80000698  x12:00000022 x12=00000023               # addi    a2, a2, 1
      8000069c  x11:00000008 x11=00000007               # addi    a1, a1, -1
      800006a0  x10:00100200 x10=00100208               # addi    a0, a0, 8
      800006a4  x13:00000023 x13=00000024               # addi    a3, a3, 1
      800006a8  x11:00000007                            # bnez    a1, pc - 44
; init_data (bench_matmul.c:9)
      8000067c  x12:00000023 x14:cccccccd x15=0000001c  # mulhu   a5, a2, a4
      80000680  x15:0000001c x15=00000001               # srli    a5, a5, 4
      80000684  x15:00000001 x16:00000014 x15=00000014  # mul     a5, a5, a6
      80000688  x13:00000024 x15:00000014 x15=00000010  # sub     a5, a3, a5
      8000068c  x15:00000010 f04=       16.000000       # fcvt.d.wu ft4, a5
      80000690  f04:       16.000000 f03:        3.141000 f04=       50.256000  # fmul.d  ft4, ft4, ft3
      80000694  x10:00100208 f04:       50.256000 WA:00100208 WA:0010020c  # fsd     ft4, 0(a0)
; init_data (bench_matmul.c:8)
      80000698  x12:00000023 x12=00000024               # addi    a2, a2, 1
      8000069c  x11:00000007 x11=00000006               # addi    a1, a1, -1
      800006a0  x10:00100208 x10=00100210               # addi    a0, a0, 8
      800006a4  x13:00000024 x13=00000025               # addi    a3, a3, 1
      800006a8  x11:00000006                            # bnez    a1, pc - 44
; init_data (bench_matmul.c:9)
      8000067c  x12:00000024 x14:cccccccd x15=0000001c  # mulhu   a5, a2, a4
      80000680  x15:0000001c x15=00000001               # srli    a5, a5, 4
      80000684  x15:00000001 x16:00000014 x15=00000014  # mul     a5, a5, a6
      80000688  x13:00000025 x15:00000014 x15=00000011  # sub     a5, a3, a5
      8000068c  x15:00000011 f04=       17.000000       # fcvt.d.wu ft4, a5
      80000690  f04:       17.000000 f03:        3.141000 f04=       53.397000  # fmul.d  ft4, ft4, ft3
      80000694  x10:00100210 f04:       53.397000 WA:00100210 WA:00100214  # fsd     ft4, 0(a0)
; init_data (bench_matmul.c:8)
      80000698  x12:00000024 x12=00000025               # addi    a2, a2, 1
      8000069c  x11:00000006 x11=00000005               # addi    a1, a1, -1
      800006a0  x10:00100210 x10=00100218               # addi    a0, a0, 8
      800006a4  x13:00000025 x13=00000026               # addi    a3, a3, 1
      800006a8  x11:00000005                            # bnez    a1, pc - 44
; init_data (bench_matmul.c:9)
      8000067c  x12:00000025 x14:cccccccd x15=0000001d  # mulhu   a5, a2, a4
      80000680  x15:0000001d x15=00000001               # srli    a5, a5, 4
      80000684  x15:00000001 x16:00000014 x15=00000014  # mul     a5, a5, a6
      80000688  x13:00000026 x15:00000014 x15=00000012  # sub     a5, a3, a5
      8000068c  x15:00000012 f04=       18.000000       # fcvt.d.wu ft4, a5
      80000690  f04:       18.000000 f03:        3.141000 f04=       56.538000  # fmul.d  ft4, ft4, ft3
      80000694  x10:00100218 f04:       56.538000 WA:00100218 WA:0010021c  # fsd     ft4, 0(a0)
; init_data (bench_matmul.c:8)
      80000698  x12:00000025 x12=00000026               # addi    a2, a2, 1
      8000069c  x11:00000005 x11=00000004               # addi    a1, a1, -1
      800006a0  x10:00100218 x10=00100220               # addi    a0, a0, 8
      800006a4  x13:00000026 x13=00000027               # addi    a3, a3, 1
      800006a8  x11:00000004                            # bnez    a1, pc - 44
; init_data (bench_matmul.c:9)
      8000067c  x12:00000026 x14:cccccccd x15=0000001e  # mulhu   a5, a2, a4
      80000680  x15:0000001e x15=00000001               # srli    a5, a5, 4
      80000684  x15:00000001 x16:00000014 x15=00000014  # mul     a5, a5, a6
      80000688  x13:00000027 x15:00000014 x15=00000013  # sub     a5, a3, a5
      8000068c  x15:00000013 f04=       19.000000       # fcvt.d.wu ft4, a5
      80000690  f04:       19.000000 f03:        3.141000 f04=       59.679000  # fmul.d  ft4, ft4, ft3
      80000694  x10:00100220 f04:       59.679000 WA:00100220 WA:00100224  # fsd     ft4, 0(a0)
; init_data (bench_matmul.c:8)
      80000698  x12:00000026 x12=00000027               # addi    a2, a2, 1
      8000069c  x11:00000004 x11=00000003               # addi    a1, a1, -1
      800006a0  x10:00100220 x10=00100228               # addi    a0, a0, 8
      800006a4  x13:00000027 x13=00000028               # addi    a3, a3, 1
      800006a8  x11:00000003                            # bnez    a1, pc - 44
; init_data (bench_matmul.c:9)
      8000067c  x12:00000027 x14:cccccccd x15=0000001f  # mulhu   a5, a2, a4
      80000680  x15:0000001f x15=00000001               # srli    a5, a5, 4
      80000684  x15:00000001 x16:00000014 x15=00000014  # mul     a5, a5, a6
      80000688  x13:00000028 x15:00000014 x15=00000014  # sub     a5, a3, a5
      8000068c  x15:00000014 f04=       20.000000       # fcvt.d.wu ft4, a5
      80000690  f04:       20.000000 f03:        3.141000 f04=       62.820000  # fmul.d  ft4, ft4, ft3
      80000694  x10:00100228 f04:       62.820000 WA:00100228 WA:0010022c  # fsd     ft4, 0(a0)
; init_data (bench_matmul.c:8)
      80000698  x12:00000027 x12=00000028               # addi    a2, a2, 1
      8000069c  x11:00000003 x11=00000002               # addi    a1, a1, -1
      800006a0  x10:00100228 x10=00100230               # addi    a0, a0, 8
      800006a4  x13:00000028 x13=00000029               # addi    a3, a3, 1
      800006a8  x11:00000002                            # bnez    a1, pc - 44
; init_data (bench_matmul.c:9)
      8000067c  x12:00000028 x14:cccccccd x15=00000020  # mulhu   a5, a2, a4
      80000680  x15:00000020 x15=00000002               # srli    a5, a5, 4
      80000684  x15:00000002 x16:00000014 x15=00000028  # mul     a5, a5, a6
      80000688  x13:00000029 x15:00000028 x15=00000001  # sub     a5, a3, a5
      8000068c  x15:00000001 f04=        1.000000       # fcvt.d.wu ft4, a5
      80000690  f04:        1.000000 f03:        3.141000 f04=        3.141000  # fmul.d  ft4, ft4, ft3
      80000694  x10:00100230 f04:        3.141000 WA:00100230 WA:00100234  # fsd     ft4, 0(a0)
; init_data (bench_matmul.c:8)
      80000698  x12:00000028 x12=00000029               # addi    a2, a2, 1
      8000069c  x11:00000002 x11=00000001               # addi    a1, a1, -1
      800006a0  x10:00100230 x10=00100238               # addi    a0, a0, 8
      800006a4  x13:00000029 x13=0000002a               # addi    a3, a3, 1
      800006a8  x11:00000001                            # bnez    a1, pc - 44
; init_data (bench_matmul.c:9)
      8000067c  x12:00000029 x14:cccccccd x15=00000020  # mulhu   a5, a2, a4
      80000680  x15:00000020 x15=00000002               # srli    a5, a5, 4
      80000684  x15:00000002 x16:00000014 x15=00000028  # mul     a5, a5, a6
      80000688  x13:0000002a x15:00000028 x15=00000002  # sub     a5, a3, a5
      8000068c  x15:00000002 f04=        2.000000       # fcvt.d.wu ft4, a5
      80000690  f04:        2.000000 f03:        3.141000 f04=        6.282000  # fmul.d  ft4, ft4, ft3
      80000694  x10:00100238 f04:        6.282000 WA:00100238 WA:0010023c  # fsd     ft4, 0(a0)
; init_data (bench_matmul.c:8)
      80000698  x12:00000029 x12=0000002a               # addi    a2, a2, 1
      8000069c  x11:00000001 x11=00000000               # addi    a1, a1, -1
      800006a0  x10:00100238 x10=00100240               # addi    a0, a0, 8
      800006a4  x13:0000002a x13=0000002b               # addi    a3, a3, 1
      800006a8  x11:00000000                            # bnez    a1, pc - 44
; init_data (bench_matmul.c:11)
      800006ac  x1:80000800                             # ret
; benchmark_get_cycle (benchmark.c:8)
;  in main (bench_matmul.c:29)
      80000800  x9=00000000                             # csrr    s1, mcycle
; main (bench_matmul.c:31)
      80000804  x13=00000005                            # li      a3, 5
      80000808  x14=00000006                            # li      a4, 6
      8000080c  x15=00000007                            # li      a5, 7
      80000810  x8:00100240 x10=00100240                # mv      a0, s0
      80000814  x18:00100000 x11=00100000               # mv      a1, s2
      80000818  x19:001000f0 x12=001000f0               # mv      a2, s3
      8000081c  x1=8000081c                             # auipc   ra, 0x0
      80000820  x1:8000081c x1=80000824                 # jalr    ra, ra, 148
; matmul (matmul.c:5)
      800008b0  x2:0011ff30 x2=0011ff00                 # addi    sp, sp, -48
      800008b4  x2:0011ff00 x1:80000824 WA:0011ff2c     # sw      ra, 44(sp)
      800008b8  x2:0011ff00 x8:00100240 WA:0011ff28     # sw      s0, 40(sp)
      800008bc  x2:0011ff00 x9:00000000 WA:0011ff24     # sw      s1, 36(sp)
      800008c0  x2:0011ff00 x18:00100000 WA:0011ff20    # sw      s2, 32(sp)
      800008c4  x2:0011ff00 x19:001000f0 WA:0011ff1c    # sw      s3, 28(sp)
      800008c8  x2:0011ff00 x20:00000000 WA:0011ff18    # sw      s4, 24(sp)
      800008cc  x2:0011ff00 x21:00000000 WA:0011ff14    # sw      s5, 20(sp)
      800008d0  x2:0011ff00 x22:00000000 WA:0011ff10    # sw      s6, 16(sp)
      800008d4  x2:0011ff00 x23:00000000 WA:0011ff0c    # sw      s7, 12(sp)
      800008d8  x2:0011ff00 x24:00000000 WA:0011ff08    # sw      s8, 8(sp)
      800008dc  x2:0011ff00 x25:00000000 WA:0011ff04    # sw      s9, 4(sp)
      800008e0  x13:00000005 x23=00000005               # mv      s7, a3
; matmul (matmul.c:6)
      800008e4  x13:00000005 x13=00000000               # slti    a3, a3, 1
      800008e8  x15:00000007 x9=00000000                # slti    s1, a5, 1
      800008ec  x13:00000000 x9:00000000 x13=00000000   # or      a3, a3, s1
      800008f0  x13:00000000                            # bnez    a3, pc + 804
; matmul (matmul.c:0)
      800008f4  x10:00100240 x24=00100240               # mv      s8, a0
; matmul (matmul.c:6)
      800008f8  x15:00000007 x16=00000006               # addi    a6, a5, -1
      800008fc  x16:00000006 x29=00000030               # slli    t4, a6, 3
      80000900  x23:00000005 x28=00000004               # addi    t3, s7, -1
      80000904  x15:00000007 x18=00000038               # slli    s2, a5, 3
      80000908  x18:00000038 x28:00000004 x10=000000e0  # mul     a0, s2, t3
      8000090c  x29:00000030 x10:000000e0 x10=00000110  # add     a0, t4, a0
      80000910  x10:00000110 x24:00100240 x20=00100350  # add     s4, a0, s8
      80000914  x20:00100350 x10:00000110 x10=00000000  # sltu    a0, s4, a0
; matmul (matmul.c:9)
      80000918  x14:00000006                            # bge     zero, a4, pc + 80
; matmul (matmul.c:6)
      8000091c  x14:00000006 x17=00000005               # addi    a7, a4, -1
      80000920  x17:00000005 x6=00000028                # slli    t1, a7, 3
      80000924  x14:00000006 x21=00000030               # slli    s5, a4, 3
      80000928  x21:00000030 x28:00000004 x13=000000c0  # mul     a3, s5, t3
      8000092c  x6:00000028 x13:000000c0 x19=000000e8   # add     s3, t1, a3
      80000930  x19:000000e8 x11:00100000 x31=001000e8  # add     t6, s3, a1
      80000934  x18:00000038 x17:00000005 x5=00000118   # mul     t0, s2, a7
      80000938  x5:00000118 x29:00000030 x7=00000148    # add     t2, t0, t4
      8000093c  x31:001000e8 x19:000000e8               # bgeu    t6, s3, pc + 112
; matmul (matmul.c:0)
      800009ac  x31:001000e8 x24:00100240 x13=00000001  # sltu    a3, t6, s8
; matmul (matmul.c:6)
      800009b0  x7:00000148 x12:001000f0 x30=00100238   # add     t5, t2, a2
      800009b4  x10:00000000                            # beqz    a0, pc - 104
; matmul (matmul.c:0)
      8000094c  x20:00100350 x11:00100000 x9=00000000   # sltu    s1, s4, a1
; matmul (matmul.c:6)
      80000950  x30:00100238 x7:00000148                # bltu    t5, t2, pc + 112
; matmul (matmul.c:0)
      80000954  x30:00100238 x24:00100240 x8=00000001   # sltu    s0, t5, s8
; matmul (matmul.c:6)
      80000958  x13:00000001 x9:00000000 x13=00000001   # or      a3, a3, s1
      8000095c  x10:00000000                            # bnez    a0, pc + 112
; matmul (matmul.c:0)
      80000960  x20:00100350 x12:001000f0 x9=00000000   # sltu    s1, s4, a2
      80000964                                          # j       pc + 0x6c
; matmul (matmul.c:6)
      800009d0  x8:00000001 x9:00000000 x8=00000001     # or      s0, s0, s1
      800009d4  x13:00000001 x8:00000001 x25=00000001   # and     s9, a3, s0
      800009d8  x13=00100000                            # lui     a3, 0x100
      800009dc  x13:00100000 x13=00100001               # addi    a3, a3, 1
      800009e0  x24:00100240 x13:00100001 x9=00000000   # sltu    s1, s8, a3
      800009e4  x8=00120000                             # lui     s0, 0x120
      800009e8  x8:00120000 x22=00120001                # addi    s6, s0, 1
      800009ec  x10:00000000                            # beqz    a0, pc + 12
; matmul (matmul.c:0)
      800009f8  x20:00100350 x22:00120001 x10=00000001  # sltu    a0, s4, s6
      800009fc  x9:00000000 x10:00000001 x10=00000000   # and     a0, s1, a0
      80000a00  x10:00000000 x25:00000001 x10=00000000  # and     a0, a0, s9
      80000a04  x11:00100000 x13:00100001 x8=00000001   # sltu    s0, a1, a3
      80000a08  x31:001000e8 x19:000000e8               # bgeu    t6, s3, pc + 12
      80000a14  x31:001000e8 x22:00120001 x9=00000001   # sltu    s1, t6, s6
      80000a18  x8:00000001 x9:00000001 x9=00000001     # and     s1, s0, s1
      80000a1c  x9:00000001 x10:00000000 x10=00000000   # and     a0, s1, a0
      80000a20  x12:001000f0 x13:00100001 x13=00000000  # sltu    a3, a2, a3
      80000a24  x30:00100238 x7:00000148                # bgeu    t5, t2, pc + 12
      80000a30  x30:00100238 x22:00120001 x9=00000001   # sltu    s1, t5, s6
      80000a34  x13:00000000 x9:00000001 x13=00000000   # and     a3, a3, s1
      80000a38  x13:00000000 x10:00000000 x10=00000000  # and     a0, a3, a0
      80000a3c  x10:00000000                            # beqz    a0, pc + 252
      80000b38  x16=00000000                            # li      a6, 0
; matmul (matmul.c:6)
      80000b3c  x29:00000030 x13=00000038               # addi    a3, t4, 8
      80000b40  f03=        0.000000                    # fcvt.d.w ft3, zero
; matmul (matmul.c:0)
      80000b44  x6=00000000                             # li      t1, 0
      80000b48  x16:00000000 x15:00000007 x17=00000000  # mul     a7, a6, a5
      80000b4c  x12:001000f0 x5=001000f0                # mv      t0, a2
      80000b50  x11:00100000 x10=00100000               # mv      a0, a1
      80000b54  x5:001000f0 x9=001000f0                 # mv      s1, t0
      80000b58  x14:00000006 x8=00000006                # mv      s0, a4
      80000b5c  f03:        0.000000 f03:        0.000000 f04=        0.000000  # fsgnj.d ft4, ft3, ft3
; matmul (matmul.c:10)
      80000b60  x10:00100000 RA:00100000 RA:00100004 f05=        3.141000  # fld     ft5, 0(a0)
      80000b64  x9:001000f0 RA:001000f0 RA:001000f4 f06=        3.141000  # fld     ft6, 0(s1)
      80000b68  f06:        3.141000 f05:        3.141000 f04:        0.000000 f04=        9.865881  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000006 x8=00000005                 # addi    s0, s0, -1
      80000b70  x9:001000f0 x13:00000038 x9=00100128    # add     s1, s1, a3
      80000b74  x10:00100000 x10=00100008               # addi    a0, a0, 8
      80000b78  x8:00000005                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100008 RA:00100008 RA:0010000c f05=        6.282000  # fld     ft5, 0(a0)
      80000b64  x9:00100128 RA:00100128 RA:0010012c f06=       25.128000  # fld     ft6, 0(s1)
      80000b68  f06:       25.128000 f05:        6.282000 f04:        9.865881 f04=      167.719977  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000005 x8=00000004                 # addi    s0, s0, -1
      80000b70  x9:00100128 x13:00000038 x9=00100160    # add     s1, s1, a3
      80000b74  x10:00100008 x10=00100010               # addi    a0, a0, 8
      80000b78  x8:00000004                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100010 RA:00100010 RA:00100014 f05=        9.423000  # fld     ft5, 0(a0)
      80000b64  x9:00100160 RA:00100160 RA:00100164 f06=       47.115000  # fld     ft6, 0(s1)
      80000b68  f06:       47.115000 f05:        9.423000 f04:      167.719977 f04=      611.684622  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000004 x8=00000003                 # addi    s0, s0, -1
      80000b70  x9:00100160 x13:00000038 x9=00100198    # add     s1, s1, a3
      80000b74  x10:00100010 x10=00100018               # addi    a0, a0, 8
      80000b78  x8:00000003                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100018 RA:00100018 RA:0010001c f05=       12.564000  # fld     ft5, 0(a0)
      80000b64  x9:00100198 RA:00100198 RA:0010019c f06=        6.282000  # fld     ft6, 0(s1)
      80000b68  f06:        6.282000 f05:       12.564000 f04:      611.684622 f04=      690.611670  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000003 x8=00000002                 # addi    s0, s0, -1
      80000b70  x9:00100198 x13:00000038 x9=001001d0    # add     s1, s1, a3
      80000b74  x10:00100018 x10=00100020               # addi    a0, a0, 8
      80000b78  x8:00000002                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100020 RA:00100020 RA:00100024 f05=       15.705000  # fld     ft5, 0(a0)
      80000b64  x9:001001d0 RA:001001d0 RA:001001d4 f06=       28.269000  # fld     ft6, 0(s1)
      80000b68  f06:       28.269000 f05:       15.705000 f04:      690.611670 f04=     1134.576315  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000002 x8=00000001                 # addi    s0, s0, -1
      80000b70  x9:001001d0 x13:00000038 x9=00100208    # add     s1, s1, a3
      80000b74  x10:00100020 x10=00100028               # addi    a0, a0, 8
      80000b78  x8:00000001                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100028 RA:00100028 RA:0010002c f05=       18.846000  # fld     ft5, 0(a0)
      80000b64  x9:00100208 RA:00100208 RA:0010020c f06=       50.256000  # fld     ft6, 0(s1)
      80000b68  f06:       50.256000 f05:       18.846000 f04:     1134.576315 f04=     2081.700891  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000001 x8=00000000                 # addi    s0, s0, -1
      80000b70  x9:00100208 x13:00000038 x9=00100240    # add     s1, s1, a3
      80000b74  x10:00100028 x10=00100030               # addi    a0, a0, 8
      80000b78  x8:00000000                             # bnez    s0, pc - 24
; matmul (matmul.c:12)
      80000b7c  x6:00000000 x17:00000000 x10=00000000   # add     a0, t1, a7
      80000b80  x10:00000000 x10=00000000               # slli    a0, a0, 3
      80000b84  x24:00100240 x10:00000000 x10=00100240  # add     a0, s8, a0
      80000b88  x10:00100240 f04:     2081.700891 WA:00100240 WA:00100244  # fsd     ft4, 0(a0)
; matmul (matmul.c:7)
      80000b8c  x6:00000000 x6=00000001                 # addi    t1, t1, 1
      80000b90  x5:001000f0 x5=001000f8                 # addi    t0, t0, 8
      80000b94  x6:00000001 x15:00000007                # bne     t1, a5, pc - 68
; matmul (matmul.c:0)
      80000b50  x11:00100000 x10=00100000               # mv      a0, a1
      80000b54  x5:001000f8 x9=001000f8                 # mv      s1, t0
      80000b58  x14:00000006 x8=00000006                # mv      s0, a4
      80000b5c  f03:        0.000000 f03:        0.000000 f04=        0.000000  # fsgnj.d ft4, ft3, ft3
; matmul (matmul.c:10)
      80000b60  x10:00100000 RA:00100000 RA:00100004 f05=        3.141000  # fld     ft5, 0(a0)
      80000b64  x9:001000f8 RA:001000f8 RA:001000fc f06=        6.282000  # fld     ft6, 0(s1)
      80000b68  f06:        6.282000 f05:        3.141000 f04:        0.000000 f04=       19.731762  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000006 x8=00000005                 # addi    s0, s0, -1
      80000b70  x9:001000f8 x13:00000038 x9=00100130    # add     s1, s1, a3
      80000b74  x10:00100000 x10=00100008               # addi    a0, a0, 8
      80000b78  x8:00000005                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100008 RA:00100008 RA:0010000c f05=        6.282000  # fld     ft5, 0(a0)
      80000b64  x9:00100130 RA:00100130 RA:00100134 f06=       28.269000  # fld     ft6, 0(s1)
      80000b68  f06:       28.269000 f05:        6.282000 f04:       19.731762 f04=      197.317620  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000005 x8=00000004                 # addi    s0, s0, -1
      80000b70  x9:00100130 x13:00000038 x9=00100168    # add     s1, s1, a3
      80000b74  x10:00100008 x10=00100010               # addi    a0, a0, 8
      80000b78  x8:00000004                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100010 RA:00100010 RA:00100014 f05=        9.423000  # fld     ft5, 0(a0)
      80000b64  x9:00100168 RA:00100168 RA:0010016c f06=       50.256000  # fld     ft6, 0(s1)
      80000b68  f06:       50.256000 f05:        9.423000 f04:      197.317620 f04=      670.879908  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000004 x8=00000003                 # addi    s0, s0, -1
      80000b70  x9:00100168 x13:00000038 x9=001001a0    # add     s1, s1, a3
      80000b74  x10:00100010 x10=00100018               # addi    a0, a0, 8
      80000b78  x8:00000003                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100018 RA:00100018 RA:0010001c f05=       12.564000  # fld     ft5, 0(a0)
      80000b64  x9:001001a0 RA:001001a0 RA:001001a4 f06=        9.423000  # fld     ft6, 0(s1)
      80000b68  f06:        9.423000 f05:       12.564000 f04:      670.879908 f04=      789.270480  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000003 x8=00000002                 # addi    s0, s0, -1
      80000b70  x9:001001a0 x13:00000038 x9=001001d8    # add     s1, s1, a3
      80000b74  x10:00100018 x10=00100020               # addi    a0, a0, 8
      80000b78  x8:00000002                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100020 RA:00100020 RA:00100024 f05=       15.705000  # fld     ft5, 0(a0)
      80000b64  x9:001001d8 RA:001001d8 RA:001001dc f06=       31.410000  # fld     ft6, 0(s1)
      80000b68  f06:       31.410000 f05:       15.705000 f04:      789.270480 f04=     1282.564530  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000002 x8=00000001                 # addi    s0, s0, -1
      80000b70  x9:001001d8 x13:00000038 x9=00100210    # add     s1, s1, a3
      80000b74  x10:00100020 x10=00100028               # addi    a0, a0, 8
      80000b78  x8:00000001                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100028 RA:00100028 RA:0010002c f05=       18.846000  # fld     ft5, 0(a0)
      80000b64  x9:00100210 RA:00100210 RA:00100214 f06=       53.397000  # fld     ft6, 0(s1)
      80000b68  f06:       53.397000 f05:       18.846000 f04:     1282.564530 f04=     2288.884392  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000001 x8=00000000                 # addi    s0, s0, -1
      80000b70  x9:00100210 x13:00000038 x9=00100248    # add     s1, s1, a3
      80000b74  x10:00100028 x10=00100030               # addi    a0, a0, 8
      80000b78  x8:00000000                             # bnez    s0, pc - 24
; matmul (matmul.c:12)
      80000b7c  x6:00000001 x17:00000000 x10=00000001   # add     a0, t1, a7
      80000b80  x10:00000001 x10=00000008               # slli    a0, a0, 3
      80000b84  x24:00100240 x10:00000008 x10=00100248  # add     a0, s8, a0
      80000b88  x10:00100248 f04:     2288.884392 WA:00100248 WA:0010024c  # fsd     ft4, 0(a0)
; matmul (matmul.c:7)
      80000b8c  x6:00000001 x6=00000002                 # addi    t1, t1, 1
      80000b90  x5:001000f8 x5=00100100                 # addi    t0, t0, 8
      80000b94  x6:00000002 x15:00000007                # bne     t1, a5, pc - 68
; matmul (matmul.c:0)
      80000b50  x11:00100000 x10=00100000               # mv      a0, a1
      80000b54  x5:00100100 x9=00100100                 # mv      s1, t0
      80000b58  x14:00000006 x8=00000006                # mv      s0, a4
      80000b5c  f03:        0.000000 f03:        0.000000 f04=        0.000000  # fsgnj.d ft4, ft3, ft3
; matmul (matmul.c:10)
      80000b60  x10:00100000 RA:00100000 RA:00100004 f05=        3.141000  # fld     ft5, 0(a0)
      80000b64  x9:00100100 RA:00100100 RA:00100104 f06=        9.423000  # fld     ft6, 0(s1)
      80000b68  f06:        9.423000 f05:        3.141000 f04:        0.000000 f04=       29.597643  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000006 x8=00000005                 # addi    s0, s0, -1
      80000b70  x9:00100100 x13:00000038 x9=00100138    # add     s1, s1, a3
      80000b74  x10:00100000 x10=00100008               # addi    a0, a0, 8
      80000b78  x8:00000005                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100008 RA:00100008 RA:0010000c f05=        6.282000  # fld     ft5, 0(a0)
      80000b64  x9:00100138 RA:00100138 RA:0010013c f06=       31.410000  # fld     ft6, 0(s1)
      80000b68  f06:       31.410000 f05:        6.282000 f04:       29.597643 f04=      226.915263  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000005 x8=00000004                 # addi    s0, s0, -1
      80000b70  x9:00100138 x13:00000038 x9=00100170    # add     s1, s1, a3
      80000b74  x10:00100008 x10=00100010               # addi    a0, a0, 8
      80000b78  x8:00000004                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100010 RA:00100010 RA:00100014 f05=        9.423000  # fld     ft5, 0(a0)
      80000b64  x9:00100170 RA:00100170 RA:00100174 f06=       53.397000  # fld     ft6, 0(s1)
      80000b68  f06:       53.397000 f05:        9.423000 f04:      226.915263 f04=      730.075194  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000004 x8=00000003                 # addi    s0, s0, -1
      80000b70  x9:00100170 x13:00000038 x9=001001a8    # add     s1, s1, a3
      80000b74  x10:00100010 x10=00100018               # addi    a0, a0, 8
      80000b78  x8:00000003                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100018 RA:00100018 RA:0010001c f05=       12.564000  # fld     ft5, 0(a0)
      80000b64  x9:001001a8 RA:001001a8 RA:001001ac f06=       12.564000  # fld     ft6, 0(s1)
      80000b68  f06:       12.564000 f05:       12.564000 f04:      730.075194 f04=      887.929290  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000003 x8=00000002                 # addi    s0, s0, -1
      80000b70  x9:001001a8 x13:00000038 x9=001001e0    # add     s1, s1, a3
      80000b74  x10:00100018 x10=00100020               # addi    a0, a0, 8
      80000b78  x8:00000002                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100020 RA:00100020 RA:00100024 f05=       15.705000  # fld     ft5, 0(a0)
      80000b64  x9:001001e0 RA:001001e0 RA:001001e4 f06=       34.551000  # fld     ft6, 0(s1)
      80000b68  f06:       34.551000 f05:       15.705000 f04:      887.929290 f04=     1430.552745  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000002 x8=00000001                 # addi    s0, s0, -1
      80000b70  x9:001001e0 x13:00000038 x9=00100218    # add     s1, s1, a3
      80000b74  x10:00100020 x10=00100028               # addi    a0, a0, 8
      80000b78  x8:00000001                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100028 RA:00100028 RA:0010002c f05=       18.846000  # fld     ft5, 0(a0)
      80000b64  x9:00100218 RA:00100218 RA:0010021c f06=       56.538000  # fld     ft6, 0(s1)
      80000b68  f06:       56.538000 f05:       18.846000 f04:     1430.552745 f04=     2496.067893  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000001 x8=00000000                 # addi    s0, s0, -1
      80000b70  x9:00100218 x13:00000038 x9=00100250    # add     s1, s1, a3
      80000b74  x10:00100028 x10=00100030               # addi    a0, a0, 8
      80000b78  x8:00000000                             # bnez    s0, pc - 24
; matmul (matmul.c:12)
      80000b7c  x6:00000002 x17:00000000 x10=00000002   # add     a0, t1, a7
      80000b80  x10:00000002 x10=00000010               # slli    a0, a0, 3
      80000b84  x24:00100240 x10:00000010 x10=00100250  # add     a0, s8, a0
      80000b88  x10:00100250 f04:     2496.067893 WA:00100250 WA:00100254  # fsd     ft4, 0(a0)
; matmul (matmul.c:7)
      80000b8c  x6:00000002 x6=00000003                 # addi    t1, t1, 1
      80000b90  x5:00100100 x5=00100108                 # addi    t0, t0, 8
      80000b94  x6:00000003 x15:00000007                # bne     t1, a5, pc - 68
; matmul (matmul.c:0)
      80000b50  x11:00100000 x10=00100000               # mv      a0, a1
      80000b54  x5:00100108 x9=00100108                 # mv      s1, t0
      80000b58  x14:00000006 x8=00000006                # mv      s0, a4
      80000b5c  f03:        0.000000 f03:        0.000000 f04=        0.000000  # fsgnj.d ft4, ft3, ft3
; matmul (matmul.c:10)
      80000b60  x10:00100000 RA:00100000 RA:00100004 f05=        3.141000  # fld     ft5, 0(a0)
      80000b64  x9:00100108 RA:00100108 RA:0010010c f06=       12.564000  # fld     ft6, 0(s1)
      80000b68  f06:       12.564000 f05:        3.141000 f04:        0.000000 f04=       39.463524  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000006 x8=00000005                 # addi    s0, s0, -1
      80000b70  x9:00100108 x13:00000038 x9=00100140    # add     s1, s1, a3
      80000b74  x10:00100000 x10=00100008               # addi    a0, a0, 8
      80000b78  x8:00000005                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100008 RA:00100008 RA:0010000c f05=        6.282000  # fld     ft5, 0(a0)
      80000b64  x9:00100140 RA:00100140 RA:00100144 f06=       34.551000  # fld     ft6, 0(s1)
      80000b68  f06:       34.551000 f05:        6.282000 f04:       39.463524 f04=      256.512906  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000005 x8=00000004                 # addi    s0, s0, -1
      80000b70  x9:00100140 x13:00000038 x9=00100178    # add     s1, s1, a3
      80000b74  x10:00100008 x10=00100010               # addi    a0, a0, 8
      80000b78  x8:00000004                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100010 RA:00100010 RA:00100014 f05=        9.423000  # fld     ft5, 0(a0)
      80000b64  x9:00100178 RA:00100178 RA:0010017c f06=       56.538000  # fld     ft6, 0(s1)
      80000b68  f06:       56.538000 f05:        9.423000 f04:      256.512906 f04=      789.270480  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000004 x8=00000003                 # addi    s0, s0, -1
      80000b70  x9:00100178 x13:00000038 x9=001001b0    # add     s1, s1, a3
      80000b74  x10:00100010 x10=00100018               # addi    a0, a0, 8
      80000b78  x8:00000003                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100018 RA:00100018 RA:0010001c f05=       12.564000  # fld     ft5, 0(a0)
      80000b64  x9:001001b0 RA:001001b0 RA:001001b4 f06=       15.705000  # fld     ft6, 0(s1)
      80000b68  f06:       15.705000 f05:       12.564000 f04:      789.270480 f04=      986.588100  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000003 x8=00000002                 # addi    s0, s0, -1
      80000b70  x9:001001b0 x13:00000038 x9=001001e8    # add     s1, s1, a3
      80000b74  x10:00100018 x10=00100020               # addi    a0, a0, 8
      80000b78  x8:00000002                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100020 RA:00100020 RA:00100024 f05=       15.705000  # fld     ft5, 0(a0)
      80000b64  x9:001001e8 RA:001001e8 RA:001001ec f06=       37.692000  # fld     ft6, 0(s1)
      80000b68  f06:       37.692000 f05:       15.705000 f04:      986.588100 f04=     1578.540960  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000002 x8=00000001                 # addi    s0, s0, -1
      80000b70  x9:001001e8 x13:00000038 x9=00100220    # add     s1, s1, a3
      80000b74  x10:00100020 x10=00100028               # addi    a0, a0, 8
      80000b78  x8:00000001                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100028 RA:00100028 RA:0010002c f05=       18.846000  # fld     ft5, 0(a0)
      80000b64  x9:00100220 RA:00100220 RA:00100224 f06=       59.679000  # fld     ft6, 0(s1)
      80000b68  f06:       59.679000 f05:       18.846000 f04:     1578.540960 f04=     2703.251394  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000001 x8=00000000                 # addi    s0, s0, -1
      80000b70  x9:00100220 x13:00000038 x9=00100258    # add     s1, s1, a3
      80000b74  x10:00100028 x10=00100030               # addi    a0, a0, 8
      80000b78  x8:00000000                             # bnez    s0, pc - 24
; matmul (matmul.c:12)
      80000b7c  x6:00000003 x17:00000000 x10=00000003   # add     a0, t1, a7
      80000b80  x10:00000003 x10=00000018               # slli    a0, a0, 3
      80000b84  x24:00100240 x10:00000018 x10=00100258  # add     a0, s8, a0
      80000b88  x10:00100258 f04:     2703.251394 WA:00100258 WA:0010025c  # fsd     ft4, 0(a0)
; matmul (matmul.c:7)
      80000b8c  x6:00000003 x6=00000004                 # addi    t1, t1, 1
      80000b90  x5:00100108 x5=00100110                 # addi    t0, t0, 8
      80000b94  x6:00000004 x15:00000007                # bne     t1, a5, pc - 68
; matmul (matmul.c:0)
      80000b50  x11:00100000 x10=00100000               # mv      a0, a1
      80000b54  x5:00100110 x9=00100110                 # mv      s1, t0
      80000b58  x14:00000006 x8=00000006                # mv      s0, a4
      80000b5c  f03:        0.000000 f03:        0.000000 f04=        0.000000  # fsgnj.d ft4, ft3, ft3
; matmul (matmul.c:10)
      80000b60  x10:00100000 RA:00100000 RA:00100004 f05=        3.141000  # fld     ft5, 0(a0)
      80000b64  x9:00100110 RA:00100110 RA:00100114 f06=       15.705000  # fld     ft6, 0(s1)
      80000b68  f06:       15.705000 f05:        3.141000 f04:        0.000000 f04=       49.329405  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000006 x8=00000005                 # addi    s0, s0, -1
      80000b70  x9:00100110 x13:00000038 x9=00100148    # add     s1, s1, a3
      80000b74  x10:00100000 x10=00100008               # addi    a0, a0, 8
      80000b78  x8:00000005                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100008 RA:00100008 RA:0010000c f05=        6.282000  # fld     ft5, 0(a0)
      80000b64  x9:00100148 RA:00100148 RA:0010014c f06=       37.692000  # fld     ft6, 0(s1)
      80000b68  f06:       37.692000 f05:        6.282000 f04:       49.329405 f04=      286.110549  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000005 x8=00000004                 # addi    s0, s0, -1
      80000b70  x9:00100148 x13:00000038 x9=00100180    # add     s1, s1, a3
      80000b74  x10:00100008 x10=00100010               # addi    a0, a0, 8
      80000b78  x8:00000004                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100010 RA:00100010 RA:00100014 f05=        9.423000  # fld     ft5, 0(a0)
      80000b64  x9:00100180 RA:00100180 RA:00100184 f06=       59.679000  # fld     ft6, 0(s1)
      80000b68  f06:       59.679000 f05:        9.423000 f04:      286.110549 f04=      848.465766  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000004 x8=00000003                 # addi    s0, s0, -1
      80000b70  x9:00100180 x13:00000038 x9=001001b8    # add     s1, s1, a3
      80000b74  x10:00100010 x10=00100018               # addi    a0, a0, 8
      80000b78  x8:00000003                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100018 RA:00100018 RA:0010001c f05=       12.564000  # fld     ft5, 0(a0)
      80000b64  x9:001001b8 RA:001001b8 RA:001001bc f06=       18.846000  # fld     ft6, 0(s1)
      80000b68  f06:       18.846000 f05:       12.564000 f04:      848.465766 f04=     1085.246910  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000003 x8=00000002                 # addi    s0, s0, -1
      80000b70  x9:001001b8 x13:00000038 x9=001001f0    # add     s1, s1, a3
      80000b74  x10:00100018 x10=00100020               # addi    a0, a0, 8
      80000b78  x8:00000002                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100020 RA:00100020 RA:00100024 f05=       15.705000  # fld     ft5, 0(a0)
      80000b64  x9:001001f0 RA:001001f0 RA:001001f4 f06=       40.833000  # fld     ft6, 0(s1)
      80000b68  f06:       40.833000 f05:       15.705000 f04:     1085.246910 f04=     1726.529175  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000002 x8=00000001                 # addi    s0, s0, -1
      80000b70  x9:001001f0 x13:00000038 x9=00100228    # add     s1, s1, a3
      80000b74  x10:00100020 x10=00100028               # addi    a0, a0, 8
      80000b78  x8:00000001                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100028 RA:00100028 RA:0010002c f05=       18.846000  # fld     ft5, 0(a0)
      80000b64  x9:00100228 RA:00100228 RA:0010022c f06=       62.820000  # fld     ft6, 0(s1)
      80000b68  f06:       62.820000 f05:       18.846000 f04:     1726.529175 f04=     2910.434895  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000001 x8=00000000                 # addi    s0, s0, -1
      80000b70  x9:00100228 x13:00000038 x9=00100260    # add     s1, s1, a3
      80000b74  x10:00100028 x10=00100030               # addi    a0, a0, 8
      80000b78  x8:00000000                             # bnez    s0, pc - 24
; matmul (matmul.c:12)
      80000b7c  x6:00000004 x17:00000000 x10=00000004   # add     a0, t1, a7
      80000b80  x10:00000004 x10=00000020               # slli    a0, a0, 3
      80000b84  x24:00100240 x10:00000020 x10=00100260  # add     a0, s8, a0
      80000b88  x10:00100260 f04:     2910.434895 WA:00100260 WA:00100264  # fsd     ft4, 0(a0)
; matmul (matmul.c:7)
      80000b8c  x6:00000004 x6=00000005                 # addi    t1, t1, 1
      80000b90  x5:00100110 x5=00100118                 # addi    t0, t0, 8
      80000b94  x6:00000005 x15:00000007                # bne     t1, a5, pc - 68
; matmul (matmul.c:0)
      80000b50  x11:00100000 x10=00100000               # mv      a0, a1
      80000b54  x5:00100118 x9=00100118                 # mv      s1, t0
      80000b58  x14:00000006 x8=00000006                # mv      s0, a4
      80000b5c  f03:        0.000000 f03:        0.000000 f04=        0.000000  # fsgnj.d ft4, ft3, ft3
; matmul (matmul.c:10)
      80000b60  x10:00100000 RA:00100000 RA:00100004 f05=        3.141000  # fld     ft5, 0(a0)
      80000b64  x9:00100118 RA:00100118 RA:0010011c f06=       18.846000  # fld     ft6, 0(s1)
      80000b68  f06:       18.846000 f05:        3.141000 f04:        0.000000 f04=       59.195286  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000006 x8=00000005                 # addi    s0, s0, -1
      80000b70  x9:00100118 x13:00000038 x9=00100150    # add     s1, s1, a3
      80000b74  x10:00100000 x10=00100008               # addi    a0, a0, 8
      80000b78  x8:00000005                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100008 RA:00100008 RA:0010000c f05=        6.282000  # fld     ft5, 0(a0)
      80000b64  x9:00100150 RA:00100150 RA:00100154 f06=       40.833000  # fld     ft6, 0(s1)
      80000b68  f06:       40.833000 f05:        6.282000 f04:       59.195286 f04=      315.708192  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000005 x8=00000004                 # addi    s0, s0, -1
      80000b70  x9:00100150 x13:00000038 x9=00100188    # add     s1, s1, a3
      80000b74  x10:00100008 x10=00100010               # addi    a0, a0, 8
      80000b78  x8:00000004                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100010 RA:00100010 RA:00100014 f05=        9.423000  # fld     ft5, 0(a0)
      80000b64  x9:00100188 RA:00100188 RA:0010018c f06=       62.820000  # fld     ft6, 0(s1)
      80000b68  f06:       62.820000 f05:        9.423000 f04:      315.708192 f04=      907.661052  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000004 x8=00000003                 # addi    s0, s0, -1
      80000b70  x9:00100188 x13:00000038 x9=001001c0    # add     s1, s1, a3
      80000b74  x10:00100010 x10=00100018               # addi    a0, a0, 8
      80000b78  x8:00000003                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100018 RA:00100018 RA:0010001c f05=       12.564000  # fld     ft5, 0(a0)
      80000b64  x9:001001c0 RA:001001c0 RA:001001c4 f06=       21.987000  # fld     ft6, 0(s1)
      80000b68  f06:       21.987000 f05:       12.564000 f04:      907.661052 f04=     1183.905720  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000003 x8=00000002                 # addi    s0, s0, -1
      80000b70  x9:001001c0 x13:00000038 x9=001001f8    # add     s1, s1, a3
      80000b74  x10:00100018 x10=00100020               # addi    a0, a0, 8
      80000b78  x8:00000002                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100020 RA:00100020 RA:00100024 f05=       15.705000  # fld     ft5, 0(a0)
      80000b64  x9:001001f8 RA:001001f8 RA:001001fc f06=       43.974000  # fld     ft6, 0(s1)
      80000b68  f06:       43.974000 f05:       15.705000 f04:     1183.905720 f04=     1874.517390  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000002 x8=00000001                 # addi    s0, s0, -1
      80000b70  x9:001001f8 x13:00000038 x9=00100230    # add     s1, s1, a3
      80000b74  x10:00100020 x10=00100028               # addi    a0, a0, 8
      80000b78  x8:00000001                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100028 RA:00100028 RA:0010002c f05=       18.846000  # fld     ft5, 0(a0)
      80000b64  x9:00100230 RA:00100230 RA:00100234 f06=        3.141000  # fld     ft6, 0(s1)
      80000b68  f06:        3.141000 f05:       18.846000 f04:     1874.517390 f04=     1933.712676  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000001 x8=00000000                 # addi    s0, s0, -1
      80000b70  x9:00100230 x13:00000038 x9=00100268    # add     s1, s1, a3
      80000b74  x10:00100028 x10=00100030               # addi    a0, a0, 8
      80000b78  x8:00000000                             # bnez    s0, pc - 24
; matmul (matmul.c:12)
      80000b7c  x6:00000005 x17:00000000 x10=00000005   # add     a0, t1, a7
      80000b80  x10:00000005 x10=00000028               # slli    a0, a0, 3
      80000b84  x24:00100240 x10:00000028 x10=00100268  # add     a0, s8, a0
      80000b88  x10:00100268 f04:     1933.712676 WA:00100268 WA:0010026c  # fsd     ft4, 0(a0)
; matmul (matmul.c:7)
      80000b8c  x6:00000005 x6=00000006                 # addi    t1, t1, 1
      80000b90  x5:00100118 x5=00100120                 # addi    t0, t0, 8
      80000b94  x6:00000006 x15:00000007                # bne     t1, a5, pc - 68
; matmul (matmul.c:0)
      80000b50  x11:00100000 x10=00100000               # mv      a0, a1
      80000b54  x5:00100120 x9=00100120                 # mv      s1, t0
      80000b58  x14:00000006 x8=00000006                # mv      s0, a4
      80000b5c  f03:        0.000000 f03:        0.000000 f04=        0.000000  # fsgnj.d ft4, ft3, ft3
; matmul (matmul.c:10)
      80000b60  x10:00100000 RA:00100000 RA:00100004 f05=        3.141000  # fld     ft5, 0(a0)
      80000b64  x9:00100120 RA:00100120 RA:00100124 f06=       21.987000  # fld     ft6, 0(s1)
      80000b68  f06:       21.987000 f05:        3.141000 f04:        0.000000 f04=       69.061167  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000006 x8=00000005                 # addi    s0, s0, -1
      80000b70  x9:00100120 x13:00000038 x9=00100158    # add     s1, s1, a3
      80000b74  x10:00100000 x10=00100008               # addi    a0, a0, 8
      80000b78  x8:00000005                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100008 RA:00100008 RA:0010000c f05=        6.282000  # fld     ft5, 0(a0)
      80000b64  x9:00100158 RA:00100158 RA:0010015c f06=       43.974000  # fld     ft6, 0(s1)
      80000b68  f06:       43.974000 f05:        6.282000 f04:       69.061167 f04=      345.305835  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000005 x8=00000004                 # addi    s0, s0, -1
      80000b70  x9:00100158 x13:00000038 x9=00100190    # add     s1, s1, a3
      80000b74  x10:00100008 x10=00100010               # addi    a0, a0, 8
      80000b78  x8:00000004                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100010 RA:00100010 RA:00100014 f05=        9.423000  # fld     ft5, 0(a0)
      80000b64  x9:00100190 RA:00100190 RA:00100194 f06=        3.141000  # fld     ft6, 0(s1)
      80000b68  f06:        3.141000 f05:        9.423000 f04:      345.305835 f04=      374.903478  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000004 x8=00000003                 # addi    s0, s0, -1
      80000b70  x9:00100190 x13:00000038 x9=001001c8    # add     s1, s1, a3
      80000b74  x10:00100010 x10=00100018               # addi    a0, a0, 8
      80000b78  x8:00000003                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100018 RA:00100018 RA:0010001c f05=       12.564000  # fld     ft5, 0(a0)
      80000b64  x9:001001c8 RA:001001c8 RA:001001cc f06=       25.128000  # fld     ft6, 0(s1)
      80000b68  f06:       25.128000 f05:       12.564000 f04:      374.903478 f04=      690.611670  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000003 x8=00000002                 # addi    s0, s0, -1
      80000b70  x9:001001c8 x13:00000038 x9=00100200    # add     s1, s1, a3
      80000b74  x10:00100018 x10=00100020               # addi    a0, a0, 8
      80000b78  x8:00000002                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100020 RA:00100020 RA:00100024 f05=       15.705000  # fld     ft5, 0(a0)
      80000b64  x9:00100200 RA:00100200 RA:00100204 f06=       47.115000  # fld     ft6, 0(s1)
      80000b68  f06:       47.115000 f05:       15.705000 f04:      690.611670 f04=     1430.552745  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000002 x8=00000001                 # addi    s0, s0, -1
      80000b70  x9:00100200 x13:00000038 x9=00100238    # add     s1, s1, a3
      80000b74  x10:00100020 x10=00100028               # addi    a0, a0, 8
      80000b78  x8:00000001                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100028 RA:00100028 RA:0010002c f05=       18.846000  # fld     ft5, 0(a0)
      80000b64  x9:00100238 RA:00100238 RA:0010023c f06=        6.282000  # fld     ft6, 0(s1)
      80000b68  f06:        6.282000 f05:       18.846000 f04:     1430.552745 f04=     1548.943317  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000001 x8=00000000                 # addi    s0, s0, -1
      80000b70  x9:00100238 x13:00000038 x9=00100270    # add     s1, s1, a3
      80000b74  x10:00100028 x10=00100030               # addi    a0, a0, 8
      80000b78  x8:00000000                             # bnez    s0, pc - 24
; matmul (matmul.c:12)
      80000b7c  x6:00000006 x17:00000000 x10=00000006   # add     a0, t1, a7
      80000b80  x10:00000006 x10=00000030               # slli    a0, a0, 3
      80000b84  x24:00100240 x10:00000030 x10=00100270  # add     a0, s8, a0
      80000b88  x10:00100270 f04:     1548.943317 WA:00100270 WA:00100274  # fsd     ft4, 0(a0)
; matmul (matmul.c:7)
      80000b8c  x6:00000006 x6=00000007                 # addi    t1, t1, 1
      80000b90  x5:00100120 x5=00100128                 # addi    t0, t0, 8
      80000b94  x6:00000007 x15:00000007                # bne     t1, a5, pc - 68
; matmul (matmul.c:6)
      80000b98  x16:00000000 x16=00000001               # addi    a6, a6, 1
      80000b9c  x11:00100000 x21:00000030 x11=00100030  # add     a1, a1, s5
      80000ba0  x16:00000001 x23:00000005               # bne     a6, s7, pc - 92
; matmul (matmul.c:0)
      80000b44  x6=00000000                             # li      t1, 0
      80000b48  x16:00000001 x15:00000007 x17=00000007  # mul     a7, a6, a5
      80000b4c  x12:001000f0 x5=001000f0                # mv      t0, a2
      80000b50  x11:00100030 x10=00100030               # mv      a0, a1
      80000b54  x5:001000f0 x9=001000f0                 # mv      s1, t0
      80000b58  x14:00000006 x8=00000006                # mv      s0, a4
      80000b5c  f03:        0.000000 f03:        0.000000 f04=        0.000000  # fsgnj.d ft4, ft3, ft3
; matmul (matmul.c:10)
      80000b60  x10:00100030 RA:00100030 RA:00100034 f05=       21.987000  # fld     ft5, 0(a0)
      80000b64  x9:001000f0 RA:001000f0 RA:001000f4 f06=        3.141000  # fld     ft6, 0(s1)
      80000b68  f06:        3.141000 f05:       21.987000 f04:        0.000000 f04=       69.061167  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000006 x8=00000005                 # addi    s0, s0, -1
      80000b70  x9:001000f0 x13:00000038 x9=00100128    # add     s1, s1, a3
      80000b74  x10:00100030 x10=00100038               # addi    a0, a0, 8
      80000b78  x8:00000005                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100038 RA:00100038 RA:0010003c f05=       25.128000  # fld     ft5, 0(a0)
      80000b64  x9:00100128 RA:00100128 RA:0010012c f06=       25.128000  # fld     ft6, 0(s1)
      80000b68  f06:       25.128000 f05:       25.128000 f04:       69.061167 f04=      700.477551  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000005 x8=00000004                 # addi    s0, s0, -1
      80000b70  x9:00100128 x13:00000038 x9=00100160    # add     s1, s1, a3
      80000b74  x10:00100038 x10=00100040               # addi    a0, a0, 8
      80000b78  x8:00000004                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100040 RA:00100040 RA:00100044 f05=       28.269000  # fld     ft5, 0(a0)
      80000b64  x9:00100160 RA:00100160 RA:00100164 f06=       47.115000  # fld     ft6, 0(s1)
      80000b68  f06:       47.115000 f05:       28.269000 f04:      700.477551 f04=     2032.371486  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000004 x8=00000003                 # addi    s0, s0, -1
      80000b70  x9:00100160 x13:00000038 x9=00100198    # add     s1, s1, a3
      80000b74  x10:00100040 x10=00100048               # addi    a0, a0, 8
      80000b78  x8:00000003                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100048 RA:00100048 RA:0010004c f05=       31.410000  # fld     ft5, 0(a0)
      80000b64  x9:00100198 RA:00100198 RA:0010019c f06=        6.282000  # fld     ft6, 0(s1)
      80000b68  f06:        6.282000 f05:       31.410000 f04:     2032.371486 f04=     2229.689106  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000003 x8=00000002                 # addi    s0, s0, -1
      80000b70  x9:00100198 x13:00000038 x9=001001d0    # add     s1, s1, a3
      80000b74  x10:00100048 x10=00100050               # addi    a0, a0, 8
      80000b78  x8:00000002                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100050 RA:00100050 RA:00100054 f05=       34.551000  # fld     ft5, 0(a0)
      80000b64  x9:001001d0 RA:001001d0 RA:001001d4 f06=       28.269000  # fld     ft6, 0(s1)
      80000b68  f06:       28.269000 f05:       34.551000 f04:     2229.689106 f04=     3206.411325  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000002 x8=00000001                 # addi    s0, s0, -1
      80000b70  x9:001001d0 x13:00000038 x9=00100208    # add     s1, s1, a3
      80000b74  x10:00100050 x10=00100058               # addi    a0, a0, 8
      80000b78  x8:00000001                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100058 RA:00100058 RA:0010005c f05=       37.692000  # fld     ft5, 0(a0)
      80000b64  x9:00100208 RA:00100208 RA:0010020c f06=       50.256000  # fld     ft6, 0(s1)
      80000b68  f06:       50.256000 f05:       37.692000 f04:     3206.411325 f04=     5100.660477  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000001 x8=00000000                 # addi    s0, s0, -1
      80000b70  x9:00100208 x13:00000038 x9=00100240    # add     s1, s1, a3
      80000b74  x10:00100058 x10=00100060               # addi    a0, a0, 8
      80000b78  x8:00000000                             # bnez    s0, pc - 24
; matmul (matmul.c:12)
      80000b7c  x6:00000000 x17:00000007 x10=00000007   # add     a0, t1, a7
      80000b80  x10:00000007 x10=00000038               # slli    a0, a0, 3
      80000b84  x24:00100240 x10:00000038 x10=00100278  # add     a0, s8, a0
      80000b88  x10:00100278 f04:     5100.660477 WA:00100278 WA:0010027c  # fsd     ft4, 0(a0)
; matmul (matmul.c:7)
      80000b8c  x6:00000000 x6=00000001                 # addi    t1, t1, 1
      80000b90  x5:001000f0 x5=001000f8                 # addi    t0, t0, 8
      80000b94  x6:00000001 x15:00000007                # bne     t1, a5, pc - 68
; matmul (matmul.c:0)
      80000b50  x11:00100030 x10=00100030               # mv      a0, a1
      80000b54  x5:001000f8 x9=001000f8                 # mv      s1, t0
      80000b58  x14:00000006 x8=00000006                # mv      s0, a4
      80000b5c  f03:        0.000000 f03:        0.000000 f04=        0.000000  # fsgnj.d ft4, ft3, ft3
; matmul (matmul.c:10)
      80000b60  x10:00100030 RA:00100030 RA:00100034 f05=       21.987000  # fld     ft5, 0(a0)
      80000b64  x9:001000f8 RA:001000f8 RA:001000fc f06=        6.282000  # fld     ft6, 0(s1)
      80000b68  f06:        6.282000 f05:       21.987000 f04:        0.000000 f04=      138.122334  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000006 x8=00000005                 # addi    s0, s0, -1
      80000b70  x9:001000f8 x13:00000038 x9=00100130    # add     s1, s1, a3
      80000b74  x10:00100030 x10=00100038               # addi    a0, a0, 8
      80000b78  x8:00000005                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100038 RA:00100038 RA:0010003c f05=       25.128000  # fld     ft5, 0(a0)
      80000b64  x9:00100130 RA:00100130 RA:00100134 f06=       28.269000  # fld     ft6, 0(s1)
      80000b68  f06:       28.269000 f05:       25.128000 f04:      138.122334 f04=      848.465766  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000005 x8=00000004                 # addi    s0, s0, -1
      80000b70  x9:00100130 x13:00000038 x9=00100168    # add     s1, s1, a3
      80000b74  x10:00100038 x10=00100040               # addi    a0, a0, 8
      80000b78  x8:00000004                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100040 RA:00100040 RA:00100044 f05=       28.269000  # fld     ft5, 0(a0)
      80000b64  x9:00100168 RA:00100168 RA:0010016c f06=       50.256000  # fld     ft6, 0(s1)
      80000b68  f06:       50.256000 f05:       28.269000 f04:      848.465766 f04=     2269.152630  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000004 x8=00000003                 # addi    s0, s0, -1
      80000b70  x9:00100168 x13:00000038 x9=001001a0    # add     s1, s1, a3
      80000b74  x10:00100040 x10=00100048               # addi    a0, a0, 8
      80000b78  x8:00000003                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100048 RA:00100048 RA:0010004c f05=       31.410000  # fld     ft5, 0(a0)
      80000b64  x9:001001a0 RA:001001a0 RA:001001a4 f06=        9.423000  # fld     ft6, 0(s1)
      80000b68  f06:        9.423000 f05:       31.410000 f04:     2269.152630 f04=     2565.129060  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000003 x8=00000002                 # addi    s0, s0, -1
      80000b70  x9:001001a0 x13:00000038 x9=001001d8    # add     s1, s1, a3
      80000b74  x10:00100048 x10=00100050               # addi    a0, a0, 8
      80000b78  x8:00000002                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100050 RA:00100050 RA:00100054 f05=       34.551000  # fld     ft5, 0(a0)
      80000b64  x9:001001d8 RA:001001d8 RA:001001dc f06=       31.410000  # fld     ft6, 0(s1)
      80000b68  f06:       31.410000 f05:       34.551000 f04:     2565.129060 f04=     3650.375970  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000002 x8=00000001                 # addi    s0, s0, -1
      80000b70  x9:001001d8 x13:00000038 x9=00100210    # add     s1, s1, a3
      80000b74  x10:00100050 x10=00100058               # addi    a0, a0, 8
      80000b78  x8:00000001                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100058 RA:00100058 RA:0010005c f05=       37.692000  # fld     ft5, 0(a0)
      80000b64  x9:00100210 RA:00100210 RA:00100214 f06=       53.397000  # fld     ft6, 0(s1)
      80000b68  f06:       53.397000 f05:       37.692000 f04:     3650.375970 f04=     5663.015694  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000001 x8=00000000                 # addi    s0, s0, -1
      80000b70  x9:00100210 x13:00000038 x9=00100248    # add     s1, s1, a3
      80000b74  x10:00100058 x10=00100060               # addi    a0, a0, 8
      80000b78  x8:00000000                             # bnez    s0, pc - 24
; matmul (matmul.c:12)
      80000b7c  x6:00000001 x17:00000007 x10=00000008   # add     a0, t1, a7
      80000b80  x10:00000008 x10=00000040               # slli    a0, a0, 3
      80000b84  x24:00100240 x10:00000040 x10=00100280  # add     a0, s8, a0
      80000b88  x10:00100280 f04:     5663.015694 WA:00100280 WA:00100284  # fsd     ft4, 0(a0)
; matmul (matmul.c:7)
      80000b8c  x6:00000001 x6=00000002                 # addi    t1, t1, 1
      80000b90  x5:001000f8 x5=00100100                 # addi    t0, t0, 8
      80000b94  x6:00000002 x15:00000007                # bne     t1, a5, pc - 68
; matmul (matmul.c:0)
      80000b50  x11:00100030 x10=00100030               # mv      a0, a1
      80000b54  x5:00100100 x9=00100100                 # mv      s1, t0
      80000b58  x14:00000006 x8=00000006                # mv      s0, a4
      80000b5c  f03:        0.000000 f03:        0.000000 f04=        0.000000  # fsgnj.d ft4, ft3, ft3
; matmul (matmul.c:10)
      80000b60  x10:00100030 RA:00100030 RA:00100034 f05=       21.987000  # fld     ft5, 0(a0)
      80000b64  x9:00100100 RA:00100100 RA:00100104 f06=        9.423000  # fld     ft6, 0(s1)
      80000b68  f06:        9.423000 f05:       21.987000 f04:        0.000000 f04=      207.183501  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000006 x8=00000005                 # addi    s0, s0, -1
      80000b70  x9:00100100 x13:00000038 x9=00100138    # add     s1, s1, a3
      80000b74  x10:00100030 x10=00100038               # addi    a0, a0, 8
      80000b78  x8:00000005                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100038 RA:00100038 RA:0010003c f05=       25.128000  # fld     ft5, 0(a0)
      80000b64  x9:00100138 RA:00100138 RA:0010013c f06=       31.410000  # fld     ft6, 0(s1)
      80000b68  f06:       31.410000 f05:       25.128000 f04:      207.183501 f04=      996.453981  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000005 x8=00000004                 # addi    s0, s0, -1
      80000b70  x9:00100138 x13:00000038 x9=00100170    # add     s1, s1, a3
      80000b74  x10:00100038 x10=00100040               # addi    a0, a0, 8
      80000b78  x8:00000004                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100040 RA:00100040 RA:00100044 f05=       28.269000  # fld     ft5, 0(a0)
      80000b64  x9:00100170 RA:00100170 RA:00100174 f06=       53.397000  # fld     ft6, 0(s1)
      80000b68  f06:       53.397000 f05:       28.269000 f04:      996.453981 f04=     2505.933774  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000004 x8=00000003                 # addi    s0, s0, -1
      80000b70  x9:00100170 x13:00000038 x9=001001a8    # add     s1, s1, a3
      80000b74  x10:00100040 x10=00100048               # addi    a0, a0, 8
      80000b78  x8:00000003                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100048 RA:00100048 RA:0010004c f05=       31.410000  # fld     ft5, 0(a0)
      80000b64  x9:001001a8 RA:001001a8 RA:001001ac f06=       12.564000  # fld     ft6, 0(s1)
      80000b68  f06:       12.564000 f05:       31.410000 f04:     2505.933774 f04=     2900.569014  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000003 x8=00000002                 # addi    s0, s0, -1
      80000b70  x9:001001a8 x13:00000038 x9=001001e0    # add     s1, s1, a3
      80000b74  x10:00100048 x10=00100050               # addi    a0, a0, 8
      80000b78  x8:00000002                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100050 RA:00100050 RA:00100054 f05=       34.551000  # fld     ft5, 0(a0)
      80000b64  x9:001001e0 RA:001001e0 RA:001001e4 f06=       34.551000  # fld     ft6, 0(s1)
      80000b68  f06:       34.551000 f05:       34.551000 f04:     2900.569014 f04=     4094.340615  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000002 x8=00000001                 # addi    s0, s0, -1
      80000b70  x9:001001e0 x13:00000038 x9=00100218    # add     s1, s1, a3
      80000b74  x10:00100050 x10=00100058               # addi    a0, a0, 8
      80000b78  x8:00000001                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100058 RA:00100058 RA:0010005c f05=       37.692000  # fld     ft5, 0(a0)
      80000b64  x9:00100218 RA:00100218 RA:0010021c f06=       56.538000  # fld     ft6, 0(s1)
      80000b68  f06:       56.538000 f05:       37.692000 f04:     4094.340615 f04=     6225.370911  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000001 x8=00000000                 # addi    s0, s0, -1
      80000b70  x9:00100218 x13:00000038 x9=00100250    # add     s1, s1, a3
      80000b74  x10:00100058 x10=00100060               # addi    a0, a0, 8
      80000b78  x8:00000000                             # bnez    s0, pc - 24
; matmul (matmul.c:12)
      80000b7c  x6:00000002 x17:00000007 x10=00000009   # add     a0, t1, a7
      80000b80  x10:00000009 x10=00000048               # slli    a0, a0, 3
      80000b84  x24:00100240 x10:00000048 x10=00100288  # add     a0, s8, a0
      80000b88  x10:00100288 f04:     6225.370911 WA:00100288 WA:0010028c  # fsd     ft4, 0(a0)
; matmul (matmul.c:7)
      80000b8c  x6:00000002 x6=00000003                 # addi    t1, t1, 1
      80000b90  x5:00100100 x5=00100108                 # addi    t0, t0, 8
      80000b94  x6:00000003 x15:00000007                # bne     t1, a5, pc - 68
; matmul (matmul.c:0)
      80000b50  x11:00100030 x10=00100030               # mv      a0, a1
      80000b54  x5:00100108 x9=00100108                 # mv      s1, t0
      80000b58  x14:00000006 x8=00000006                # mv      s0, a4
      80000b5c  f03:        0.000000 f03:        0.000000 f04=        0.000000  # fsgnj.d ft4, ft3, ft3
; matmul (matmul.c:10)
      80000b60  x10:00100030 RA:00100030 RA:00100034 f05=       21.987000  # fld     ft5, 0(a0)
      80000b64  x9:00100108 RA:00100108 RA:0010010c f06=       12.564000  # fld     ft6, 0(s1)
      80000b68  f06:       12.564000 f05:       21.987000 f04:        0.000000 f04=      276.244668  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000006 x8=00000005                 # addi    s0, s0, -1
      80000b70  x9:00100108 x13:00000038 x9=00100140    # add     s1, s1, a3
      80000b74  x10:00100030 x10=00100038               # addi    a0, a0, 8
      80000b78  x8:00000005                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100038 RA:00100038 RA:0010003c f05=       25.128000  # fld     ft5, 0(a0)
      80000b64  x9:00100140 RA:00100140 RA:00100144 f06=       34.551000  # fld     ft6, 0(s1)
      80000b68  f06:       34.551000 f05:       25.128000 f04:      276.244668 f04=     1144.442196  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000005 x8=00000004                 # addi    s0, s0, -1
      80000b70  x9:00100140 x13:00000038 x9=00100178    # add     s1, s1, a3
      80000b74  x10:00100038 x10=00100040               # addi    a0, a0, 8
      80000b78  x8:00000004                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100040 RA:00100040 RA:00100044 f05=       28.269000  # fld     ft5, 0(a0)
      80000b64  x9:00100178 RA:00100178 RA:0010017c f06=       56.538000  # fld     ft6, 0(s1)
      80000b68  f06:       56.538000 f05:       28.269000 f04:     1144.442196 f04=     2742.714918  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000004 x8=00000003                 # addi    s0, s0, -1
      80000b70  x9:00100178 x13:00000038 x9=001001b0    # add     s1, s1, a3
      80000b74  x10:00100040 x10=00100048               # addi    a0, a0, 8
      80000b78  x8:00000003                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100048 RA:00100048 RA:0010004c f05=       31.410000  # fld     ft5, 0(a0)
      80000b64  x9:001001b0 RA:001001b0 RA:001001b4 f06=       15.705000  # fld     ft6, 0(s1)
      80000b68  f06:       15.705000 f05:       31.410000 f04:     2742.714918 f04=     3236.008968  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000003 x8=00000002                 # addi    s0, s0, -1
      80000b70  x9:001001b0 x13:00000038 x9=001001e8    # add     s1, s1, a3
      80000b74  x10:00100048 x10=00100050               # addi    a0, a0, 8
      80000b78  x8:00000002                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100050 RA:00100050 RA:00100054 f05=       34.551000  # fld     ft5, 0(a0)
      80000b64  x9:001001e8 RA:001001e8 RA:001001ec f06=       37.692000  # fld     ft6, 0(s1)
      80000b68  f06:       37.692000 f05:       34.551000 f04:     3236.008968 f04=     4538.305260  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000002 x8=00000001                 # addi    s0, s0, -1
      80000b70  x9:001001e8 x13:00000038 x9=00100220    # add     s1, s1, a3
      80000b74  x10:00100050 x10=00100058               # addi    a0, a0, 8
      80000b78  x8:00000001                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100058 RA:00100058 RA:0010005c f05=       37.692000  # fld     ft5, 0(a0)
      80000b64  x9:00100220 RA:00100220 RA:00100224 f06=       59.679000  # fld     ft6, 0(s1)
      80000b68  f06:       59.679000 f05:       37.692000 f04:     4538.305260 f04=     6787.726128  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000001 x8=00000000                 # addi    s0, s0, -1
      80000b70  x9:00100220 x13:00000038 x9=00100258    # add     s1, s1, a3
      80000b74  x10:00100058 x10=00100060               # addi    a0, a0, 8
      80000b78  x8:00000000                             # bnez    s0, pc - 24
; matmul (matmul.c:12)
      80000b7c  x6:00000003 x17:00000007 x10=0000000a   # add     a0, t1, a7
      80000b80  x10:0000000a x10=00000050               # slli    a0, a0, 3
      80000b84  x24:00100240 x10:00000050 x10=00100290  # add     a0, s8, a0
      80000b88  x10:00100290 f04:     6787.726128 WA:00100290 WA:00100294  # fsd     ft4, 0(a0)
; matmul (matmul.c:7)
      80000b8c  x6:00000003 x6=00000004                 # addi    t1, t1, 1
      80000b90  x5:00100108 x5=00100110                 # addi    t0, t0, 8
      80000b94  x6:00000004 x15:00000007                # bne     t1, a5, pc - 68
; matmul (matmul.c:0)
      80000b50  x11:00100030 x10=00100030               # mv      a0, a1
      80000b54  x5:00100110 x9=00100110                 # mv      s1, t0
      80000b58  x14:00000006 x8=00000006                # mv      s0, a4
      80000b5c  f03:        0.000000 f03:        0.000000 f04=        0.000000  # fsgnj.d ft4, ft3, ft3
; matmul (matmul.c:10)
      80000b60  x10:00100030 RA:00100030 RA:00100034 f05=       21.987000  # fld     ft5, 0(a0)
      80000b64  x9:00100110 RA:00100110 RA:00100114 f06=       15.705000  # fld     ft6, 0(s1)
      80000b68  f06:       15.705000 f05:       21.987000 f04:        0.000000 f04=      345.305835  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000006 x8=00000005                 # addi    s0, s0, -1
      80000b70  x9:00100110 x13:00000038 x9=00100148    # add     s1, s1, a3
      80000b74  x10:00100030 x10=00100038               # addi    a0, a0, 8
      80000b78  x8:00000005                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100038 RA:00100038 RA:0010003c f05=       25.128000  # fld     ft5, 0(a0)
      80000b64  x9:00100148 RA:00100148 RA:0010014c f06=       37.692000  # fld     ft6, 0(s1)
      80000b68  f06:       37.692000 f05:       25.128000 f04:      345.305835 f04=     1292.430411  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000005 x8=00000004                 # addi    s0, s0, -1
      80000b70  x9:00100148 x13:00000038 x9=00100180    # add     s1, s1, a3
      80000b74  x10:00100038 x10=00100040               # addi    a0, a0, 8
      80000b78  x8:00000004                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100040 RA:00100040 RA:00100044 f05=       28.269000  # fld     ft5, 0(a0)
      80000b64  x9:00100180 RA:00100180 RA:00100184 f06=       59.679000  # fld     ft6, 0(s1)
      80000b68  f06:       59.679000 f05:       28.269000 f04:     1292.430411 f04=     2979.496062  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000004 x8=00000003                 # addi    s0, s0, -1
      80000b70  x9:00100180 x13:00000038 x9=001001b8    # add     s1, s1, a3
      80000b74  x10:00100040 x10=00100048               # addi    a0, a0, 8
      80000b78  x8:00000003                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100048 RA:00100048 RA:0010004c f05=       31.410000  # fld     ft5, 0(a0)
      80000b64  x9:001001b8 RA:001001b8 RA:001001bc f06=       18.846000  # fld     ft6, 0(s1)
      80000b68  f06:       18.846000 f05:       31.410000 f04:     2979.496062 f04=     3571.448922  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000003 x8=00000002                 # addi    s0, s0, -1
      80000b70  x9:001001b8 x13:00000038 x9=001001f0    # add     s1, s1, a3
      80000b74  x10:00100048 x10=00100050               # addi    a0, a0, 8
      80000b78  x8:00000002                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100050 RA:00100050 RA:00100054 f05=       34.551000  # fld     ft5, 0(a0)
      80000b64  x9:001001f0 RA:001001f0 RA:001001f4 f06=       40.833000  # fld     ft6, 0(s1)
      80000b68  f06:       40.833000 f05:       34.551000 f04:     3571.448922 f04=     4982.269905  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000002 x8=00000001                 # addi    s0, s0, -1
      80000b70  x9:001001f0 x13:00000038 x9=00100228    # add     s1, s1, a3
      80000b74  x10:00100050 x10=00100058               # addi    a0, a0, 8
      80000b78  x8:00000001                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100058 RA:00100058 RA:0010005c f05=       37.692000  # fld     ft5, 0(a0)
      80000b64  x9:00100228 RA:00100228 RA:0010022c f06=       62.820000  # fld     ft6, 0(s1)
      80000b68  f06:       62.820000 f05:       37.692000 f04:     4982.269905 f04=     7350.081345  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000001 x8=00000000                 # addi    s0, s0, -1
      80000b70  x9:00100228 x13:00000038 x9=00100260    # add     s1, s1, a3
      80000b74  x10:00100058 x10=00100060               # addi    a0, a0, 8
      80000b78  x8:00000000                             # bnez    s0, pc - 24
; matmul (matmul.c:12)
      80000b7c  x6:00000004 x17:00000007 x10=0000000b   # add     a0, t1, a7
      80000b80  x10:0000000b x10=00000058               # slli    a0, a0, 3
      80000b84  x24:00100240 x10:00000058 x10=00100298  # add     a0, s8, a0
      80000b88  x10:00100298 f04:     7350.081345 WA:00100298 WA:0010029c  # fsd     ft4, 0(a0)
; matmul (matmul.c:7)
      80000b8c  x6:00000004 x6=00000005                 # addi    t1, t1, 1
      80000b90  x5:00100110 x5=00100118                 # addi    t0, t0, 8
      80000b94  x6:00000005 x15:00000007                # bne     t1, a5, pc - 68
; matmul (matmul.c:0)
      80000b50  x11:00100030 x10=00100030               # mv      a0, a1
      80000b54  x5:00100118 x9=00100118                 # mv      s1, t0
      80000b58  x14:00000006 x8=00000006                # mv      s0, a4
      80000b5c  f03:        0.000000 f03:        0.000000 f04=        0.000000  # fsgnj.d ft4, ft3, ft3
; matmul (matmul.c:10)
      80000b60  x10:00100030 RA:00100030 RA:00100034 f05=       21.987000  # fld     ft5, 0(a0)
      80000b64  x9:00100118 RA:00100118 RA:0010011c f06=       18.846000  # fld     ft6, 0(s1)
      80000b68  f06:       18.846000 f05:       21.987000 f04:        0.000000 f04=      414.367002  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000006 x8=00000005                 # addi    s0, s0, -1
      80000b70  x9:00100118 x13:00000038 x9=00100150    # add     s1, s1, a3
      80000b74  x10:00100030 x10=00100038               # addi    a0, a0, 8
      80000b78  x8:00000005                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100038 RA:00100038 RA:0010003c f05=       25.128000  # fld     ft5, 0(a0)
      80000b64  x9:00100150 RA:00100150 RA:00100154 f06=       40.833000  # fld     ft6, 0(s1)
      80000b68  f06:       40.833000 f05:       25.128000 f04:      414.367002 f04=     1440.418626  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000005 x8=00000004                 # addi    s0, s0, -1
      80000b70  x9:00100150 x13:00000038 x9=00100188    # add     s1, s1, a3
      80000b74  x10:00100038 x10=00100040               # addi    a0, a0, 8
      80000b78  x8:00000004                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100040 RA:00100040 RA:00100044 f05=       28.269000  # fld     ft5, 0(a0)
      80000b64  x9:00100188 RA:00100188 RA:0010018c f06=       62.820000  # fld     ft6, 0(s1)
      80000b68  f06:       62.820000 f05:       28.269000 f04:     1440.418626 f04=     3216.277206  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000004 x8=00000003                 # addi    s0, s0, -1
      80000b70  x9:00100188 x13:00000038 x9=001001c0    # add     s1, s1, a3
      80000b74  x10:00100040 x10=00100048               # addi    a0, a0, 8
      80000b78  x8:00000003                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100048 RA:00100048 RA:0010004c f05=       31.410000  # fld     ft5, 0(a0)
      80000b64  x9:001001c0 RA:001001c0 RA:001001c4 f06=       21.987000  # fld     ft6, 0(s1)
      80000b68  f06:       21.987000 f05:       31.410000 f04:     3216.277206 f04=     3906.888876  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000003 x8=00000002                 # addi    s0, s0, -1
      80000b70  x9:001001c0 x13:00000038 x9=001001f8    # add     s1, s1, a3
      80000b74  x10:00100048 x10=00100050               # addi    a0, a0, 8
      80000b78  x8:00000002                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100050 RA:00100050 RA:00100054 f05=       34.551000  # fld     ft5, 0(a0)
      80000b64  x9:001001f8 RA:001001f8 RA:001001fc f06=       43.974000  # fld     ft6, 0(s1)
      80000b68  f06:       43.974000 f05:       34.551000 f04:     3906.888876 f04=     5426.234550  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000002 x8=00000001                 # addi    s0, s0, -1
      80000b70  x9:001001f8 x13:00000038 x9=00100230    # add     s1, s1, a3
      80000b74  x10:00100050 x10=00100058               # addi    a0, a0, 8
      80000b78  x8:00000001                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100058 RA:00100058 RA:0010005c f05=       37.692000  # fld     ft5, 0(a0)
      80000b64  x9:00100230 RA:00100230 RA:00100234 f06=        3.141000  # fld     ft6, 0(s1)
      80000b68  f06:        3.141000 f05:       37.692000 f04:     5426.234550 f04=     5544.625122  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000001 x8=00000000                 # addi    s0, s0, -1
      80000b70  x9:00100230 x13:00000038 x9=00100268    # add     s1, s1, a3
      80000b74  x10:00100058 x10=00100060               # addi    a0, a0, 8
      80000b78  x8:00000000                             # bnez    s0, pc - 24
; matmul (matmul.c:12)
      80000b7c  x6:00000005 x17:00000007 x10=0000000c   # add     a0, t1, a7
      80000b80  x10:0000000c x10=00000060               # slli    a0, a0, 3
      80000b84  x24:00100240 x10:00000060 x10=001002a0  # add     a0, s8, a0
      80000b88  x10:001002a0 f04:     5544.625122 WA:001002a0 WA:001002a4  # fsd     ft4, 0(a0)
; matmul (matmul.c:7)
      80000b8c  x6:00000005 x6=00000006                 # addi    t1, t1, 1
      80000b90  x5:00100118 x5=00100120                 # addi    t0, t0, 8
      80000b94  x6:00000006 x15:00000007                # bne     t1, a5, pc - 68
; matmul (matmul.c:0)
      80000b50  x11:00100030 x10=00100030               # mv      a0, a1
      80000b54  x5:00100120 x9=00100120                 # mv      s1, t0
      80000b58  x14:00000006 x8=00000006                # mv      s0, a4
      80000b5c  f03:        0.000000 f03:        0.000000 f04=        0.000000  # fsgnj.d ft4, ft3, ft3
; matmul (matmul.c:10)
      80000b60  x10:00100030 RA:00100030 RA:00100034 f05=       21.987000  # fld     ft5, 0(a0)
      80000b64  x9:00100120 RA:00100120 RA:00100124 f06=       21.987000  # fld     ft6, 0(s1)
      80000b68  f06:       21.987000 f05:       21.987000 f04:        0.000000 f04=      483.428169  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000006 x8=00000005                 # addi    s0, s0, -1
      80000b70  x9:00100120 x13:00000038 x9=00100158    # add     s1, s1, a3
      80000b74  x10:00100030 x10=00100038               # addi    a0, a0, 8
      80000b78  x8:00000005                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100038 RA:00100038 RA:0010003c f05=       25.128000  # fld     ft5, 0(a0)
      80000b64  x9:00100158 RA:00100158 RA:0010015c f06=       43.974000  # fld     ft6, 0(s1)
      80000b68  f06:       43.974000 f05:       25.128000 f04:      483.428169 f04=     1588.406841  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000005 x8=00000004                 # addi    s0, s0, -1
      80000b70  x9:00100158 x13:00000038 x9=00100190    # add     s1, s1, a3
      80000b74  x10:00100038 x10=00100040               # addi    a0, a0, 8
      80000b78  x8:00000004                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100040 RA:00100040 RA:00100044 f05=       28.269000  # fld     ft5, 0(a0)
      80000b64  x9:00100190 RA:00100190 RA:00100194 f06=        3.141000  # fld     ft6, 0(s1)
      80000b68  f06:        3.141000 f05:       28.269000 f04:     1588.406841 f04=     1677.199770  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000004 x8=00000003                 # addi    s0, s0, -1
      80000b70  x9:00100190 x13:00000038 x9=001001c8    # add     s1, s1, a3
      80000b74  x10:00100040 x10=00100048               # addi    a0, a0, 8
      80000b78  x8:00000003                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100048 RA:00100048 RA:0010004c f05=       31.410000  # fld     ft5, 0(a0)
      80000b64  x9:001001c8 RA:001001c8 RA:001001cc f06=       25.128000  # fld     ft6, 0(s1)
      80000b68  f06:       25.128000 f05:       31.410000 f04:     1677.199770 f04=     2466.470250  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000003 x8=00000002                 # addi    s0, s0, -1
      80000b70  x9:001001c8 x13:00000038 x9=00100200    # add     s1, s1, a3
      80000b74  x10:00100048 x10=00100050               # addi    a0, a0, 8
      80000b78  x8:00000002                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100050 RA:00100050 RA:00100054 f05=       34.551000  # fld     ft5, 0(a0)
      80000b64  x9:00100200 RA:00100200 RA:00100204 f06=       47.115000  # fld     ft6, 0(s1)
      80000b68  f06:       47.115000 f05:       34.551000 f04:     2466.470250 f04=     4094.340615  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000002 x8=00000001                 # addi    s0, s0, -1
      80000b70  x9:00100200 x13:00000038 x9=00100238    # add     s1, s1, a3
      80000b74  x10:00100050 x10=00100058               # addi    a0, a0, 8
      80000b78  x8:00000001                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100058 RA:00100058 RA:0010005c f05=       37.692000  # fld     ft5, 0(a0)
      80000b64  x9:00100238 RA:00100238 RA:0010023c f06=        6.282000  # fld     ft6, 0(s1)
      80000b68  f06:        6.282000 f05:       37.692000 f04:     4094.340615 f04=     4331.121759  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000001 x8=00000000                 # addi    s0, s0, -1
      80000b70  x9:00100238 x13:00000038 x9=00100270    # add     s1, s1, a3
      80000b74  x10:00100058 x10=00100060               # addi    a0, a0, 8
      80000b78  x8:00000000                             # bnez    s0, pc - 24
; matmul (matmul.c:12)
      80000b7c  x6:00000006 x17:00000007 x10=0000000d   # add     a0, t1, a7
      80000b80  x10:0000000d x10=00000068               # slli    a0, a0, 3
      80000b84  x24:00100240 x10:00000068 x10=001002a8  # add     a0, s8, a0
      80000b88  x10:001002a8 f04:     4331.121759 WA:001002a8 WA:001002ac  # fsd     ft4, 0(a0)
; matmul (matmul.c:7)
      80000b8c  x6:00000006 x6=00000007                 # addi    t1, t1, 1
      80000b90  x5:00100120 x5=00100128                 # addi    t0, t0, 8
      80000b94  x6:00000007 x15:00000007                # bne     t1, a5, pc - 68
; matmul (matmul.c:6)
      80000b98  x16:00000001 x16=00000002               # addi    a6, a6, 1
      80000b9c  x11:00100030 x21:00000030 x11=00100060  # add     a1, a1, s5
; ?? (start_snitch.S:35)
      80002cac  x1:80002ca8 x1=80002cb0                 # jalr    ra, ra, -1616
; _snrt_barrier_reg_ptr (team.c:80)
      80002658  x10=00000000                            # lui     a0, 0x0
      8000265c  x10:00000000 x4:0011e730 x10=0011e730   # add     a0, a0, tp
      80002660  x10:0011e730 RA:0011e730 x10=0011ff70   # lw      a0, 0(a0)
      80002664  x10:0011ff70 RA:0011ff70 x10=0011ff70   # lw      a0, 0(a0)
      80002668  x10:0011ff70 RA:0011ffe0 x10=00120190   # lw      a0, 112(a0)
      8000266c  x1:80002cb0                             # ret
; matmul (matmul.c:6)
      80000ba0  x16:00000002 x23:00000005               # bne     a6, s7, pc - 92
; matmul (matmul.c:0)
      80000b44  x6=00000000                             # li      t1, 0
      80000b48  x16:00000002 x15:00000007 x17=0000000e  # mul     a7, a6, a5
      80000b4c  x12:001000f0 x5=001000f0                # mv      t0, a2
      80000b50  x11:00100060 x10=00100060               # mv      a0, a1
      80000b54  x5:001000f0 x9=001000f0                 # mv      s1, t0
      80000b58  x14:00000006 x8=00000006                # mv      s0, a4
      80000b5c  f03:        0.000000 f03:        0.000000 f04=        0.000000  # fsgnj.d ft4, ft3, ft3
; matmul (matmul.c:10)
      80000b60  x10:00100060 RA:00100060 RA:00100064 f05=       40.833000  # fld     ft5, 0(a0)
      80000b64  x9:001000f0 RA:001000f0 RA:001000f4 f06=        3.141000  # fld     ft6, 0(s1)
      80000b68  f06:        3.141000 f05:       40.833000 f04:        0.000000 f04=      128.256453  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000006 x8=00000005                 # addi    s0, s0, -1
      80000b70  x9:001000f0 x13:00000038 x9=00100128    # add     s1, s1, a3
      80000b74  x10:00100060 x10=00100068               # addi    a0, a0, 8
      80000b78  x8:00000005                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100068 RA:00100068 RA:0010006c f05=       43.974000  # fld     ft5, 0(a0)
      80000b64  x9:00100128 RA:00100128 RA:0010012c f06=       25.128000  # fld     ft6, 0(s1)
      80000b68  f06:       25.128000 f05:       43.974000 f04:      128.256453 f04=     1233.235125  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000005 x8=00000004                 # addi    s0, s0, -1
      80000b70  x9:00100128 x13:00000038 x9=00100160    # add     s1, s1, a3
      80000b74  x10:00100068 x10=00100070               # addi    a0, a0, 8
      80000b78  x8:00000004                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100070 RA:00100070 RA:00100074 f05=       47.115000  # fld     ft5, 0(a0)
      80000b64  x9:00100160 RA:00100160 RA:00100164 f06=       47.115000  # fld     ft6, 0(s1)
      80000b68  f06:       47.115000 f05:       47.115000 f04:     1233.235125 f04=     3453.058350  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000004 x8=00000003                 # addi    s0, s0, -1
      80000b70  x9:00100160 x13:00000038 x9=00100198    # add     s1, s1, a3
      80000b74  x10:00100070 x10=00100078               # addi    a0, a0, 8
      80000b78  x8:00000003                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100078 RA:00100078 RA:0010007c f05=       50.256000  # fld     ft5, 0(a0)
      80000b64  x9:00100198 RA:00100198 RA:0010019c f06=        6.282000  # fld     ft6, 0(s1)
      80000b68  f06:        6.282000 f05:       50.256000 f04:     3453.058350 f04=     3768.766542  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000003 x8=00000002                 # addi    s0, s0, -1
      80000b70  x9:00100198 x13:00000038 x9=001001d0    # add     s1, s1, a3
      80000b74  x10:00100078 x10=00100080               # addi    a0, a0, 8
      80000b78  x8:00000002                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100080 RA:00100080 RA:00100084 f05=       53.397000  # fld     ft5, 0(a0)
      80000b64  x9:001001d0 RA:001001d0 RA:001001d4 f06=       28.269000  # fld     ft6, 0(s1)
      80000b68  f06:       28.269000 f05:       53.397000 f04:     3768.766542 f04=     5278.246335  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000002 x8=00000001                 # addi    s0, s0, -1
      80000b70  x9:001001d0 x13:00000038 x9=00100208    # add     s1, s1, a3
      80000b74  x10:00100080 x10=00100088               # addi    a0, a0, 8
      80000b78  x8:00000001                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100088 RA:00100088 RA:0010008c f05=       56.538000  # fld     ft5, 0(a0)
      80000b64  x9:00100208 RA:00100208 RA:0010020c f06=       50.256000  # fld     ft6, 0(s1)
      80000b68  f06:       50.256000 f05:       56.538000 f04:     5278.246335 f04=     8119.620063  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000001 x8=00000000                 # addi    s0, s0, -1
      80000b70  x9:00100208 x13:00000038 x9=00100240    # add     s1, s1, a3
      80000b74  x10:00100088 x10=00100090               # addi    a0, a0, 8
      80000b78  x8:00000000                             # bnez    s0, pc - 24
; matmul (matmul.c:12)
      80000b7c  x6:00000000 x17:0000000e x10=0000000e   # add     a0, t1, a7
      80000b80  x10:0000000e x10=00000070               # slli    a0, a0, 3
      80000b84  x24:00100240 x10:00000070 x10=001002b0  # add     a0, s8, a0
      80000b88  x10:001002b0 f04:     8119.620063 WA:001002b0 WA:001002b4  # fsd     ft4, 0(a0)
; matmul (matmul.c:7)
      80000b8c  x6:00000000 x6=00000001                 # addi    t1, t1, 1
      80000b90  x5:001000f0 x5=001000f8                 # addi    t0, t0, 8
      80000b94  x6:00000001 x15:00000007                # bne     t1, a5, pc - 68
; matmul (matmul.c:0)
      80000b50  x11:00100060 x10=00100060               # mv      a0, a1
      80000b54  x5:001000f8 x9=001000f8                 # mv      s1, t0
      80000b58  x14:00000006 x8=00000006                # mv      s0, a4
      80000b5c  f03:        0.000000 f03:        0.000000 f04=        0.000000  # fsgnj.d ft4, ft3, ft3
; matmul (matmul.c:10)
      80000b60  x10:00100060 RA:00100060 RA:00100064 f05=       40.833000  # fld     ft5, 0(a0)
      80000b64  x9:001000f8 RA:001000f8 RA:001000fc f06=        6.282000  # fld     ft6, 0(s1)
      80000b68  f06:        6.282000 f05:       40.833000 f04:        0.000000 f04=      256.512906  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000006 x8=00000005                 # addi    s0, s0, -1
      80000b70  x9:001000f8 x13:00000038 x9=00100130    # add     s1, s1, a3
      80000b74  x10:00100060 x10=00100068               # addi    a0, a0, 8
      80000b78  x8:00000005                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100068 RA:00100068 RA:0010006c f05=       43.974000  # fld     ft5, 0(a0)
      80000b64  x9:00100130 RA:00100130 RA:00100134 f06=       28.269000  # fld     ft6, 0(s1)
      80000b68  f06:       28.269000 f05:       43.974000 f04:      256.512906 f04=     1499.613912  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000005 x8=00000004                 # addi    s0, s0, -1
      80000b70  x9:00100130 x13:00000038 x9=00100168    # add     s1, s1, a3
      80000b74  x10:00100068 x10=00100070               # addi    a0, a0, 8
      80000b78  x8:00000004                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100070 RA:00100070 RA:00100074 f05=       47.115000  # fld     ft5, 0(a0)
      80000b64  x9:00100168 RA:00100168 RA:0010016c f06=       50.256000  # fld     ft6, 0(s1)
      80000b68  f06:       50.256000 f05:       47.115000 f04:     1499.613912 f04=     3867.425352  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000004 x8=00000003                 # addi    s0, s0, -1
      80000b70  x9:00100168 x13:00000038 x9=001001a0    # add     s1, s1, a3
      80000b74  x10:00100070 x10=00100078               # addi    a0, a0, 8
      80000b78  x8:00000003                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100078 RA:00100078 RA:0010007c f05=       50.256000  # fld     ft5, 0(a0)
      80000b64  x9:001001a0 RA:001001a0 RA:001001a4 f06=        9.423000  # fld     ft6, 0(s1)
      80000b68  f06:        9.423000 f05:       50.256000 f04:     3867.425352 f04=     4340.987640  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000003 x8=00000002                 # addi    s0, s0, -1
      80000b70  x9:001001a0 x13:00000038 x9=001001d8    # add     s1, s1, a3
      80000b74  x10:00100078 x10=00100080               # addi    a0, a0, 8
      80000b78  x8:00000002                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100080 RA:00100080 RA:00100084 f05=       53.397000  # fld     ft5, 0(a0)
      80000b64  x9:001001d8 RA:001001d8 RA:001001dc f06=       31.410000  # fld     ft6, 0(s1)
      80000b68  f06:       31.410000 f05:       53.397000 f04:     4340.987640 f04=     6018.187410  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000002 x8=00000001                 # addi    s0, s0, -1
      80000b70  x9:001001d8 x13:00000038 x9=00100210    # add     s1, s1, a3
      80000b74  x10:00100080 x10=00100088               # addi    a0, a0, 8
      80000b78  x8:00000001                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100088 RA:00100088 RA:0010008c f05=       56.538000  # fld     ft5, 0(a0)
      80000b64  x9:00100210 RA:00100210 RA:00100214 f06=       53.397000  # fld     ft6, 0(s1)
      80000b68  f06:       53.397000 f05:       56.538000 f04:     6018.187410 f04=     9037.146996  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000001 x8=00000000                 # addi    s0, s0, -1
      80000b70  x9:00100210 x13:00000038 x9=00100248    # add     s1, s1, a3
      80000b74  x10:00100088 x10=00100090               # addi    a0, a0, 8
      80000b78  x8:00000000                             # bnez    s0, pc - 24
; matmul (matmul.c:12)
      80000b7c  x6:00000001 x17:0000000e x10=0000000f   # add     a0, t1, a7
      80000b80  x10:0000000f x10=00000078               # slli    a0, a0, 3
      80000b84  x24:00100240 x10:00000078 x10=001002b8  # add     a0, s8, a0
      80000b88  x10:001002b8 f04:     9037.146996 WA:001002b8 WA:001002bc  # fsd     ft4, 0(a0)
; matmul (matmul.c:7)
      80000b8c  x6:00000001 x6=00000002                 # addi    t1, t1, 1
      80000b90  x5:001000f8 x5=00100100                 # addi    t0, t0, 8
      80000b94  x6:00000002 x15:00000007                # bne     t1, a5, pc - 68
; matmul (matmul.c:0)
      80000b50  x11:00100060 x10=00100060               # mv      a0, a1
      80000b54  x5:00100100 x9=00100100                 # mv      s1, t0
      80000b58  x14:00000006 x8=00000006                # mv      s0, a4
      80000b5c  f03:        0.000000 f03:        0.000000 f04=        0.000000  # fsgnj.d ft4, ft3, ft3
; matmul (matmul.c:10)
      80000b60  x10:00100060 RA:00100060 RA:00100064 f05=       40.833000  # fld     ft5, 0(a0)
      80000b64  x9:00100100 RA:00100100 RA:00100104 f06=        9.423000  # fld     ft6, 0(s1)
      80000b68  f06:        9.423000 f05:       40.833000 f04:        0.000000 f04=      384.769359  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000006 x8=00000005                 # addi    s0, s0, -1
      80000b70  x9:00100100 x13:00000038 x9=00100138    # add     s1, s1, a3
      80000b74  x10:00100060 x10=00100068               # addi    a0, a0, 8
      80000b78  x8:00000005                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100068 RA:00100068 RA:0010006c f05=       43.974000  # fld     ft5, 0(a0)
      80000b64  x9:00100138 RA:00100138 RA:0010013c f06=       31.410000  # fld     ft6, 0(s1)
      80000b68  f06:       31.410000 f05:       43.974000 f04:      384.769359 f04=     1765.992699  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000005 x8=00000004                 # addi    s0, s0, -1
      80000b70  x9:00100138 x13:00000038 x9=00100170    # add     s1, s1, a3
      80000b74  x10:00100068 x10=00100070               # addi    a0, a0, 8
      80000b78  x8:00000004                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100070 RA:00100070 RA:00100074 f05=       47.115000  # fld     ft5, 0(a0)
      80000b64  x9:00100170 RA:00100170 RA:00100174 f06=       53.397000  # fld     ft6, 0(s1)
      80000b68  f06:       53.397000 f05:       47.115000 f04:     1765.992699 f04=     4281.792354  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000004 x8=00000003                 # addi    s0, s0, -1
      80000b70  x9:00100170 x13:00000038 x9=001001a8    # add     s1, s1, a3
      80000b74  x10:00100070 x10=00100078               # addi    a0, a0, 8
      80000b78  x8:00000003                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100078 RA:00100078 RA:0010007c f05=       50.256000  # fld     ft5, 0(a0)
      80000b64  x9:001001a8 RA:001001a8 RA:001001ac f06=       12.564000  # fld     ft6, 0(s1)
      80000b68  f06:       12.564000 f05:       50.256000 f04:     4281.792354 f04=     4913.208738  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000003 x8=00000002                 # addi    s0, s0, -1
      80000b70  x9:001001a8 x13:00000038 x9=001001e0    # add     s1, s1, a3
      80000b74  x10:00100078 x10=00100080               # addi    a0, a0, 8
      80000b78  x8:00000002                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100080 RA:00100080 RA:00100084 f05=       53.397000  # fld     ft5, 0(a0)
      80000b64  x9:001001e0 RA:001001e0 RA:001001e4 f06=       34.551000  # fld     ft6, 0(s1)
      80000b68  f06:       34.551000 f05:       53.397000 f04:     4913.208738 f04=     6758.128485  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000002 x8=00000001                 # addi    s0, s0, -1
      80000b70  x9:001001e0 x13:00000038 x9=00100218    # add     s1, s1, a3
      80000b74  x10:00100080 x10=00100088               # addi    a0, a0, 8
      80000b78  x8:00000001                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100088 RA:00100088 RA:0010008c f05=       56.538000  # fld     ft5, 0(a0)
      80000b64  x9:00100218 RA:00100218 RA:0010021c f06=       56.538000  # fld     ft6, 0(s1)
      80000b68  f06:       56.538000 f05:       56.538000 f04:     6758.128485 f04=     9954.673929  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000001 x8=00000000                 # addi    s0, s0, -1
      80000b70  x9:00100218 x13:00000038 x9=00100250    # add     s1, s1, a3
      80000b74  x10:00100088 x10=00100090               # addi    a0, a0, 8
      80000b78  x8:00000000                             # bnez    s0, pc - 24
; matmul (matmul.c:12)
      80000b7c  x6:00000002 x17:0000000e x10=00000010   # add     a0, t1, a7
      80000b80  x10:00000010 x10=00000080               # slli    a0, a0, 3
      80000b84  x24:00100240 x10:00000080 x10=001002c0  # add     a0, s8, a0
      80000b88  x10:001002c0 f04:     9954.673929 WA:001002c0 WA:001002c4  # fsd     ft4, 0(a0)
; matmul (matmul.c:7)
      80000b8c  x6:00000002 x6=00000003                 # addi    t1, t1, 1
      80000b90  x5:00100100 x5=00100108                 # addi    t0, t0, 8
      80000b94  x6:00000003 x15:00000007                # bne     t1, a5, pc - 68
; matmul (matmul.c:0)
      80000b50  x11:00100060 x10=00100060               # mv      a0, a1
      80000b54  x5:00100108 x9=00100108                 # mv      s1, t0
      80000b58  x14:00000006 x8=00000006                # mv      s0, a4
      80000b5c  f03:        0.000000 f03:        0.000000 f04=        0.000000  # fsgnj.d ft4, ft3, ft3
; matmul (matmul.c:10)
      80000b60  x10:00100060 RA:00100060 RA:00100064 f05=       40.833000  # fld     ft5, 0(a0)
      80000b64  x9:00100108 RA:00100108 RA:0010010c f06=       12.564000  # fld     ft6, 0(s1)
      80000b68  f06:       12.564000 f05:       40.833000 f04:        0.000000 f04=      513.025812  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000006 x8=00000005                 # addi    s0, s0, -1
      80000b70  x9:00100108 x13:00000038 x9=00100140    # add     s1, s1, a3
      80000b74  x10:00100060 x10=00100068               # addi    a0, a0, 8
      80000b78  x8:00000005                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100068 RA:00100068 RA:0010006c f05=       43.974000  # fld     ft5, 0(a0)
      80000b64  x9:00100140 RA:00100140 RA:00100144 f06=       34.551000  # fld     ft6, 0(s1)
      80000b68  f06:       34.551000 f05:       43.974000 f04:      513.025812 f04=     2032.371486  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000005 x8=00000004                 # addi    s0, s0, -1
      80000b70  x9:00100140 x13:00000038 x9=00100178    # add     s1, s1, a3
      80000b74  x10:00100068 x10=00100070               # addi    a0, a0, 8
      80000b78  x8:00000004                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100070 RA:00100070 RA:00100074 f05=       47.115000  # fld     ft5, 0(a0)
      80000b64  x9:00100178 RA:00100178 RA:0010017c f06=       56.538000  # fld     ft6, 0(s1)
      80000b68  f06:       56.538000 f05:       47.115000 f04:     2032.371486 f04=     4696.159356  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000004 x8=00000003                 # addi    s0, s0, -1
      80000b70  x9:00100178 x13:00000038 x9=001001b0    # add     s1, s1, a3
      80000b74  x10:00100070 x10=00100078               # addi    a0, a0, 8
      80000b78  x8:00000003                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100078 RA:00100078 RA:0010007c f05=       50.256000  # fld     ft5, 0(a0)
      80000b64  x9:001001b0 RA:001001b0 RA:001001b4 f06=       15.705000  # fld     ft6, 0(s1)
      80000b68  f06:       15.705000 f05:       50.256000 f04:     4696.159356 f04=     5485.429836  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000003 x8=00000002                 # addi    s0, s0, -1
      80000b70  x9:001001b0 x13:00000038 x9=001001e8    # add     s1, s1, a3
      80000b74  x10:00100078 x10=00100080               # addi    a0, a0, 8
      80000b78  x8:00000002                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100080 RA:00100080 RA:00100084 f05=       53.397000  # fld     ft5, 0(a0)
      80000b64  x9:001001e8 RA:001001e8 RA:001001ec f06=       37.692000  # fld     ft6, 0(s1)
      80000b68  f06:       37.692000 f05:       53.397000 f04:     5485.429836 f04=     7498.069560  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000002 x8=00000001                 # addi    s0, s0, -1
      80000b70  x9:001001e8 x13:00000038 x9=00100220    # add     s1, s1, a3
      80000b74  x10:00100080 x10=00100088               # addi    a0, a0, 8
      80000b78  x8:00000001                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100088 RA:00100088 RA:0010008c f05=       56.538000  # fld     ft5, 0(a0)
      80000b64  x9:00100220 RA:00100220 RA:00100224 f06=       59.679000  # fld     ft6, 0(s1)
      80000b68  f06:       59.679000 f05:       56.538000 f04:     7498.069560 f04=    10872.200862  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000001 x8=00000000                 # addi    s0, s0, -1
      80000b70  x9:00100220 x13:00000038 x9=00100258    # add     s1, s1, a3
      80000b74  x10:00100088 x10=00100090               # addi    a0, a0, 8
      80000b78  x8:00000000                             # bnez    s0, pc - 24
; matmul (matmul.c:12)
      80000b7c  x6:00000003 x17:0000000e x10=00000011   # add     a0, t1, a7
      80000b80  x10:00000011 x10=00000088               # slli    a0, a0, 3
      80000b84  x24:00100240 x10:00000088 x10=001002c8  # add     a0, s8, a0
      80000b88  x10:001002c8 f04:    10872.200862 WA:001002c8 WA:001002cc  # fsd     ft4, 0(a0)
; matmul (matmul.c:7)
      80000b8c  x6:00000003 x6=00000004                 # addi    t1, t1, 1
      80000b90  x5:00100108 x5=00100110                 # addi    t0, t0, 8
      80000b94  x6:00000004 x15:00000007                # bne     t1, a5, pc - 68
; matmul (matmul.c:0)
      80000b50  x11:00100060 x10=00100060               # mv      a0, a1
      80000b54  x5:00100110 x9=00100110                 # mv      s1, t0
      80000b58  x14:00000006 x8=00000006                # mv      s0, a4
      80000b5c  f03:        0.000000 f03:        0.000000 f04=        0.000000  # fsgnj.d ft4, ft3, ft3
; matmul (matmul.c:10)
      80000b60  x10:00100060 RA:00100060 RA:00100064 f05=       40.833000  # fld     ft5, 0(a0)
      80000b64  x9:00100110 RA:00100110 RA:00100114 f06=       15.705000  # fld     ft6, 0(s1)
      80000b68  f06:       15.705000 f05:       40.833000 f04:        0.000000 f04=      641.282265  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000006 x8=00000005                 # addi    s0, s0, -1
      80000b70  x9:00100110 x13:00000038 x9=00100148    # add     s1, s1, a3
      80000b74  x10:00100060 x10=00100068               # addi    a0, a0, 8
      80000b78  x8:00000005                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100068 RA:00100068 RA:0010006c f05=       43.974000  # fld     ft5, 0(a0)
      80000b64  x9:00100148 RA:00100148 RA:0010014c f06=       37.692000  # fld     ft6, 0(s1)
      80000b68  f06:       37.692000 f05:       43.974000 f04:      641.282265 f04=     2298.750273  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000005 x8=00000004                 # addi    s0, s0, -1
      80000b70  x9:00100148 x13:00000038 x9=00100180    # add     s1, s1, a3
      80000b74  x10:00100068 x10=00100070               # addi    a0, a0, 8
      80000b78  x8:00000004                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100070 RA:00100070 RA:00100074 f05=       47.115000  # fld     ft5, 0(a0)
      80000b64  x9:00100180 RA:00100180 RA:00100184 f06=       59.679000  # fld     ft6, 0(s1)
      80000b68  f06:       59.679000 f05:       47.115000 f04:     2298.750273 f04=     5110.526358  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000004 x8=00000003                 # addi    s0, s0, -1
      80000b70  x9:00100180 x13:00000038 x9=001001b8    # add     s1, s1, a3
      80000b74  x10:00100070 x10=00100078               # addi    a0, a0, 8
      80000b78  x8:00000003                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100078 RA:00100078 RA:0010007c f05=       50.256000  # fld     ft5, 0(a0)
      80000b64  x9:001001b8 RA:001001b8 RA:001001bc f06=       18.846000  # fld     ft6, 0(s1)
      80000b68  f06:       18.846000 f05:       50.256000 f04:     5110.526358 f04=     6057.650934  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000003 x8=00000002                 # addi    s0, s0, -1
      80000b70  x9:001001b8 x13:00000038 x9=001001f0    # add     s1, s1, a3
      80000b74  x10:00100078 x10=00100080               # addi    a0, a0, 8
      80000b78  x8:00000002                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100080 RA:00100080 RA:00100084 f05=       53.397000  # fld     ft5, 0(a0)
      80000b64  x9:001001f0 RA:001001f0 RA:001001f4 f06=       40.833000  # fld     ft6, 0(s1)
      80000b68  f06:       40.833000 f05:       53.397000 f04:     6057.650934 f04=     8238.010635  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000002 x8=00000001                 # addi    s0, s0, -1
      80000b70  x9:001001f0 x13:00000038 x9=00100228    # add     s1, s1, a3
      80000b74  x10:00100080 x10=00100088               # addi    a0, a0, 8
      80000b78  x8:00000001                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100088 RA:00100088 RA:0010008c f05=       56.538000  # fld     ft5, 0(a0)
      80000b64  x9:00100228 RA:00100228 RA:0010022c f06=       62.820000  # fld     ft6, 0(s1)
      80000b68  f06:       62.820000 f05:       56.538000 f04:     8238.010635 f04=    11789.727795  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000001 x8=00000000                 # addi    s0, s0, -1
      80000b70  x9:00100228 x13:00000038 x9=00100260    # add     s1, s1, a3
      80000b74  x10:00100088 x10=00100090               # addi    a0, a0, 8
      80000b78  x8:00000000                             # bnez    s0, pc - 24
; matmul (matmul.c:12)
      80000b7c  x6:00000004 x17:0000000e x10=00000012   # add     a0, t1, a7
      80000b80  x10:00000012 x10=00000090               # slli    a0, a0, 3
      80000b84  x24:00100240 x10:00000090 x10=001002d0  # add     a0, s8, a0
      80000b88  x10:001002d0 f04:    11789.727795 WA:001002d0 WA:001002d4  # fsd     ft4, 0(a0)
; matmul (matmul.c:7)
      80000b8c  x6:00000004 x6=00000005                 # addi    t1, t1, 1
      80000b90  x5:00100110 x5=00100118                 # addi    t0, t0, 8
      80000b94  x6:00000005 x15:00000007                # bne     t1, a5, pc - 68
; matmul (matmul.c:0)
      80000b50  x11:00100060 x10=00100060               # mv      a0, a1
      80000b54  x5:00100118 x9=00100118                 # mv      s1, t0
      80000b58  x14:00000006 x8=00000006                # mv      s0, a4
      80000b5c  f03:        0.000000 f03:        0.000000 f04=        0.000000  # fsgnj.d ft4, ft3, ft3
; matmul (matmul.c:10)
      80000b60  x10:00100060 RA:00100060 RA:00100064 f05=       40.833000  # fld     ft5, 0(a0)
      80000b64  x9:00100118 RA:00100118 RA:0010011c f06=       18.846000  # fld     ft6, 0(s1)
      80000b68  f06:       18.846000 f05:       40.833000 f04:        0.000000 f04=      769.538718  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000006 x8=00000005                 # addi    s0, s0, -1
      80000b70  x9:00100118 x13:00000038 x9=00100150    # add     s1, s1, a3
      80000b74  x10:00100060 x10=00100068               # addi    a0, a0, 8
      80000b78  x8:00000005                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100068 RA:00100068 RA:0010006c f05=       43.974000  # fld     ft5, 0(a0)
      80000b64  x9:00100150 RA:00100150 RA:00100154 f06=       40.833000  # fld     ft6, 0(s1)
      80000b68  f06:       40.833000 f05:       43.974000 f04:      769.538718 f04=     2565.129060  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000005 x8=00000004                 # addi    s0, s0, -1
      80000b70  x9:00100150 x13:00000038 x9=00100188    # add     s1, s1, a3
      80000b74  x10:00100068 x10=00100070               # addi    a0, a0, 8
      80000b78  x8:00000004                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100070 RA:00100070 RA:00100074 f05=       47.115000  # fld     ft5, 0(a0)
      80000b64  x9:00100188 RA:00100188 RA:0010018c f06=       62.820000  # fld     ft6, 0(s1)
      80000b68  f06:       62.820000 f05:       47.115000 f04:     2565.129060 f04=     5524.893360  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000004 x8=00000003                 # addi    s0, s0, -1
      80000b70  x9:00100188 x13:00000038 x9=001001c0    # add     s1, s1, a3
      80000b74  x10:00100070 x10=00100078               # addi    a0, a0, 8
      80000b78  x8:00000003                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100078 RA:00100078 RA:0010007c f05=       50.256000  # fld     ft5, 0(a0)
      80000b64  x9:001001c0 RA:001001c0 RA:001001c4 f06=       21.987000  # fld     ft6, 0(s1)
      80000b68  f06:       21.987000 f05:       50.256000 f04:     5524.893360 f04=     6629.872032  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000003 x8=00000002                 # addi    s0, s0, -1
      80000b70  x9:001001c0 x13:00000038 x9=001001f8    # add     s1, s1, a3
      80000b74  x10:00100078 x10=00100080               # addi    a0, a0, 8
      80000b78  x8:00000002                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100080 RA:00100080 RA:00100084 f05=       53.397000  # fld     ft5, 0(a0)
      80000b64  x9:001001f8 RA:001001f8 RA:001001fc f06=       43.974000  # fld     ft6, 0(s1)
      80000b68  f06:       43.974000 f05:       53.397000 f04:     6629.872032 f04=     8977.951710  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000002 x8=00000001                 # addi    s0, s0, -1
      80000b70  x9:001001f8 x13:00000038 x9=00100230    # add     s1, s1, a3
      80000b74  x10:00100080 x10=00100088               # addi    a0, a0, 8
      80000b78  x8:00000001                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100088 RA:00100088 RA:0010008c f05=       56.538000  # fld     ft5, 0(a0)
      80000b64  x9:00100230 RA:00100230 RA:00100234 f06=        3.141000  # fld     ft6, 0(s1)
      80000b68  f06:        3.141000 f05:       56.538000 f04:     8977.951710 f04=     9155.537568  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000001 x8=00000000                 # addi    s0, s0, -1
      80000b70  x9:00100230 x13:00000038 x9=00100268    # add     s1, s1, a3
      80000b74  x10:00100088 x10=00100090               # addi    a0, a0, 8
      80000b78  x8:00000000                             # bnez    s0, pc - 24
; matmul (matmul.c:12)
      80000b7c  x6:00000005 x17:0000000e x10=00000013   # add     a0, t1, a7
      80000b80  x10:00000013 x10=00000098               # slli    a0, a0, 3
      80000b84  x24:00100240 x10:00000098 x10=001002d8  # add     a0, s8, a0
      80000b88  x10:001002d8 f04:     9155.537568 WA:001002d8 WA:001002dc  # fsd     ft4, 0(a0)
; matmul (matmul.c:7)
      80000b8c  x6:00000005 x6=00000006                 # addi    t1, t1, 1
      80000b90  x5:00100118 x5=00100120                 # addi    t0, t0, 8
      80000b94  x6:00000006 x15:00000007                # bne     t1, a5, pc - 68
; matmul (matmul.c:0)
      80000b50  x11:00100060 x10=00100060               # mv      a0, a1
      80000b54  x5:00100120 x9=00100120                 # mv      s1, t0
      80000b58  x14:00000006 x8=00000006                # mv      s0, a4
      80000b5c  f03:        0.000000 f03:        0.000000 f04=        0.000000  # fsgnj.d ft4, ft3, ft3
; matmul (matmul.c:10)
      80000b60  x10:00100060 RA:00100060 RA:00100064 f05=       40.833000  # fld     ft5, 0(a0)
      80000b64  x9:00100120 RA:00100120 RA:00100124 f06=       21.987000  # fld     ft6, 0(s1)
      80000b68  f06:       21.987000 f05:       40.833000 f04:        0.000000 f04=      897.795171  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000006 x8=00000005                 # addi    s0, s0, -1
      80000b70  x9:00100120 x13:00000038 x9=00100158    # add     s1, s1, a3
      80000b74  x10:00100060 x10=00100068               # addi    a0, a0, 8
      80000b78  x8:00000005                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100068 RA:00100068 RA:0010006c f05=       43.974000  # fld     ft5, 0(a0)
      80000b64  x9:00100158 RA:00100158 RA:0010015c f06=       43.974000  # fld     ft6, 0(s1)
      80000b68  f06:       43.974000 f05:       43.974000 f04:      897.795171 f04=     2831.507847  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000005 x8=00000004                 # addi    s0, s0, -1
      80000b70  x9:00100158 x13:00000038 x9=00100190    # add     s1, s1, a3
      80000b74  x10:00100068 x10=00100070               # addi    a0, a0, 8
      80000b78  x8:00000004                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100070 RA:00100070 RA:00100074 f05=       47.115000  # fld     ft5, 0(a0)
      80000b64  x9:00100190 RA:00100190 RA:00100194 f06=        3.141000  # fld     ft6, 0(s1)
      80000b68  f06:        3.141000 f05:       47.115000 f04:     2831.507847 f04=     2979.496062  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000004 x8=00000003                 # addi    s0, s0, -1
      80000b70  x9:00100190 x13:00000038 x9=001001c8    # add     s1, s1, a3
      80000b74  x10:00100070 x10=00100078               # addi    a0, a0, 8
      80000b78  x8:00000003                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100078 RA:00100078 RA:0010007c f05=       50.256000  # fld     ft5, 0(a0)
      80000b64  x9:001001c8 RA:001001c8 RA:001001cc f06=       25.128000  # fld     ft6, 0(s1)
      80000b68  f06:       25.128000 f05:       50.256000 f04:     2979.496062 f04=     4242.328830  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000003 x8=00000002                 # addi    s0, s0, -1
      80000b70  x9:001001c8 x13:00000038 x9=00100200    # add     s1, s1, a3
      80000b74  x10:00100078 x10=00100080               # addi    a0, a0, 8
      80000b78  x8:00000002                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100080 RA:00100080 RA:00100084 f05=       53.397000  # fld     ft5, 0(a0)
      80000b64  x9:00100200 RA:00100200 RA:00100204 f06=       47.115000  # fld     ft6, 0(s1)
      80000b68  f06:       47.115000 f05:       53.397000 f04:     4242.328830 f04=     6758.128485  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000002 x8=00000001                 # addi    s0, s0, -1
      80000b70  x9:00100200 x13:00000038 x9=00100238    # add     s1, s1, a3
      80000b74  x10:00100080 x10=00100088               # addi    a0, a0, 8
      80000b78  x8:00000001                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100088 RA:00100088 RA:0010008c f05=       56.538000  # fld     ft5, 0(a0)
      80000b64  x9:00100238 RA:00100238 RA:0010023c f06=        6.282000  # fld     ft6, 0(s1)
      80000b68  f06:        6.282000 f05:       56.538000 f04:     6758.128485 f04=     7113.300201  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000001 x8=00000000                 # addi    s0, s0, -1
      80000b70  x9:00100238 x13:00000038 x9=00100270    # add     s1, s1, a3
      80000b74  x10:00100088 x10=00100090               # addi    a0, a0, 8
      80000b78  x8:00000000                             # bnez    s0, pc - 24
; matmul (matmul.c:12)
      80000b7c  x6:00000006 x17:0000000e x10=00000014   # add     a0, t1, a7
      80000b80  x10:00000014 x10=000000a0               # slli    a0, a0, 3
      80000b84  x24:00100240 x10:000000a0 x10=001002e0  # add     a0, s8, a0
      80000b88  x10:001002e0 f04:     7113.300201 WA:001002e0 WA:001002e4  # fsd     ft4, 0(a0)
; matmul (matmul.c:7)
      80000b8c  x6:00000006 x6=00000007                 # addi    t1, t1, 1
      80000b90  x5:00100120 x5=00100128                 # addi    t0, t0, 8
      80000b94  x6:00000007 x15:00000007                # bne     t1, a5, pc - 68
; matmul (matmul.c:6)
      80000b98  x16:00000002 x16=00000003               # addi    a6, a6, 1
      80000b9c  x11:00100060 x21:00000030 x11=00100090  # add     a1, a1, s5
      80000ba0  x16:00000003 x23:00000005               # bne     a6, s7, pc - 92
; matmul (matmul.c:0)
      80000b44  x6=00000000                             # li      t1, 0
      80000b48  x16:00000003 x15:00000007 x17=00000015  # mul     a7, a6, a5
      80000b4c  x12:001000f0 x5=001000f0                # mv      t0, a2
      80000b50  x11:00100090 x10=00100090               # mv      a0, a1
      80000b54  x5:001000f0 x9=001000f0                 # mv      s1, t0
      80000b58  x14:00000006 x8=00000006                # mv      s0, a4
      80000b5c  f03:        0.000000 f03:        0.000000 f04=        0.000000  # fsgnj.d ft4, ft3, ft3
; matmul (matmul.c:10)
      80000b60  x10:00100090 RA:00100090 RA:00100094 f05=       59.679000  # fld     ft5, 0(a0)
      80000b64  x9:001000f0 RA:001000f0 RA:001000f4 f06=        3.141000  # fld     ft6, 0(s1)
      80000b68  f06:        3.141000 f05:       59.679000 f04:        0.000000 f04=      187.451739  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000006 x8=00000005                 # addi    s0, s0, -1
      80000b70  x9:001000f0 x13:00000038 x9=00100128    # add     s1, s1, a3
      80000b74  x10:00100090 x10=00100098               # addi    a0, a0, 8
      80000b78  x8:00000005                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100098 RA:00100098 RA:0010009c f05=       62.820000  # fld     ft5, 0(a0)
      80000b64  x9:00100128 RA:00100128 RA:0010012c f06=       25.128000  # fld     ft6, 0(s1)
      80000b68  f06:       25.128000 f05:       62.820000 f04:      187.451739 f04=     1765.992699  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000005 x8=00000004                 # addi    s0, s0, -1
      80000b70  x9:00100128 x13:00000038 x9=00100160    # add     s1, s1, a3
      80000b74  x10:00100098 x10=001000a0               # addi    a0, a0, 8
      80000b78  x8:00000004                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000a0 RA:001000a0 RA:001000a4 f05=        3.141000  # fld     ft5, 0(a0)
      80000b64  x9:00100160 RA:00100160 RA:00100164 f06=       47.115000  # fld     ft6, 0(s1)
      80000b68  f06:       47.115000 f05:        3.141000 f04:     1765.992699 f04=     1913.980914  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000004 x8=00000003                 # addi    s0, s0, -1
      80000b70  x9:00100160 x13:00000038 x9=00100198    # add     s1, s1, a3
      80000b74  x10:001000a0 x10=001000a8               # addi    a0, a0, 8
      80000b78  x8:00000003                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000a8 RA:001000a8 RA:001000ac f05=        6.282000  # fld     ft5, 0(a0)
      80000b64  x9:00100198 RA:00100198 RA:0010019c f06=        6.282000  # fld     ft6, 0(s1)
      80000b68  f06:        6.282000 f05:        6.282000 f04:     1913.980914 f04=     1953.444438  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000003 x8=00000002                 # addi    s0, s0, -1
      80000b70  x9:00100198 x13:00000038 x9=001001d0    # add     s1, s1, a3
      80000b74  x10:001000a8 x10=001000b0               # addi    a0, a0, 8
      80000b78  x8:00000002                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000b0 RA:001000b0 RA:001000b4 f05=        9.423000  # fld     ft5, 0(a0)
      80000b64  x9:001001d0 RA:001001d0 RA:001001d4 f06=       28.269000  # fld     ft6, 0(s1)
      80000b68  f06:       28.269000 f05:        9.423000 f04:     1953.444438 f04=     2219.823225  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000002 x8=00000001                 # addi    s0, s0, -1
      80000b70  x9:001001d0 x13:00000038 x9=00100208    # add     s1, s1, a3
      80000b74  x10:001000b0 x10=001000b8               # addi    a0, a0, 8
      80000b78  x8:00000001                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000b8 RA:001000b8 RA:001000bc f05=       12.564000  # fld     ft5, 0(a0)
      80000b64  x9:00100208 RA:00100208 RA:0010020c f06=       50.256000  # fld     ft6, 0(s1)
      80000b68  f06:       50.256000 f05:       12.564000 f04:     2219.823225 f04=     2851.239609  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000001 x8=00000000                 # addi    s0, s0, -1
      80000b70  x9:00100208 x13:00000038 x9=00100240    # add     s1, s1, a3
      80000b74  x10:001000b8 x10=001000c0               # addi    a0, a0, 8
      80000b78  x8:00000000                             # bnez    s0, pc - 24
; matmul (matmul.c:12)
      80000b7c  x6:00000000 x17:00000015 x10=00000015   # add     a0, t1, a7
      80000b80  x10:00000015 x10=000000a8               # slli    a0, a0, 3
      80000b84  x24:00100240 x10:000000a8 x10=001002e8  # add     a0, s8, a0
      80000b88  x10:001002e8 f04:     2851.239609 WA:001002e8 WA:001002ec  # fsd     ft4, 0(a0)
; matmul (matmul.c:7)
      80000b8c  x6:00000000 x6=00000001                 # addi    t1, t1, 1
      80000b90  x5:001000f0 x5=001000f8                 # addi    t0, t0, 8
      80000b94  x6:00000001 x15:00000007                # bne     t1, a5, pc - 68
; matmul (matmul.c:0)
      80000b50  x11:00100090 x10=00100090               # mv      a0, a1
      80000b54  x5:001000f8 x9=001000f8                 # mv      s1, t0
      80000b58  x14:00000006 x8=00000006                # mv      s0, a4
      80000b5c  f03:        0.000000 f03:        0.000000 f04=        0.000000  # fsgnj.d ft4, ft3, ft3
; matmul (matmul.c:10)
      80000b60  x10:00100090 RA:00100090 RA:00100094 f05=       59.679000  # fld     ft5, 0(a0)
      80000b64  x9:001000f8 RA:001000f8 RA:001000fc f06=        6.282000  # fld     ft6, 0(s1)
      80000b68  f06:        6.282000 f05:       59.679000 f04:        0.000000 f04=      374.903478  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000006 x8=00000005                 # addi    s0, s0, -1
      80000b70  x9:001000f8 x13:00000038 x9=00100130    # add     s1, s1, a3
      80000b74  x10:00100090 x10=00100098               # addi    a0, a0, 8
      80000b78  x8:00000005                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100098 RA:00100098 RA:0010009c f05=       62.820000  # fld     ft5, 0(a0)
      80000b64  x9:00100130 RA:00100130 RA:00100134 f06=       28.269000  # fld     ft6, 0(s1)
      80000b68  f06:       28.269000 f05:       62.820000 f04:      374.903478 f04=     2150.762058  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000005 x8=00000004                 # addi    s0, s0, -1
      80000b70  x9:00100130 x13:00000038 x9=00100168    # add     s1, s1, a3
      80000b74  x10:00100098 x10=001000a0               # addi    a0, a0, 8
      80000b78  x8:00000004                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000a0 RA:001000a0 RA:001000a4 f05=        3.141000  # fld     ft5, 0(a0)
      80000b64  x9:00100168 RA:00100168 RA:0010016c f06=       50.256000  # fld     ft6, 0(s1)
      80000b68  f06:       50.256000 f05:        3.141000 f04:     2150.762058 f04=     2308.616154  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000004 x8=00000003                 # addi    s0, s0, -1
      80000b70  x9:00100168 x13:00000038 x9=001001a0    # add     s1, s1, a3
      80000b74  x10:001000a0 x10=001000a8               # addi    a0, a0, 8
      80000b78  x8:00000003                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000a8 RA:001000a8 RA:001000ac f05=        6.282000  # fld     ft5, 0(a0)
      80000b64  x9:001001a0 RA:001001a0 RA:001001a4 f06=        9.423000  # fld     ft6, 0(s1)
      80000b68  f06:        9.423000 f05:        6.282000 f04:     2308.616154 f04=     2367.811440  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000003 x8=00000002                 # addi    s0, s0, -1
      80000b70  x9:001001a0 x13:00000038 x9=001001d8    # add     s1, s1, a3
      80000b74  x10:001000a8 x10=001000b0               # addi    a0, a0, 8
      80000b78  x8:00000002                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000b0 RA:001000b0 RA:001000b4 f05=        9.423000  # fld     ft5, 0(a0)
      80000b64  x9:001001d8 RA:001001d8 RA:001001dc f06=       31.410000  # fld     ft6, 0(s1)
      80000b68  f06:       31.410000 f05:        9.423000 f04:     2367.811440 f04=     2663.787870  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000002 x8=00000001                 # addi    s0, s0, -1
      80000b70  x9:001001d8 x13:00000038 x9=00100210    # add     s1, s1, a3
      80000b74  x10:001000b0 x10=001000b8               # addi    a0, a0, 8
      80000b78  x8:00000001                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000b8 RA:001000b8 RA:001000bc f05=       12.564000  # fld     ft5, 0(a0)
      80000b64  x9:00100210 RA:00100210 RA:00100214 f06=       53.397000  # fld     ft6, 0(s1)
      80000b68  f06:       53.397000 f05:       12.564000 f04:     2663.787870 f04=     3334.667778  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000001 x8=00000000                 # addi    s0, s0, -1
      80000b70  x9:00100210 x13:00000038 x9=00100248    # add     s1, s1, a3
      80000b74  x10:001000b8 x10=001000c0               # addi    a0, a0, 8
      80000b78  x8:00000000                             # bnez    s0, pc - 24
; matmul (matmul.c:12)
      80000b7c  x6:00000001 x17:00000015 x10=00000016   # add     a0, t1, a7
      80000b80  x10:00000016 x10=000000b0               # slli    a0, a0, 3
      80000b84  x24:00100240 x10:000000b0 x10=001002f0  # add     a0, s8, a0
      80000b88  x10:001002f0 f04:     3334.667778 WA:001002f0 WA:001002f4  # fsd     ft4, 0(a0)
; matmul (matmul.c:7)
      80000b8c  x6:00000001 x6=00000002                 # addi    t1, t1, 1
      80000b90  x5:001000f8 x5=00100100                 # addi    t0, t0, 8
      80000b94  x6:00000002 x15:00000007                # bne     t1, a5, pc - 68
; matmul (matmul.c:0)
      80000b50  x11:00100090 x10=00100090               # mv      a0, a1
      80000b54  x5:00100100 x9=00100100                 # mv      s1, t0
      80000b58  x14:00000006 x8=00000006                # mv      s0, a4
      80000b5c  f03:        0.000000 f03:        0.000000 f04=        0.000000  # fsgnj.d ft4, ft3, ft3
; matmul (matmul.c:10)
      80000b60  x10:00100090 RA:00100090 RA:00100094 f05=       59.679000  # fld     ft5, 0(a0)
      80000b64  x9:00100100 RA:00100100 RA:00100104 f06=        9.423000  # fld     ft6, 0(s1)
      80000b68  f06:        9.423000 f05:       59.679000 f04:        0.000000 f04=      562.355217  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000006 x8=00000005                 # addi    s0, s0, -1
      80000b70  x9:00100100 x13:00000038 x9=00100138    # add     s1, s1, a3
      80000b74  x10:00100090 x10=00100098               # addi    a0, a0, 8
      80000b78  x8:00000005                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100098 RA:00100098 RA:0010009c f05=       62.820000  # fld     ft5, 0(a0)
      80000b64  x9:00100138 RA:00100138 RA:0010013c f06=       31.410000  # fld     ft6, 0(s1)
      80000b68  f06:       31.410000 f05:       62.820000 f04:      562.355217 f04=     2535.531417  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000005 x8=00000004                 # addi    s0, s0, -1
      80000b70  x9:00100138 x13:00000038 x9=00100170    # add     s1, s1, a3
      80000b74  x10:00100098 x10=001000a0               # addi    a0, a0, 8
      80000b78  x8:00000004                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000a0 RA:001000a0 RA:001000a4 f05=        3.141000  # fld     ft5, 0(a0)
      80000b64  x9:00100170 RA:00100170 RA:00100174 f06=       53.397000  # fld     ft6, 0(s1)
      80000b68  f06:       53.397000 f05:        3.141000 f04:     2535.531417 f04=     2703.251394  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000004 x8=00000003                 # addi    s0, s0, -1
      80000b70  x9:00100170 x13:00000038 x9=001001a8    # add     s1, s1, a3
      80000b74  x10:001000a0 x10=001000a8               # addi    a0, a0, 8
      80000b78  x8:00000003                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000a8 RA:001000a8 RA:001000ac f05=        6.282000  # fld     ft5, 0(a0)
      80000b64  x9:001001a8 RA:001001a8 RA:001001ac f06=       12.564000  # fld     ft6, 0(s1)
      80000b68  f06:       12.564000 f05:        6.282000 f04:     2703.251394 f04=     2782.178442  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000003 x8=00000002                 # addi    s0, s0, -1
      80000b70  x9:001001a8 x13:00000038 x9=001001e0    # add     s1, s1, a3
      80000b74  x10:001000a8 x10=001000b0               # addi    a0, a0, 8
      80000b78  x8:00000002                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000b0 RA:001000b0 RA:001000b4 f05=        9.423000  # fld     ft5, 0(a0)
      80000b64  x9:001001e0 RA:001001e0 RA:001001e4 f06=       34.551000  # fld     ft6, 0(s1)
      80000b68  f06:       34.551000 f05:        9.423000 f04:     2782.178442 f04=     3107.752515  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000002 x8=00000001                 # addi    s0, s0, -1
      80000b70  x9:001001e0 x13:00000038 x9=00100218    # add     s1, s1, a3
      80000b74  x10:001000b0 x10=001000b8               # addi    a0, a0, 8
      80000b78  x8:00000001                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000b8 RA:001000b8 RA:001000bc f05=       12.564000  # fld     ft5, 0(a0)
      80000b64  x9:00100218 RA:00100218 RA:0010021c f06=       56.538000  # fld     ft6, 0(s1)
      80000b68  f06:       56.538000 f05:       12.564000 f04:     3107.752515 f04=     3818.095947  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000001 x8=00000000                 # addi    s0, s0, -1
      80000b70  x9:00100218 x13:00000038 x9=00100250    # add     s1, s1, a3
      80000b74  x10:001000b8 x10=001000c0               # addi    a0, a0, 8
      80000b78  x8:00000000                             # bnez    s0, pc - 24
; matmul (matmul.c:12)
      80000b7c  x6:00000002 x17:00000015 x10=00000017   # add     a0, t1, a7
      80000b80  x10:00000017 x10=000000b8               # slli    a0, a0, 3
      80000b84  x24:00100240 x10:000000b8 x10=001002f8  # add     a0, s8, a0
      80000b88  x10:001002f8 f04:     3818.095947 WA:001002f8 WA:001002fc  # fsd     ft4, 0(a0)
; matmul (matmul.c:7)
      80000b8c  x6:00000002 x6=00000003                 # addi    t1, t1, 1
      80000b90  x5:00100100 x5=00100108                 # addi    t0, t0, 8
      80000b94  x6:00000003 x15:00000007                # bne     t1, a5, pc - 68
; matmul (matmul.c:0)
      80000b50  x11:00100090 x10=00100090               # mv      a0, a1
      80000b54  x5:00100108 x9=00100108                 # mv      s1, t0
      80000b58  x14:00000006 x8=00000006                # mv      s0, a4
      80000b5c  f03:        0.000000 f03:        0.000000 f04=        0.000000  # fsgnj.d ft4, ft3, ft3
; matmul (matmul.c:10)
      80000b60  x10:00100090 RA:00100090 RA:00100094 f05=       59.679000  # fld     ft5, 0(a0)
      80000b64  x9:00100108 RA:00100108 RA:0010010c f06=       12.564000  # fld     ft6, 0(s1)
      80000b68  f06:       12.564000 f05:       59.679000 f04:        0.000000 f04=      749.806956  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000006 x8=00000005                 # addi    s0, s0, -1
      80000b70  x9:00100108 x13:00000038 x9=00100140    # add     s1, s1, a3
      80000b74  x10:00100090 x10=00100098               # addi    a0, a0, 8
      80000b78  x8:00000005                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100098 RA:00100098 RA:0010009c f05=       62.820000  # fld     ft5, 0(a0)
      80000b64  x9:00100140 RA:00100140 RA:00100144 f06=       34.551000  # fld     ft6, 0(s1)
      80000b68  f06:       34.551000 f05:       62.820000 f04:      749.806956 f04=     2920.300776  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000005 x8=00000004                 # addi    s0, s0, -1
      80000b70  x9:00100140 x13:00000038 x9=00100178    # add     s1, s1, a3
      80000b74  x10:00100098 x10=001000a0               # addi    a0, a0, 8
      80000b78  x8:00000004                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000a0 RA:001000a0 RA:001000a4 f05=        3.141000  # fld     ft5, 0(a0)
      80000b64  x9:00100178 RA:00100178 RA:0010017c f06=       56.538000  # fld     ft6, 0(s1)
      80000b68  f06:       56.538000 f05:        3.141000 f04:     2920.300776 f04=     3097.886634  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000004 x8=00000003                 # addi    s0, s0, -1
      80000b70  x9:00100178 x13:00000038 x9=001001b0    # add     s1, s1, a3
      80000b74  x10:001000a0 x10=001000a8               # addi    a0, a0, 8
      80000b78  x8:00000003                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000a8 RA:001000a8 RA:001000ac f05=        6.282000  # fld     ft5, 0(a0)
      80000b64  x9:001001b0 RA:001001b0 RA:001001b4 f06=       15.705000  # fld     ft6, 0(s1)
      80000b68  f06:       15.705000 f05:        6.282000 f04:     3097.886634 f04=     3196.545444  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000003 x8=00000002                 # addi    s0, s0, -1
      80000b70  x9:001001b0 x13:00000038 x9=001001e8    # add     s1, s1, a3
      80000b74  x10:001000a8 x10=001000b0               # addi    a0, a0, 8
      80000b78  x8:00000002                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000b0 RA:001000b0 RA:001000b4 f05=        9.423000  # fld     ft5, 0(a0)
      80000b64  x9:001001e8 RA:001001e8 RA:001001ec f06=       37.692000  # fld     ft6, 0(s1)
      80000b68  f06:       37.692000 f05:        9.423000 f04:     3196.545444 f04=     3551.717160  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000002 x8=00000001                 # addi    s0, s0, -1
      80000b70  x9:001001e8 x13:00000038 x9=00100220    # add     s1, s1, a3
      80000b74  x10:001000b0 x10=001000b8               # addi    a0, a0, 8
      80000b78  x8:00000001                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000b8 RA:001000b8 RA:001000bc f05=       12.564000  # fld     ft5, 0(a0)
      80000b64  x9:00100220 RA:00100220 RA:00100224 f06=       59.679000  # fld     ft6, 0(s1)
      80000b68  f06:       59.679000 f05:       12.564000 f04:     3551.717160 f04=     4301.524116  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000001 x8=00000000                 # addi    s0, s0, -1
      80000b70  x9:00100220 x13:00000038 x9=00100258    # add     s1, s1, a3
      80000b74  x10:001000b8 x10=001000c0               # addi    a0, a0, 8
      80000b78  x8:00000000                             # bnez    s0, pc - 24
; matmul (matmul.c:12)
      80000b7c  x6:00000003 x17:00000015 x10=00000018   # add     a0, t1, a7
      80000b80  x10:00000018 x10=000000c0               # slli    a0, a0, 3
      80000b84  x24:00100240 x10:000000c0 x10=00100300  # add     a0, s8, a0
      80000b88  x10:00100300 f04:     4301.524116 WA:00100300 WA:00100304  # fsd     ft4, 0(a0)
; matmul (matmul.c:7)
      80000b8c  x6:00000003 x6=00000004                 # addi    t1, t1, 1
      80000b90  x5:00100108 x5=00100110                 # addi    t0, t0, 8
      80000b94  x6:00000004 x15:00000007                # bne     t1, a5, pc - 68
; matmul (matmul.c:0)
      80000b50  x11:00100090 x10=00100090               # mv      a0, a1
      80000b54  x5:00100110 x9=00100110                 # mv      s1, t0
      80000b58  x14:00000006 x8=00000006                # mv      s0, a4
      80000b5c  f03:        0.000000 f03:        0.000000 f04=        0.000000  # fsgnj.d ft4, ft3, ft3
; matmul (matmul.c:10)
      80000b60  x10:00100090 RA:00100090 RA:00100094 f05=       59.679000  # fld     ft5, 0(a0)
      80000b64  x9:00100110 RA:00100110 RA:00100114 f06=       15.705000  # fld     ft6, 0(s1)
      80000b68  f06:       15.705000 f05:       59.679000 f04:        0.000000 f04=      937.258695  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000006 x8=00000005                 # addi    s0, s0, -1
      80000b70  x9:00100110 x13:00000038 x9=00100148    # add     s1, s1, a3
      80000b74  x10:00100090 x10=00100098               # addi    a0, a0, 8
      80000b78  x8:00000005                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100098 RA:00100098 RA:0010009c f05=       62.820000  # fld     ft5, 0(a0)
      80000b64  x9:00100148 RA:00100148 RA:0010014c f06=       37.692000  # fld     ft6, 0(s1)
      80000b68  f06:       37.692000 f05:       62.820000 f04:      937.258695 f04=     3305.070135  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000005 x8=00000004                 # addi    s0, s0, -1
      80000b70  x9:00100148 x13:00000038 x9=00100180    # add     s1, s1, a3
      80000b74  x10:00100098 x10=001000a0               # addi    a0, a0, 8
      80000b78  x8:00000004                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000a0 RA:001000a0 RA:001000a4 f05=        3.141000  # fld     ft5, 0(a0)
      80000b64  x9:00100180 RA:00100180 RA:00100184 f06=       59.679000  # fld     ft6, 0(s1)
      80000b68  f06:       59.679000 f05:        3.141000 f04:     3305.070135 f04=     3492.521874  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000004 x8=00000003                 # addi    s0, s0, -1
      80000b70  x9:00100180 x13:00000038 x9=001001b8    # add     s1, s1, a3
      80000b74  x10:001000a0 x10=001000a8               # addi    a0, a0, 8
      80000b78  x8:00000003                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000a8 RA:001000a8 RA:001000ac f05=        6.282000  # fld     ft5, 0(a0)
      80000b64  x9:001001b8 RA:001001b8 RA:001001bc f06=       18.846000  # fld     ft6, 0(s1)
      80000b68  f06:       18.846000 f05:        6.282000 f04:     3492.521874 f04=     3610.912446  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000003 x8=00000002                 # addi    s0, s0, -1
      80000b70  x9:001001b8 x13:00000038 x9=001001f0    # add     s1, s1, a3
      80000b74  x10:001000a8 x10=001000b0               # addi    a0, a0, 8
      80000b78  x8:00000002                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000b0 RA:001000b0 RA:001000b4 f05=        9.423000  # fld     ft5, 0(a0)
      80000b64  x9:001001f0 RA:001001f0 RA:001001f4 f06=       40.833000  # fld     ft6, 0(s1)
      80000b68  f06:       40.833000 f05:        9.423000 f04:     3610.912446 f04=     3995.681805  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000002 x8=00000001                 # addi    s0, s0, -1
      80000b70  x9:001001f0 x13:00000038 x9=00100228    # add     s1, s1, a3
      80000b74  x10:001000b0 x10=001000b8               # addi    a0, a0, 8
      80000b78  x8:00000001                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000b8 RA:001000b8 RA:001000bc f05=       12.564000  # fld     ft5, 0(a0)
      80000b64  x9:00100228 RA:00100228 RA:0010022c f06=       62.820000  # fld     ft6, 0(s1)
      80000b68  f06:       62.820000 f05:       12.564000 f04:     3995.681805 f04=     4784.952285  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000001 x8=00000000                 # addi    s0, s0, -1
      80000b70  x9:00100228 x13:00000038 x9=00100260    # add     s1, s1, a3
      80000b74  x10:001000b8 x10=001000c0               # addi    a0, a0, 8
      80000b78  x8:00000000                             # bnez    s0, pc - 24
; matmul (matmul.c:12)
      80000b7c  x6:00000004 x17:00000015 x10=00000019   # add     a0, t1, a7
      80000b80  x10:00000019 x10=000000c8               # slli    a0, a0, 3
      80000b84  x24:00100240 x10:000000c8 x10=00100308  # add     a0, s8, a0
      80000b88  x10:00100308 f04:     4784.952285 WA:00100308 WA:0010030c  # fsd     ft4, 0(a0)
; matmul (matmul.c:7)
      80000b8c  x6:00000004 x6=00000005                 # addi    t1, t1, 1
      80000b90  x5:00100110 x5=00100118                 # addi    t0, t0, 8
      80000b94  x6:00000005 x15:00000007                # bne     t1, a5, pc - 68
; matmul (matmul.c:0)
      80000b50  x11:00100090 x10=00100090               # mv      a0, a1
      80000b54  x5:00100118 x9=00100118                 # mv      s1, t0
      80000b58  x14:00000006 x8=00000006                # mv      s0, a4
      80000b5c  f03:        0.000000 f03:        0.000000 f04=        0.000000  # fsgnj.d ft4, ft3, ft3
; matmul (matmul.c:10)
      80000b60  x10:00100090 RA:00100090 RA:00100094 f05=       59.679000  # fld     ft5, 0(a0)
      80000b64  x9:00100118 RA:00100118 RA:0010011c f06=       18.846000  # fld     ft6, 0(s1)
      80000b68  f06:       18.846000 f05:       59.679000 f04:        0.000000 f04=     1124.710434  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000006 x8=00000005                 # addi    s0, s0, -1
      80000b70  x9:00100118 x13:00000038 x9=00100150    # add     s1, s1, a3
      80000b74  x10:00100090 x10=00100098               # addi    a0, a0, 8
      80000b78  x8:00000005                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100098 RA:00100098 RA:0010009c f05=       62.820000  # fld     ft5, 0(a0)
      80000b64  x9:00100150 RA:00100150 RA:00100154 f06=       40.833000  # fld     ft6, 0(s1)
      80000b68  f06:       40.833000 f05:       62.820000 f04:     1124.710434 f04=     3689.839494  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000005 x8=00000004                 # addi    s0, s0, -1
      80000b70  x9:00100150 x13:00000038 x9=00100188    # add     s1, s1, a3
      80000b74  x10:00100098 x10=001000a0               # addi    a0, a0, 8
      80000b78  x8:00000004                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000a0 RA:001000a0 RA:001000a4 f05=        3.141000  # fld     ft5, 0(a0)
      80000b64  x9:00100188 RA:00100188 RA:0010018c f06=       62.820000  # fld     ft6, 0(s1)
      80000b68  f06:       62.820000 f05:        3.141000 f04:     3689.839494 f04=     3887.157114  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000004 x8=00000003                 # addi    s0, s0, -1
      80000b70  x9:00100188 x13:00000038 x9=001001c0    # add     s1, s1, a3
      80000b74  x10:001000a0 x10=001000a8               # addi    a0, a0, 8
      80000b78  x8:00000003                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000a8 RA:001000a8 RA:001000ac f05=        6.282000  # fld     ft5, 0(a0)
      80000b64  x9:001001c0 RA:001001c0 RA:001001c4 f06=       21.987000  # fld     ft6, 0(s1)
      80000b68  f06:       21.987000 f05:        6.282000 f04:     3887.157114 f04=     4025.279448  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000003 x8=00000002                 # addi    s0, s0, -1
      80000b70  x9:001001c0 x13:00000038 x9=001001f8    # add     s1, s1, a3
      80000b74  x10:001000a8 x10=001000b0               # addi    a0, a0, 8
      80000b78  x8:00000002                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000b0 RA:001000b0 RA:001000b4 f05=        9.423000  # fld     ft5, 0(a0)
      80000b64  x9:001001f8 RA:001001f8 RA:001001fc f06=       43.974000  # fld     ft6, 0(s1)
      80000b68  f06:       43.974000 f05:        9.423000 f04:     4025.279448 f04=     4439.646450  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000002 x8=00000001                 # addi    s0, s0, -1
      80000b70  x9:001001f8 x13:00000038 x9=00100230    # add     s1, s1, a3
      80000b74  x10:001000b0 x10=001000b8               # addi    a0, a0, 8
      80000b78  x8:00000001                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000b8 RA:001000b8 RA:001000bc f05=       12.564000  # fld     ft5, 0(a0)
      80000b64  x9:00100230 RA:00100230 RA:00100234 f06=        3.141000  # fld     ft6, 0(s1)
      80000b68  f06:        3.141000 f05:       12.564000 f04:     4439.646450 f04=     4479.109974  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000001 x8=00000000                 # addi    s0, s0, -1
      80000b70  x9:00100230 x13:00000038 x9=00100268    # add     s1, s1, a3
      80000b74  x10:001000b8 x10=001000c0               # addi    a0, a0, 8
      80000b78  x8:00000000                             # bnez    s0, pc - 24
; matmul (matmul.c:12)
      80000b7c  x6:00000005 x17:00000015 x10=0000001a   # add     a0, t1, a7
      80000b80  x10:0000001a x10=000000d0               # slli    a0, a0, 3
      80000b84  x24:00100240 x10:000000d0 x10=00100310  # add     a0, s8, a0
      80000b88  x10:00100310 f04:     4479.109974 WA:00100310 WA:00100314  # fsd     ft4, 0(a0)
; matmul (matmul.c:7)
      80000b8c  x6:00000005 x6=00000006                 # addi    t1, t1, 1
      80000b90  x5:00100118 x5=00100120                 # addi    t0, t0, 8
      80000b94  x6:00000006 x15:00000007                # bne     t1, a5, pc - 68
; matmul (matmul.c:0)
      80000b50  x11:00100090 x10=00100090               # mv      a0, a1
      80000b54  x5:00100120 x9=00100120                 # mv      s1, t0
      80000b58  x14:00000006 x8=00000006                # mv      s0, a4
      80000b5c  f03:        0.000000 f03:        0.000000 f04=        0.000000  # fsgnj.d ft4, ft3, ft3
; matmul (matmul.c:10)
      80000b60  x10:00100090 RA:00100090 RA:00100094 f05=       59.679000  # fld     ft5, 0(a0)
      80000b64  x9:00100120 RA:00100120 RA:00100124 f06=       21.987000  # fld     ft6, 0(s1)
      80000b68  f06:       21.987000 f05:       59.679000 f04:        0.000000 f04=     1312.162173  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000006 x8=00000005                 # addi    s0, s0, -1
      80000b70  x9:00100120 x13:00000038 x9=00100158    # add     s1, s1, a3
      80000b74  x10:00100090 x10=00100098               # addi    a0, a0, 8
      80000b78  x8:00000005                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:00100098 RA:00100098 RA:0010009c f05=       62.820000  # fld     ft5, 0(a0)
      80000b64  x9:00100158 RA:00100158 RA:0010015c f06=       43.974000  # fld     ft6, 0(s1)
      80000b68  f06:       43.974000 f05:       62.820000 f04:     1312.162173 f04=     4074.608853  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000005 x8=00000004                 # addi    s0, s0, -1
      80000b70  x9:00100158 x13:00000038 x9=00100190    # add     s1, s1, a3
      80000b74  x10:00100098 x10=001000a0               # addi    a0, a0, 8
      80000b78  x8:00000004                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000a0 RA:001000a0 RA:001000a4 f05=        3.141000  # fld     ft5, 0(a0)
      80000b64  x9:00100190 RA:00100190 RA:00100194 f06=        3.141000  # fld     ft6, 0(s1)
      80000b68  f06:        3.141000 f05:        3.141000 f04:     4074.608853 f04=     4084.474734  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000004 x8=00000003                 # addi    s0, s0, -1
      80000b70  x9:00100190 x13:00000038 x9=001001c8    # add     s1, s1, a3
      80000b74  x10:001000a0 x10=001000a8               # addi    a0, a0, 8
      80000b78  x8:00000003                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000a8 RA:001000a8 RA:001000ac f05=        6.282000  # fld     ft5, 0(a0)
      80000b64  x9:001001c8 RA:001001c8 RA:001001cc f06=       25.128000  # fld     ft6, 0(s1)
      80000b68  f06:       25.128000 f05:        6.282000 f04:     4084.474734 f04=     4242.328830  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000003 x8=00000002                 # addi    s0, s0, -1
      80000b70  x9:001001c8 x13:00000038 x9=00100200    # add     s1, s1, a3
      80000b74  x10:001000a8 x10=001000b0               # addi    a0, a0, 8
      80000b78  x8:00000002                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000b0 RA:001000b0 RA:001000b4 f05=        9.423000  # fld     ft5, 0(a0)
      80000b64  x9:00100200 RA:00100200 RA:00100204 f06=       47.115000  # fld     ft6, 0(s1)
      80000b68  f06:       47.115000 f05:        9.423000 f04:     4242.328830 f04=     4686.293475  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000002 x8=00000001                 # addi    s0, s0, -1
      80000b70  x9:00100200 x13:00000038 x9=00100238    # add     s1, s1, a3
      80000b74  x10:001000b0 x10=001000b8               # addi    a0, a0, 8
      80000b78  x8:00000001                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000b8 RA:001000b8 RA:001000bc f05=       12.564000  # fld     ft5, 0(a0)
      80000b64  x9:00100238 RA:00100238 RA:0010023c f06=        6.282000  # fld     ft6, 0(s1)
      80000b68  f06:        6.282000 f05:       12.564000 f04:     4686.293475 f04=     4765.220523  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000001 x8=00000000                 # addi    s0, s0, -1
      80000b70  x9:00100238 x13:00000038 x9=00100270    # add     s1, s1, a3
      80000b74  x10:001000b8 x10=001000c0               # addi    a0, a0, 8
      80000b78  x8:00000000                             # bnez    s0, pc - 24
; matmul (matmul.c:12)
      80000b7c  x6:00000006 x17:00000015 x10=0000001b   # add     a0, t1, a7
      80000b80  x10:0000001b x10=000000d8               # slli    a0, a0, 3
      80000b84  x24:00100240 x10:000000d8 x10=00100318  # add     a0, s8, a0
      80000b88  x10:00100318 f04:     4765.220523 WA:00100318 WA:0010031c  # fsd     ft4, 0(a0)
; matmul (matmul.c:7)
      80000b8c  x6:00000006 x6=00000007                 # addi    t1, t1, 1
      80000b90  x5:00100120 x5=00100128                 # addi    t0, t0, 8
      80000b94  x6:00000007 x15:00000007                # bne     t1, a5, pc - 68
; matmul (matmul.c:6)
      80000b98  x16:00000003 x16=00000004               # addi    a6, a6, 1
      80000b9c  x11:00100090 x21:00000030 x11=001000c0  # add     a1, a1, s5
      80000ba0  x16:00000004 x23:00000005               # bne     a6, s7, pc - 92
; matmul (matmul.c:0)
      80000b44  x6=00000000                             # li      t1, 0
      80000b48  x16:00000004 x15:00000007 x17=0000001c  # mul     a7, a6, a5
      80000b4c  x12:001000f0 x5=001000f0                # mv      t0, a2
      80000b50  x11:001000c0 x10=001000c0               # mv      a0, a1
      80000b54  x5:001000f0 x9=001000f0                 # mv      s1, t0
      80000b58  x14:00000006 x8=00000006                # mv      s0, a4
      80000b5c  f03:        0.000000 f03:        0.000000 f04=        0.000000  # fsgnj.d ft4, ft3, ft3
; matmul (matmul.c:10)
      80000b60  x10:001000c0 RA:001000c0 RA:001000c4 f05=       15.705000  # fld     ft5, 0(a0)
      80000b64  x9:001000f0 RA:001000f0 RA:001000f4 f06=        3.141000  # fld     ft6, 0(s1)
      80000b68  f06:        3.141000 f05:       15.705000 f04:        0.000000 f04=       49.329405  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000006 x8=00000005                 # addi    s0, s0, -1
      80000b70  x9:001000f0 x13:00000038 x9=00100128    # add     s1, s1, a3
      80000b74  x10:001000c0 x10=001000c8               # addi    a0, a0, 8
      80000b78  x8:00000005                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000c8 RA:001000c8 RA:001000cc f05=       18.846000  # fld     ft5, 0(a0)
      80000b64  x9:00100128 RA:00100128 RA:0010012c f06=       25.128000  # fld     ft6, 0(s1)
      80000b68  f06:       25.128000 f05:       18.846000 f04:       49.329405 f04=      522.891693  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000005 x8=00000004                 # addi    s0, s0, -1
      80000b70  x9:00100128 x13:00000038 x9=00100160    # add     s1, s1, a3
      80000b74  x10:001000c8 x10=001000d0               # addi    a0, a0, 8
      80000b78  x8:00000004                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000d0 RA:001000d0 RA:001000d4 f05=       21.987000  # fld     ft5, 0(a0)
      80000b64  x9:00100160 RA:00100160 RA:00100164 f06=       47.115000  # fld     ft6, 0(s1)
      80000b68  f06:       47.115000 f05:       21.987000 f04:      522.891693 f04=     1558.809198  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000004 x8=00000003                 # addi    s0, s0, -1
      80000b70  x9:00100160 x13:00000038 x9=00100198    # add     s1, s1, a3
      80000b74  x10:001000d0 x10=001000d8               # addi    a0, a0, 8
      80000b78  x8:00000003                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000d8 RA:001000d8 RA:001000dc f05=       25.128000  # fld     ft5, 0(a0)
      80000b64  x9:00100198 RA:00100198 RA:0010019c f06=        6.282000  # fld     ft6, 0(s1)
      80000b68  f06:        6.282000 f05:       25.128000 f04:     1558.809198 f04=     1716.663294  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000003 x8=00000002                 # addi    s0, s0, -1
      80000b70  x9:00100198 x13:00000038 x9=001001d0    # add     s1, s1, a3
      80000b74  x10:001000d8 x10=001000e0               # addi    a0, a0, 8
      80000b78  x8:00000002                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000e0 RA:001000e0 RA:001000e4 f05=       28.269000  # fld     ft5, 0(a0)
      80000b64  x9:001001d0 RA:001001d0 RA:001001d4 f06=       28.269000  # fld     ft6, 0(s1)
      80000b68  f06:       28.269000 f05:       28.269000 f04:     1716.663294 f04=     2515.799655  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000002 x8=00000001                 # addi    s0, s0, -1
      80000b70  x9:001001d0 x13:00000038 x9=00100208    # add     s1, s1, a3
      80000b74  x10:001000e0 x10=001000e8               # addi    a0, a0, 8
      80000b78  x8:00000001                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000e8 RA:001000e8 RA:001000ec f05=       31.410000  # fld     ft5, 0(a0)
      80000b64  x9:00100208 RA:00100208 RA:0010020c f06=       50.256000  # fld     ft6, 0(s1)
      80000b68  f06:       50.256000 f05:       31.410000 f04:     2515.799655 f04=     4094.340615  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000001 x8=00000000                 # addi    s0, s0, -1
      80000b70  x9:00100208 x13:00000038 x9=00100240    # add     s1, s1, a3
      80000b74  x10:001000e8 x10=001000f0               # addi    a0, a0, 8
      80000b78  x8:00000000                             # bnez    s0, pc - 24
; matmul (matmul.c:12)
      80000b7c  x6:00000000 x17:0000001c x10=0000001c   # add     a0, t1, a7
      80000b80  x10:0000001c x10=000000e0               # slli    a0, a0, 3
      80000b84  x24:00100240 x10:000000e0 x10=00100320  # add     a0, s8, a0
      80000b88  x10:00100320 f04:     4094.340615 WA:00100320 WA:00100324  # fsd     ft4, 0(a0)
; matmul (matmul.c:7)
      80000b8c  x6:00000000 x6=00000001                 # addi    t1, t1, 1
      80000b90  x5:001000f0 x5=001000f8                 # addi    t0, t0, 8
      80000b94  x6:00000001 x15:00000007                # bne     t1, a5, pc - 68
; matmul (matmul.c:0)
      80000b50  x11:001000c0 x10=001000c0               # mv      a0, a1
      80000b54  x5:001000f8 x9=001000f8                 # mv      s1, t0
      80000b58  x14:00000006 x8=00000006                # mv      s0, a4
      80000b5c  f03:        0.000000 f03:        0.000000 f04=        0.000000  # fsgnj.d ft4, ft3, ft3
; matmul (matmul.c:10)
      80000b60  x10:001000c0 RA:001000c0 RA:001000c4 f05=       15.705000  # fld     ft5, 0(a0)
      80000b64  x9:001000f8 RA:001000f8 RA:001000fc f06=        6.282000  # fld     ft6, 0(s1)
      80000b68  f06:        6.282000 f05:       15.705000 f04:        0.000000 f04=       98.658810  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000006 x8=00000005                 # addi    s0, s0, -1
      80000b70  x9:001000f8 x13:00000038 x9=00100130    # add     s1, s1, a3
      80000b74  x10:001000c0 x10=001000c8               # addi    a0, a0, 8
      80000b78  x8:00000005                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000c8 RA:001000c8 RA:001000cc f05=       18.846000  # fld     ft5, 0(a0)
      80000b64  x9:00100130 RA:00100130 RA:00100134 f06=       28.269000  # fld     ft6, 0(s1)
      80000b68  f06:       28.269000 f05:       18.846000 f04:       98.658810 f04=      631.416384  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000005 x8=00000004                 # addi    s0, s0, -1
      80000b70  x9:00100130 x13:00000038 x9=00100168    # add     s1, s1, a3
      80000b74  x10:001000c8 x10=001000d0               # addi    a0, a0, 8
      80000b78  x8:00000004                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000d0 RA:001000d0 RA:001000d4 f05=       21.987000  # fld     ft5, 0(a0)
      80000b64  x9:00100168 RA:00100168 RA:0010016c f06=       50.256000  # fld     ft6, 0(s1)
      80000b68  f06:       50.256000 f05:       21.987000 f04:      631.416384 f04=     1736.395056  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000004 x8=00000003                 # addi    s0, s0, -1
      80000b70  x9:00100168 x13:00000038 x9=001001a0    # add     s1, s1, a3
      80000b74  x10:001000d0 x10=001000d8               # addi    a0, a0, 8
      80000b78  x8:00000003                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000d8 RA:001000d8 RA:001000dc f05=       25.128000  # fld     ft5, 0(a0)
      80000b64  x9:001001a0 RA:001001a0 RA:001001a4 f06=        9.423000  # fld     ft6, 0(s1)
      80000b68  f06:        9.423000 f05:       25.128000 f04:     1736.395056 f04=     1973.176200  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000003 x8=00000002                 # addi    s0, s0, -1
      80000b70  x9:001001a0 x13:00000038 x9=001001d8    # add     s1, s1, a3
      80000b74  x10:001000d8 x10=001000e0               # addi    a0, a0, 8
      80000b78  x8:00000002                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000e0 RA:001000e0 RA:001000e4 f05=       28.269000  # fld     ft5, 0(a0)
      80000b64  x9:001001d8 RA:001001d8 RA:001001dc f06=       31.410000  # fld     ft6, 0(s1)
      80000b68  f06:       31.410000 f05:       28.269000 f04:     1973.176200 f04=     2861.105490  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000002 x8=00000001                 # addi    s0, s0, -1
      80000b70  x9:001001d8 x13:00000038 x9=00100210    # add     s1, s1, a3
      80000b74  x10:001000e0 x10=001000e8               # addi    a0, a0, 8
      80000b78  x8:00000001                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000e8 RA:001000e8 RA:001000ec f05=       31.410000  # fld     ft5, 0(a0)
      80000b64  x9:00100210 RA:00100210 RA:00100214 f06=       53.397000  # fld     ft6, 0(s1)
      80000b68  f06:       53.397000 f05:       31.410000 f04:     2861.105490 f04=     4538.305260  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000001 x8=00000000                 # addi    s0, s0, -1
      80000b70  x9:00100210 x13:00000038 x9=00100248    # add     s1, s1, a3
      80000b74  x10:001000e8 x10=001000f0               # addi    a0, a0, 8
      80000b78  x8:00000000                             # bnez    s0, pc - 24
; matmul (matmul.c:12)
      80000b7c  x6:00000001 x17:0000001c x10=0000001d   # add     a0, t1, a7
      80000b80  x10:0000001d x10=000000e8               # slli    a0, a0, 3
      80000b84  x24:00100240 x10:000000e8 x10=00100328  # add     a0, s8, a0
      80000b88  x10:00100328 f04:     4538.305260 WA:00100328 WA:0010032c  # fsd     ft4, 0(a0)
; matmul (matmul.c:7)
      80000b8c  x6:00000001 x6=00000002                 # addi    t1, t1, 1
      80000b90  x5:001000f8 x5=00100100                 # addi    t0, t0, 8
      80000b94  x6:00000002 x15:00000007                # bne     t1, a5, pc - 68
; matmul (matmul.c:0)
      80000b50  x11:001000c0 x10=001000c0               # mv      a0, a1
      80000b54  x5:00100100 x9=00100100                 # mv      s1, t0
      80000b58  x14:00000006 x8=00000006                # mv      s0, a4
      80000b5c  f03:        0.000000 f03:        0.000000 f04=        0.000000  # fsgnj.d ft4, ft3, ft3
; matmul (matmul.c:10)
      80000b60  x10:001000c0 RA:001000c0 RA:001000c4 f05=       15.705000  # fld     ft5, 0(a0)
      80000b64  x9:00100100 RA:00100100 RA:00100104 f06=        9.423000  # fld     ft6, 0(s1)
      80000b68  f06:        9.423000 f05:       15.705000 f04:        0.000000 f04=      147.988215  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000006 x8=00000005                 # addi    s0, s0, -1
      80000b70  x9:00100100 x13:00000038 x9=00100138    # add     s1, s1, a3
      80000b74  x10:001000c0 x10=001000c8               # addi    a0, a0, 8
      80000b78  x8:00000005                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000c8 RA:001000c8 RA:001000cc f05=       18.846000  # fld     ft5, 0(a0)
      80000b64  x9:00100138 RA:00100138 RA:0010013c f06=       31.410000  # fld     ft6, 0(s1)
      80000b68  f06:       31.410000 f05:       18.846000 f04:      147.988215 f04=      739.941075  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000005 x8=00000004                 # addi    s0, s0, -1
      80000b70  x9:00100138 x13:00000038 x9=00100170    # add     s1, s1, a3
      80000b74  x10:001000c8 x10=001000d0               # addi    a0, a0, 8
      80000b78  x8:00000004                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000d0 RA:001000d0 RA:001000d4 f05=       21.987000  # fld     ft5, 0(a0)
      80000b64  x9:00100170 RA:00100170 RA:00100174 f06=       53.397000  # fld     ft6, 0(s1)
      80000b68  f06:       53.397000 f05:       21.987000 f04:      739.941075 f04=     1913.980914  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000004 x8=00000003                 # addi    s0, s0, -1
      80000b70  x9:00100170 x13:00000038 x9=001001a8    # add     s1, s1, a3
      80000b74  x10:001000d0 x10=001000d8               # addi    a0, a0, 8
      80000b78  x8:00000003                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000d8 RA:001000d8 RA:001000dc f05=       25.128000  # fld     ft5, 0(a0)
      80000b64  x9:001001a8 RA:001001a8 RA:001001ac f06=       12.564000  # fld     ft6, 0(s1)
      80000b68  f06:       12.564000 f05:       25.128000 f04:     1913.980914 f04=     2229.689106  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000003 x8=00000002                 # addi    s0, s0, -1
      80000b70  x9:001001a8 x13:00000038 x9=001001e0    # add     s1, s1, a3
      80000b74  x10:001000d8 x10=001000e0               # addi    a0, a0, 8
      80000b78  x8:00000002                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000e0 RA:001000e0 RA:001000e4 f05=       28.269000  # fld     ft5, 0(a0)
      80000b64  x9:001001e0 RA:001001e0 RA:001001e4 f06=       34.551000  # fld     ft6, 0(s1)
      80000b68  f06:       34.551000 f05:       28.269000 f04:     2229.689106 f04=     3206.411325  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000002 x8=00000001                 # addi    s0, s0, -1
      80000b70  x9:001001e0 x13:00000038 x9=00100218    # add     s1, s1, a3
      80000b74  x10:001000e0 x10=001000e8               # addi    a0, a0, 8
      80000b78  x8:00000001                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000e8 RA:001000e8 RA:001000ec f05=       31.410000  # fld     ft5, 0(a0)
      80000b64  x9:00100218 RA:00100218 RA:0010021c f06=       56.538000  # fld     ft6, 0(s1)
      80000b68  f06:       56.538000 f05:       31.410000 f04:     3206.411325 f04=     4982.269905  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000001 x8=00000000                 # addi    s0, s0, -1
      80000b70  x9:00100218 x13:00000038 x9=00100250    # add     s1, s1, a3
      80000b74  x10:001000e8 x10=001000f0               # addi    a0, a0, 8
      80000b78  x8:00000000                             # bnez    s0, pc - 24
; matmul (matmul.c:12)
      80000b7c  x6:00000002 x17:0000001c x10=0000001e   # add     a0, t1, a7
      80000b80  x10:0000001e x10=000000f0               # slli    a0, a0, 3
      80000b84  x24:00100240 x10:000000f0 x10=00100330  # add     a0, s8, a0
      80000b88  x10:00100330 f04:     4982.269905 WA:00100330 WA:00100334  # fsd     ft4, 0(a0)
; matmul (matmul.c:7)
      80000b8c  x6:00000002 x6=00000003                 # addi    t1, t1, 1
      80000b90  x5:00100100 x5=00100108                 # addi    t0, t0, 8
      80000b94  x6:00000003 x15:00000007                # bne     t1, a5, pc - 68
; matmul (matmul.c:0)
      80000b50  x11:001000c0 x10=001000c0               # mv      a0, a1
      80000b54  x5:00100108 x9=00100108                 # mv      s1, t0
      80000b58  x14:00000006 x8=00000006                # mv      s0, a4
      80000b5c  f03:        0.000000 f03:        0.000000 f04=        0.000000  # fsgnj.d ft4, ft3, ft3
; matmul (matmul.c:10)
      80000b60  x10:001000c0 RA:001000c0 RA:001000c4 f05=       15.705000  # fld     ft5, 0(a0)
      80000b64  x9:00100108 RA:00100108 RA:0010010c f06=       12.564000  # fld     ft6, 0(s1)
      80000b68  f06:       12.564000 f05:       15.705000 f04:        0.000000 f04=      197.317620  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000006 x8=00000005                 # addi    s0, s0, -1
      80000b70  x9:00100108 x13:00000038 x9=00100140    # add     s1, s1, a3
      80000b74  x10:001000c0 x10=001000c8               # addi    a0, a0, 8
      80000b78  x8:00000005                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000c8 RA:001000c8 RA:001000cc f05=       18.846000  # fld     ft5, 0(a0)
      80000b64  x9:00100140 RA:00100140 RA:00100144 f06=       34.551000  # fld     ft6, 0(s1)
      80000b68  f06:       34.551000 f05:       18.846000 f04:      197.317620 f04=      848.465766  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000005 x8=00000004                 # addi    s0, s0, -1
      80000b70  x9:00100140 x13:00000038 x9=00100178    # add     s1, s1, a3
      80000b74  x10:001000c8 x10=001000d0               # addi    a0, a0, 8
      80000b78  x8:00000004                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000d0 RA:001000d0 RA:001000d4 f05=       21.987000  # fld     ft5, 0(a0)
      80000b64  x9:00100178 RA:00100178 RA:0010017c f06=       56.538000  # fld     ft6, 0(s1)
      80000b68  f06:       56.538000 f05:       21.987000 f04:      848.465766 f04=     2091.566772  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000004 x8=00000003                 # addi    s0, s0, -1
      80000b70  x9:00100178 x13:00000038 x9=001001b0    # add     s1, s1, a3
      80000b74  x10:001000d0 x10=001000d8               # addi    a0, a0, 8
      80000b78  x8:00000003                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000d8 RA:001000d8 RA:001000dc f05=       25.128000  # fld     ft5, 0(a0)
      80000b64  x9:001001b0 RA:001001b0 RA:001001b4 f06=       15.705000  # fld     ft6, 0(s1)
      80000b68  f06:       15.705000 f05:       25.128000 f04:     2091.566772 f04=     2486.202012  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000003 x8=00000002                 # addi    s0, s0, -1
      80000b70  x9:001001b0 x13:00000038 x9=001001e8    # add     s1, s1, a3
      80000b74  x10:001000d8 x10=001000e0               # addi    a0, a0, 8
      80000b78  x8:00000002                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000e0 RA:001000e0 RA:001000e4 f05=       28.269000  # fld     ft5, 0(a0)
      80000b64  x9:001001e8 RA:001001e8 RA:001001ec f06=       37.692000  # fld     ft6, 0(s1)
      80000b68  f06:       37.692000 f05:       28.269000 f04:     2486.202012 f04=     3551.717160  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000002 x8=00000001                 # addi    s0, s0, -1
      80000b70  x9:001001e8 x13:00000038 x9=00100220    # add     s1, s1, a3
      80000b74  x10:001000e0 x10=001000e8               # addi    a0, a0, 8
      80000b78  x8:00000001                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000e8 RA:001000e8 RA:001000ec f05=       31.410000  # fld     ft5, 0(a0)
      80000b64  x9:00100220 RA:00100220 RA:00100224 f06=       59.679000  # fld     ft6, 0(s1)
      80000b68  f06:       59.679000 f05:       31.410000 f04:     3551.717160 f04=     5426.234550  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000001 x8=00000000                 # addi    s0, s0, -1
      80000b70  x9:00100220 x13:00000038 x9=00100258    # add     s1, s1, a3
      80000b74  x10:001000e8 x10=001000f0               # addi    a0, a0, 8
      80000b78  x8:00000000                             # bnez    s0, pc - 24
; matmul (matmul.c:12)
      80000b7c  x6:00000003 x17:0000001c x10=0000001f   # add     a0, t1, a7
      80000b80  x10:0000001f x10=000000f8               # slli    a0, a0, 3
      80000b84  x24:00100240 x10:000000f8 x10=00100338  # add     a0, s8, a0
      80000b88  x10:00100338 f04:     5426.234550 WA:00100338 WA:0010033c  # fsd     ft4, 0(a0)
; matmul (matmul.c:7)
      80000b8c  x6:00000003 x6=00000004                 # addi    t1, t1, 1
      80000b90  x5:00100108 x5=00100110                 # addi    t0, t0, 8
      80000b94  x6:00000004 x15:00000007                # bne     t1, a5, pc - 68
; matmul (matmul.c:0)
      80000b50  x11:001000c0 x10=001000c0               # mv      a0, a1
      80000b54  x5:00100110 x9=00100110                 # mv      s1, t0
      80000b58  x14:00000006 x8=00000006                # mv      s0, a4
      80000b5c  f03:        0.000000 f03:        0.000000 f04=        0.000000  # fsgnj.d ft4, ft3, ft3
; matmul (matmul.c:10)
      80000b60  x10:001000c0 RA:001000c0 RA:001000c4 f05=       15.705000  # fld     ft5, 0(a0)
      80000b64  x9:00100110 RA:00100110 RA:00100114 f06=       15.705000  # fld     ft6, 0(s1)
      80000b68  f06:       15.705000 f05:       15.705000 f04:        0.000000 f04=      246.647025  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000006 x8=00000005                 # addi    s0, s0, -1
      80000b70  x9:00100110 x13:00000038 x9=00100148    # add     s1, s1, a3
      80000b74  x10:001000c0 x10=001000c8               # addi    a0, a0, 8
      80000b78  x8:00000005                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000c8 RA:001000c8 RA:001000cc f05=       18.846000  # fld     ft5, 0(a0)
      80000b64  x9:00100148 RA:00100148 RA:0010014c f06=       37.692000  # fld     ft6, 0(s1)
      80000b68  f06:       37.692000 f05:       18.846000 f04:      246.647025 f04=      956.990457  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000005 x8=00000004                 # addi    s0, s0, -1
      80000b70  x9:00100148 x13:00000038 x9=00100180    # add     s1, s1, a3
      80000b74  x10:001000c8 x10=001000d0               # addi    a0, a0, 8
      80000b78  x8:00000004                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000d0 RA:001000d0 RA:001000d4 f05=       21.987000  # fld     ft5, 0(a0)
      80000b64  x9:00100180 RA:00100180 RA:00100184 f06=       59.679000  # fld     ft6, 0(s1)
      80000b68  f06:       59.679000 f05:       21.987000 f04:      956.990457 f04=     2269.152630  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000004 x8=00000003                 # addi    s0, s0, -1
      80000b70  x9:00100180 x13:00000038 x9=001001b8    # add     s1, s1, a3
      80000b74  x10:001000d0 x10=001000d8               # addi    a0, a0, 8
      80000b78  x8:00000003                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000d8 RA:001000d8 RA:001000dc f05=       25.128000  # fld     ft5, 0(a0)
      80000b64  x9:001001b8 RA:001001b8 RA:001001bc f06=       18.846000  # fld     ft6, 0(s1)
      80000b68  f06:       18.846000 f05:       25.128000 f04:     2269.152630 f04=     2742.714918  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000003 x8=00000002                 # addi    s0, s0, -1
      80000b70  x9:001001b8 x13:00000038 x9=001001f0    # add     s1, s1, a3
      80000b74  x10:001000d8 x10=001000e0               # addi    a0, a0, 8
      80000b78  x8:00000002                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000e0 RA:001000e0 RA:001000e4 f05=       28.269000  # fld     ft5, 0(a0)
      80000b64  x9:001001f0 RA:001001f0 RA:001001f4 f06=       40.833000  # fld     ft6, 0(s1)
      80000b68  f06:       40.833000 f05:       28.269000 f04:     2742.714918 f04=     3897.022995  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000002 x8=00000001                 # addi    s0, s0, -1
      80000b70  x9:001001f0 x13:00000038 x9=00100228    # add     s1, s1, a3
      80000b74  x10:001000e0 x10=001000e8               # addi    a0, a0, 8
      80000b78  x8:00000001                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000e8 RA:001000e8 RA:001000ec f05=       31.410000  # fld     ft5, 0(a0)
      80000b64  x9:00100228 RA:00100228 RA:0010022c f06=       62.820000  # fld     ft6, 0(s1)
      80000b68  f06:       62.820000 f05:       31.410000 f04:     3897.022995 f04=     5870.199195  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000001 x8=00000000                 # addi    s0, s0, -1
      80000b70  x9:00100228 x13:00000038 x9=00100260    # add     s1, s1, a3
      80000b74  x10:001000e8 x10=001000f0               # addi    a0, a0, 8
      80000b78  x8:00000000                             # bnez    s0, pc - 24
; matmul (matmul.c:12)
      80000b7c  x6:00000004 x17:0000001c x10=00000020   # add     a0, t1, a7
      80000b80  x10:00000020 x10=00000100               # slli    a0, a0, 3
      80000b84  x24:00100240 x10:00000100 x10=00100340  # add     a0, s8, a0
      80000b88  x10:00100340 f04:     5870.199195 WA:00100340 WA:00100344  # fsd     ft4, 0(a0)
; matmul (matmul.c:7)
      80000b8c  x6:00000004 x6=00000005                 # addi    t1, t1, 1
      80000b90  x5:00100110 x5=00100118                 # addi    t0, t0, 8
      80000b94  x6:00000005 x15:00000007                # bne     t1, a5, pc - 68
; matmul (matmul.c:0)
      80000b50  x11:001000c0 x10=001000c0               # mv      a0, a1
      80000b54  x5:00100118 x9=00100118                 # mv      s1, t0
      80000b58  x14:00000006 x8=00000006                # mv      s0, a4
      80000b5c  f03:        0.000000 f03:        0.000000 f04=        0.000000  # fsgnj.d ft4, ft3, ft3
; matmul (matmul.c:10)
      80000b60  x10:001000c0 RA:001000c0 RA:001000c4 f05=       15.705000  # fld     ft5, 0(a0)
      80000b64  x9:00100118 RA:00100118 RA:0010011c f06=       18.846000  # fld     ft6, 0(s1)
      80000b68  f06:       18.846000 f05:       15.705000 f04:        0.000000 f04=      295.976430  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000006 x8=00000005                 # addi    s0, s0, -1
      80000b70  x9:00100118 x13:00000038 x9=00100150    # add     s1, s1, a3
      80000b74  x10:001000c0 x10=001000c8               # addi    a0, a0, 8
      80000b78  x8:00000005                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000c8 RA:001000c8 RA:001000cc f05=       18.846000  # fld     ft5, 0(a0)
      80000b64  x9:00100150 RA:00100150 RA:00100154 f06=       40.833000  # fld     ft6, 0(s1)
      80000b68  f06:       40.833000 f05:       18.846000 f04:      295.976430 f04=     1065.515148  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000005 x8=00000004                 # addi    s0, s0, -1
      80000b70  x9:00100150 x13:00000038 x9=00100188    # add     s1, s1, a3
      80000b74  x10:001000c8 x10=001000d0               # addi    a0, a0, 8
      80000b78  x8:00000004                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000d0 RA:001000d0 RA:001000d4 f05=       21.987000  # fld     ft5, 0(a0)
      80000b64  x9:00100188 RA:00100188 RA:0010018c f06=       62.820000  # fld     ft6, 0(s1)
      80000b68  f06:       62.820000 f05:       21.987000 f04:     1065.515148 f04=     2446.738488  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000004 x8=00000003                 # addi    s0, s0, -1
      80000b70  x9:00100188 x13:00000038 x9=001001c0    # add     s1, s1, a3
      80000b74  x10:001000d0 x10=001000d8               # addi    a0, a0, 8
      80000b78  x8:00000003                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000d8 RA:001000d8 RA:001000dc f05=       25.128000  # fld     ft5, 0(a0)
      80000b64  x9:001001c0 RA:001001c0 RA:001001c4 f06=       21.987000  # fld     ft6, 0(s1)
      80000b68  f06:       21.987000 f05:       25.128000 f04:     2446.738488 f04=     2999.227824  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000003 x8=00000002                 # addi    s0, s0, -1
      80000b70  x9:001001c0 x13:00000038 x9=001001f8    # add     s1, s1, a3
      80000b74  x10:001000d8 x10=001000e0               # addi    a0, a0, 8
      80000b78  x8:00000002                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000e0 RA:001000e0 RA:001000e4 f05=       28.269000  # fld     ft5, 0(a0)
      80000b64  x9:001001f8 RA:001001f8 RA:001001fc f06=       43.974000  # fld     ft6, 0(s1)
      80000b68  f06:       43.974000 f05:       28.269000 f04:     2999.227824 f04=     4242.328830  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000002 x8=00000001                 # addi    s0, s0, -1
      80000b70  x9:001001f8 x13:00000038 x9=00100230    # add     s1, s1, a3
      80000b74  x10:001000e0 x10=001000e8               # addi    a0, a0, 8
      80000b78  x8:00000001                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000e8 RA:001000e8 RA:001000ec f05=       31.410000  # fld     ft5, 0(a0)
      80000b64  x9:00100230 RA:00100230 RA:00100234 f06=        3.141000  # fld     ft6, 0(s1)
      80000b68  f06:        3.141000 f05:       31.410000 f04:     4242.328830 f04=     4340.987640  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000001 x8=00000000                 # addi    s0, s0, -1
      80000b70  x9:00100230 x13:00000038 x9=00100268    # add     s1, s1, a3
      80000b74  x10:001000e8 x10=001000f0               # addi    a0, a0, 8
      80000b78  x8:00000000                             # bnez    s0, pc - 24
; matmul (matmul.c:12)
      80000b7c  x6:00000005 x17:0000001c x10=00000021   # add     a0, t1, a7
      80000b80  x10:00000021 x10=00000108               # slli    a0, a0, 3
      80000b84  x24:00100240 x10:00000108 x10=00100348  # add     a0, s8, a0
      80000b88  x10:00100348 f04:     4340.987640 WA:00100348 WA:0010034c  # fsd     ft4, 0(a0)
; matmul (matmul.c:7)
      80000b8c  x6:00000005 x6=00000006                 # addi    t1, t1, 1
      80000b90  x5:00100118 x5=00100120                 # addi    t0, t0, 8
      80000b94  x6:00000006 x15:00000007                # bne     t1, a5, pc - 68
; matmul (matmul.c:0)
      80000b50  x11:001000c0 x10=001000c0               # mv      a0, a1
      80000b54  x5:00100120 x9=00100120                 # mv      s1, t0
      80000b58  x14:00000006 x8=00000006                # mv      s0, a4
      80000b5c  f03:        0.000000 f03:        0.000000 f04=        0.000000  # fsgnj.d ft4, ft3, ft3
; matmul (matmul.c:10)
      80000b60  x10:001000c0 RA:001000c0 RA:001000c4 f05=       15.705000  # fld     ft5, 0(a0)
      80000b64  x9:00100120 RA:00100120 RA:00100124 f06=       21.987000  # fld     ft6, 0(s1)
      80000b68  f06:       21.987000 f05:       15.705000 f04:        0.000000 f04=      345.305835  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000006 x8=00000005                 # addi    s0, s0, -1
      80000b70  x9:00100120 x13:00000038 x9=00100158    # add     s1, s1, a3
      80000b74  x10:001000c0 x10=001000c8               # addi    a0, a0, 8
      80000b78  x8:00000005                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000c8 RA:001000c8 RA:001000cc f05=       18.846000  # fld     ft5, 0(a0)
      80000b64  x9:00100158 RA:00100158 RA:0010015c f06=       43.974000  # fld     ft6, 0(s1)
      80000b68  f06:       43.974000 f05:       18.846000 f04:      345.305835 f04=     1174.039839  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000005 x8=00000004                 # addi    s0, s0, -1
      80000b70  x9:00100158 x13:00000038 x9=00100190    # add     s1, s1, a3
      80000b74  x10:001000c8 x10=001000d0               # addi    a0, a0, 8
      80000b78  x8:00000004                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000d0 RA:001000d0 RA:001000d4 f05=       21.987000  # fld     ft5, 0(a0)
      80000b64  x9:00100190 RA:00100190 RA:00100194 f06=        3.141000  # fld     ft6, 0(s1)
      80000b68  f06:        3.141000 f05:       21.987000 f04:     1174.039839 f04=     1243.101006  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000004 x8=00000003                 # addi    s0, s0, -1
      80000b70  x9:00100190 x13:00000038 x9=001001c8    # add     s1, s1, a3
      80000b74  x10:001000d0 x10=001000d8               # addi    a0, a0, 8
      80000b78  x8:00000003                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000d8 RA:001000d8 RA:001000dc f05=       25.128000  # fld     ft5, 0(a0)
      80000b64  x9:001001c8 RA:001001c8 RA:001001cc f06=       25.128000  # fld     ft6, 0(s1)
      80000b68  f06:       25.128000 f05:       25.128000 f04:     1243.101006 f04=     1874.517390  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000003 x8=00000002                 # addi    s0, s0, -1
      80000b70  x9:001001c8 x13:00000038 x9=00100200    # add     s1, s1, a3
      80000b74  x10:001000d8 x10=001000e0               # addi    a0, a0, 8
      80000b78  x8:00000002                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000e0 RA:001000e0 RA:001000e4 f05=       28.269000  # fld     ft5, 0(a0)
      80000b64  x9:00100200 RA:00100200 RA:00100204 f06=       47.115000  # fld     ft6, 0(s1)
      80000b68  f06:       47.115000 f05:       28.269000 f04:     1874.517390 f04=     3206.411325  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000002 x8=00000001                 # addi    s0, s0, -1
      80000b70  x9:00100200 x13:00000038 x9=00100238    # add     s1, s1, a3
      80000b74  x10:001000e0 x10=001000e8               # addi    a0, a0, 8
      80000b78  x8:00000001                             # bnez    s0, pc - 24
; matmul (matmul.c:10)
      80000b60  x10:001000e8 RA:001000e8 RA:001000ec f05=       31.410000  # fld     ft5, 0(a0)
      80000b64  x9:00100238 RA:00100238 RA:0010023c f06=        6.282000  # fld     ft6, 0(s1)
      80000b68  f06:        6.282000 f05:       31.410000 f04:     3206.411325 f04=     3403.728945  # fmadd.d ft4, ft6, ft5, ft4
; matmul (matmul.c:9)
      80000b6c  x8:00000001 x8=00000000                 # addi    s0, s0, -1
      80000b70  x9:00100238 x13:00000038 x9=00100270    # add     s1, s1, a3
      80000b74  x10:001000e8 x10=001000f0               # addi    a0, a0, 8
      80000b78  x8:00000000                             # bnez    s0, pc - 24
; matmul (matmul.c:12)
      80000b7c  x6:00000006 x17:0000001c x10=00000022   # add     a0, t1, a7
      80000b80  x10:00000022 x10=00000110               # slli    a0, a0, 3
      80000b84  x24:00100240 x10:00000110 x10=00100350  # add     a0, s8, a0
      80000b88  x10:00100350 f04:     3403.728945 WA:00100350 WA:00100354  # fsd     ft4, 0(a0)
; matmul (matmul.c:7)
      80000b8c  x6:00000006 x6=00000007                 # addi    t1, t1, 1
      80000b90  x5:00100120 x5=00100128                 # addi    t0, t0, 8
      80000b94  x6:00000007 x15:00000007                # bne     t1, a5, pc - 68
; matmul (matmul.c:6)
      80000b98  x16:00000004 x16=00000005               # addi    a6, a6, 1
      80000b9c  x11:001000c0 x21:00000030 x11=001000f0  # add     a1, a1, s5
      80000ba0  x16:00000005 x23:00000005               # bne     a6, s7, pc - 92
      80000ba4                                          # j       pc + 0x70
; matmul (matmul.c:15)
      80000c14  x2:0011ff00 RA:0011ff04 x25=00000000    # lw      s9, 4(sp)
      80000c18  x2:0011ff00 RA:0011ff08 x24=00000000    # lw      s8, 8(sp)
      80000c1c  x2:0011ff00 RA:0011ff0c x23=00000000    # lw      s7, 12(sp)
      80000c20  x2:0011ff00 RA:0011ff10 x22=00000000    # lw      s6, 16(sp)
      80000c24  x2:0011ff00 RA:0011ff14 x21=00000000    # lw      s5, 20(sp)
      80000c28  x2:0011ff00 RA:0011ff18 x20=00000000    # lw      s4, 24(sp)
      80000c2c  x2:0011ff00 RA:0011ff1c x19=001000f0    # lw      s3, 28(sp)
      80000c30  x2:0011ff00 RA:0011ff20 x18=00100000    # lw      s2, 32(sp)
      80000c34  x2:0011ff00 RA:0011ff24 x9=00000000     # lw      s1, 36(sp)
      80000c38  x2:0011ff00 RA:0011ff28 x8=00100240     # lw      s0, 40(sp)
      80000c3c  x2:0011ff00 RA:0011ff2c x1=80000824     # lw      ra, 44(sp)
      80000c40  x2:0011ff00 x2=0011ff30                 # addi    sp, sp, 48
      80000c44  x1:80000824                             # ret
; benchmark_get_cycle (benchmark.c:8)
;  in main (bench_matmul.c:33)
      80000824  x10=00000000                            # csrr    a0, mcycle
; main (bench_matmul.c:35)
      80000828  x10:00000000 x9:00000000 x11=00000000   # sub     a1, a0, s1
      8000082c  x10=8000282c                            # auipc   a0, 0x2
      80000830  x10:8000282c x10=80002d26               # addi    a0, a0, 1274
      80000834  x1=80000834                             # auipc   ra, 0x0
      80000838  x1:80000834 x1=8000083c                 # jalr    ra, ra, 1288
; printf_ (printf.c:863)
      80000d3c  x2:0011ff30 x2=0011ff00                 # addi    sp, sp, -48
      80000d40  x2:0011ff00 x1:8000083c WA:0011ff0c     # sw      ra, 12(sp)
      80000d44  x10:80002d26 x5=80002d26                # mv      t0, a0
      80000d48  x2:0011ff00 x17:0000001c WA:0011ff2c    # sw      a7, 44(sp)
      80000d4c  x2:0011ff00 x16:00000005 WA:0011ff28    # sw      a6, 40(sp)
      80000d50  x2:0011ff00 x15:00000007 WA:0011ff24    # sw      a5, 36(sp)
      80000d54  x2:0011ff00 x14:00000006 WA:0011ff20    # sw      a4, 32(sp)
      80000d58  x2:0011ff00 x13:00000038 WA:0011ff1c    # sw      a3, 28(sp)
      80000d5c  x2:0011ff00 x12:001000f0 WA:0011ff18    # sw      a2, 24(sp)
      80000d60  x2:0011ff00 x11:00000000 WA:0011ff14    # sw      a1, 20(sp)
      80000d64  x2:0011ff00 x10=0011ff14                # addi    a0, sp, 20
; printf_ (printf.c:865)
      80000d68  x2:0011ff00 x10:0011ff14 WA:0011ff08    # sw      a0, 8(sp)
; printf_ (printf.c:867)
      80000d6c  x10=80001d6c                            # auipc   a0, 0x1
      80000d70  x10:80001d6c x10=80001640               # addi    a0, a0, -1836
      80000d74  x2:0011ff00 x11=0011ff07                # addi    a1, sp, 7
      80000d78  x12=ffffffff                            # li      a2, -1
      80000d7c  x2:0011ff00 x14=0011ff14                # addi    a4, sp, 20
      80000d80  x5:80002d26 x13=80002d26                # mv      a3, t0
      80000d84  x1=80000d84                             # auipc   ra, 0x0
      80000d88  x1:80000d84 x1=80000d8c                 # jalr    ra, ra, 20
; _vsnprintf.llvm.2580535111316217995 (printf.c:578)
      80000d98  x2:0011ff00 x2=0011feb0                 # addi    sp, sp, -80
      80000d9c  x2:0011feb0 x1:80000d8c WA:0011fefc     # sw      ra, 76(sp)
      80000da0  x2:0011feb0 x8:00100240 WA:0011fef8     # sw      s0, 72(sp)
      80000da4  x2:0011feb0 x9:00000000 WA:0011fef4     # sw      s1, 68(sp)
      80000da8  x2:0011feb0 x18:00100000 WA:0011fef0    # sw      s2, 64(sp)
      80000dac  x2:0011feb0 x19:001000f0 WA:0011feec    # sw      s3, 60(sp)
      80000db0  x2:0011feb0 x20:00000000 WA:0011fee8    # sw      s4, 56(sp)
      80000db4  x2:0011feb0 x21:00000000 WA:0011fee4    # sw      s5, 52(sp)
      80000db8  x2:0011feb0 x22:00000000 WA:0011fee0    # sw      s6, 48(sp)
      80000dbc  x2:0011feb0 x23:00000000 WA:0011fedc    # sw      s7, 44(sp)
      80000dc0  x2:0011feb0 x24:00000000 WA:0011fed8    # sw      s8, 40(sp)
      80000dc4  x2:0011feb0 x25:00000000 WA:0011fed4    # sw      s9, 36(sp)
      80000dc8  x2:0011feb0 x26:00000000 WA:0011fed0    # sw      s10, 32(sp)
      80000dcc  x2:0011feb0 x27:00000000 WA:0011fecc    # sw      s11, 28(sp)
      80000dd0  x2:0011feb0 x14:0011ff14 WA:0011fec4    # sw      a4, 20(sp)
      80000dd4  x12:ffffffff x22=ffffffff               # mv      s6, a2
      80000dd8  x11:0011ff07 x20=0011ff07               # mv      s4, a1
      80000ddc  x2:0011feb0 x13:80002d26 WA:0011fec8    # sw      a3, 24(sp)
; _vsnprintf.llvm.2580535111316217995 (printf.c:582)
      80000de0  x11:0011ff07                            # beqz    a1, pc + 12
; _vsnprintf.llvm.2580535111316217995 (printf.c:0)
      80000de4  x10:80001640 x18=80001640               # mv      s2, a0
      80000de8                                          # j       pc + 0xc
      80000df4  x9=00000000                             # li      s1, 0
      80000df8  x26=00000025                            # li      s10, 37
      80000dfc  x27=00000010                            # li      s11, 16
      80000e00  x24=00000009                            # li      s8, 9
      80000e04  x21=0000002e                            # li      s5, 46
      80000e08  x19=0000002a                            # li      s3, 42
      80000e0c  x10=00001000                            # lui     a0, 0x1
      80000e10  x10:00001000 x10=00000800               # addi    a0, a0, -2048
      80000e14  x2:0011feb0 x10:00000800 WA:0011febc    # sw      a0, 12(sp)
      80000e18  x10=00010000                            # lui     a0, 0x10
      80000e1c  x10:00010000 x10=0000ffff               # addi    a0, a0, -1
      80000e20  x2:0011feb0 x10:0000ffff WA:0011feb8    # sw      a0, 8(sp)
; _vsnprintf.llvm.2580535111316217995 (printf.c:587)
      80000e24  x13:80002d26 x25=80002d27               # addi    s9, a3, 1
      80000e28  x25:80002d27 RA:80002d26 x10=00000063   # lbu     a0, -1(s9)
      80000e2c  x10:00000063                            # beqz    a0, pc + 1976
      80000e30  x10:00000063 x26:00000025               # beq     a0, s10, pc + 48
; _vsnprintf.llvm.2580535111316217995 (printf.c:592)
      80000e34  x9:00000000 x8=00000001                 # addi    s0, s1, 1
      80000e38  x20:0011ff07 x11=0011ff07               # mv      a1, s4
      80000e3c  x9:00000000 x12=00000000                # mv      a2, s1
      80000e40  x22:ffffffff x13=ffffffff               # mv      a3, s6
      80000e44  x18:80001640 x1=80000e48                # jalr    s2
; _out_char.llvm.2580535111316217995 (printf.c:152)
      80001640  x10:00000063                            # beqz    a0, pc + 12
; _out_char.llvm.2580535111316217995 (printf.c:0)
      80001644  x11=f00b8000                            # lui     a1, 0xf00b8
; snrt_putchar (putchar.c:10)
;  in _out_char.llvm.2580535111316217995 (printf.c:153)
      80001648  x11:f00b8000 x10:00000063 WA:f00b8000   # sw      a0, 0(a1)
; _out_char.llvm.2580535111316217995 (printf.c:155)
      8000164c  x1:80000e48                             # ret
; _vsnprintf.llvm.2580535111316217995 (printf.c:593)
      80000e48  x2:0011feb0 x25:80002d27 WA:0011fec8    # sw      s9, 24(sp)
; _vsnprintf.llvm.2580535111316217995 (printf.c:594)
      80000e4c  x25:80002d27 x25=80002d28               # addi    s9, s9, 1
; _vsnprintf.llvm.2580535111316217995 (printf.c:0)
      80000e50  x8:00000001 x9=00000001                 # mv      s1, s0
; _vsnprintf.llvm.2580535111316217995 (printf.c:587)
      80000e54  x25:80002d28 RA:80002d27 x10=00000079   # lbu     a0, -1(s9)
      80000e58  x10:00000079                            # bnez    a0, pc - 40
      80000e30  x10:00000079 x26:00000025               # beq     a0, s10, pc + 48
; _vsnprintf.llvm.2580535111316217995 (printf.c:592)
      80000e34  x9:00000001 x8=00000002                 # addi    s0, s1, 1
      80000e38  x20:0011ff07 x11=0011ff07               # mv      a1, s4
      80000e3c  x9:00000001 x12=00000001                # mv      a2, s1
      80000e40  x22:ffffffff x13=ffffffff               # mv      a3, s6
      80000e44  x18:80001640 x1=80000e48                # jalr    s2
; _out_char.llvm.2580535111316217995 (printf.c:152)
      80001640  x10:00000079                            # beqz    a0, pc + 12
; _out_char.llvm.2580535111316217995 (printf.c:0)
      80001644  x11=f00b8000                            # lui     a1, 0xf00b8
; snrt_putchar (putchar.c:10)
;  in _out_char.llvm.2580535111316217995 (printf.c:153)
      80001648  x11:f00b8000 x10:00000079 WA:f00b8000   # sw      a0, 0(a1)
; _out_char.llvm.2580535111316217995 (printf.c:155)
      8000164c  x1:80000e48                             # ret
; _vsnprintf.llvm.2580535111316217995 (printf.c:593)
      80000e48  x2:0011feb0 x25:80002d28 WA:0011fec8    # sw      s9, 24(sp)
; _vsnprintf.llvm.2580535111316217995 (printf.c:594)
      80000e4c  x25:80002d28 x25=80002d29               # addi    s9, s9, 1
; _vsnprintf.llvm.2580535111316217995 (printf.c:0)
      80000e50  x8:00000002 x9=00000002                 # mv      s1, s0
; _vsnprintf.llvm.2580535111316217995 (printf.c:587)
      80000e54  x25:80002d29 RA:80002d28 x10=00000063   # lbu     a0, -1(s9)
      80000e58  x10:00000063                            # bnez    a0, pc - 40
      80000e30  x10:00000063 x26:00000025               # beq     a0, s10, pc + 48
; _vsnprintf.llvm.2580535111316217995 (printf.c:592)
      80000e34  x9:00000002 x8=00000003                 # addi    s0, s1, 1
      80000e38  x20:0011ff07 x11=0011ff07               # mv      a1, s4
      80000e3c  x9:00000002 x12=00000002                # mv      a2, s1
      80000e40  x22:ffffffff x13=ffffffff               # mv      a3, s6
      80000e44  x18:80001640 x1=80000e48                # jalr    s2
; _out_char.llvm.2580535111316217995 (printf.c:152)
      80001640  x10:00000063                            # beqz    a0, pc + 12
; _out_char.llvm.2580535111316217995 (printf.c:0)
      80001644  x11=f00b8000                            # lui     a1, 0xf00b8
; snrt_putchar (putchar.c:10)
;  in _out_char.llvm.2580535111316217995 (printf.c:153)
      80001648  x11:f00b8000 x10:00000063 WA:f00b8000   # sw      a0, 0(a1)
; _out_char.llvm.2580535111316217995 (printf.c:155)
      8000164c  x1:80000e48                             # ret
; _vsnprintf.llvm.2580535111316217995 (printf.c:593)
      80000e48  x2:0011feb0 x25:80002d29 WA:0011fec8    # sw      s9, 24(sp)
; _vsnprintf.llvm.2580535111316217995 (printf.c:594)
      80000e4c  x25:80002d29 x25=80002d2a               # addi    s9, s9, 1
; _vsnprintf.llvm.2580535111316217995 (printf.c:0)
      80000e50  x8:00000003 x9=00000003                 # mv      s1, s0
; _vsnprintf.llvm.2580535111316217995 (printf.c:587)
      80000e54  x25:80002d2a RA:80002d29 x10=0000006c   # lbu     a0, -1(s9)
      80000e58  x10:0000006c                            # bnez    a0, pc - 40
      80000e30  x10:0000006c x26:00000025               # beq     a0, s10, pc + 48
; _vsnprintf.llvm.2580535111316217995 (printf.c:592)
      80000e34  x9:00000003 x8=00000004                 # addi    s0, s1, 1
      80000e38  x20:0011ff07 x11=0011ff07               # mv      a1, s4
      80000e3c  x9:00000003 x12=00000003                # mv      a2, s1
      80000e40  x22:ffffffff x13=ffffffff               # mv      a3, s6
      80000e44  x18:80001640 x1=80000e48                # jalr    s2
; _out_char.llvm.2580535111316217995 (printf.c:152)
      80001640  x10:0000006c                            # beqz    a0, pc + 12
; _out_char.llvm.2580535111316217995 (printf.c:0)
      80001644  x11=f00b8000                            # lui     a1, 0xf00b8
; snrt_putchar (putchar.c:10)
;  in _out_char.llvm.2580535111316217995 (printf.c:153)
      80001648  x11:f00b8000 x10:0000006c WA:f00b8000   # sw      a0, 0(a1)
; _out_char.llvm.2580535111316217995 (printf.c:155)
      8000164c  x1:80000e48                             # ret
; _vsnprintf.llvm.2580535111316217995 (printf.c:593)
      80000e48  x2:0011feb0 x25:80002d2a WA:0011fec8    # sw      s9, 24(sp)
; _vsnprintf.llvm.2580535111316217995 (printf.c:594)
      80000e4c  x25:80002d2a x25=80002d2b               # addi    s9, s9, 1
; _vsnprintf.llvm.2580535111316217995 (printf.c:0)
      80000e50  x8:00000004 x9=00000004                 # mv      s1, s0
; _vsnprintf.llvm.2580535111316217995 (printf.c:587)
      80000e54  x25:80002d2b RA:80002d2a x10=00000065   # lbu     a0, -1(s9)
      80000e58  x10:00000065                            # bnez    a0, pc - 40
      80000e30  x10:00000065 x26:00000025               # beq     a0, s10, pc + 48
; _vsnprintf.llvm.2580535111316217995 (printf.c:592)
      80000e34  x9:00000004 x8=00000005                 # addi    s0, s1, 1
      80000e38  x20:0011ff07 x11=0011ff07               # mv      a1, s4
      80000e3c  x9:00000004 x12=00000004                # mv      a2, s1
      80000e40  x22:ffffffff x13=ffffffff               # mv      a3, s6
      80000e44  x18:80001640 x1=80000e48                # jalr    s2
; _out_char.llvm.2580535111316217995 (printf.c:152)
      80001640  x10:00000065                            # beqz    a0, pc + 12
; _out_char.llvm.2580535111316217995 (printf.c:0)
      80001644  x11=f00b8000                            # lui     a1, 0xf00b8
; snrt_putchar (putchar.c:10)
;  in _out_char.llvm.2580535111316217995 (printf.c:153)
      80001648  x11:f00b8000 x10:00000065 WA:f00b8000   # sw      a0, 0(a1)
; _out_char.llvm.2580535111316217995 (printf.c:155)
      8000164c  x1:80000e48                             # ret
; _vsnprintf.llvm.2580535111316217995 (printf.c:593)
      80000e48  x2:0011feb0 x25:80002d2b WA:0011fec8    # sw      s9, 24(sp)
; _vsnprintf.llvm.2580535111316217995 (printf.c:594)
      80000e4c  x25:80002d2b x25=80002d2c               # addi    s9, s9, 1
; _vsnprintf.llvm.2580535111316217995 (printf.c:0)
      80000e50  x8:00000005 x9=00000005                 # mv      s1, s0
; _vsnprintf.llvm.2580535111316217995 (printf.c:587)
      80000e54  x25:80002d2c RA:80002d2b x10=00000073   # lbu     a0, -1(s9)
      80000e58  x10:00000073                            # bnez    a0, pc - 40
      80000e30  x10:00000073 x26:00000025               # beq     a0, s10, pc + 48
; _vsnprintf.llvm.2580535111316217995 (printf.c:592)
      80000e34  x9:00000005 x8=00000006                 # addi    s0, s1, 1
      80000e38  x20:0011ff07 x11=0011ff07               # mv      a1, s4
      80000e3c  x9:00000005 x12=00000005                # mv      a2, s1
      80000e40  x22:ffffffff x13=ffffffff               # mv      a3, s6
      80000e44  x18:80001640 x1=80000e48                # jalr    s2
; _out_char.llvm.2580535111316217995 (printf.c:152)
      80001640  x10:00000073                            # beqz    a0, pc + 12
; _out_char.llvm.2580535111316217995 (printf.c:0)
      80001644  x11=f00b8000                            # lui     a1, 0xf00b8
; snrt_putchar (putchar.c:10)
;  in _out_char.llvm.2580535111316217995 (printf.c:153)
      80001648  x11:f00b8000 x10:00000073 WA:f00b8000   # sw      a0, 0(a1)
; _out_char.llvm.2580535111316217995 (printf.c:155)
      8000164c  x1:80000e48                             # ret
; _vsnprintf.llvm.2580535111316217995 (printf.c:593)
      80000e48  x2:0011feb0 x25:80002d2c WA:0011fec8    # sw      s9, 24(sp)
; _vsnprintf.llvm.2580535111316217995 (printf.c:594)
      80000e4c  x25:80002d2c x25=80002d2d               # addi    s9, s9, 1
; _vsnprintf.llvm.2580535111316217995 (printf.c:0)
      80000e50  x8:00000006 x9=00000006                 # mv      s1, s0
; _vsnprintf.llvm.2580535111316217995 (printf.c:587)
      80000e54  x25:80002d2d RA:80002d2c x10=00000020   # lbu     a0, -1(s9)
      80000e58  x10:00000020                            # bnez    a0, pc - 40
      80000e30  x10:00000020 x26:00000025               # beq     a0, s10, pc + 48
; _vsnprintf.llvm.2580535111316217995 (printf.c:592)
      80000e34  x9:00000006 x8=00000007                 # addi    s0, s1, 1
      80000e38  x20:0011ff07 x11=0011ff07               # mv      a1, s4
      80000e3c  x9:00000006 x12=00000006                # mv      a2, s1
      80000e40  x22:ffffffff x13=ffffffff               # mv      a3, s6
      80000e44  x18:80001640 x1=80000e48                # jalr    s2
; _out_char.llvm.2580535111316217995 (printf.c:152)
      80001640  x10:00000020                            # beqz    a0, pc + 12
; _out_char.llvm.2580535111316217995 (printf.c:0)
      80001644  x11=f00b8000                            # lui     a1, 0xf00b8
; snrt_putchar (putchar.c:10)
;  in _out_char.llvm.2580535111316217995 (printf.c:153)
      80001648  x11:f00b8000 x10:00000020 WA:f00b8000   # sw      a0, 0(a1)
; _out_char.llvm.2580535111316217995 (printf.c:155)
      8000164c  x1:80000e48                             # ret
; _vsnprintf.llvm.2580535111316217995 (printf.c:593)
      80000e48  x2:0011feb0 x25:80002d2d WA:0011fec8    # sw      s9, 24(sp)
; _vsnprintf.llvm.2580535111316217995 (printf.c:594)
      80000e4c  x25:80002d2d x25=80002d2e               # addi    s9, s9, 1
; _vsnprintf.llvm.2580535111316217995 (printf.c:0)
      80000e50  x8:00000007 x9=00000007                 # mv      s1, s0
; _vsnprintf.llvm.2580535111316217995 (printf.c:587)
      80000e54  x25:80002d2e RA:80002d2d x10=0000003d   # lbu     a0, -1(s9)
      80000e58  x10:0000003d                            # bnez    a0, pc - 40
      80000e30  x10:0000003d x26:00000025               # beq     a0, s10, pc + 48
; _vsnprintf.llvm.2580535111316217995 (printf.c:592)
      80000e34  x9:00000007 x8=00000008                 # addi    s0, s1, 1
      80000e38  x20:0011ff07 x11=0011ff07               # mv      a1, s4
      80000e3c  x9:00000007 x12=00000007                # mv      a2, s1
      80000e40  x22:ffffffff x13=ffffffff               # mv      a3, s6
      80000e44  x18:80001640 x1=80000e48                # jalr    s2
; _out_char.llvm.2580535111316217995 (printf.c:152)
      80001640  x10:0000003d                            # beqz    a0, pc + 12
; _out_char.llvm.2580535111316217995 (printf.c:0)
      80001644  x11=f00b8000                            # lui     a1, 0xf00b8
; snrt_putchar (putchar.c:10)
;  in _out_char.llvm.2580535111316217995 (printf.c:153)
      80001648  x11:f00b8000 x10:0000003d WA:f00b8000   # sw      a0, 0(a1)
; _out_char.llvm.2580535111316217995 (printf.c:155)
      8000164c  x1:80000e48                             # ret
; _vsnprintf.llvm.2580535111316217995 (printf.c:593)
      80000e48  x2:0011feb0 x25:80002d2e WA:0011fec8    # sw      s9, 24(sp)
; _vsnprintf.llvm.2580535111316217995 (printf.c:594)
      80000e4c  x25:80002d2e x25=80002d2f               # addi    s9, s9, 1
; _vsnprintf.llvm.2580535111316217995 (printf.c:0)
      80000e50  x8:00000008 x9=00000008                 # mv      s1, s0
; _vsnprintf.llvm.2580535111316217995 (printf.c:587)
      80000e54  x25:80002d2f RA:80002d2e x10=00000020   # lbu     a0, -1(s9)
      80000e58  x10:00000020                            # bnez    a0, pc - 40
      80000e30  x10:00000020 x26:00000025               # beq     a0, s10, pc + 48
; _vsnprintf.llvm.2580535111316217995 (printf.c:592)
      80000e34  x9:00000008 x8=00000009                 # addi    s0, s1, 1
      80000e38  x20:0011ff07 x11=0011ff07               # mv      a1, s4
      80000e3c  x9:00000008 x12=00000008                # mv      a2, s1
      80000e40  x22:ffffffff x13=ffffffff               # mv      a3, s6
      80000e44  x18:80001640 x1=80000e48                # jalr    s2
; _out_char.llvm.2580535111316217995 (printf.c:152)
      80001640  x10:00000020                            # beqz    a0, pc + 12
; _out_char.llvm.2580535111316217995 (printf.c:0)
      80001644  x11=f00b8000                            # lui     a1, 0xf00b8
; snrt_putchar (putchar.c:10)
;  in _out_char.llvm.2580535111316217995 (printf.c:153)
      80001648  x11:f00b8000 x10:00000020 WA:f00b8000   # sw      a0, 0(a1)
; _out_char.llvm.2580535111316217995 (printf.c:155)
      8000164c  x1:80000e48                             # ret
; _vsnprintf.llvm.2580535111316217995 (printf.c:593)
      80000e48  x2:0011feb0 x25:80002d2f WA:0011fec8    # sw      s9, 24(sp)
; _vsnprintf.llvm.2580535111316217995 (printf.c:594)
      80000e4c  x25:80002d2f x25=80002d30               # addi    s9, s9, 1
; _vsnprintf.llvm.2580535111316217995 (printf.c:0)
      80000e50  x8:00000009 x9=00000009                 # mv      s1, s0
; _vsnprintf.llvm.2580535111316217995 (printf.c:587)
      80000e54  x25:80002d30 RA:80002d2f x10=00000025   # lbu     a0, -1(s9)
      80000e58  x10:00000025                            # bnez    a0, pc - 40
      80000e30  x10:00000025 x26:00000025               # beq     a0, s10, pc + 48
; _vsnprintf.llvm.2580535111316217995 (printf.c:602)
      80000e60  x8=00000000                             # li      s0, 0
      80000e64                                          # j       pc + 0xc
; _vsnprintf.llvm.2580535111316217995 (printf.c:0)
      80000e70  x2:0011feb0 x25:80002d30 WA:0011fec8    # sw      s9, 24(sp)
; _vsnprintf.llvm.2580535111316217995 (printf.c:604)
      80000e74  x25:80002d30 RA:80002d30 x10=0000006c   # lbu     a0, 0(s9)
      80000e78  x10:0000006c x11=0000004c               # addi    a1, a0, -32
      80000e7c  x27:00000010 x11:0000004c               # bltu    s11, a1, pc + 76
; _is_digit (printf.c:183)
;  in _vsnprintf.llvm.2580535111316217995 (printf.c:616)
      80000ec8  x10:0000006c x11=0000003c               # addi    a1, a0, -48
      80000ecc  x11:0000003c x11=0000003c               # andi    a1, a1, 255
; _vsnprintf.llvm.2580535111316217995 (printf.c:616)
      80000ed0  x24:00000009 x11:0000003c               # bltu    s8, a1, pc + 96
; _vsnprintf.llvm.2580535111316217995 (printf.c:0)
      80000f30  x2:0011feb0 RA:0011fec4 x13=0011ff14    # lw      a3, 20(sp)
; _vsnprintf.llvm.2580535111316217995 (printf.c:619)
      80000f34  x10:0000006c x19:0000002a               # bne     a0, s3, pc + 88
; _vsnprintf.llvm.2580535111316217995 (printf.c:0)
      80000f8c  x2:0011feb0 WA:0011fec0                 # sw      zero, 16(sp)
; _vsnprintf.llvm.2580535111316217995 (printf.c:633)
      80000f90  x25:80002d30 RA:80002d30 x10=0000006c   # lbu     a0, 0(s9)
      80000f94  x10:0000006c x21:0000002e               # beq     a0, s5, pc - 160
; _vsnprintf.llvm.2580535111316217995 (printf.c:0)
      80000f98  x23=00000000                            # li      s7, 0
      80000f9c                                          # j       pc + 0xc
; _vsnprintf.llvm.2580535111316217995 (printf.c:647)
      80000fa8  x25:80002d30 RA:80002d30 x10=0000006c   # lbu     a0, 0(s9)
      80000fac  x10:0000006c x11=00000004               # addi    a1, a0, -104
      80000fb0  x11:00000004 x12=00000002               # srli    a2, a1, 1
      80000fb4  x11:00000004 x11=00000000               # slli    a1, a1, 31
      80000fb8  x11:00000000 x12:00000002 x11=00000002  # or      a1, a1, a2
      80000fbc  x24:00000009 x11:00000002               # bltu    s8, a1, pc + 84
; _vsnprintf.llvm.2580535111316217995 (printf.c:0)
      80000fc0  x11:00000002 x11=00000008               # slli    a1, a1, 2
      80000fc4  x12=80002fc4                            # auipc   a2, 0x2
      80000fc8  x12:80002fc4 x12=80002d7c               # addi    a2, a2, -584
      80000fcc  x11:00000008 x12:80002d7c x11=80002d84  # add     a1, a1, a2
      80000fd0  x11:80002d84 RA:80002d84 x11=80001068   # lw      a1, 0(a1)
      80000fd4  x11:80001068                            # jr      a1
; _vsnprintf.llvm.2580535111316217995 (printf.c:650)
      80001068  x25:80002d30 x11=80002d31               # addi    a1, s9, 1
      8000106c  x2:0011feb0 x11:80002d31 WA:0011fec8    # sw      a1, 24(sp)
; _vsnprintf.llvm.2580535111316217995 (printf.c:651)
      80001070  x25:80002d30 RA:80002d31 x10=00000075   # lbu     a0, 1(s9)
      80001074  x12=0000006c                            # li      a2, 108
      80001078  x10:00000075 x12:0000006c               # bne     a0, a2, pc + 184
; _vsnprintf.llvm.2580535111316217995 (printf.c:0)
      80001130  x8:00000000 x8=00000100                 # ori     s0, s0, 256
; _vsnprintf.llvm.2580535111316217995 (printf.c:683)
      80001134  x11:80002d31 x25=80002d31               # mv      s9, a1
; _vsnprintf.llvm.2580535111316217995 (printf.c:0)
      80001138                                          # j       pc - 0x128
; _vsnprintf.llvm.2580535111316217995 (printf.c:683)
      80001010  x10:00000075 x11=00000050               # addi    a1, a0, -37
      80001014  x12=00000053                            # li      a2, 83
      80001018  x12:00000053 x11:00000050               # bltu    a2, a1, pc + 308
; _vsnprintf.llvm.2580535111316217995 (printf.c:0)
      8000101c  x11:00000050 x11=00000140               # slli    a1, a1, 2
      80001020  x12=80003020                            # auipc   a2, 0x2
      80001024  x12:80003020 x12=80002da4               # addi    a2, a2, -636
      80001028  x11:00000140 x12:80002da4 x11=80002ee4  # add     a1, a1, a2
      8000102c  x11:80002ee4 RA:80002ee4 x12=8000103c   # lw      a2, 0(a1)
      80001030  x11=00000008                            # li      a1, 8
      80001034  x17=00000010                            # li      a7, 16
      80001038  x12:8000103c                            # jr      a2
; _vsnprintf.llvm.2580535111316217995 (printf.c:704)
      8000103c  x8:00000100 x8=00000100                 # andi    s0, s0, -17
; _vsnprintf.llvm.2580535111316217995 (printf.c:0)
      80001040  x17=0000000a                            # li      a7, 10
; _vsnprintf.llvm.2580535111316217995 (printf.c:707)
      80001044  x11=00000058                            # li      a1, 88
      80001048  x10:00000075 x11:00000058               # bne     a0, a1, pc + 8
; _vsnprintf.llvm.2580535111316217995 (printf.c:712)
      80001050  x11=00000064                            # li      a1, 100
      80001054  x10:00000075 x11:00000064               # beq     a0, a1, pc + 300
; _vsnprintf.llvm.2580535111316217995 (printf.c:0)
      80001058  x17:0000000a x11=0000000a               # mv      a1, a7
; _vsnprintf.llvm.2580535111316217995 (printf.c:712)
      8000105c  x12=00000069                            # li      a2, 105
      80001060  x10:00000075 x12:00000069               # beq     a0, a2, pc + 288
      80001064                                          # j       pc + 0x114
; _vsnprintf.llvm.2580535111316217995 (printf.c:713)
      80001178  x8:00000100 x8=00000100                 # andi    s0, s0, -13
; _vsnprintf.llvm.2580535111316217995 (printf.c:0)
      8000117c  x11:0000000a x17=0000000a               # mv      a7, a1
; _vsnprintf.llvm.2580535111316217995 (printf.c:717)
      80001180  x8:00000100 x11=00000000                # andi    a1, s0, 1024
      80001184  x11:00000000                            # beqz    a1, pc + 8
; _vsnprintf.llvm.2580535111316217995 (printf.c:722)
      8000118c  x11=00000069                            # li      a1, 105
      80001190  x10:00000075 x11:00000069               # beq     a0, a1, pc + 12
      80001194  x11=00000064                            # li      a1, 100
      80001198  x10:00000075 x11:00000064               # bne     a0, a1, pc + 84
; _vsnprintf.llvm.2580535111316217995 (printf.c:741)
      800011ec  x8:00000100 x10=00000000                # andi    a0, s0, 512
      800011f0  x10:00000000                            # bnez    a0, pc + 136
; _vsnprintf.llvm.2580535111316217995 (printf.c:746)
      800011f4  x8:00000100 x10=00000100                # andi    a0, s0, 256
      800011f8  x10:00000100                            # bnez    a0, pc + 600
; _vsnprintf.llvm.2580535111316217995 (printf.c:747)
      80001450  x13:0011ff14 RA:0011ff14 x14=00000000   # lw      a4, 0(a3)
      80001454  x13:0011ff14 x19=0011ff18               # addi    s3, a3, 4
      80001458  x18:80001640 x10=80001640               # mv      a0, s2
      8000145c  x20:0011ff07 x11=0011ff07               # mv      a1, s4
      80001460  x9:00000009 x12=00000009                # mv      a2, s1
      80001464  x22:ffffffff x13=ffffffff               # mv      a3, s6
      80001468  x15=00000000                            # li      a5, 0
; _vsnprintf.llvm.2580535111316217995 (printf.c:0)
      8000146c  x17:0000000a x16=0000000a               # mv      a6, a7
      80001470  x23:00000000 x17=00000000               # mv      a7, s7
      80001474  x2:0011feb0 RA:0011fec0 x7=00000000     # lw      t2, 16(sp)
      80001478  x8:00000100 x28=00000100                # mv      t3, s0
      8000147c  x1=8000147c                             # auipc   ra, 0x0
      80001480  x1:8000147c x1=80001484                 # jalr    ra, ra, 948
; _ntoa_long (printf.c:282)
      80001830  x2:0011feb0 x2=0011fe70                 # addi    sp, sp, -64
      80001834  x2:0011fe70 x1:80001484 WA:0011feac     # sw      ra, 60(sp)
      80001838  x2:0011fe70 x8:00000100 WA:0011fea8     # sw      s0, 56(sp)
      8000183c  x2:0011fe70 x9:00000009 WA:0011fea4     # sw      s1, 52(sp)
      80001840  x2:0011fe70 x18:80001640 WA:0011fea0    # sw      s2, 48(sp)
      80001844  x2:0011fe70 x19:0011ff18 WA:0011fe9c    # sw      s3, 44(sp)
      80001848  x28:00000100 x29=00000100               # mv      t4, t3
      8000184c  x7:00000000 x28=00000000                # mv      t3, t2
      80001850  x17:00000000 x7=00000000                # mv      t2, a7
      80001854  x16:0000000a x17=0000000a               # mv      a7, a6
      80001858  x15:00000000 x16=00000000               # mv      a6, a5
; _ntoa_long (printf.c:287)
      8000185c  x14:00000000 x15=00000001               # seqz    a5, a4
      80001860  x14:00000000                            # bnez    a4, pc + 8
; _ntoa_long (printf.c:0)
      80001864  x29:00000100 x29=00000100               # andi    t4, t4, -17
; _ntoa_long (printf.c:292)
      80001868  x29:00000100 x9=00000000                # andi    s1, t4, 1024
      8000186c  x9:00000000 x9=00000000                 # srli    s1, s1, 10
      80001870  x15:00000001 x9:00000000 x9=00000000    # and     s1, a5, s1
; _ntoa_long (printf.c:0)
      80001874  x15=00000000                            # li      a5, 0
; _ntoa_long (printf.c:292)
      80001878  x9:00000000                             # bnez    s1, pc + 108
; _ntoa_long (printf.c:0)
      8000187c  x30=00000000                            # li      t5, 0
      80001880  x29:00000100 x15=00000000               # andi    a5, t4, 32
      80001884  x15:00000000 x15=00000061               # xori    a5, a5, 97
      80001888  x15:00000061 x5=00000157                # addi    t0, a5, 246
      8000188c  x6=0000000a                             # li      t1, 10
      80001890  x2:0011fe70 x31=0011fe7c                # addi    t6, sp, 12
      80001894                                          # j       pc + 0x30
; _ntoa_long (printf.c:296)
      800018c4  x14:00000000 x17:0000000a x18=00000000  # divu    s2, a4, a7
      800018c8  x18:00000000 x17:0000000a x15=00000000  # mul     a5, s2, a7
      800018cc  x14:00000000 x15:00000000 x15=00000000  # sub     a5, a4, a5
; _ntoa_long (printf.c:295)
      800018d0  x15:00000000 x8=00000000                # andi    s0, a5, 254
      800018d4  x9=00000030                             # li      s1, 48
      800018d8  x8:00000000 x6:0000000a                 # bltu    s0, t1, pc - 64
      80001898  x9:00000030 x15:00000000 x19=00000030   # add     s3, s1, a5
      8000189c  x30:00000000 x15=00000001               # addi    a5, t5, 1
      800018a0  x31:0011fe7c x30:00000000 x9=0011fe7c   # add     s1, t6, t5
; _ntoa_long (printf.c:297)
      800018a4  x14:00000000 x17:0000000a x14=00000001  # sltu    a4, a4, a7
      800018a8  x14:00000001 x14=00000000               # xori    a4, a4, 1
      800018ac  x30:00000000 x8=00000001                # sltiu   s0, t5, 31
      800018b0  x8:00000001 x14:00000000 x8=00000000    # and     s0, s0, a4
; _ntoa_long (printf.c:295)
      800018b4  x9:0011fe7c x19:00000030 WA:0011fe7c    # sb      s3, 0(s1)
; _ntoa_long (printf.c:0)
      800018b8  x15:00000001 x30=00000001               # mv      t5, a5
      800018bc  x18:00000000 x14=00000000               # mv      a4, s2
; _ntoa_long (printf.c:297)
      800018c0  x8:00000000                             # beqz    s0, pc + 36
; _ntoa_long (printf.c:300)
      800018e4  x2:0011fe70 x14=0011fe7c                # addi    a4, sp, 12
      800018e8  x1=800028e8                             # auipc   ra, 0x1
      800018ec  x1:800028e8 x1=800018f0                 # jalr    ra, ra, -1776
; _ntoa_format (printf.c:228)
      800021f8  x2:0011fe70 x2=0011fe30                 # addi    sp, sp, -64
      800021fc  x2:0011fe30 x1:800018f0 WA:0011fe6c     # sw      ra, 60(sp)
      80002200  x2:0011fe30 x8:00000000 WA:0011fe68     # sw      s0, 56(sp)
      80002204  x2:0011fe30 x9:0011fe7c WA:0011fe64     # sw      s1, 52(sp)
      80002208  x2:0011fe30 x18:00000000 WA:0011fe60    # sw      s2, 48(sp)
      8000220c  x2:0011fe30 x19:00000030 WA:0011fe5c    # sw      s3, 44(sp)
      80002210  x2:0011fe30 x20:0011ff07 WA:0011fe58    # sw      s4, 40(sp)
      80002214  x2:0011fe30 x21:0000002e WA:0011fe54    # sw      s5, 36(sp)
      80002218  x2:0011fe30 x22:ffffffff WA:0011fe50    # sw      s6, 32(sp)
      8000221c  x2:0011fe30 x23:00000000 WA:0011fe4c    # sw      s7, 28(sp)
      80002220  x2:0011fe30 x24:00000009 WA:0011fe48    # sw      s8, 24(sp)
      80002224  x2:0011fe30 x25:80002d31 WA:0011fe44    # sw      s9, 20(sp)
      80002228  x2:0011fe30 x26:00000025 WA:0011fe40    # sw      s10, 16(sp)
      8000222c  x2:0011fe30 x27:00000010 WA:0011fe3c    # sw      s11, 12(sp)
      80002230  x29:00000100 x27=00000100               # mv      s11, t4
; _ntoa_format (printf.c:230)
      80002234  x29:00000100 x8=00000000                # andi    s0, t4, 2
      80002238  x28:00000000 x23=00000000               # mv      s7, t3
; _ntoa_format (printf.c:0)
      8000223c  x7:00000000 x26=00000000                # mv      s10, t2
      80002240  x17:0000000a x25=0000000a               # mv      s9, a7
      80002244  x15:00000001 x9=00000001                # mv      s1, a5
      80002248  x14:0011fe7c x18=0011fe7c               # mv      s2, a4
      8000224c  x13:ffffffff x19=ffffffff               # mv      s3, a3
      80002250  x12:00000009 x20=00000009               # mv      s4, a2
      80002254  x11:0011ff07 x21=0011ff07               # mv      s5, a1
      80002258  x10:80001640 x22=80001640               # mv      s6, a0
; _ntoa_format (printf.c:230)
      8000225c  x8:00000000                             # bnez    s0, pc + 236
; _ntoa_format (printf.c:0)
      80002260  x27:00000100 x24=00000000               # andi    s8, s11, 1
; _ntoa_format (printf.c:231)
      80002264  x23:00000000                            # beqz    s7, pc + 28
; _ntoa_format (printf.c:0)
      80002280  x23=00000000                            # li      s7, 0
; _ntoa_format (printf.c:234)
      80002284  x9:00000001 x26:00000000 x10=00000000   # sltu    a0, s1, s10
      80002288  x10:00000000 x11=00000001               # xori    a1, a0, 1
      8000228c  x10=0000001f                            # li      a0, 31
      80002290  x10:0000001f x9:00000001 x12=00000000   # sltu    a2, a0, s1
      80002294  x12:00000000 x11:00000001 x11=00000001  # or      a1, a2, a1
      80002298  x11:00000001                            # bnez    a1, pc + 92
; _ntoa_format (printf.c:237)
      800022f4  x24:00000000                            # beqz    s8, pc + 84
; _ntoa_format (printf.c:243)
      80002348  x27:00000100 x10=00000000               # andi    a0, s11, 16
      8000234c  x10:00000000                            # beqz    a0, pc + 228
; _ntoa_format (printf.c:0)
      80002430  x10=0000001f                            # li      a0, 31
; _ntoa_format (printf.c:264)
      80002434  x10:0000001f x9:00000001                # bltu    a0, s1, pc + 72
; _ntoa_format (printf.c:265)
      80002438  x16:00000000                            # beqz    a6, pc + 20
; _ntoa_format (printf.c:268)
      8000244c  x27:00000100 x10=00000000               # andi    a0, s11, 4
      80002450  x10:00000000                            # bnez    a0, pc + 28
; _ntoa_format (printf.c:271)
      80002454  x27:00000100 x10=00000000               # andi    a0, s11, 8
      80002458  x10:00000000                            # beqz    a0, pc + 36
; _ntoa_format (printf.c:276)
      8000247c  x22:80001640 x10=80001640               # mv      a0, s6
      80002480  x21:0011ff07 x11=0011ff07               # mv      a1, s5
      80002484  x20:00000009 x12=00000009               # mv      a2, s4
      80002488  x19:ffffffff x13=ffffffff               # mv      a3, s3
      8000248c  x18:0011fe7c x14=0011fe7c               # mv      a4, s2
      80002490  x9:00000001 x15=00000001                # mv      a5, s1
      80002494  x23:00000000 x16=00000000               # mv      a6, s7
      80002498  x27:00000100 x17=00000100               # mv      a7, s11
      8000249c  x2:0011fe30 RA:0011fe3c x27=00000010    # lw      s11, 12(sp)
      800024a0  x2:0011fe30 RA:0011fe40 x26=00000025    # lw      s10, 16(sp)
      800024a4  x2:0011fe30 RA:0011fe44 x25=80002d31    # lw      s9, 20(sp)
      800024a8  x2:0011fe30 RA:0011fe48 x24=00000009    # lw      s8, 24(sp)
      800024ac  x2:0011fe30 RA:0011fe4c x23=00000000    # lw      s7, 28(sp)
      800024b0  x2:0011fe30 RA:0011fe50 x22=ffffffff    # lw      s6, 32(sp)
      800024b4  x2:0011fe30 RA:0011fe54 x21=0000002e    # lw      s5, 36(sp)
      800024b8  x2:0011fe30 RA:0011fe58 x20=0011ff07    # lw      s4, 40(sp)
      800024bc  x2:0011fe30 RA:0011fe5c x19=00000030    # lw      s3, 44(sp)
      800024c0  x2:0011fe30 RA:0011fe60 x18=00000000    # lw      s2, 48(sp)
      800024c4  x2:0011fe30 RA:0011fe64 x9=0011fe7c     # lw      s1, 52(sp)
      800024c8  x2:0011fe30 RA:0011fe68 x8=00000000     # lw      s0, 56(sp)
      800024cc  x2:0011fe30 RA:0011fe6c x1=800018f0     # lw      ra, 60(sp)
      800024d0  x2:0011fe30 x2=0011fe70                 # addi    sp, sp, 64
      800024d4  x6=800024d4                             # auipc   t1, 0x0
      800024d8  x6:800024d4                             # jalr    zero, t1, 8
; _out_rev (printf.c:200)
      800024dc  x2:0011fe70 x2=0011fe40                 # addi    sp, sp, -48
; _out_rev (printf.c:0)
      800024e0  x2:0011fe40 x1:800018f0 WA:0011fe6c     # sw      ra, 44(sp)
      800024e4  x2:0011fe40 x8:00000000 WA:0011fe68     # sw      s0, 40(sp)
      800024e8  x2:0011fe40 x9:0011fe7c WA:0011fe64     # sw      s1, 36(sp)
      800024ec  x2:0011fe40 x18:00000000 WA:0011fe60    # sw      s2, 32(sp)
      800024f0  x2:0011fe40 x19:00000030 WA:0011fe5c    # sw      s3, 28(sp)
      800024f4  x2:0011fe40 x20:0011ff07 WA:0011fe58    # sw      s4, 24(sp)
      800024f8  x2:0011fe40 x21:0000002e WA:0011fe54    # sw      s5, 20(sp)
      800024fc  x2:0011fe40 x22:ffffffff WA:0011fe50    # sw      s6, 16(sp)
      80002500  x2:0011fe40 x23:00000000 WA:0011fe4c    # sw      s7, 12(sp)
      80002504  x2:0011fe40 x24:00000009 WA:0011fe48    # sw      s8, 8(sp)
      80002508  x2:0011fe40 x25:80002d31 WA:0011fe44    # sw      s9, 4(sp)
      8000250c  x2:0011fe40 x26:00000025 WA:0011fe40    # sw      s10, 0(sp)
      80002510  x16:00000000 x18=00000000               # mv      s2, a6
      80002514  x15:00000001 x24=00000001               # mv      s8, a5
      80002518  x14:0011fe7c x22=0011fe7c               # mv      s6, a4
      8000251c  x13:ffffffff x19=ffffffff               # mv      s3, a3
      80002520  x12:00000009 x20=00000009               # mv      s4, a2
      80002524  x11:0011ff07 x21=0011ff07               # mv      s5, a1
      80002528  x10:80001640 x23=80001640               # mv      s7, a0
; _out_rev (printf.c:204)
      8000252c  x17:00000100 x10=00000000               # andi    a0, a7, 3
      80002530  x10:00000000 x10=00000000               # snez    a0, a0
      80002534  x15:00000001 x16:00000000 x11=00000000  # sltu    a1, a5, a6
      80002538  x11:00000000 x11=00000001               # xori    a1, a1, 1
      8000253c  x11:00000001 x10:00000000 x10=00000001  # or      a0, a1, a0
      80002540  x17:00000100 x25=00000000               # andi    s9, a7, 2
      80002544  x12:00000009 x8=00000009                # mv      s0, a2
      80002548  x10:00000001                            # bnez    a0, pc + 44
; _out_rev (printf.c:0)
      80002574  x25:00000000 x25=00000000               # srli    s9, s9, 1
; _out_rev (printf.c:211)
      80002578  x24:00000001                            # beqz    s8, pc + 56
      8000257c  x22:0011fe7c x22=0011fe7b               # addi    s6, s6, -1
; _out_rev (printf.c:212)
      80002580  x22:0011fe7b x24:00000001 x10=0011fe7c  # add     a0, s6, s8
      80002584  x10:0011fe7c RA:0011fe7c x10=00000030   # lbu     a0, 0(a0)
      80002588  x24:00000001 x26=00000000               # addi    s10, s8, -1
      8000258c  x8:00000009 x9=0000000a                 # addi    s1, s0, 1
      80002590  x21:0011ff07 x11=0011ff07               # mv      a1, s5
      80002594  x8:00000009 x12=00000009                # mv      a2, s0
      80002598  x19:ffffffff x13=ffffffff               # mv      a3, s3
      8000259c  x23:80001640 x1=800025a0                # jalr    s7
; _out_char.llvm.2580535111316217995 (printf.c:152)
      80001640  x10:00000030                            # beqz    a0, pc + 12
; _out_char.llvm.2580535111316217995 (printf.c:0)
      80001644  x11=f00b8000                            # lui     a1, 0xf00b8
; snrt_putchar (putchar.c:10)
;  in _out_char.llvm.2580535111316217995 (printf.c:153)
      80001648  x11:f00b8000 x10:00000030 WA:f00b8000   # sw      a0, 0(a1)
; _out_char.llvm.2580535111316217995 (printf.c:155)
      8000164c  x1:800025a0                             # ret
; _out_rev (printf.c:0)
      800025a0  x9:0000000a x8=0000000a                 # mv      s0, s1
      800025a4  x26:00000000 x24=00000000               # mv      s8, s10
; _out_rev (printf.c:211)
      800025a8  x26:00000000                            # bnez    s10, pc - 40
      800025ac                                          # j       pc + 0x8
; _out_rev (printf.c:0)
      800025b4  x9:0000000a x20:00000009 x10=00000001   # sub     a0, s1, s4
      800025b8  x10:00000001 x18:00000000 x10=00000000  # sltu    a0, a0, s2
      800025bc  x10:00000000 x10=00000001               # xori    a0, a0, 1
; _out_rev (printf.c:216)
      800025c0  x25:00000000 x11=00000001               # xori    a1, s9, 1
      800025c4  x11:00000001 x10:00000001 x10=00000001  # or      a0, a1, a0
      800025c8  x10:00000001                            # bnez    a0, pc + 48
; _out_rev (printf.c:0)
      800025f8  x9:0000000a x8=0000000a                 # mv      s0, s1
; _out_rev (printf.c:222)
      800025fc  x8:0000000a x10=0000000a                # mv      a0, s0
      80002600  x2:0011fe40 RA:0011fe40 x26=00000025    # lw      s10, 0(sp)
      80002604  x2:0011fe40 RA:0011fe44 x25=80002d31    # lw      s9, 4(sp)
      80002608  x2:0011fe40 RA:0011fe48 x24=00000009    # lw      s8, 8(sp)
      8000260c  x2:0011fe40 RA:0011fe4c x23=00000000    # lw      s7, 12(sp)
      80002610  x2:0011fe40 RA:0011fe50 x22=ffffffff    # lw      s6, 16(sp)
      80002614  x2:0011fe40 RA:0011fe54 x21=0000002e    # lw      s5, 20(sp)
      80002618  x2:0011fe40 RA:0011fe58 x20=0011ff07    # lw      s4, 24(sp)
      8000261c  x2:0011fe40 RA:0011fe5c x19=00000030    # lw      s3, 28(sp)
      80002620  x2:0011fe40 RA:0011fe60 x18=00000000    # lw      s2, 32(sp)
      80002624  x2:0011fe40 RA:0011fe64 x9=0011fe7c     # lw      s1, 36(sp)
      80002628  x2:0011fe40 RA:0011fe68 x8=00000000     # lw      s0, 40(sp)
      8000262c  x2:0011fe40 RA:0011fe6c x1=800018f0     # lw      ra, 44(sp)
      80002630  x2:0011fe40 x2=0011fe70                 # addi    sp, sp, 48
      80002634  x1:800018f0                             # ret
; _ntoa_long (printf.c:300)
      800018f0  x2:0011fe70 RA:0011fe9c x19=0011ff18    # lw      s3, 44(sp)
      800018f4  x2:0011fe70 RA:0011fea0 x18=80001640    # lw      s2, 48(sp)
      800018f8  x2:0011fe70 RA:0011fea4 x9=00000009     # lw      s1, 52(sp)
      800018fc  x2:0011fe70 RA:0011fea8 x8=00000100     # lw      s0, 56(sp)
      80001900  x2:0011fe70 RA:0011feac x1=80001484     # lw      ra, 60(sp)
      80001904  x2:0011fe70 x2=0011feb0                 # addi    sp, sp, 64
      80001908  x1:80001484                             # ret
; _vsnprintf.llvm.2580535111316217995 (printf.c:0)
      80001484  x10:0000000a x9=0000000a                # mv      s1, a0
      80001488  x2:0011feb0 x19:0011ff18 WA:0011fec4    # sw      s3, 20(sp)
      8000148c  x19=0000002a                            # li      s3, 42
      80001490                                          # j       pc + 0x80
      80001510  x25:80002d31 x13=80002d32               # addi    a3, s9, 1
      80001514  x2:0011feb0 x13:80002d32 WA:0011fec8    # sw      a3, 24(sp)
      80001518                                          # j       pc - 0x6f4
; _vsnprintf.llvm.2580535111316217995 (printf.c:587)
      80000e24  x13:80002d32 x25=80002d33               # addi    s9, a3, 1
      80000e28  x25:80002d33 RA:80002d32 x10=0000000a   # lbu     a0, -1(s9)
      80000e2c  x10:0000000a                            # beqz    a0, pc + 1976
      80000e30  x10:0000000a x26:00000025               # beq     a0, s10, pc + 48
; _vsnprintf.llvm.2580535111316217995 (printf.c:592)
      80000e34  x9:0000000a x8=0000000b                 # addi    s0, s1, 1
      80000e38  x20:0011ff07 x11=0011ff07               # mv      a1, s4
      80000e3c  x9:0000000a x12=0000000a                # mv      a2, s1
      80000e40  x22:ffffffff x13=ffffffff               # mv      a3, s6
      80000e44  x18:80001640 x1=80000e48                # jalr    s2
; _out_char.llvm.2580535111316217995 (printf.c:152)
      80001640  x10:0000000a                            # beqz    a0, pc + 12
; _out_char.llvm.2580535111316217995 (printf.c:0)
      80001644  x11=f00b8000                            # lui     a1, 0xf00b8
; snrt_putchar (putchar.c:10)
;  in _out_char.llvm.2580535111316217995 (printf.c:153)
      80001648  x11:f00b8000 x10:0000000a WA:f00b8000   # sw      a0, 0(a1)
; _out_char.llvm.2580535111316217995 (printf.c:155)
      8000164c  x1:80000e48                             # ret
; _vsnprintf.llvm.2580535111316217995 (printf.c:593)
      80000e48  x2:0011feb0 x25:80002d33 WA:0011fec8    # sw      s9, 24(sp)
; _vsnprintf.llvm.2580535111316217995 (printf.c:594)
      80000e4c  x25:80002d33 x25=80002d34               # addi    s9, s9, 1
; _vsnprintf.llvm.2580535111316217995 (printf.c:0)
      80000e50  x8:0000000b x9=0000000b                 # mv      s1, s0
; _vsnprintf.llvm.2580535111316217995 (printf.c:587)
      80000e54  x25:80002d34 RA:80002d33 x10=00000000   # lbu     a0, -1(s9)
      80000e58  x10:00000000                            # bnez    a0, pc - 40
      80000e5c                                          # j       pc + 0x788
; _vsnprintf.llvm.2580535111316217995 (printf.c:853)
      800015e4  x9:0000000b x12=0000000b                # mv      a2, s1
      800015e8  x9:0000000b x22:ffffffff                # bltu    s1, s6, pc + 8
      800015f0  x10=00000000                            # li      a0, 0
      800015f4  x20:0011ff07 x11=0011ff07               # mv      a1, s4
      800015f8  x22:ffffffff x13=ffffffff               # mv      a3, s6
      800015fc  x18:80001640 x1=80001600                # jalr    s2
; _out_char.llvm.2580535111316217995 (printf.c:152)
      80001640  x10:00000000                            # beqz    a0, pc + 12
; _out_char.llvm.2580535111316217995 (printf.c:155)
      8000164c  x1:80001600                             # ret
; _vsnprintf.llvm.2580535111316217995 (printf.c:856)
      80001600  x9:0000000b x10=0000000b                # mv      a0, s1
      80001604  x2:0011feb0 RA:0011fecc x27=00000000    # lw      s11, 28(sp)
      80001608  x2:0011feb0 RA:0011fed0 x26=00000000    # lw      s10, 32(sp)
      8000160c  x2:0011feb0 RA:0011fed4 x25=00000000    # lw      s9, 36(sp)
      80001610  x2:0011feb0 RA:0011fed8 x24=00000000    # lw      s8, 40(sp)
      80001614  x2:0011feb0 RA:0011fedc x23=00000000    # lw      s7, 44(sp)
      80001618  x2:0011feb0 RA:0011fee0 x22=00000000    # lw      s6, 48(sp)
      8000161c  x2:0011feb0 RA:0011fee4 x21=00000000    # lw      s5, 52(sp)
      80001620  x2:0011feb0 RA:0011fee8 x20=00000000    # lw      s4, 56(sp)
      80001624  x2:0011feb0 RA:0011feec x19=001000f0    # lw      s3, 60(sp)
      80001628  x2:0011feb0 RA:0011fef0 x18=00100000    # lw      s2, 64(sp)
      8000162c  x2:0011feb0 RA:0011fef4 x9=00000000     # lw      s1, 68(sp)
      80001630  x2:0011feb0 RA:0011fef8 x8=00100240     # lw      s0, 72(sp)
      80001634  x2:0011feb0 RA:0011fefc x1=80000d8c     # lw      ra, 76(sp)
      80001638  x2:0011feb0 x2=0011ff00                 # addi    sp, sp, 80
      8000163c  x1:80000d8c                             # ret
; printf_ (printf.c:869)
      80000d8c  x2:0011ff00 RA:0011ff0c x1=8000083c     # lw      ra, 12(sp)
      80000d90  x2:0011ff00 x2=0011ff30                 # addi    sp, sp, 48
      80000d94  x1:8000083c                             # ret
; main (bench_matmul.c:39)
      8000083c  x11=00000005                            # li      a1, 5
      80000840  x12=00000007                            # li      a2, 7
      80000844  x8:00100240 x10=00100240                # mv      a0, s0
      80000848  x1=80000848                             # auipc   ra, 0x0
      8000084c  x1:80000848 x1=80000850                 # jalr    ra, ra, 1024
; summat (summat.c:5)
      80000c48  x11:00000005 x13=00000000               # slti    a3, a1, 1
      80000c4c  x12:00000007 x14=00000000               # slti    a4, a2, 1
      80000c50  x13:00000000 x14:00000000 x13=00000000  # or      a3, a3, a4
      80000c54  x13:00000000                            # bnez    a3, pc + 112
      80000c58  x12:00000007 x17=00000006               # addi    a7, a2, -1
      80000c5c  x11:00000005 x16=00000004               # addi    a6, a1, -1
      80000c60  x16:00000004 x12:00000007 x13=0000001c  # mul     a3, a6, a2
      80000c64  x13:0000001c x17:00000006 x13=00000022  # add     a3, a3, a7
      80000c68  x13:00000022 x14=00000110               # slli    a4, a3, 3
      80000c6c  x14:00000110 x10:00100240 x13=00100350  # add     a3, a4, a0
      80000c70  x15=00100000                            # lui     a5, 0x100
      80000c74  x15:00100000 x15=00100001               # addi    a5, a5, 1
      80000c78  x10:00100240 x15:00100001 x15=00000000  # sltu    a5, a0, a5
      80000c7c  x13:00100350 x14:00000110               # bgeu    a3, a4, pc + 80
; summat (summat.c:0)
      80000ccc  x14=00120000                            # lui     a4, 0x120
      80000cd0  x14:00120000 x14=00120001               # addi    a4, a4, 1
      80000cd4  x13:00100350 x14:00120001 x13=00000001  # sltu    a3, a3, a4
      80000cd8  x15:00000000 x13:00000001 x13=00000000  # and     a3, a5, a3
      80000cdc  x13:00000000                            # beqz    a3, pc - 80
      80000c8c  x13=00000000                            # li      a3, 0
; summat (summat.c:5)
      80000c90  x12:00000007 x16=00000038               # slli    a6, a2, 3
      80000c94  f10=        0.000000                    # fcvt.d.w fa0, zero
; summat (summat.c:0)
      80000c98  x10:00100240 x15=00100240               # mv      a5, a0
      80000c9c  x12:00000007 x14=00000007               # mv      a4, a2
; summat (summat.c:7)
      80000ca0  x15:00100240 RA:00100240 RA:00100244 f03=     2081.700891  # fld     ft3, 0(a5)
      80000ca4  f03:     2081.700891 f10:        0.000000 f10=     2081.700891  # fadd.d  fa0, ft3, fa0
; summat (summat.c:6)
      80000ca8  x14:00000007 x14=00000006               # addi    a4, a4, -1
      80000cac  x15:00100240 x15=00100248               # addi    a5, a5, 8
      80000cb0  x14:00000006                            # bnez    a4, pc - 16
; summat (summat.c:7)
      80000ca0  x15:00100248 RA:00100248 RA:0010024c f03=     2288.884392  # fld     ft3, 0(a5)
      80000ca4  f03:     2288.884392 f10:     2081.700891 f10=     4370.585283  # fadd.d  fa0, ft3, fa0
; summat (summat.c:6)
      80000ca8  x14:00000006 x14=00000005               # addi    a4, a4, -1
      80000cac  x15:00100248 x15=00100250               # addi    a5, a5, 8
      80000cb0  x14:00000005                            # bnez    a4, pc - 16
; summat (summat.c:7)
      80000ca0  x15:00100250 RA:00100250 RA:00100254 f03=     2496.067893  # fld     ft3, 0(a5)
      80000ca4  f03:     2496.067893 f10:     4370.585283 f10=     6866.653176  # fadd.d  fa0, ft3, fa0
; summat (summat.c:6)
      80000ca8  x14:00000005 x14=00000004               # addi    a4, a4, -1
      80000cac  x15:00100250 x15=00100258               # addi    a5, a5, 8
      80000cb0  x14:00000004                            # bnez    a4, pc - 16
; summat (summat.c:7)
      80000ca0  x15:00100258 RA:00100258 RA:0010025c f03=     2703.251394  # fld     ft3, 0(a5)
      80000ca4  f03:     2703.251394 f10:     6866.653176 f10=     9569.904570  # fadd.d  fa0, ft3, fa0
; summat (summat.c:6)
      80000ca8  x14:00000004 x14=00000003               # addi    a4, a4, -1
      80000cac  x15:00100258 x15=00100260               # addi    a5, a5, 8
      80000cb0  x14:00000003                            # bnez    a4, pc - 16
; summat (summat.c:7)
      80000ca0  x15:00100260 RA:00100260 RA:00100264 f03=     2910.434895  # fld     ft3, 0(a5)
      80000ca4  f03:     2910.434895 f10:     9569.904570 f10=    12480.339465  # fadd.d  fa0, ft3, fa0
; summat (summat.c:6)
      80000ca8  x14:00000003 x14=00000002               # addi    a4, a4, -1
      80000cac  x15:00100260 x15=00100268               # addi    a5, a5, 8
      80000cb0  x14:00000002                            # bnez    a4, pc - 16
; summat (summat.c:7)
      80000ca0  x15:00100268 RA:00100268 RA:0010026c f03=     1933.712676  # fld     ft3, 0(a5)
      80000ca4  f03:     1933.712676 f10:    12480.339465 f10=    14414.052141  # fadd.d  fa0, ft3, fa0
; summat (summat.c:6)
      80000ca8  x14:00000002 x14=00000001               # addi    a4, a4, -1
      80000cac  x15:00100268 x15=00100270               # addi    a5, a5, 8
      80000cb0  x14:00000001                            # bnez    a4, pc - 16
; summat (summat.c:7)
      80000ca0  x15:00100270 RA:00100270 RA:00100274 f03=     1548.943317  # fld     ft3, 0(a5)
      80000ca4  f03:     1548.943317 f10:    14414.052141 f10=    15962.995458  # fadd.d  fa0, ft3, fa0
; summat (summat.c:6)
      80000ca8  x14:00000001 x14=00000000               # addi    a4, a4, -1
      80000cac  x15:00100270 x15=00100278               # addi    a5, a5, 8
      80000cb0  x14:00000000                            # bnez    a4, pc - 16
; summat (summat.c:5)
      80000cb4  x13:00000000 x13=00000001               # addi    a3, a3, 1
      80000cb8  x10:00100240 x16:00000038 x10=00100278  # add     a0, a0, a6
      80000cbc  x13:00000001 x11:00000005               # bne     a3, a1, pc - 36
; summat (summat.c:0)
      80000c98  x10:00100278 x15=00100278               # mv      a5, a0
      80000c9c  x12:00000007 x14=00000007               # mv      a4, a2
; summat (summat.c:7)
      80000ca0  x15:00100278 RA:00100278 RA:0010027c f03=     5100.660477  # fld     ft3, 0(a5)
      80000ca4  f03:     5100.660477 f10:    15962.995458 f10=    21063.655935  # fadd.d  fa0, ft3, fa0
; summat (summat.c:6)
      80000ca8  x14:00000007 x14=00000006               # addi    a4, a4, -1
      80000cac  x15:00100278 x15=00100280               # addi    a5, a5, 8
      80000cb0  x14:00000006                            # bnez    a4, pc - 16
; summat (summat.c:7)
      80000ca0  x15:00100280 RA:00100280 RA:00100284 f03=     5663.015694  # fld     ft3, 0(a5)
      80000ca4  f03:     5663.015694 f10:    21063.655935 f10=    26726.671629  # fadd.d  fa0, ft3, fa0
; summat (summat.c:6)
      80000ca8  x14:00000006 x14=00000005               # addi    a4, a4, -1
      80000cac  x15:00100280 x15=00100288               # addi    a5, a5, 8
      80000cb0  x14:00000005                            # bnez    a4, pc - 16
; summat (summat.c:7)
      80000ca0  x15:00100288 RA:00100288 RA:0010028c f03=     6225.370911  # fld     ft3, 0(a5)
      80000ca4  f03:     6225.370911 f10:    26726.671629 f10=    32952.042540  # fadd.d  fa0, ft3, fa0
; summat (summat.c:6)
      80000ca8  x14:00000005 x14=00000004               # addi    a4, a4, -1
      80000cac  x15:00100288 x15=00100290               # addi    a5, a5, 8
      80000cb0  x14:00000004                            # bnez    a4, pc - 16
; summat (summat.c:7)
      80000ca0  x15:00100290 RA:00100290 RA:00100294 f03=     6787.726128  # fld     ft3, 0(a5)
      80000ca4  f03:     6787.726128 f10:    32952.042540 f10=    39739.768668  # fadd.d  fa0, ft3, fa0
; summat (summat.c:6)
      80000ca8  x14:00000004 x14=00000003               # addi    a4, a4, -1
      80000cac  x15:00100290 x15=00100298               # addi    a5, a5, 8
      80000cb0  x14:00000003                            # bnez    a4, pc - 16
; summat (summat.c:7)
      80000ca0  x15:00100298 RA:00100298 RA:0010029c f03=     7350.081345  # fld     ft3, 0(a5)
      80000ca4  f03:     7350.081345 f10:    39739.768668 f10=    47089.850013  # fadd.d  fa0, ft3, fa0
; summat (summat.c:6)
      80000ca8  x14:00000003 x14=00000002               # addi    a4, a4, -1
      80000cac  x15:00100298 x15=001002a0               # addi    a5, a5, 8
      80000cb0  x14:00000002                            # bnez    a4, pc - 16
; summat (summat.c:7)
      80000ca0  x15:001002a0 RA:001002a0 RA:001002a4 f03=     5544.625122  # fld     ft3, 0(a5)
      80000ca4  f03:     5544.625122 f10:    47089.850013 f10=    52634.475135  # fadd.d  fa0, ft3, fa0
; summat (summat.c:6)
      80000ca8  x14:00000002 x14=00000001               # addi    a4, a4, -1
      80000cac  x15:001002a0 x15=001002a8               # addi    a5, a5, 8
      80000cb0  x14:00000001                            # bnez    a4, pc - 16
; summat (summat.c:7)
      80000ca0  x15:001002a8 RA:001002a8 RA:001002ac f03=     4331.121759  # fld     ft3, 0(a5)
      80000ca4  f03:     4331.121759 f10:    52634.475135 f10=    56965.596894  # fadd.d  fa0, ft3, fa0
; summat (summat.c:6)
      80000ca8  x14:00000001 x14=00000000               # addi    a4, a4, -1
      80000cac  x15:001002a8 x15=001002b0               # addi    a5, a5, 8
      80000cb0  x14:00000000                            # bnez    a4, pc - 16
; summat (summat.c:5)
      80000cb4  x13:00000001 x13=00000002               # addi    a3, a3, 1
      80000cb8  x10:00100278 x16:00000038 x10=001002b0  # add     a0, a0, a6
      80000cbc  x13:00000002 x11:00000005               # bne     a3, a1, pc - 36
; summat (summat.c:0)
      80000c98  x10:001002b0 x15=001002b0               # mv      a5, a0
      80000c9c  x12:00000007 x14=00000007               # mv      a4, a2
; summat (summat.c:7)
      80000ca0  x15:001002b0 RA:001002b0 RA:001002b4 f03=     8119.620063  # fld     ft3, 0(a5)
      80000ca4  f03:     8119.620063 f10:    56965.596894 f10=    65085.216957  # fadd.d  fa0, ft3, fa0
; summat (summat.c:6)
      80000ca8  x14:00000007 x14=00000006               # addi    a4, a4, -1
      80000cac  x15:001002b0 x15=001002b8               # addi    a5, a5, 8
      80000cb0  x14:00000006                            # bnez    a4, pc - 16
; summat (summat.c:7)
      80000ca0  x15:001002b8 RA:001002b8 RA:001002bc f03=     9037.146996  # fld     ft3, 0(a5)
      80000ca4  f03:     9037.146996 f10:    65085.216957 f10=    74122.363953  # fadd.d  fa0, ft3, fa0
; summat (summat.c:6)
      80000ca8  x14:00000006 x14=00000005               # addi    a4, a4, -1
      80000cac  x15:001002b8 x15=001002c0               # addi    a5, a5, 8
      80000cb0  x14:00000005                            # bnez    a4, pc - 16
; summat (summat.c:7)
      80000ca0  x15:001002c0 RA:001002c0 RA:001002c4 f03=     9954.673929  # fld     ft3, 0(a5)
      80000ca4  f03:     9954.673929 f10:    74122.363953 f10=    84077.037882  # fadd.d  fa0, ft3, fa0
; summat (summat.c:6)
      80000ca8  x14:00000005 x14=00000004               # addi    a4, a4, -1
      80000cac  x15:001002c0 x15=001002c8               # addi    a5, a5, 8
      80000cb0  x14:00000004                            # bnez    a4, pc - 16
; summat (summat.c:7)
      80000ca0  x15:001002c8 RA:001002c8 RA:001002cc f03=    10872.200862  # fld     ft3, 0(a5)
      80000ca4  f03:    10872.200862 f10:    84077.037882 f10=    94949.238744  # fadd.d  fa0, ft3, fa0
; summat (summat.c:6)
      80000ca8  x14:00000004 x14=00000003               # addi    a4, a4, -1
      80000cac  x15:001002c8 x15=001002d0               # addi    a5, a5, 8
      80000cb0  x14:00000003                            # bnez    a4, pc - 16
; summat (summat.c:7)
      80000ca0  x15:001002d0 RA:001002d0 RA:001002d4 f03=    11789.727795  # fld     ft3, 0(a5)
      80000ca4  f03:    11789.727795 f10:    94949.238744 f10=   106738.966539  # fadd.d  fa0, ft3, fa0
; summat (summat.c:6)
      80000ca8  x14:00000003 x14=00000002               # addi    a4, a4, -1
      80000cac  x15:001002d0 x15=001002d8               # addi    a5, a5, 8
      80000cb0  x14:00000002                            # bnez    a4, pc - 16
; summat (summat.c:7)
      80000ca0  x15:001002d8 RA:001002d8 RA:001002dc f03=     9155.537568  # fld     ft3, 0(a5)
      80000ca4  f03:     9155.537568 f10:   106738.966539 f10=   115894.504107  # fadd.d  fa0, ft3, fa0
; summat (summat.c:6)
      80000ca8  x14:00000002 x14=00000001               # addi    a4, a4, -1
      80000cac  x15:001002d8 x15=001002e0               # addi    a5, a5, 8
      80000cb0  x14:00000001                            # bnez    a4, pc - 16
; summat (summat.c:7)
      80000ca0  x15:001002e0 RA:001002e0 RA:001002e4 f03=     7113.300201  # fld     ft3, 0(a5)
      80000ca4  f03:     7113.300201 f10:   115894.504107 f10=   123007.804308  # fadd.d  fa0, ft3, fa0
; summat (summat.c:6)
      80000ca8  x14:00000001 x14=00000000               # addi    a4, a4, -1
      80000cac  x15:001002e0 x15=001002e8               # addi    a5, a5, 8
      80000cb0  x14:00000000                            # bnez    a4, pc - 16
; summat (summat.c:5)
      80000cb4  x13:00000002 x13=00000003               # addi    a3, a3, 1
      80000cb8  x10:001002b0 x16:00000038 x10=001002e8  # add     a0, a0, a6
      80000cbc  x13:00000003 x11:00000005               # bne     a3, a1, pc - 36
; summat (summat.c:0)
      80000c98  x10:001002e8 x15=001002e8               # mv      a5, a0
      80000c9c  x12:00000007 x14=00000007               # mv      a4, a2
; summat (summat.c:7)
      80000ca0  x15:001002e8 RA:001002e8 RA:001002ec f03=     2851.239609  # fld     ft3, 0(a5)
      80000ca4  f03:     2851.239609 f10:   123007.804308 f10=   125859.043917  # fadd.d  fa0, ft3, fa0
; summat (summat.c:6)
      80000ca8  x14:00000007 x14=00000006               # addi    a4, a4, -1
      80000cac  x15:001002e8 x15=001002f0               # addi    a5, a5, 8
      80000cb0  x14:00000006                            # bnez    a4, pc - 16
; summat (summat.c:7)
      80000ca0  x15:001002f0 RA:001002f0 RA:001002f4 f03=     3334.667778  # fld     ft3, 0(a5)
      80000ca4  f03:     3334.667778 f10:   125859.043917 f10=   129193.711695  # fadd.d  fa0, ft3, fa0
; summat (summat.c:6)
      80000ca8  x14:00000006 x14=00000005               # addi    a4, a4, -1
      80000cac  x15:001002f0 x15=001002f8               # addi    a5, a5, 8
      80000cb0  x14:00000005                            # bnez    a4, pc - 16
; summat (summat.c:7)
      80000ca0  x15:001002f8 RA:001002f8 RA:001002fc f03=     3818.095947  # fld     ft3, 0(a5)
      80000ca4  f03:     3818.095947 f10:   129193.711695 f10=   133011.807642  # fadd.d  fa0, ft3, fa0
; summat (summat.c:6)
      80000ca8  x14:00000005 x14=00000004               # addi    a4, a4, -1
      80000cac  x15:001002f8 x15=00100300               # addi    a5, a5, 8
      80000cb0  x14:00000004                            # bnez    a4, pc - 16
; summat (summat.c:7)
      80000ca0  x15:00100300 RA:00100300 RA:00100304 f03=     4301.524116  # fld     ft3, 0(a5)
      80000ca4  f03:     4301.524116 f10:   133011.807642 f10=   137313.331758  # fadd.d  fa0, ft3, fa0
; summat (summat.c:6)
      80000ca8  x14:00000004 x14=00000003               # addi    a4, a4, -1
      80000cac  x15:00100300 x15=00100308               # addi    a5, a5, 8
      80000cb0  x14:00000003                            # bnez    a4, pc - 16
; summat (summat.c:7)
      80000ca0  x15:00100308 RA:00100308 RA:0010030c f03=     4784.952285  # fld     ft3, 0(a5)
      80000ca4  f03:     4784.952285 f10:   137313.331758 f10=   142098.284043  # fadd.d  fa0, ft3, fa0
; summat (summat.c:6)
      80000ca8  x14:00000003 x14=00000002               # addi    a4, a4, -1
      80000cac  x15:00100308 x15=00100310               # addi    a5, a5, 8
      80000cb0  x14:00000002                            # bnez    a4, pc - 16
; summat (summat.c:7)
      80000ca0  x15:00100310 RA:00100310 RA:00100314 f03=     4479.109974  # fld     ft3, 0(a5)
      80000ca4  f03:     4479.109974 f10:   142098.284043 f10=   146577.394017  # fadd.d  fa0, ft3, fa0
; summat (summat.c:6)
      80000ca8  x14:00000002 x14=00000001               # addi    a4, a4, -1
      80000cac  x15:00100310 x15=00100318               # addi    a5, a5, 8
      80000cb0  x14:00000001                            # bnez    a4, pc - 16
; summat (summat.c:7)
      80000ca0  x15:00100318 RA:00100318 RA:0010031c f03=     4765.220523  # fld     ft3, 0(a5)
      80000ca4  f03:     4765.220523 f10:   146577.394017 f10=   151342.614540  # fadd.d  fa0, ft3, fa0
; summat (summat.c:6)
      80000ca8  x14:00000001 x14=00000000               # addi    a4, a4, -1
      80000cac  x15:00100318 x15=00100320               # addi    a5, a5, 8
      80000cb0  x14:00000000                            # bnez    a4, pc - 16
; summat (summat.c:5)
      80000cb4  x13:00000003 x13=00000004               # addi    a3, a3, 1
      80000cb8  x10:001002e8 x16:00000038 x10=00100320  # add     a0, a0, a6
      80000cbc  x13:00000004 x11:00000005               # bne     a3, a1, pc - 36
; summat (summat.c:0)
      80000c98  x10:00100320 x15=00100320               # mv      a5, a0
      80000c9c  x12:00000007 x14=00000007               # mv      a4, a2
; summat (summat.c:7)
      80000ca0  x15:00100320 RA:00100320 RA:00100324 f03=     4094.340615  # fld     ft3, 0(a5)
      80000ca4  f03:     4094.340615 f10:   151342.614540 f10=   155436.955155  # fadd.d  fa0, ft3, fa0
; summat (summat.c:6)
      80000ca8  x14:00000007 x14=00000006               # addi    a4, a4, -1
      80000cac  x15:00100320 x15=00100328               # addi    a5, a5, 8
      80000cb0  x14:00000006                            # bnez    a4, pc - 16
; summat (summat.c:7)
      80000ca0  x15:00100328 RA:00100328 RA:0010032c f03=     4538.305260  # fld     ft3, 0(a5)
      80000ca4  f03:     4538.305260 f10:   155436.955155 f10=   159975.260415  # fadd.d  fa0, ft3, fa0
; summat (summat.c:6)
      80000ca8  x14:00000006 x14=00000005               # addi    a4, a4, -1
      80000cac  x15:00100328 x15=00100330               # addi    a5, a5, 8
      80000cb0  x14:00000005                            # bnez    a4, pc - 16
; summat (summat.c:7)
      80000ca0  x15:00100330 RA:00100330 RA:00100334 f03=     4982.269905  # fld     ft3, 0(a5)
      80000ca4  f03:     4982.269905 f10:   159975.260415 f10=   164957.530320  # fadd.d  fa0, ft3, fa0
; summat (summat.c:6)
      80000ca8  x14:00000005 x14=00000004               # addi    a4, a4, -1
      80000cac  x15:00100330 x15=00100338               # addi    a5, a5, 8
      80000cb0  x14:00000004                            # bnez    a4, pc - 16
; summat (summat.c:7)
      80000ca0  x15:00100338 RA:00100338 RA:0010033c f03=     5426.234550  # fld     ft3, 0(a5)
      80000ca4  f03:     5426.234550 f10:   164957.530320 f10=   170383.764870  # fadd.d  fa0, ft3, fa0
; summat (summat.c:6)
      80000ca8  x14:00000004 x14=00000003               # addi    a4, a4, -1
      80000cac  x15:00100338 x15=00100340               # addi    a5, a5, 8
      80000cb0  x14:00000003                            # bnez    a4, pc - 16
; summat (summat.c:7)
      80000ca0  x15:00100340 RA:00100340 RA:00100344 f03=     5870.199195  # fld     ft3, 0(a5)
      80000ca4  f03:     5870.199195 f10:   170383.764870 f10=   176253.964065  # fadd.d  fa0, ft3, fa0
; summat (summat.c:6)
      80000ca8  x14:00000003 x14=00000002               # addi    a4, a4, -1
      80000cac  x15:00100340 x15=00100348               # addi    a5, a5, 8
      80000cb0  x14:00000002                            # bnez    a4, pc - 16
; summat (summat.c:7)
      80000ca0  x15:00100348 RA:00100348 RA:0010034c f03=     4340.987640  # fld     ft3, 0(a5)
      80000ca4  f03:     4340.987640 f10:   176253.964065 f10=   180594.951705  # fadd.d  fa0, ft3, fa0
; summat (summat.c:6)
      80000ca8  x14:00000002 x14=00000001               # addi    a4, a4, -1
      80000cac  x15:00100348 x15=00100350               # addi    a5, a5, 8
      80000cb0  x14:00000001                            # bnez    a4, pc - 16
; summat (summat.c:7)
      80000ca0  x15:00100350 RA:00100350 RA:00100354 f03=     3403.728945  # fld     ft3, 0(a5)
      80000ca4  f03:     3403.728945 f10:   180594.951705 f10=   183998.680650  # fadd.d  fa0, ft3, fa0
; summat (summat.c:6)
      80000ca8  x14:00000001 x14=00000000               # addi    a4, a4, -1
      80000cac  x15:00100350 x15=00100358               # addi    a5, a5, 8
      80000cb0  x14:00000000                            # bnez    a4, pc - 16
; summat (summat.c:5)
      80000cb4  x13:00000004 x13=00000005               # addi    a3, a3, 1
      80000cb8  x10:00100320 x16:00000038 x10=00100358  # add     a0, a0, a6
      80000cbc  x13:00000005 x11:00000005               # bne     a3, a1, pc - 36
; summat (summat.c:10)
      80000cc0  x1:80000850                             # ret
; main (bench_matmul.c:0)
      80000850  x10=80002850                            # auipc   a0, 0x2
      80000854  x10:80002850 x10=80002f60               # addi    a0, a0, 1808
      80000858  x10:80002f60 RA:80002f60 RA:80002f64 f00=  -183998.680650  # fld     ft0, 0(a0)
; main (bench_matmul.c:41)
      8000085c  f10:   183998.680650 f00:  -183998.680650 f00=       -0.000000  # fadd.d  ft0, fa0, ft0
; main (bench_matmul.c:42)
      80000860  f00:       -0.000000 f00:       -0.000000 f08=        0.000000  # fsgnjx.d fs0, ft0, ft0
; main (bench_matmul.c:44)
      80000864  x2:0011ff30 f08:        0.000000 WA:0011ff38 WA:0011ff3c  # fsd     fs0, 8(sp)
      80000868  x2:0011ff30 RA:0011ff38 x12=00000000    # lw      a2, 8(sp)
      8000086c  x2:0011ff30 RA:0011ff3c x13=3dc00000    # lw      a3, 12(sp)
      80000870  x10=80002870                            # auipc   a0, 0x2
      80000874  x10:80002870 x10=80002d1a               # addi    a0, a0, 1194
      80000878  x1=80000878                             # auipc   ra, 0x0
      8000087c  x1:80000878 x1=80000880                 # jalr    ra, ra, 1220
; printf_ (printf.c:863)
      80000d3c  x2:0011ff30 x2=0011ff00                 # addi    sp, sp, -48
      80000d40  x2:0011ff00 x1:80000880 WA:0011ff0c     # sw      ra, 12(sp)
      80000d44  x10:80002d1a x5=80002d1a                # mv      t0, a0
      80000d48  x2:0011ff00 x17:00000006 WA:0011ff2c    # sw      a7, 44(sp)
      80000d4c  x2:0011ff00 x16:00000038 WA:0011ff28    # sw      a6, 40(sp)
      80000d50  x2:0011ff00 x15:00100358 WA:0011ff24    # sw      a5, 36(sp)
      80000d54  x2:0011ff00 x14:00000000 WA:0011ff20    # sw      a4, 32(sp)
      80000d58  x2:0011ff00 x13:3dc00000 WA:0011ff1c    # sw      a3, 28(sp)
      80000d5c  x2:0011ff00 x12:00000000 WA:0011ff18    # sw      a2, 24(sp)
      80000d60  x2:0011ff00 x11:00000005 WA:0011ff14    # sw      a1, 20(sp)
      80000d64  x2:0011ff00 x10=0011ff14                # addi    a0, sp, 20
; printf_ (printf.c:865)
      80000d68  x2:0011ff00 x10:0011ff14 WA:0011ff08    # sw      a0, 8(sp)
; printf_ (printf.c:867)
      80000d6c  x10=80001d6c                            # auipc   a0, 0x1
      80000d70  x10:80001d6c x10=80001640               # addi    a0, a0, -1836
      80000d74  x2:0011ff00 x11=0011ff07                # addi    a1, sp, 7
      80000d78  x12=ffffffff                            # li      a2, -1
      80000d7c  x2:0011ff00 x14=0011ff14                # addi    a4, sp, 20
      80000d80  x5:80002d1a x13=80002d1a                # mv      a3, t0
      80000d84  x1=80000d84                             # auipc   ra, 0x0
      80000d88  x1:80000d84 x1=80000d8c                 # jalr    ra, ra, 20
; _vsnprintf.llvm.2580535111316217995 (printf.c:578)
      80000d98  x2:0011ff00 x2=0011feb0                 # addi    sp, sp, -80
      80000d9c  x2:0011feb0 x1:80000d8c WA:0011fefc     # sw      ra, 76(sp)
      80000da0  x2:0011feb0 x8:00100240 WA:0011fef8     # sw      s0, 72(sp)
      80000da4  x2:0011feb0 x9:00000000 WA:0011fef4     # sw      s1, 68(sp)
      80000da8  x2:0011feb0 x18:00100000 WA:0011fef0    # sw      s2, 64(sp)
      80000dac  x2:0011feb0 x19:001000f0 WA:0011feec    # sw      s3, 60(sp)
      80000db0  x2:0011feb0 x20:00000000 WA:0011fee8    # sw      s4, 56(sp)
      80000db4  x2:0011feb0 x21:00000000 WA:0011fee4    # sw      s5, 52(sp)
      80000db8  x2:0011feb0 x22:00000000 WA:0011fee0    # sw      s6, 48(sp)
      80000dbc  x2:0011feb0 x23:00000000 WA:0011fedc    # sw      s7, 44(sp)
      80000dc0  x2:0011feb0 x24:00000000 WA:0011fed8    # sw      s8, 40(sp)
      80000dc4  x2:0011feb0 x25:00000000 WA:0011fed4    # sw      s9, 36(sp)
      80000dc8  x2:0011feb0 x26:00000000 WA:0011fed0    # sw      s10, 32(sp)
      80000dcc  x2:0011feb0 x27:00000000 WA:0011fecc    # sw      s11, 28(sp)
      80000dd0  x2:0011feb0 x14:0011ff14 WA:0011fec4    # sw      a4, 20(sp)
      80000dd4  x12:ffffffff x22=ffffffff               # mv      s6, a2
      80000dd8  x11:0011ff07 x20=0011ff07               # mv      s4, a1
      80000ddc  x2:0011feb0 x13:80002d1a WA:0011fec8    # sw      a3, 24(sp)
; _vsnprintf.llvm.2580535111316217995 (printf.c:582)
      80000de0  x11:0011ff07                            # beqz    a1, pc + 12
; _vsnprintf.llvm.2580535111316217995 (printf.c:0)
      80000de4  x10:80001640 x18=80001640               # mv      s2, a0
      80000de8                                          # j       pc + 0xc
      80000df4  x9=00000000                             # li      s1, 0
      80000df8  x26=00000025                            # li      s10, 37
      80000dfc  x27=00000010                            # li      s11, 16
      80000e00  x24=00000009                            # li      s8, 9
      80000e04  x21=0000002e                            # li      s5, 46
      80000e08  x19=0000002a                            # li      s3, 42
      80000e0c  x10=00001000                            # lui     a0, 0x1
      80000e10  x10:00001000 x10=00000800               # addi    a0, a0, -2048
      80000e14  x2:0011feb0 x10:00000800 WA:0011febc    # sw      a0, 12(sp)
      80000e18  x10=00010000                            # lui     a0, 0x10
      80000e1c  x10:00010000 x10=0000ffff               # addi    a0, a0, -1
      80000e20  x2:0011feb0 x10:0000ffff WA:0011feb8    # sw      a0, 8(sp)
; _vsnprintf.llvm.2580535111316217995 (printf.c:587)
      80000e24  x13:80002d1a x25=80002d1b               # addi    s9, a3, 1
      80000e28  x25:80002d1b RA:80002d1a x10=00000065   # lbu     a0, -1(s9)
      80000e2c  x10:00000065                            # beqz    a0, pc + 1976
      80000e30  x10:00000065 x26:00000025               # beq     a0, s10, pc + 48
; _vsnprintf.llvm.2580535111316217995 (printf.c:592)
      80000e34  x9:00000000 x8=00000001                 # addi    s0, s1, 1
      80000e38  x20:0011ff07 x11=0011ff07               # mv      a1, s4
      80000e3c  x9:00000000 x12=00000000                # mv      a2, s1
      80000e40  x22:ffffffff x13=ffffffff               # mv      a3, s6
      80000e44  x18:80001640 x1=80000e48                # jalr    s2
; _out_char.llvm.2580535111316217995 (printf.c:152)
      80001640  x10:00000065                            # beqz    a0, pc + 12
; _out_char.llvm.2580535111316217995 (printf.c:0)
      80001644  x11=f00b8000                            # lui     a1, 0xf00b8
; snrt_putchar (putchar.c:10)
;  in _out_char.llvm.2580535111316217995 (printf.c:153)
      80001648  x11:f00b8000 x10:00000065 WA:f00b8000   # sw      a0, 0(a1)
; _out_char.llvm.2580535111316217995 (printf.c:155)
      8000164c  x1:80000e48                             # ret
; _vsnprintf.llvm.2580535111316217995 (printf.c:593)
      80000e48  x2:0011feb0 x25:80002d1b WA:0011fec8    # sw      s9, 24(sp)
; _vsnprintf.llvm.2580535111316217995 (printf.c:594)
      80000e4c  x25:80002d1b x25=80002d1c               # addi    s9, s9, 1
; _vsnprintf.llvm.2580535111316217995 (printf.c:0)
      80000e50  x8:00000001 x9=00000001                 # mv      s1, s0
; _vsnprintf.llvm.2580535111316217995 (printf.c:587)
      80000e54  x25:80002d1c RA:80002d1b x10=00000072   # lbu     a0, -1(s9)
      80000e58  x10:00000072                            # bnez    a0, pc - 40
      80000e30  x10:00000072 x26:00000025               # beq     a0, s10, pc + 48
; _vsnprintf.llvm.2580535111316217995 (printf.c:592)
      80000e34  x9:00000001 x8=00000002                 # addi    s0, s1, 1
      80000e38  x20:0011ff07 x11=0011ff07               # mv      a1, s4
      80000e3c  x9:00000001 x12=00000001                # mv      a2, s1
      80000e40  x22:ffffffff x13=ffffffff               # mv      a3, s6
      80000e44  x18:80001640 x1=80000e48                # jalr    s2
; _out_char.llvm.2580535111316217995 (printf.c:152)
      80001640  x10:00000072                            # beqz    a0, pc + 12
; _out_char.llvm.2580535111316217995 (printf.c:0)
      80001644  x11=f00b8000                            # lui     a1, 0xf00b8
; snrt_putchar (putchar.c:10)
;  in _out_char.llvm.2580535111316217995 (printf.c:153)
      80001648  x11:f00b8000 x10:00000072 WA:f00b8000   # sw      a0, 0(a1)
; _out_char.llvm.2580535111316217995 (printf.c:155)
      8000164c  x1:80000e48                             # ret
; _vsnprintf.llvm.2580535111316217995 (printf.c:593)
      80000e48  x2:0011feb0 x25:80002d1c WA:0011fec8    # sw      s9, 24(sp)
; _vsnprintf.llvm.2580535111316217995 (printf.c:594)
      80000e4c  x25:80002d1c x25=80002d1d               # addi    s9, s9, 1
; _vsnprintf.llvm.2580535111316217995 (printf.c:0)
      80000e50  x8:00000002 x9=00000002                 # mv      s1, s0
; _vsnprintf.llvm.2580535111316217995 (printf.c:587)
      80000e54  x25:80002d1d RA:80002d1c x10=00000072   # lbu     a0, -1(s9)
      80000e58  x10:00000072                            # bnez    a0, pc - 40
      80000e30  x10:00000072 x26:00000025               # beq     a0, s10, pc + 48
; _vsnprintf.llvm.2580535111316217995 (printf.c:592)
      80000e34  x9:00000002 x8=00000003                 # addi    s0, s1, 1
      80000e38  x20:0011ff07 x11=0011ff07               # mv      a1, s4
      80000e3c  x9:00000002 x12=00000002                # mv      a2, s1
      80000e40  x22:ffffffff x13=ffffffff               # mv      a3, s6
      80000e44  x18:80001640 x1=80000e48                # jalr    s2
; _out_char.llvm.2580535111316217995 (printf.c:152)
      80001640  x10:00000072                            # beqz    a0, pc + 12
; _out_char.llvm.2580535111316217995 (printf.c:0)
      80001644  x11=f00b8000                            # lui     a1, 0xf00b8
; snrt_putchar (putchar.c:10)
;  in _out_char.llvm.2580535111316217995 (printf.c:153)
      80001648  x11:f00b8000 x10:00000072 WA:f00b8000   # sw      a0, 0(a1)
; _out_char.llvm.2580535111316217995 (printf.c:155)
      8000164c  x1:80000e48                             # ret
; _vsnprintf.llvm.2580535111316217995 (printf.c:593)
      80000e48  x2:0011feb0 x25:80002d1d WA:0011fec8    # sw      s9, 24(sp)
; _vsnprintf.llvm.2580535111316217995 (printf.c:594)
      80000e4c  x25:80002d1d x25=80002d1e               # addi    s9, s9, 1
; _vsnprintf.llvm.2580535111316217995 (printf.c:0)
      80000e50  x8:00000003 x9=00000003                 # mv      s1, s0
; _vsnprintf.llvm.2580535111316217995 (printf.c:587)
      80000e54  x25:80002d1e RA:80002d1d x10=0000006f   # lbu     a0, -1(s9)
      80000e58  x10:0000006f                            # bnez    a0, pc - 40
      80000e30  x10:0000006f x26:00000025               # beq     a0, s10, pc + 48
; _vsnprintf.llvm.2580535111316217995 (printf.c:592)
      80000e34  x9:00000003 x8=00000004                 # addi    s0, s1, 1
      80000e38  x20:0011ff07 x11=0011ff07               # mv      a1, s4
      80000e3c  x9:00000003 x12=00000003                # mv      a2, s1
      80000e40  x22:ffffffff x13=ffffffff               # mv      a3, s6
      80000e44  x18:80001640 x1=80000e48                # jalr    s2
; _out_char.llvm.2580535111316217995 (printf.c:152)
      80001640  x10:0000006f                            # beqz    a0, pc + 12
; _out_char.llvm.2580535111316217995 (printf.c:0)
      80001644  x11=f00b8000                            # lui     a1, 0xf00b8
; snrt_putchar (putchar.c:10)
;  in _out_char.llvm.2580535111316217995 (printf.c:153)
      80001648  x11:f00b8000 x10:0000006f WA:f00b8000   # sw      a0, 0(a1)
; _out_char.llvm.2580535111316217995 (printf.c:155)
      8000164c  x1:80000e48                             # ret
; _vsnprintf.llvm.2580535111316217995 (printf.c:593)
      80000e48  x2:0011feb0 x25:80002d1e WA:0011fec8    # sw      s9, 24(sp)
; _vsnprintf.llvm.2580535111316217995 (printf.c:594)
      80000e4c  x25:80002d1e x25=80002d1f               # addi    s9, s9, 1
; _vsnprintf.llvm.2580535111316217995 (printf.c:0)
      80000e50  x8:00000004 x9=00000004                 # mv      s1, s0
; _vsnprintf.llvm.2580535111316217995 (printf.c:587)
      80000e54  x25:80002d1f RA:80002d1e x10=00000072   # lbu     a0, -1(s9)
      80000e58  x10:00000072                            # bnez    a0, pc - 40
      80000e30  x10:00000072 x26:00000025               # beq     a0, s10, pc + 48
; _vsnprintf.llvm.2580535111316217995 (printf.c:592)
      80000e34  x9:00000004 x8=00000005                 # addi    s0, s1, 1
      80000e38  x20:0011ff07 x11=0011ff07               # mv      a1, s4
      80000e3c  x9:00000004 x12=00000004                # mv      a2, s1
      80000e40  x22:ffffffff x13=ffffffff               # mv      a3, s6
      80000e44  x18:80001640 x1=80000e48                # jalr    s2
; _out_char.llvm.2580535111316217995 (printf.c:152)
      80001640  x10:00000072                            # beqz    a0, pc + 12
; _out_char.llvm.2580535111316217995 (printf.c:0)
      80001644  x11=f00b8000                            # lui     a1, 0xf00b8
; snrt_putchar (putchar.c:10)
;  in _out_char.llvm.2580535111316217995 (printf.c:153)
      80001648  x11:f00b8000 x10:00000072 WA:f00b8000   # sw      a0, 0(a1)
; _out_char.llvm.2580535111316217995 (printf.c:155)
      8000164c  x1:80000e48                             # ret
; _vsnprintf.llvm.2580535111316217995 (printf.c:593)
      80000e48  x2:0011feb0 x25:80002d1f WA:0011fec8    # sw      s9, 24(sp)
; _vsnprintf.llvm.2580535111316217995 (printf.c:594)
      80000e4c  x25:80002d1f x25=80002d20               # addi    s9, s9, 1
; _vsnprintf.llvm.2580535111316217995 (printf.c:0)
      80000e50  x8:00000005 x9=00000005                 # mv      s1, s0
; _vsnprintf.llvm.2580535111316217995 (printf.c:587)
      80000e54  x25:80002d20 RA:80002d1f x10=00000020   # lbu     a0, -1(s9)
      80000e58  x10:00000020                            # bnez    a0, pc - 40
      80000e30  x10:00000020 x26:00000025               # beq     a0, s10, pc + 48
; _vsnprintf.llvm.2580535111316217995 (printf.c:592)
      80000e34  x9:00000005 x8=00000006                 # addi    s0, s1, 1
      80000e38  x20:0011ff07 x11=0011ff07               # mv      a1, s4
      80000e3c  x9:00000005 x12=00000005                # mv      a2, s1
      80000e40  x22:ffffffff x13=ffffffff               # mv      a3, s6
      80000e44  x18:80001640 x1=80000e48                # jalr    s2
; _out_char.llvm.2580535111316217995 (printf.c:152)
      80001640  x10:00000020                            # beqz    a0, pc + 12
; _out_char.llvm.2580535111316217995 (printf.c:0)
      80001644  x11=f00b8000                            # lui     a1, 0xf00b8
; snrt_putchar (putchar.c:10)
;  in _out_char.llvm.2580535111316217995 (printf.c:153)
      80001648  x11:f00b8000 x10:00000020 WA:f00b8000   # sw      a0, 0(a1)
; _out_char.llvm.2580535111316217995 (printf.c:155)
      8000164c  x1:80000e48                             # ret
; _vsnprintf.llvm.2580535111316217995 (printf.c:593)
      80000e48  x2:0011feb0 x25:80002d20 WA:0011fec8    # sw      s9, 24(sp)
; _vsnprintf.llvm.2580535111316217995 (printf.c:594)
      80000e4c  x25:80002d20 x25=80002d21               # addi    s9, s9, 1
; _vsnprintf.llvm.2580535111316217995 (printf.c:0)
      80000e50  x8:00000006 x9=00000006                 # mv      s1, s0
; _vsnprintf.llvm.2580535111316217995 (printf.c:587)
      80000e54  x25:80002d21 RA:80002d20 x10=0000003d   # lbu     a0, -1(s9)
      80000e58  x10:0000003d                            # bnez    a0, pc - 40
      80000e30  x10:0000003d x26:00000025               # beq     a0, s10, pc + 48
; _vsnprintf.llvm.2580535111316217995 (printf.c:592)
      80000e34  x9:00000006 x8=00000007                 # addi    s0, s1, 1
      80000e38  x20:0011ff07 x11=0011ff07               # mv      a1, s4
      80000e3c  x9:00000006 x12=00000006                # mv      a2, s1
      80000e40  x22:ffffffff x13=ffffffff               # mv      a3, s6
      80000e44  x18:80001640 x1=80000e48                # jalr    s2
; _out_char.llvm.2580535111316217995 (printf.c:152)
      80001640  x10:0000003d                            # beqz    a0, pc + 12
; _out_char.llvm.2580535111316217995 (printf.c:0)
      80001644  x11=f00b8000                            # lui     a1, 0xf00b8
; snrt_putchar (putchar.c:10)
;  in _out_char.llvm.2580535111316217995 (printf.c:153)
      80001648  x11:f00b8000 x10:0000003d WA:f00b8000   # sw      a0, 0(a1)
; _out_char.llvm.2580535111316217995 (printf.c:155)
      8000164c  x1:80000e48                             # ret
; _vsnprintf.llvm.2580535111316217995 (printf.c:593)
      80000e48  x2:0011feb0 x25:80002d21 WA:0011fec8    # sw      s9, 24(sp)
; _vsnprintf.llvm.2580535111316217995 (printf.c:594)
      80000e4c  x25:80002d21 x25=80002d22               # addi    s9, s9, 1
; _vsnprintf.llvm.2580535111316217995 (printf.c:0)
      80000e50  x8:00000007 x9=00000007                 # mv      s1, s0
; _vsnprintf.llvm.2580535111316217995 (printf.c:587)
      80000e54  x25:80002d22 RA:80002d21 x10=00000020   # lbu     a0, -1(s9)
      80000e58  x10:00000020                            # bnez    a0, pc - 40
      80000e30  x10:00000020 x26:00000025               # beq     a0, s10, pc + 48
; _vsnprintf.llvm.2580535111316217995 (printf.c:592)
      80000e34  x9:00000007 x8=00000008                 # addi    s0, s1, 1
      80000e38  x20:0011ff07 x11=0011ff07               # mv      a1, s4
      80000e3c  x9:00000007 x12=00000007                # mv      a2, s1
      80000e40  x22:ffffffff x13=ffffffff               # mv      a3, s6
      80000e44  x18:80001640 x1=80000e48                # jalr    s2
; _out_char.llvm.2580535111316217995 (printf.c:152)
      80001640  x10:00000020                            # beqz    a0, pc + 12
; _out_char.llvm.2580535111316217995 (printf.c:0)
      80001644  x11=f00b8000                            # lui     a1, 0xf00b8
; snrt_putchar (putchar.c:10)
;  in _out_char.llvm.2580535111316217995 (printf.c:153)
      80001648  x11:f00b8000 x10:00000020 WA:f00b8000   # sw      a0, 0(a1)
; _out_char.llvm.2580535111316217995 (printf.c:155)
      8000164c  x1:80000e48                             # ret
; _vsnprintf.llvm.2580535111316217995 (printf.c:593)
      80000e48  x2:0011feb0 x25:80002d22 WA:0011fec8    # sw      s9, 24(sp)
; _vsnprintf.llvm.2580535111316217995 (printf.c:594)
      80000e4c  x25:80002d22 x25=80002d23               # addi    s9, s9, 1
; _vsnprintf.llvm.2580535111316217995 (printf.c:0)
      80000e50  x8:00000008 x9=00000008                 # mv      s1, s0
; _vsnprintf.llvm.2580535111316217995 (printf.c:587)
      80000e54  x25:80002d23 RA:80002d22 x10=00000025   # lbu     a0, -1(s9)
      80000e58  x10:00000025                            # bnez    a0, pc - 40
      80000e30  x10:00000025 x26:00000025               # beq     a0, s10, pc + 48
; _vsnprintf.llvm.2580535111316217995 (printf.c:602)
      80000e60  x8=00000000                             # li      s0, 0
      80000e64                                          # j       pc + 0xc
; _vsnprintf.llvm.2580535111316217995 (printf.c:0)
      80000e70  x2:0011feb0 x25:80002d23 WA:0011fec8    # sw      s9, 24(sp)
; _vsnprintf.llvm.2580535111316217995 (printf.c:604)
      80000e74  x25:80002d23 RA:80002d23 x10=00000066   # lbu     a0, 0(s9)
      80000e78  x10:00000066 x11=00000046               # addi    a1, a0, -32
      80000e7c  x27:00000010 x11:00000046               # bltu    s11, a1, pc + 76
; _is_digit (printf.c:183)
;  in _vsnprintf.llvm.2580535111316217995 (printf.c:616)
      80000ec8  x10:00000066 x11=00000036               # addi    a1, a0, -48
      80000ecc  x11:00000036 x11=00000036               # andi    a1, a1, 255
; _vsnprintf.llvm.2580535111316217995 (printf.c:616)
      80000ed0  x24:00000009 x11:00000036               # bltu    s8, a1, pc + 96
; _vsnprintf.llvm.2580535111316217995 (printf.c:0)
      80000f30  x2:0011feb0 RA:0011fec4 x13=0011ff14    # lw      a3, 20(sp)
; _vsnprintf.llvm.2580535111316217995 (printf.c:619)
      80000f34  x10:00000066 x19:0000002a               # bne     a0, s3, pc + 88
; _vsnprintf.llvm.2580535111316217995 (printf.c:0)
      80000f8c  x2:0011feb0 WA:0011fec0                 # sw      zero, 16(sp)
; _vsnprintf.llvm.2580535111316217995 (printf.c:633)
      80000f90  x25:80002d23 RA:80002d23 x10=00000066   # lbu     a0, 0(s9)
      80000f94  x10:00000066 x21:0000002e               # beq     a0, s5, pc - 160
; _vsnprintf.llvm.2580535111316217995 (printf.c:0)
      80000f98  x23=00000000                            # li      s7, 0
      80000f9c                                          # j       pc + 0xc
; _vsnprintf.llvm.2580535111316217995 (printf.c:647)
      80000fa8  x25:80002d23 RA:80002d23 x10=00000066   # lbu     a0, 0(s9)
      80000fac  x10:00000066 x11=fffffffe               # addi    a1, a0, -104
      80000fb0  x11:fffffffe x12=7fffffff               # srli    a2, a1, 1
      80000fb4  x11:fffffffe x11=00000000               # slli    a1, a1, 31
      80000fb8  x11:00000000 x12:7fffffff x11=7fffffff  # or      a1, a1, a2
      80000fbc  x24:00000009 x11:7fffffff               # bltu    s8, a1, pc + 84
; _vsnprintf.llvm.2580535111316217995 (printf.c:683)
      80001010  x10:00000066 x11=00000041               # addi    a1, a0, -37
      80001014  x12=00000053                            # li      a2, 83
      80001018  x12:00000053 x11:00000041               # bltu    a2, a1, pc + 308
; _vsnprintf.llvm.2580535111316217995 (printf.c:0)
      8000101c  x11:00000041 x11=00000104               # slli    a1, a1, 2
      80001020  x12=80003020                            # auipc   a2, 0x2
      80001024  x12:80003020 x12=80002da4               # addi    a2, a2, -636
      80001028  x11:00000104 x12:80002da4 x11=80002ea8  # add     a1, a1, a2
      8000102c  x11:80002ea8 RA:80002ea8 x12=80001088   # lw      a2, 0(a1)
      80001030  x11=00000008                            # li      a1, 8
      80001034  x17=00000010                            # li      a7, 16
      80001038  x12:80001088                            # jr      a2
; _vsnprintf.llvm.2580535111316217995 (printf.c:760)
      80001088  x11=00000046                            # li      a1, 70
      8000108c  x10:00000066 x11:00000046               # bne     a0, a1, pc + 8
; _vsnprintf.llvm.2580535111316217995 (printf.c:761)
      80001094  x13:0011ff14 x10=0011ff1b               # addi    a0, a3, 7
      80001098  x10:0011ff1b x10=0011ff18               # andi    a0, a0, -8
      8000109c  x10:0011ff18 RA:0011ff18 RA:0011ff1c f10=        0.000000  # fld     fa0, 0(a0)
      800010a0  x10:0011ff18 x10=0011ff20               # addi    a0, a0, 8
      800010a4  x2:0011feb0 x10:0011ff20 WA:0011fec4    # sw      a0, 20(sp)
      800010a8  x18:80001640 x10=80001640               # mv      a0, s2
      800010ac  x20:0011ff07 x11=0011ff07               # mv      a1, s4
      800010b0  x9:00000008 x12=00000008                # mv      a2, s1
      800010b4  x22:ffffffff x13=ffffffff               # mv      a3, s6
      800010b8  x23:00000000 x14=00000000               # mv      a4, s7
      800010bc  x2:0011feb0 RA:0011fec0 x15=00000000    # lw      a5, 16(sp)
      800010c0  x8:00000000 x16=00000000                # mv      a6, s0
      800010c4  x1=800020c4                             # auipc   ra, 0x1
      800010c8  x1:800020c4 x1=800010cc                 # jalr    ra, ra, -1976
; _ftoa (printf.c:340)
      8000190c  x2:0011feb0 x2=0011fe40                 # addi    sp, sp, -112
      80001910  x2:0011fe40 x1:800010cc WA:0011feac     # sw      ra, 108(sp)
      80001914  x2:0011fe40 x8:00000000 WA:0011fea8     # sw      s0, 104(sp)
      80001918  x2:0011fe40 x9:00000008 WA:0011fea4     # sw      s1, 100(sp)
      8000191c  x2:0011fe40 x18:80001640 WA:0011fea0    # sw      s2, 96(sp)
      80001920  x2:0011fe40 x19:0000002a WA:0011fe9c    # sw      s3, 92(sp)
      80001924  x2:0011fe40 x20:0011ff07 WA:0011fe98    # sw      s4, 88(sp)
      80001928  x2:0011fe40 x21:0000002e WA:0011fe94    # sw      s5, 84(sp)
      8000192c  x2:0011fe40 x22:ffffffff WA:0011fe90    # sw      s6, 80(sp)
      80001930  x2:0011fe40 x23:00000000 WA:0011fe8c    # sw      s7, 76(sp)
      80001934  x2:0011fe40 x24:00000009 WA:0011fe88    # sw      s8, 72(sp)
      80001938  x2:0011fe40 x25:80002d23 WA:0011fe84    # sw      s9, 68(sp)
      8000193c  x2:0011fe40 f08:        0.000000 WA:0011fe78 WA:0011fe7c  # fsd     fs0, 56(sp)
      80001940  x2:0011fe40 f09:        0.000000 WA:0011fe70 WA:0011fe74  # fsd     fs1, 48(sp)
      80001944  x2:0011fe40 f18:        0.000000 WA:0011fe68 WA:0011fe6c  # fsd     fs2, 40(sp)
      80001948  x9=80002948                             # auipc   s1, 0x1
      8000194c  x9:80002948 x9=80002f70                 # addi    s1, s1, 1576
      80001950  x9:80002f70 RA:80002f70 RA:80002f74 f00=-179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.000000  # fld     ft0, 0(s1)
; _ftoa (printf.c:351)
      80001954  f00:-179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.000000 f10:        0.000000 x9=00000001  # fle.d   s1, ft0, fa0
      80001958  x16:00000000 x23=00000000               # mv      s7, a6
; _ftoa (printf.c:0)
      8000195c  x15:00000000 x22=00000000               # mv      s6, a5
      80001960  x13:ffffffff x18=ffffffff               # mv      s2, a3
      80001964  x12:00000008 x19=00000008               # mv      s3, a2
      80001968  x11:0011ff07 x20=0011ff07               # mv      s4, a1
      8000196c  x10:80001640 x21=80001640               # mv      s5, a0
; _ftoa (printf.c:351)
      80001970  x9:00000001                             # bnez    s1, pc + 20
; _ftoa (printf.c:0)
      80001984  f10:        0.000000 f10:        0.000000 f08=        0.000000  # fsgnj.d fs0, fa0, fa0
      80001988  x10=80002988                            # auipc   a0, 0x1
      8000198c  x10:80002988 x10=80002f78               # addi    a0, a0, 1520
      80001990  x10:80002f78 RA:80002f78 RA:80002f7c f00=179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.000000  # fld     ft0, 0(a0)
; _ftoa (printf.c:353)
      80001994  f10:        0.000000 f00:179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.000000 x10=00000001  # fle.d   a0, fa0, ft0
      80001998  x10:00000001                            # bnez    a0, pc + 28
; _ftoa (printf.c:0)
      800019b4  x10=800029b4                            # auipc   a0, 0x1
      800019b8  x10:800029b4 x10=80002f80               # addi    a0, a0, 1484
      800019bc  x10:80002f80 RA:80002f80 RA:80002f84 f00=1000000000.000000  # fld     ft0, 0(a0)
      800019c0  x10=800029c0                            # auipc   a0, 0x1
      800019c4  x10:800029c0 x10=80002f88               # addi    a0, a0, 1480
      800019c8  x10:80002f88 RA:80002f88 RA:80002f8c f01=-1000000000.000000  # fld     ft1, 0(a0)
; _ftoa (printf.c:358)
      800019cc  f08:        0.000000 f00:1000000000.000000 x10=00000001  # fle.d   a0, fs0, ft0
      800019d0  f01:-1000000000.000000 f08:        0.000000 x11=00000001  # fle.d   a1, ft1, fs0
      800019d4  x10:00000001 x11:00000001 x10=00000001  # and     a0, a0, a1
      800019d8  x10:00000001                            # bnez    a0, pc + 156
; _ftoa (printf.c:374)
      80001a74  x23:00000000 x10=00000000               # andi    a0, s7, 1024
      80001a78  x25=00000006                            # li      s9, 6
      80001a7c  x10:00000000                            # beqz    a0, pc + 8
; _ftoa (printf.c:0)
      80001a84  x10=0000000a                            # li      a0, 10
      80001a88  f08:        0.000000 f08:        0.000000 f18=        0.000000  # fsgnjx.d fs2, fs0, fs0
; _ftoa (printf.c:378)
      80001a8c  x25:00000006 x10:0000000a               # bltu    s9, a0, pc + 56
; _ftoa (printf.c:0)
      80001ac4  x9=00000000                             # li      s1, 0
; _ftoa (printf.c:384)
      80001ac8  x25:00000006 x10=00000030               # slli    a0, s9, 3
      80001acc  x11=80002acc                            # auipc   a1, 0x1
      80001ad0  x11:80002acc x11=80002ef8               # addi    a1, a1, 1068
      80001ad4  x10:00000030 x11:80002ef8 x10=80002f28  # add     a0, a0, a1
      80001ad8  x10:80002f28 RA:80002f28 RA:80002f2c f01=  1000000.000000  # fld     ft1, 0(a0)
; _ftoa (printf.c:383)
      80001adc  f18:        0.000000 x24=00000000       # fcvt.w.d s8, fs2
; _ftoa (printf.c:384)
      80001ae0  x24:00000000 f00=        0.000000       # fcvt.d.w ft0, s8
      80001ae4  f18:        0.000000 f00:        0.000000 f00=        0.000000  # fsub.d  ft0, fs2, ft0
      80001ae8  f01:  1000000.000000 f00:        0.000000 f02=        0.000029  # fmul.d  ft2, ft1, ft0
; _ftoa (printf.c:0)
      80001aec  x10=80002aec                            # auipc   a0, 0x1
      80001af0  x10:80002aec x10=80002f90               # addi    a0, a0, 1188
      80001af4  x10:80002f90 RA:80002f90 RA:80002f94 f00=        0.500000  # fld     ft0, 0(a0)
; _ftoa (printf.c:385)
      80001af8  f02:        0.000029 x8=00000000        # fcvt.wu.d s0, ft2
; _ftoa (printf.c:386)
      80001afc  x8:00000000 f03=        0.000000        # fcvt.d.wu ft3, s0
      80001b00  f02:        0.000029 f03:        0.000000 f02=        0.000029  # fsub.d  ft2, ft2, ft3
; _ftoa (printf.c:388)
      80001b04  f02:        0.000029 f00:        0.500000 x10=00000001  # fle.d   a0, ft2, ft0
      80001b08  x10:00000001                            # bnez    a0, pc + 32
; _ftoa (printf.c:396)
      80001b28  f02:        0.000029 f00:        0.500000 x10=00000001  # flt.d   a0, ft2, ft0
      80001b2c  x10:00000001                            # bnez    a0, pc + 20
; _ftoa (printf.c:0)
      80001b40  f09=        0.000000                    # fcvt.d.w fs1, zero
; _ftoa (printf.c:403)
      80001b44  x25:00000006                            # beqz    s9, pc + 216
; _ftoa (printf.c:0)
      80001b48  x12=00000000                            # li      a2, 0
      80001b4c  x2:0011fe40 x10=0011fe48                # addi    a0, sp, 8
; _ftoa (printf.c:414)
      80001b50  x10:0011fe48 x9:00000000 x6=0011fe48    # add     t1, a0, s1
      80001b54  x5=00000020                             # li      t0, 32
      80001b58  x5:00000020 x9:00000000 x14=00000020    # sub     a4, t0, s1
      80001b5c  x11=ccccd000                            # lui     a1, 0xccccd
      80001b60  x11:ccccd000 x15=cccccccd               # addi    a5, a1, -819
      80001b64  x16=0000000a                            # li      a6, 10
      80001b68  x17=00000009                            # li      a7, 9
      80001b6c  x14:00000020 x12:00000000               # beq     a4, a2, pc + 200
; _ftoa (printf.c:0)
      80001b70  x8:00000000 x11=00000000                # mv      a1, s0
; _ftoa (printf.c:417)
      80001b74  x8:00000000 x15:cccccccd x8=00000000    # mulhu   s0, s0, a5
      80001b78  x8:00000000 x8=00000000                 # srli    s0, s0, 3
; _ftoa (printf.c:0)
      80001b7c  x8:00000000 x16:0000000a x10=00000000   # mul     a0, s0, a6
      80001b80  x11:00000000 x10:00000000 x10=00000000  # sub     a0, a1, a0
; _ftoa (printf.c:416)
      80001b84  x10:00000000 x10=00000030               # ori     a0, a0, 48
      80001b88  x6:0011fe48 x12:00000000 x13=0011fe48   # add     a3, t1, a2
      80001b8c  x13:0011fe48 x10:00000030 WA:0011fe48   # sb      a0, 0(a3)
; _ftoa (printf.c:417)
      80001b90  x12:00000000 x12=00000001               # addi    a2, a2, 1
      80001b94  x17:00000009 x11:00000000               # bltu    a7, a1, pc - 40
; _ftoa (printf.c:422)
      80001b98  x9:00000000 x12:00000001 x10=00000001   # add     a0, s1, a2
      80001b9c  x10:00000001 x11=00000000               # addi    a1, a0, -1
      80001ba0  x13=0000001e                            # li      a3, 30
      80001ba4  x13:0000001e x11:00000000 x13=00000000  # sltu    a3, a3, a1
      80001ba8  x25:00000006 x12:00000001 x14=00000007  # xor     a4, s9, a2
      80001bac  x14:00000007 x14=00000000               # seqz    a4, a4
      80001bb0  x13:00000000 x14:00000000 x13=00000000  # or      a3, a3, a4
      80001bb4  x13:00000000                            # bnez    a3, pc + 136
; _ftoa (printf.c:0)
      80001bb8  x2:0011fe40 x10=0011fe48                # addi    a0, sp, 8
; _ftoa (printf.c:422)
      80001bbc  x10:0011fe48 x9:00000000 x10=0011fe48   # add     a0, a0, s1
      80001bc0  x12:00000001 x11=fffffffe               # not     a1, a2
      80001bc4  x11:fffffffe x25:00000006 x8=00000004   # add     s0, a1, s9
      80001bc8  x9:00000000 x12:00000001 x9=00000001    # add     s1, s1, a2
      80001bcc  x11=0000001f                            # li      a1, 31
      80001bd0  x11:0000001f x9:00000001 x13=0000001e   # sub     a3, a1, s1
      80001bd4  x10:0011fe48 x12:00000001 x10=0011fe49  # add     a0, a0, a2
      80001bd8  x8:00000004 x11=00000004                # mv      a1, s0
      80001bdc  x8:00000004 x13:0000001e                # bltu    s0, a3, pc + 8
      80001be4  x11:00000004 x12=00000005               # addi    a2, a1, 1
; _ftoa (printf.c:423)
      80001be8  x11=00000030                            # li      a1, 48
      80001bec  x1=7ffffbec                             # auipc   ra, 0xffffe
      80001bf0  x1:7ffffbec x1=80001bf4                 # jalr    ra, ra, 1044
; memset (memset.S:30)
      80000000  x6=0000000f                             # li      t1, 15
; memset (memset.S:31)
      80000004  x10:0011fe49 x14=0011fe49               # mv      a4, a0
; memset (memset.S:32)
      80000008  x6:0000000f x12:00000005                # bgeu    t1, a2, pc + 60
; memset (memset.S:60)
      80000044  x6:0000000f x12:00000005 x13=0000000a   # sub     a3, t1, a2
; memset (memset.S:61)
      80000048  x13:0000000a x13=00000028               # slli    a3, a3, 2
; memset (memset.S:62)
      8000004c  x5=8000004c                             # auipc   t0, 0x0
; memset (memset.S:63)
      80000050  x13:00000028 x5:8000004c x13=80000074   # add     a3, a3, t0
; memset (memset.S:67)
      80000054  x13:80000074                            # jalr    zero, a3, 12
; memset (memset.S:79)
      80000080  x14:0011fe49 x11:00000030 WA:0011fe4d   # sb      a1, 4(a4)
; memset (memset.S:80)
      80000084  x14:0011fe49 x11:00000030 WA:0011fe4c   # sb      a1, 3(a4)
; memset (memset.S:81)
      80000088  x14:0011fe49 x11:00000030 WA:0011fe4b   # sb      a1, 2(a4)
; memset (memset.S:82)
      8000008c  x14:0011fe49 x11:00000030 WA:0011fe4a   # sb      a1, 1(a4)
; memset (memset.S:83)
      80000090  x14:0011fe49 x11:00000030 WA:0011fe49   # sb      a1, 0(a4)
; memset (memset.S:85)
      80000094  x1:80001bf4                             # ret
; _ftoa (printf.c:0)
      80001bf4  x10=00000000                            # li      a0, 0
; _ftoa (printf.c:422)
      80001bf8  x9:00000001 x10:00000000 x11=00000001   # add     a1, s1, a0
      80001bfc  x11:00000001 x11=00000001               # sltiu   a1, a1, 31
      80001c00  x8:00000004 x10:00000000 x12=00000004   # xor     a2, s0, a0
      80001c04  x12:00000004 x12=00000001               # snez    a2, a2
      80001c08  x11:00000001 x12:00000001 x12=00000001  # and     a2, a1, a2
      80001c0c  x10:00000000 x10=00000001               # addi    a0, a0, 1
      80001c10  x12:00000001                            # bnez    a2, pc - 24
      80001bf8  x9:00000001 x10:00000001 x11=00000002   # add     a1, s1, a0
      80001bfc  x11:00000002 x11=00000001               # sltiu   a1, a1, 31
      80001c00  x8:00000004 x10:00000001 x12=00000005   # xor     a2, s0, a0
      80001c04  x12:00000005 x12=00000001               # snez    a2, a2
      80001c08  x11:00000001 x12:00000001 x12=00000001  # and     a2, a1, a2
      80001c0c  x10:00000001 x10=00000002               # addi    a0, a0, 1
      80001c10  x12:00000001                            # bnez    a2, pc - 24
      80001bf8  x9:00000001 x10:00000002 x11=00000003   # add     a1, s1, a0
      80001bfc  x11:00000003 x11=00000001               # sltiu   a1, a1, 31
      80001c00  x8:00000004 x10:00000002 x12=00000006   # xor     a2, s0, a0
      80001c04  x12:00000006 x12=00000001               # snez    a2, a2
      80001c08  x11:00000001 x12:00000001 x12=00000001  # and     a2, a1, a2
      80001c0c  x10:00000002 x10=00000003               # addi    a0, a0, 1
      80001c10  x12:00000001                            # bnez    a2, pc - 24
      80001bf8  x9:00000001 x10:00000003 x11=00000004   # add     a1, s1, a0
      80001bfc  x11:00000004 x11=00000001               # sltiu   a1, a1, 31
      80001c00  x8:00000004 x10:00000003 x12=00000007   # xor     a2, s0, a0
      80001c04  x12:00000007 x12=00000001               # snez    a2, a2
      80001c08  x11:00000001 x12:00000001 x12=00000001  # and     a2, a1, a2
      80001c0c  x10:00000003 x10=00000004               # addi    a0, a0, 1
      80001c10  x12:00000001                            # bnez    a2, pc - 24
      80001bf8  x9:00000001 x10:00000004 x11=00000005   # add     a1, s1, a0
      80001bfc  x11:00000005 x11=00000001               # sltiu   a1, a1, 31
      80001c00  x8:00000004 x10:00000004 x12=00000000   # xor     a2, s0, a0
      80001c04  x12:00000000 x12=00000000               # snez    a2, a2
      80001c08  x11:00000001 x12:00000000 x12=00000000  # and     a2, a1, a2
      80001c0c  x10:00000004 x10=00000005               # addi    a0, a0, 1
      80001c10  x12:00000000                            # bnez    a2, pc - 24
; _ftoa (printf.c:425)
      80001c14  x9:00000001 x10:00000005 x10=00000006   # add     a0, s1, a0
      80001c18                                          # j       pc + 0x28
      80001c40  x11:00000001                            # beqz    a1, pc + 28
; _ftoa (printf.c:427)
      80001c44  x10:00000006 x9=00000007                # addi    s1, a0, 1
; _ftoa (printf.c:0)
      80001c48  x2:0011fe40 x11=0011fe48                # addi    a1, sp, 8
; _ftoa (printf.c:427)
      80001c4c  x11:0011fe48 x10:00000006 x10=0011fe4e  # add     a0, a1, a0
      80001c50  x11=0000002e                            # li      a1, 46
      80001c54  x10:0011fe4e x11:0000002e WA:0011fe4e   # sb      a1, 0(a0)
      80001c58                                          # j       pc + 0x8
; _ftoa (printf.c:0)
      80001c60  x10=00000020                            # li      a0, 32
; _ftoa (printf.c:432)
      80001c64  x9:00000007 x5=00000007                 # mv      t0, s1
      80001c68  x10:00000020 x9:00000007                # bltu    a0, s1, pc + 8
; _ftoa (printf.c:0)
      80001c6c  x5=00000020                             # li      t0, 32
      80001c70  f08:        0.000000 f09:        0.000000 x25=00000000  # flt.d   s9, fs0, fs1
      80001c74  x10=66666000                            # lui     a0, 0x66666
      80001c78  x10:66666000 x11=66666667               # addi    a1, a0, 1639
      80001c7c  x16=0000000a                            # li      a6, 10
      80001c80  x2:0011fe40 x13=0011fe48                # addi    a3, sp, 8
      80001c84  x14=00000012                            # li      a4, 18
; _ftoa (printf.c:432)
      80001c88  x5:00000020 x9:00000007                 # beq     t0, s1, pc + 64
; _ftoa (printf.c:434)
      80001c8c  x24:00000000 x11:66666667 x10=00000000  # mulh    a0, s8, a1
      80001c90  x10:00000000 x15=00000000               # srli    a5, a0, 31
      80001c94  x10:00000000 x10=00000000               # srai    a0, a0, 2
      80001c98  x10:00000000 x15:00000000 x10=00000000  # add     a0, a0, a5
; _ftoa (printf.c:0)
      80001c9c  x10:00000000 x16:0000000a x15=00000000  # mul     a5, a0, a6
      80001ca0  x24:00000000 x15:00000000 x15=00000000  # sub     a5, s8, a5
; _ftoa (printf.c:433)
      80001ca4  x15:00000000 x15=00000030               # addi    a5, a5, 48
      80001ca8  x9:00000007 x8=00000008                 # addi    s0, s1, 1
      80001cac  x13:0011fe48 x9:00000007 x9=0011fe4f    # add     s1, a3, s1
; _ftoa (printf.c:434)
      80001cb0  x24:00000000 x12=00000009               # addi    a2, s8, 9
; _ftoa (printf.c:433)
      80001cb4  x9:0011fe4f x15:00000030 WA:0011fe4f    # sb      a5, 0(s1)
; _ftoa (printf.c:0)
      80001cb8  x8:00000008 x9=00000008                 # mv      s1, s0
      80001cbc  x10:00000000 x24=00000000               # mv      s8, a0
; _ftoa (printf.c:434)
      80001cc0  x14:00000012 x12:00000009               # bltu    a4, a2, pc - 56
      80001cc4                                          # j       pc + 0x8
; _ftoa (printf.c:440)
      80001ccc  x23:00000000 x10=00000000               # andi    a0, s7, 3
      80001cd0  x11=00000001                            # li      a1, 1
      80001cd4  x10:00000000 x11:00000001               # bne     a0, a1, pc + 108
; _ftoa (printf.c:0)
      80001d40  x10=0000001f                            # li      a0, 31
; _ftoa (printf.c:449)
      80001d44  x10:0000001f x8:00000008                # bltu    a0, s0, pc + 84
; _ftoa (printf.c:450)
      80001d48  x25:00000000                            # beqz    s9, pc + 24
; _ftoa (printf.c:453)
      80001d60  x23:00000000 x10=00000000               # andi    a0, s7, 4
      80001d64  x10:00000000                            # bnez    a0, pc + 32
; _ftoa (printf.c:456)
      80001d68  x23:00000000 x10=00000000               # andi    a0, s7, 8
      80001d6c  x10:00000000                            # beqz    a0, pc + 44
; _ftoa (printf.c:461)
      80001d98  x2:0011fe40 x14=0011fe48                # addi    a4, sp, 8
      80001d9c  x21:80001640 x10=80001640               # mv      a0, s5
      80001da0  x20:0011ff07 x11=0011ff07               # mv      a1, s4
      80001da4  x19:00000008 x12=00000008               # mv      a2, s3
      80001da8  x18:ffffffff x13=ffffffff               # mv      a3, s2
      80001dac  x8:00000008 x15=00000008                # mv      a5, s0
      80001db0                                          # j       pc - 0x38c
; _ftoa (printf.c:0)
      80001a24  x22:00000000 x16=00000000               # mv      a6, s6
      80001a28  x23:00000000 x17=00000000               # mv      a7, s7
      80001a2c  x1=80002a2c                             # auipc   ra, 0x1
      80001a30  x1:80002a2c x1=80001a34                 # jalr    ra, ra, -1360
; _out_rev (printf.c:200)
      800024dc  x2:0011fe40 x2=0011fe10                 # addi    sp, sp, -48
; _out_rev (printf.c:0)
      800024e0  x2:0011fe10 x1:80001a34 WA:0011fe3c     # sw      ra, 44(sp)
      800024e4  x2:0011fe10 x8:00000008 WA:0011fe38     # sw      s0, 40(sp)
      800024e8  x2:0011fe10 x9:00000008 WA:0011fe34     # sw      s1, 36(sp)
      800024ec  x2:0011fe10 x18:ffffffff WA:0011fe30    # sw      s2, 32(sp)
      800024f0  x2:0011fe10 x19:00000008 WA:0011fe2c    # sw      s3, 28(sp)
      800024f4  x2:0011fe10 x20:0011ff07 WA:0011fe28    # sw      s4, 24(sp)
      800024f8  x2:0011fe10 x21:80001640 WA:0011fe24    # sw      s5, 20(sp)
      800024fc  x2:0011fe10 x22:00000000 WA:0011fe20    # sw      s6, 16(sp)
      80002500  x2:0011fe10 x23:00000000 WA:0011fe1c    # sw      s7, 12(sp)
      80002504  x2:0011fe10 x24:00000000 WA:0011fe18    # sw      s8, 8(sp)
      80002508  x2:0011fe10 x25:00000000 WA:0011fe14    # sw      s9, 4(sp)
      8000250c  x2:0011fe10 x26:00000025 WA:0011fe10    # sw      s10, 0(sp)
      80002510  x16:00000000 x18=00000000               # mv      s2, a6
      80002514  x15:00000008 x24=00000008               # mv      s8, a5
      80002518  x14:0011fe48 x22=0011fe48               # mv      s6, a4
      8000251c  x13:ffffffff x19=ffffffff               # mv      s3, a3
      80002520  x12:00000008 x20=00000008               # mv      s4, a2
      80002524  x11:0011ff07 x21=0011ff07               # mv      s5, a1
      80002528  x10:80001640 x23=80001640               # mv      s7, a0
; _out_rev (printf.c:204)
      8000252c  x17:00000000 x10=00000000               # andi    a0, a7, 3
      80002530  x10:00000000 x10=00000000               # snez    a0, a0
      80002534  x15:00000008 x16:00000000 x11=00000000  # sltu    a1, a5, a6
      80002538  x11:00000000 x11=00000001               # xori    a1, a1, 1
      8000253c  x11:00000001 x10:00000000 x10=00000001  # or      a0, a1, a0
      80002540  x17:00000000 x25=00000000               # andi    s9, a7, 2
      80002544  x12:00000008 x8=00000008                # mv      s0, a2
      80002548  x10:00000001                            # bnez    a0, pc + 44
; _out_rev (printf.c:0)
      80002574  x25:00000000 x25=00000000               # srli    s9, s9, 1
; _out_rev (printf.c:211)
      80002578  x24:00000008                            # beqz    s8, pc + 56
      8000257c  x22:0011fe48 x22=0011fe47               # addi    s6, s6, -1
; _out_rev (printf.c:212)
      80002580  x22:0011fe47 x24:00000008 x10=0011fe4f  # add     a0, s6, s8
      80002584  x10:0011fe4f RA:0011fe4f x10=00000030   # lbu     a0, 0(a0)
      80002588  x24:00000008 x26=00000007               # addi    s10, s8, -1
      8000258c  x8:00000008 x9=00000009                 # addi    s1, s0, 1
      80002590  x21:0011ff07 x11=0011ff07               # mv      a1, s5
      80002594  x8:00000008 x12=00000008                # mv      a2, s0
      80002598  x19:ffffffff x13=ffffffff               # mv      a3, s3
      8000259c  x23:80001640 x1=800025a0                # jalr    s7
; _out_char.llvm.2580535111316217995 (printf.c:152)
      80001640  x10:00000030                            # beqz    a0, pc + 12
; _out_char.llvm.2580535111316217995 (printf.c:0)
      80001644  x11=f00b8000                            # lui     a1, 0xf00b8
; snrt_putchar (putchar.c:10)
;  in _out_char.llvm.2580535111316217995 (printf.c:153)
      80001648  x11:f00b8000 x10:00000030 WA:f00b8000   # sw      a0, 0(a1)
; _out_char.llvm.2580535111316217995 (printf.c:155)
      8000164c  x1:800025a0                             # ret
; _out_rev (printf.c:0)
      800025a0  x9:00000009 x8=00000009                 # mv      s0, s1
      800025a4  x26:00000007 x24=00000007               # mv      s8, s10
; _out_rev (printf.c:211)
      800025a8  x26:00000007                            # bnez    s10, pc - 40
; _out_rev (printf.c:212)
      80002580  x22:0011fe47 x24:00000007 x10=0011fe4e  # add     a0, s6, s8
      80002584  x10:0011fe4e RA:0011fe4e x10=0000002e   # lbu     a0, 0(a0)
      80002588  x24:00000007 x26=00000006               # addi    s10, s8, -1
      8000258c  x8:00000009 x9=0000000a                 # addi    s1, s0, 1
      80002590  x21:0011ff07 x11=0011ff07               # mv      a1, s5
      80002594  x8:00000009 x12=00000009                # mv      a2, s0
      80002598  x19:ffffffff x13=ffffffff               # mv      a3, s3
      8000259c  x23:80001640 x1=800025a0                # jalr    s7
; _out_char.llvm.2580535111316217995 (printf.c:152)
      80001640  x10:0000002e                            # beqz    a0, pc + 12
; _out_char.llvm.2580535111316217995 (printf.c:0)
      80001644  x11=f00b8000                            # lui     a1, 0xf00b8
; snrt_putchar (putchar.c:10)
;  in _out_char.llvm.2580535111316217995 (printf.c:153)
      80001648  x11:f00b8000 x10:0000002e WA:f00b8000   # sw      a0, 0(a1)
; _out_char.llvm.2580535111316217995 (printf.c:155)
      8000164c  x1:800025a0                             # ret
; _out_rev (printf.c:0)
      800025a0  x9:0000000a x8=0000000a                 # mv      s0, s1
      800025a4  x26:00000006 x24=00000006               # mv      s8, s10
; _out_rev (printf.c:211)
      800025a8  x26:00000006                            # bnez    s10, pc - 40
; _out_rev (printf.c:212)
      80002580  x22:0011fe47 x24:00000006 x10=0011fe4d  # add     a0, s6, s8
      80002584  x10:0011fe4d RA:0011fe4d x10=00000030   # lbu     a0, 0(a0)
      80002588  x24:00000006 x26=00000005               # addi    s10, s8, -1
      8000258c  x8:0000000a x9=0000000b                 # addi    s1, s0, 1
      80002590  x21:0011ff07 x11=0011ff07               # mv      a1, s5
      80002594  x8:0000000a x12=0000000a                # mv      a2, s0
      80002598  x19:ffffffff x13=ffffffff               # mv      a3, s3
      8000259c  x23:80001640 x1=800025a0                # jalr    s7
; _out_char.llvm.2580535111316217995 (printf.c:152)
      80001640  x10:00000030                            # beqz    a0, pc + 12
; _out_char.llvm.2580535111316217995 (printf.c:0)
      80001644  x11=f00b8000                            # lui     a1, 0xf00b8
; snrt_putchar (putchar.c:10)
;  in _out_char.llvm.2580535111316217995 (printf.c:153)
      80001648  x11:f00b8000 x10:00000030 WA:f00b8000   # sw      a0, 0(a1)
; _out_char.llvm.2580535111316217995 (printf.c:155)
      8000164c  x1:800025a0                             # ret
; _out_rev (printf.c:0)
      800025a0  x9:0000000b x8=0000000b                 # mv      s0, s1
      800025a4  x26:00000005 x24=00000005               # mv      s8, s10
; _out_rev (printf.c:211)
      800025a8  x26:00000005                            # bnez    s10, pc - 40
; _out_rev (printf.c:212)
      80002580  x22:0011fe47 x24:00000005 x10=0011fe4c  # add     a0, s6, s8
      80002584  x10:0011fe4c RA:0011fe4c x10=00000030   # lbu     a0, 0(a0)
      80002588  x24:00000005 x26=00000004               # addi    s10, s8, -1
      8000258c  x8:0000000b x9=0000000c                 # addi    s1, s0, 1
      80002590  x21:0011ff07 x11=0011ff07               # mv      a1, s5
      80002594  x8:0000000b x12=0000000b                # mv      a2, s0
      80002598  x19:ffffffff x13=ffffffff               # mv      a3, s3
      8000259c  x23:80001640 x1=800025a0                # jalr    s7
; _out_char.llvm.2580535111316217995 (printf.c:152)
      80001640  x10:00000030                            # beqz    a0, pc + 12
; _out_char.llvm.2580535111316217995 (printf.c:0)
      80001644  x11=f00b8000                            # lui     a1, 0xf00b8
; snrt_putchar (putchar.c:10)
;  in _out_char.llvm.2580535111316217995 (printf.c:153)
      80001648  x11:f00b8000 x10:00000030 WA:f00b8000   # sw      a0, 0(a1)
; _out_char.llvm.2580535111316217995 (printf.c:155)
      8000164c  x1:800025a0                             # ret
; _out_rev (printf.c:0)
      800025a0  x9:0000000c x8=0000000c                 # mv      s0, s1
      800025a4  x26:00000004 x24=00000004               # mv      s8, s10
; _out_rev (printf.c:211)
      800025a8  x26:00000004                            # bnez    s10, pc - 40
; _out_rev (printf.c:212)
      80002580  x22:0011fe47 x24:00000004 x10=0011fe4b  # add     a0, s6, s8
      80002584  x10:0011fe4b RA:0011fe4b x10=00000030   # lbu     a0, 0(a0)
      80002588  x24:00000004 x26=00000003               # addi    s10, s8, -1
      8000258c  x8:0000000c x9=0000000d                 # addi    s1, s0, 1
      80002590  x21:0011ff07 x11=0011ff07               # mv      a1, s5
      80002594  x8:0000000c x12=0000000c                # mv      a2, s0
      80002598  x19:ffffffff x13=ffffffff               # mv      a3, s3
      8000259c  x23:80001640 x1=800025a0                # jalr    s7
; _out_char.llvm.2580535111316217995 (printf.c:152)
      80001640  x10:00000030                            # beqz    a0, pc + 12
; _out_char.llvm.2580535111316217995 (printf.c:0)
      80001644  x11=f00b8000                            # lui     a1, 0xf00b8
; snrt_putchar (putchar.c:10)
;  in _out_char.llvm.2580535111316217995 (printf.c:153)
      80001648  x11:f00b8000 x10:00000030 WA:f00b8000   # sw      a0, 0(a1)
; _out_char.llvm.2580535111316217995 (printf.c:155)
      8000164c  x1:800025a0                             # ret
; _out_rev (printf.c:0)
      800025a0  x9:0000000d x8=0000000d                 # mv      s0, s1
      800025a4  x26:00000003 x24=00000003               # mv      s8, s10
; _out_rev (printf.c:211)
      800025a8  x26:00000003                            # bnez    s10, pc - 40
; _out_rev (printf.c:212)
      80002580  x22:0011fe47 x24:00000003 x10=0011fe4a  # add     a0, s6, s8
      80002584  x10:0011fe4a RA:0011fe4a x10=00000030   # lbu     a0, 0(a0)
      80002588  x24:00000003 x26=00000002               # addi    s10, s8, -1
      8000258c  x8:0000000d x9=0000000e                 # addi    s1, s0, 1
      80002590  x21:0011ff07 x11=0011ff07               # mv      a1, s5
      80002594  x8:0000000d x12=0000000d                # mv      a2, s0
      80002598  x19:ffffffff x13=ffffffff               # mv      a3, s3
      8000259c  x23:80001640 x1=800025a0                # jalr    s7
; _out_char.llvm.2580535111316217995 (printf.c:152)
      80001640  x10:00000030                            # beqz    a0, pc + 12
; _out_char.llvm.2580535111316217995 (printf.c:0)
      80001644  x11=f00b8000                            # lui     a1, 0xf00b8
; snrt_putchar (putchar.c:10)
;  in _out_char.llvm.2580535111316217995 (printf.c:153)
      80001648  x11:f00b8000 x10:00000030 WA:f00b8000   # sw      a0, 0(a1)
; _out_char.llvm.2580535111316217995 (printf.c:155)
      8000164c  x1:800025a0                             # ret
; _out_rev (printf.c:0)
      800025a0  x9:0000000e x8=0000000e                 # mv      s0, s1
      800025a4  x26:00000002 x24=00000002               # mv      s8, s10
; _out_rev (printf.c:211)
      800025a8  x26:00000002                            # bnez    s10, pc - 40
; _out_rev (printf.c:212)
      80002580  x22:0011fe47 x24:00000002 x10=0011fe49  # add     a0, s6, s8
      80002584  x10:0011fe49 RA:0011fe49 x10=00000030   # lbu     a0, 0(a0)
      80002588  x24:00000002 x26=00000001               # addi    s10, s8, -1
      8000258c  x8:0000000e x9=0000000f                 # addi    s1, s0, 1
      80002590  x21:0011ff07 x11=0011ff07               # mv      a1, s5
      80002594  x8:0000000e x12=0000000e                # mv      a2, s0
      80002598  x19:ffffffff x13=ffffffff               # mv      a3, s3
      8000259c  x23:80001640 x1=800025a0                # jalr    s7
; _out_char.llvm.2580535111316217995 (printf.c:152)
      80001640  x10:00000030                            # beqz    a0, pc + 12
; _out_char.llvm.2580535111316217995 (printf.c:0)
      80001644  x11=f00b8000                            # lui     a1, 0xf00b8
; snrt_putchar (putchar.c:10)
;  in _out_char.llvm.2580535111316217995 (printf.c:153)
      80001648  x11:f00b8000 x10:00000030 WA:f00b8000   # sw      a0, 0(a1)
; _out_char.llvm.2580535111316217995 (printf.c:155)
      8000164c  x1:800025a0                             # ret
; _out_rev (printf.c:0)
      800025a0  x9:0000000f x8=0000000f                 # mv      s0, s1
      800025a4  x26:00000001 x24=00000001               # mv      s8, s10
; _out_rev (printf.c:211)
      800025a8  x26:00000001                            # bnez    s10, pc - 40
; _out_rev (printf.c:212)
      80002580  x22:0011fe47 x24:00000001 x10=0011fe48  # add     a0, s6, s8
      80002584  x10:0011fe48 RA:0011fe48 x10=00000030   # lbu     a0, 0(a0)
      80002588  x24:00000001 x26=00000000               # addi    s10, s8, -1
      8000258c  x8:0000000f x9=00000010                 # addi    s1, s0, 1
      80002590  x21:0011ff07 x11=0011ff07               # mv      a1, s5
      80002594  x8:0000000f x12=0000000f                # mv      a2, s0
      80002598  x19:ffffffff x13=ffffffff               # mv      a3, s3
      8000259c  x23:80001640 x1=800025a0                # jalr    s7
; _out_char.llvm.2580535111316217995 (printf.c:152)
      80001640  x10:00000030                            # beqz    a0, pc + 12
; _out_char.llvm.2580535111316217995 (printf.c:0)
      80001644  x11=f00b8000                            # lui     a1, 0xf00b8
; snrt_putchar (putchar.c:10)
;  in _out_char.llvm.2580535111316217995 (printf.c:153)
      80001648  x11:f00b8000 x10:00000030 WA:f00b8000   # sw      a0, 0(a1)
; _out_char.llvm.2580535111316217995 (printf.c:155)
      8000164c  x1:800025a0                             # ret
; _out_rev (printf.c:0)
      800025a0  x9:00000010 x8=00000010                 # mv      s0, s1
      800025a4  x26:00000000 x24=00000000               # mv      s8, s10
; _out_rev (printf.c:211)
      800025a8  x26:00000000                            # bnez    s10, pc - 40
      800025ac                                          # j       pc + 0x8
; _out_rev (printf.c:0)
      800025b4  x9:00000010 x20:00000008 x10=00000008   # sub     a0, s1, s4
      800025b8  x10:00000008 x18:00000000 x10=00000000  # sltu    a0, a0, s2
      800025bc  x10:00000000 x10=00000001               # xori    a0, a0, 1
; _out_rev (printf.c:216)
      800025c0  x25:00000000 x11=00000001               # xori    a1, s9, 1
      800025c4  x11:00000001 x10:00000001 x10=00000001  # or      a0, a1, a0
      800025c8  x10:00000001                            # bnez    a0, pc + 48
; _out_rev (printf.c:0)
      800025f8  x9:00000010 x8=00000010                 # mv      s0, s1
; _out_rev (printf.c:222)
      800025fc  x8:00000010 x10=00000010                # mv      a0, s0
      80002600  x2:0011fe10 RA:0011fe10 x26=00000025    # lw      s10, 0(sp)
      80002604  x2:0011fe10 RA:0011fe14 x25=00000000    # lw      s9, 4(sp)
      80002608  x2:0011fe10 RA:0011fe18 x24=00000000    # lw      s8, 8(sp)
      8000260c  x2:0011fe10 RA:0011fe1c x23=00000000    # lw      s7, 12(sp)
      80002610  x2:0011fe10 RA:0011fe20 x22=00000000    # lw      s6, 16(sp)
      80002614  x2:0011fe10 RA:0011fe24 x21=80001640    # lw      s5, 20(sp)
      80002618  x2:0011fe10 RA:0011fe28 x20=0011ff07    # lw      s4, 24(sp)
      8000261c  x2:0011fe10 RA:0011fe2c x19=00000008    # lw      s3, 28(sp)
      80002620  x2:0011fe10 RA:0011fe30 x18=ffffffff    # lw      s2, 32(sp)
      80002624  x2:0011fe10 RA:0011fe34 x9=00000008     # lw      s1, 36(sp)
      80002628  x2:0011fe10 RA:0011fe38 x8=00000008     # lw      s0, 40(sp)
      8000262c  x2:0011fe10 RA:0011fe3c x1=80001a34     # lw      ra, 44(sp)
      80002630  x2:0011fe10 x2=0011fe40                 # addi    sp, sp, 48
      80002634  x1:80001a34                             # ret
; _ftoa (printf.c:462)
      80001a34  x2:0011fe40 RA:0011fe68 RA:0011fe6c f18=        0.000000  # fld     fs2, 40(sp)
      80001a38  x2:0011fe40 RA:0011fe70 RA:0011fe74 f09=        0.000000  # fld     fs1, 48(sp)
      80001a3c  x2:0011fe40 RA:0011fe78 RA:0011fe7c f08=        0.000000  # fld     fs0, 56(sp)
      80001a40  x2:0011fe40 RA:0011fe84 x25=80002d23    # lw      s9, 68(sp)
      80001a44  x2:0011fe40 RA:0011fe88 x24=00000009    # lw      s8, 72(sp)
      80001a48  x2:0011fe40 RA:0011fe8c x23=00000000    # lw      s7, 76(sp)
      80001a4c  x2:0011fe40 RA:0011fe90 x22=ffffffff    # lw      s6, 80(sp)
      80001a50  x2:0011fe40 RA:0011fe94 x21=0000002e    # lw      s5, 84(sp)
      80001a54  x2:0011fe40 RA:0011fe98 x20=0011ff07    # lw      s4, 88(sp)
      80001a58  x2:0011fe40 RA:0011fe9c x19=0000002a    # lw      s3, 92(sp)
      80001a5c  x2:0011fe40 RA:0011fea0 x18=80001640    # lw      s2, 96(sp)
      80001a60  x2:0011fe40 RA:0011fea4 x9=00000008     # lw      s1, 100(sp)
      80001a64  x2:0011fe40 RA:0011fea8 x8=00000000     # lw      s0, 104(sp)
      80001a68  x2:0011fe40 RA:0011feac x1=800010cc     # lw      ra, 108(sp)
      80001a6c  x2:0011fe40 x2=0011feb0                 # addi    sp, sp, 112
      80001a70  x1:800010cc                             # ret
; _vsnprintf.llvm.2580535111316217995 (printf.c:0)
      800010cc                                          # j       pc + 0x440
      8000150c  x10:00000010 x9=00000010                # mv      s1, a0
      80001510  x25:80002d23 x13=80002d24               # addi    a3, s9, 1
      80001514  x2:0011feb0 x13:80002d24 WA:0011fec8    # sw      a3, 24(sp)
      80001518                                          # j       pc - 0x6f4
; _vsnprintf.llvm.2580535111316217995 (printf.c:587)
      80000e24  x13:80002d24 x25=80002d25               # addi    s9, a3, 1
      80000e28  x25:80002d25 RA:80002d24 x10=0000000a   # lbu     a0, -1(s9)
      80000e2c  x10:0000000a                            # beqz    a0, pc + 1976
      80000e30  x10:0000000a x26:00000025               # beq     a0, s10, pc + 48
; _vsnprintf.llvm.2580535111316217995 (printf.c:592)
      80000e34  x9:00000010 x8=00000011                 # addi    s0, s1, 1
      80000e38  x20:0011ff07 x11=0011ff07               # mv      a1, s4
      80000e3c  x9:00000010 x12=00000010                # mv      a2, s1
      80000e40  x22:ffffffff x13=ffffffff               # mv      a3, s6
      80000e44  x18:80001640 x1=80000e48                # jalr    s2
; _out_char.llvm.2580535111316217995 (printf.c:152)
      80001640  x10:0000000a                            # beqz    a0, pc + 12
; _out_char.llvm.2580535111316217995 (printf.c:0)
      80001644  x11=f00b8000                            # lui     a1, 0xf00b8
; snrt_putchar (putchar.c:10)
;  in _out_char.llvm.2580535111316217995 (printf.c:153)
      80001648  x11:f00b8000 x10:0000000a WA:f00b8000   # sw      a0, 0(a1)
; _out_char.llvm.2580535111316217995 (printf.c:155)
      8000164c  x1:80000e48                             # ret
; _vsnprintf.llvm.2580535111316217995 (printf.c:593)
      80000e48  x2:0011feb0 x25:80002d25 WA:0011fec8    # sw      s9, 24(sp)
; _vsnprintf.llvm.2580535111316217995 (printf.c:594)
      80000e4c  x25:80002d25 x25=80002d26               # addi    s9, s9, 1
; _vsnprintf.llvm.2580535111316217995 (printf.c:0)
      80000e50  x8:00000011 x9=00000011                 # mv      s1, s0
; _vsnprintf.llvm.2580535111316217995 (printf.c:587)
      80000e54  x25:80002d26 RA:80002d25 x10=00000000   # lbu     a0, -1(s9)
      80000e58  x10:00000000                            # bnez    a0, pc - 40
      80000e5c                                          # j       pc + 0x788
; _vsnprintf.llvm.2580535111316217995 (printf.c:853)
      800015e4  x9:00000011 x12=00000011                # mv      a2, s1
      800015e8  x9:00000011 x22:ffffffff                # bltu    s1, s6, pc + 8
      800015f0  x10=00000000                            # li      a0, 0
      800015f4  x20:0011ff07 x11=0011ff07               # mv      a1, s4
      800015f8  x22:ffffffff x13=ffffffff               # mv      a3, s6
      800015fc  x18:80001640 x1=80001600                # jalr    s2
; _out_char.llvm.2580535111316217995 (printf.c:152)
      80001640  x10:00000000                            # beqz    a0, pc + 12
; _out_char.llvm.2580535111316217995 (printf.c:155)
      8000164c  x1:80001600                             # ret
; _vsnprintf.llvm.2580535111316217995 (printf.c:856)
      80001600  x9:00000011 x10=00000011                # mv      a0, s1
      80001604  x2:0011feb0 RA:0011fecc x27=00000000    # lw      s11, 28(sp)
      80001608  x2:0011feb0 RA:0011fed0 x26=00000000    # lw      s10, 32(sp)
      8000160c  x2:0011feb0 RA:0011fed4 x25=00000000    # lw      s9, 36(sp)
      80001610  x2:0011feb0 RA:0011fed8 x24=00000000    # lw      s8, 40(sp)
      80001614  x2:0011feb0 RA:0011fedc x23=00000000    # lw      s7, 44(sp)
      80001618  x2:0011feb0 RA:0011fee0 x22=00000000    # lw      s6, 48(sp)
      8000161c  x2:0011feb0 RA:0011fee4 x21=00000000    # lw      s5, 52(sp)
      80001620  x2:0011feb0 RA:0011fee8 x20=00000000    # lw      s4, 56(sp)
      80001624  x2:0011feb0 RA:0011feec x19=001000f0    # lw      s3, 60(sp)
      80001628  x2:0011feb0 RA:0011fef0 x18=00100000    # lw      s2, 64(sp)
      8000162c  x2:0011feb0 RA:0011fef4 x9=00000000     # lw      s1, 68(sp)
      80001630  x2:0011feb0 RA:0011fef8 x8=00100240     # lw      s0, 72(sp)
      80001634  x2:0011feb0 RA:0011fefc x1=80000d8c     # lw      ra, 76(sp)
      80001638  x2:0011feb0 x2=0011ff00                 # addi    sp, sp, 80
      8000163c  x1:80000d8c                             # ret
; printf_ (printf.c:869)
      80000d8c  x2:0011ff00 RA:0011ff0c x1=80000880     # lw      ra, 12(sp)
      80000d90  x2:0011ff00 x2=0011ff30                 # addi    sp, sp, 48
      80000d94  x1:80000880                             # ret
; main (bench_matmul.c:0)
      80000880  x10=80002880                            # auipc   a0, 0x2
      80000884  x10:80002880 x10=80002f68               # addi    a0, a0, 1768
      80000888  x10:80002f68 RA:80002f68 RA:80002f6c f00=        0.000100  # fld     ft0, 0(a0)
; main (bench_matmul.c:46)
      8000088c  f00:        0.000100 f08:        0.000000 x10=00000000  # flt.d   a0, ft0, fs0
; main (bench_matmul.c:47)
      80000890  x2:0011ff30 RA:0011ff40 RA:0011ff44 f08=        0.000000  # fld     fs0, 16(sp)
      80000894  x2:0011ff30 RA:0011ff4c x19=00000000    # lw      s3, 28(sp)
      80000898  x2:0011ff30 RA:0011ff50 x18=00000000    # lw      s2, 32(sp)
      8000089c  x2:0011ff30 RA:0011ff54 x9=00000000     # lw      s1, 36(sp)
      800008a0  x2:0011ff30 RA:0011ff58 x8=00000000     # lw      s0, 40(sp)
      800008a4  x2:0011ff30 RA:0011ff5c x1=80002a90     # lw      ra, 44(sp)
      800008a8  x2:0011ff30 x2=0011ff60                 # addi    sp, sp, 48
      800008ac  x1:80002a90                             # ret
; ?? (start.S:184)
      80002a90  x10:00000000 x8=00000000                # mv      s0, a0
; ?? (start.S:191)
      80002a94  x1=80002a94                             # auipc   ra, 0x0
      80002a98  x1:80002a94 x1=80002a9c                 # jalr    ra, ra, 524
; ?? (start_snitch.S:33)
      80002ca0  x2:0011ff60 x2=0011ff5c                 # addi    sp, sp, -4
; ?? (start_snitch.S:34)
      80002ca4  x2:0011ff5c x1:80002a9c WA:0011ff5c     # sw      ra, 0(sp)
; ?? (start_snitch.S:35)
      80002ca8  x1=80002ca8                             # auipc   ra, 0x0
      80002cac  x1:80002ca8 x1=80002cb0                 # jalr    ra, ra, -1616
; _snrt_barrier_reg_ptr (team.c:80)
      80002658  x10=00000000                            # lui     a0, 0x0
      8000265c  x10:00000000 x4:0011ff60 x10=0011ff60   # add     a0, a0, tp
      80002660  x10:0011ff60 RA:0011ff60 x10=0011ff70   # lw      a0, 0(a0)
      80002664  x10:0011ff70 RA:0011ff70 x10=0011ff70   # lw      a0, 0(a0)
      80002668  x10:0011ff70 RA:0011ffe0 x10=00120190   # lw      a0, 112(a0)
      8000266c  x1:80002cb0                             # ret
; ?? (start_snitch.S:36)
      80002cb0  x10:00120190 RA:00120190 x10=00000000   # lw      a0, 0(a0)
      80002cb0  x10:00120190 RA:00120190 x10=00000000   # lw      a0, 0(a0)
      80002cb0  x10:00120190 RA:00120190 x10=00000000   # lw      a0, 0(a0)
      80002cb0  x10:00120190 RA:00120190 x10=00000000   # lw      a0, 0(a0)
; ?? (start_snitch.S:37)
      80002cb4  x10:00000000                            # mv      zero, a0
; ?? (start_snitch.S:36)
      80002cb0  x10:00120190 RA:00120190 x10=00000000   # lw      a0, 0(a0)
; ?? (start_snitch.S:37)
      80002cb4  x10:00000000                            # mv      zero, a0
; ?? (start_snitch.S:38)
      80002cb8  x2:0011e72c RA:0011e72c x1=80002a9c     # lw      ra, 0(sp)
; ?? (start_snitch.S:39)
      80002cbc  x2:0011e72c x2=0011e730                 # addi    sp, sp, 4
; ?? (start_snitch.S:40)
      80002cc0  x1:80002a9c                             # ret
; ?? (start_snitch.S:37)
      80002cb4  x10:00000000                            # mv      zero, a0
      80002cb4  x10:00000000                            # mv      zero, a0
; ?? (start_snitch.S:36)
      80002cb0  x10:00120190 RA:00120190 x10=00000000   # lw      a0, 0(a0)
; ?? (start_snitch.S:38)
      80002cb8  x2:0011fb54 RA:0011fb54 x1=80002a9c     # lw      ra, 0(sp)
; ?? (start_snitch.S:39)
      80002cbc  x2:0011fb54 x2=0011fb58                 # addi    sp, sp, 4
; ?? (start_snitch.S:40)
      80002cc0  x1:80002a9c                             # ret
; ?? (start_snitch.S:37)
      80002cb4  x10:00000000                            # mv      zero, a0
; ?? (start_snitch.S:36)
      80002cb0  x10:00120190 RA:00120190 x10=00000000   # lw      a0, 0(a0)
; ?? (start.S:195)
      80002a9c  x8:00000000 x10=00000000                # mv      a0, s0
; ?? (start_snitch.S:38)
      80002cb8  x2:0011ff5c RA:0011ff5c x1=80002a9c     # lw      ra, 0(sp)
      80002cb8  x2:0011f74c RA:0011f74c x1=80002a9c     # lw      ra, 0(sp)
; ?? (start_snitch.S:37)
      80002cb4  x10:00000000                            # mv      zero, a0
; ?? (start_snitch.S:36)
      80002cb0  x10:00120190 RA:00120190 x10=00000000   # lw      a0, 0(a0)
; ?? (start_snitch.S:37)
      80002cb4  x10:00000000                            # mv      zero, a0
; ?? (start_snitch.S:38)
      80002cb8  x2:0011e324 RA:0011e324 x1=80002a9c     # lw      ra, 0(sp)
; ?? (start_snitch.S:39)
      80002cbc  x2:0011e324 x2=0011e328                 # addi    sp, sp, 4
; ?? (start_snitch.S:40)
      80002cc0  x1:80002a9c                             # ret
; ?? (start.S:195)
      80002a9c  x8:00000000 x10=00000000                # mv      a0, s0
; ?? (start.S:196)
      80002aa0  x1=80002aa0                             # auipc   ra, 0x0
      80002aa4  x1:80002aa0 x1=80002aa8                 # jalr    ra, ra, 556
; ?? (start_snitch.S:15)
      80002ccc  x2:0011e328 x2=0011e320                 # addi    sp, sp, -8
; ?? (start_snitch.S:16)
      80002cd0  x2:0011e320 x10:00000000 WA:0011e320    # sw      a0, 0(sp)
; ?? (start_snitch.S:17)
      80002cd4  x2:0011e320 x1:80002aa8 WA:0011e324     # sw      ra, 4(sp)
; ?? (start_snitch.S:18)
      80002cd8  x1=80002cd8                             # auipc   ra, 0x0
      80002cdc  x1:80002cd8 x1=80002ce0                 # jalr    ra, ra, -1696
; snrt_global_core_idx (team.c:32)
      80002638  x10=00000000                            # lui     a0, 0x0
      8000263c  x10:00000000 x4:0011e328 x10=0011e328   # add     a0, a0, tp
      80002640  x10:0011e328 RA:0011e328 x10=0011ff70   # lw      a0, 0(a0)
      80002644  x10:0011ff70 RA:0011ff70 x10=0011ff70   # lw      a0, 0(a0)
      80002648  x10:0011ff70 RA:0011ff78 x10=00000000   # lw      a0, 8(a0)
; snrt_hartid (snrt.h:181)
;  in snrt_global_core_idx (team.c:32)
      8000264c  x11=00000007                            # csrr    a1, mhartid
; snrt_global_core_idx (team.c:32)
      80002650  x11:00000007 x10:00000000 x10=00000007  # sub     a0, a1, a0
      80002654  x1:80002ce0                             # ret
; ?? (start_snitch.S:20)
      80002ce0  x2:0011e320 RA:0011e320 x5=00000000     # lw      t0, 0(sp)
; ?? (start_snitch.S:21)
      80002ce4  x2:0011e320 RA:0011e324 x1=80002aa8     # lw      ra, 4(sp)
; ?? (start_snitch.S:22)
      80002ce8  x2:0011e320 x2=0011e328                 # addi    sp, sp, 8
; ?? (start_snitch.S:27)
      80002cec  x10:00000007                            # bnez    a0, pc + 24
; ?? (start_snitch.S:32)
      80002d04  x1:80002aa8                             # ret
; ?? (start.S:198)
      80002aa8                                          # wfi
; ?? (start.S:195)
      80002a9c  x8:00000000 x10=00000000                # mv      a0, s0
; ?? (start_snitch.S:38)
      80002cb8  x2:0011ef3c RA:0011ef3c x1=80002a9c     # lw      ra, 0(sp)
; ?? (start_snitch.S:37)
      80002cb4  x10:00000000                            # mv      zero, a0
; ?? (start_snitch.S:38)
      80002cb8  x2:0011f344 RA:0011f344 x1=80002a9c     # lw      ra, 0(sp)
; ?? (start.S:196)
      80002aa0  x1=80002aa0                             # auipc   ra, 0x0
; ?? (start_snitch.S:39)
      80002cbc  x2:0011f74c x2=0011f750                 # addi    sp, sp, 4
; ?? (start_snitch.S:40)
      80002cc0  x1:80002a9c                             # ret
; ?? (start.S:195)
      80002a9c  x8:00000000 x10=00000000                # mv      a0, s0
; ?? (start.S:196)
      80002aa0  x1=80002aa0                             # auipc   ra, 0x0
      80002aa4  x1:80002aa0 x1=80002aa8                 # jalr    ra, ra, 556
; ?? (start_snitch.S:15)
      80002ccc  x2:0011f750 x2=0011f748                 # addi    sp, sp, -8
; ?? (start_snitch.S:16)
      80002cd0  x2:0011f748 x10:00000000 WA:0011f748    # sw      a0, 0(sp)
; ?? (start.S:196)
      80002aa4  x1:80002aa0 x1=80002aa8                 # jalr    ra, ra, 556
; ?? (start_snitch.S:15)
      80002ccc  x2:0011e730 x2=0011e728                 # addi    sp, sp, -8
; ?? (start_snitch.S:36)
      80002cb0  x10:00120190 RA:00120190 x10=00000000   # lw      a0, 0(a0)
; ?? (start.S:196)
      80002aa0  x1=80002aa0                             # auipc   ra, 0x0
      80002aa4  x1:80002aa0 x1=80002aa8                 # jalr    ra, ra, 556
; ?? (start_snitch.S:15)
      80002ccc  x2:0011fb58 x2=0011fb50                 # addi    sp, sp, -8
; ?? (start_snitch.S:16)
      80002cd0  x2:0011fb50 x10:00000000 WA:0011fb50    # sw      a0, 0(sp)
; ?? (start_snitch.S:17)
      80002cd4  x2:0011f748 x1:80002aa8 WA:0011f74c     # sw      ra, 4(sp)
; ?? (start_snitch.S:38)
      80002cb8  x2:0011eb34 RA:0011eb34 x1=80002a9c     # lw      ra, 0(sp)
; ?? (start_snitch.S:16)
      80002cd0  x2:0011e728 x10:00000000 WA:0011e728    # sw      a0, 0(sp)
; ?? (start_snitch.S:37)
      80002cb4  x10:00000000                            # mv      zero, a0
; ?? (start_snitch.S:38)
      80002cb8  x2:0011df1c RA:0011df1c x1=80002a9c     # lw      ra, 0(sp)
; ?? (start_snitch.S:39)
      80002cbc  x2:0011f344 x2=0011f348                 # addi    sp, sp, 4
; ?? (start_snitch.S:40)
      80002cc0  x1:80002a9c                             # ret
; ?? (start.S:195)
      80002a9c  x8:00000000 x10=00000000                # mv      a0, s0
; ?? (start.S:196)
      80002aa0  x1=80002aa0                             # auipc   ra, 0x0
; ?? (start_snitch.S:39)
      80002cbc  x2:0011eb34 x2=0011eb38                 # addi    sp, sp, 4
; ?? (start_snitch.S:17)
      80002cd4  x2:0011e728 x1:80002aa8 WA:0011e72c     # sw      ra, 4(sp)
; ?? (start_snitch.S:18)
      80002cd8  x1=80002cd8                             # auipc   ra, 0x0
; ?? (start_snitch.S:39)
      80002cbc  x2:0011df1c x2=0011df20                 # addi    sp, sp, 4
; ?? (start_snitch.S:40)
      80002cc0  x1:80002a9c                             # ret
; ?? (start_snitch.S:17)
      80002cd4  x2:0011fb50 x1:80002aa8 WA:0011fb54     # sw      ra, 4(sp)
; ?? (start_snitch.S:18)
      80002cd8  x1=80002cd8                             # auipc   ra, 0x0
; ?? (start.S:196)
      80002aa4  x1:80002aa0 x1=80002aa8                 # jalr    ra, ra, 556
; ?? (start_snitch.S:40)
      80002cc0  x1:80002a9c                             # ret
; ?? (start.S:195)
      80002a9c  x8:00000000 x10=00000000                # mv      a0, s0
; ?? (start_snitch.S:18)
      80002cdc  x1:80002cd8 x1=80002ce0                 # jalr    ra, ra, -1696
; snrt_global_core_idx (team.c:32)
      80002638  x10=00000000                            # lui     a0, 0x0
; ?? (start.S:195)
      80002a9c  x8:00000000 x10=00000000                # mv      a0, s0
; ?? (start.S:196)
      80002aa0  x1=80002aa0                             # auipc   ra, 0x0
      80002aa4  x1:80002aa0 x1=80002aa8                 # jalr    ra, ra, 556
; ?? (start_snitch.S:15)
      80002ccc  x2:0011f348 x2=0011f340                 # addi    sp, sp, -8
; ?? (start_snitch.S:16)
      80002cd0  x2:0011f340 x10:00000000 WA:0011f340    # sw      a0, 0(sp)
; ?? (start.S:196)
      80002aa0  x1=80002aa0                             # auipc   ra, 0x0
      80002aa4  x1:80002aa0 x1=80002aa8                 # jalr    ra, ra, 556
; snrt_global_core_idx (team.c:32)
      8000263c  x10:00000000 x4:0011e730 x10=0011e730   # add     a0, a0, tp
; ?? (start_snitch.S:18)
      80002cd8  x1=80002cd8                             # auipc   ra, 0x0
      80002cdc  x1:80002cd8 x1=80002ce0                 # jalr    ra, ra, -1696
; snrt_global_core_idx (team.c:32)
      80002638  x10=00000000                            # lui     a0, 0x0
      8000263c  x10:00000000 x4:0011fb58 x10=0011fb58   # add     a0, a0, tp
      80002640  x10:0011fb58 RA:0011fb58 x10=0011ff70   # lw      a0, 0(a0)
      80002644  x10:0011ff70 RA:0011ff70 x10=0011ff70   # lw      a0, 0(a0)
      80002648  x10:0011ff70 RA:0011ff78 x10=00000000   # lw      a0, 8(a0)
; snrt_hartid (snrt.h:181)
;  in snrt_global_core_idx (team.c:32)
      8000264c  x11=00000001                            # csrr    a1, mhartid
; ?? (start_snitch.S:18)
      80002cdc  x1:80002cd8 x1=80002ce0                 # jalr    ra, ra, -1696
; ?? (start_snitch.S:15)
      80002ccc  x2:0011df20 x2=0011df18                 # addi    sp, sp, -8
; ?? (start_snitch.S:39)
      80002cbc  x2:0011ef3c x2=0011ef40                 # addi    sp, sp, 4
; ?? (start_snitch.S:17)
      80002cd4  x2:0011f340 x1:80002aa8 WA:0011f344     # sw      ra, 4(sp)
; ?? (start_snitch.S:39)
      80002cbc  x2:0011ff5c x2=0011ff60                 # addi    sp, sp, 4
; ?? (start_snitch.S:15)
      80002ccc  x2:0011eb38 x2=0011eb30                 # addi    sp, sp, -8
; snrt_global_core_idx (team.c:32)
      80002640  x10:0011e730 RA:0011e730 x10=0011ff70   # lw      a0, 0(a0)
      80002650  x11:00000001 x10:00000000 x10=00000001  # sub     a0, a1, a0
      80002638  x10=00000000                            # lui     a0, 0x0
; ?? (start_snitch.S:16)
      80002cd0  x2:0011df18 x10:00000000 WA:0011df18    # sw      a0, 0(sp)
; ?? (start_snitch.S:17)
      80002cd4  x2:0011df18 x1:80002aa8 WA:0011df1c     # sw      ra, 4(sp)
; ?? (start_snitch.S:18)
      80002cd8  x1=80002cd8                             # auipc   ra, 0x0
      80002cdc  x1:80002cd8 x1=80002ce0                 # jalr    ra, ra, -1696
; snrt_global_core_idx (team.c:32)
      80002638  x10=00000000                            # lui     a0, 0x0
      80002644  x10:0011ff70 RA:0011ff70 x10=0011ff70   # lw      a0, 0(a0)
      80002654  x1:80002ce0                             # ret
      8000263c  x10:00000000 x4:0011f750 x10=0011f750   # add     a0, a0, tp
      80002640  x10:0011f750 RA:0011f750 x10=0011ff70   # lw      a0, 0(a0)
; ?? (start_snitch.S:18)
      80002cd8  x1=80002cd8                             # auipc   ra, 0x0
; ?? (start_snitch.S:40)
      80002cc0  x1:80002a9c                             # ret
; ?? (start_snitch.S:16)
      80002cd0  x2:0011eb30 x10:00000000 WA:0011eb30    # sw      a0, 0(sp)
; snrt_global_core_idx (team.c:32)
      8000263c  x10:00000000 x4:0011df20 x10=0011df20   # add     a0, a0, tp
      80002640  x10:0011df20 RA:0011df20 x10=0011ff70   # lw      a0, 0(a0)
; ?? (start_snitch.S:20)
      80002ce0  x2:0011fb50 RA:0011fb50 x5=00000000     # lw      t0, 0(sp)
; ?? (start_snitch.S:21)
      80002ce4  x2:0011fb50 RA:0011fb54 x1=80002aa8     # lw      ra, 4(sp)
; snrt_global_core_idx (team.c:32)
      80002644  x10:0011ff70 RA:0011ff70 x10=0011ff70   # lw      a0, 0(a0)
      80002648  x10:0011ff70 RA:0011ff78 x10=00000000   # lw      a0, 8(a0)
; ?? (start_snitch.S:18)
      80002cdc  x1:80002cd8 x1=80002ce0                 # jalr    ra, ra, -1696
; ?? (start.S:195)
      80002a9c  x8:00000000 x10=00000000                # mv      a0, s0
; ?? (start_snitch.S:17)
      80002cd4  x2:0011eb30 x1:80002aa8 WA:0011eb34     # sw      ra, 4(sp)
; ?? (start_snitch.S:18)
      80002cd8  x1=80002cd8                             # auipc   ra, 0x0
      80002cdc  x1:80002cd8 x1=80002ce0                 # jalr    ra, ra, -1696
; snrt_global_core_idx (team.c:32)
      80002638  x10=00000000                            # lui     a0, 0x0
      8000263c  x10:00000000 x4:0011eb38 x10=0011eb38   # add     a0, a0, tp
; ?? (start_snitch.S:22)
      80002ce8  x2:0011fb50 x2=0011fb58                 # addi    sp, sp, 8
; ?? (start_snitch.S:27)
      80002cec  x10:00000001                            # bnez    a0, pc + 24
; snrt_global_core_idx (team.c:32)
      80002638  x10=00000000                            # lui     a0, 0x0
; ?? (start.S:196)
      80002aa0  x1=80002aa0                             # auipc   ra, 0x0
; snrt_global_core_idx (team.c:32)
      80002648  x10:0011ff70 RA:0011ff78 x10=00000000   # lw      a0, 8(a0)
      80002644  x10:0011ff70 RA:0011ff70 x10=0011ff70   # lw      a0, 0(a0)
      80002648  x10:0011ff70 RA:0011ff78 x10=00000000   # lw      a0, 8(a0)
; snrt_hartid (snrt.h:181)
;  in snrt_global_core_idx (team.c:32)
      8000264c  x11=00000008                            # csrr    a1, mhartid
      8000264c  x11=00000002                            # csrr    a1, mhartid
; ?? (start_snitch.S:32)
      80002d04  x1:80002aa8                             # ret
; ?? (start.S:198)
      80002aa8                                          # wfi
; ?? (start.S:196)
      80002aa4  x1:80002aa0 x1=80002aa8                 # jalr    ra, ra, 556
; snrt_hartid (snrt.h:181)
;  in snrt_global_core_idx (team.c:32)
      8000264c  x11=00000006                            # csrr    a1, mhartid
; ?? (start_snitch.S:40)
      80002cc0  x1:80002a9c                             # ret
; snrt_global_core_idx (team.c:32)
      80002640  x10:0011eb38 RA:0011eb38 x10=0011ff70   # lw      a0, 0(a0)
      80002644  x10:0011ff70 RA:0011ff70 x10=0011ff70   # lw      a0, 0(a0)
      80002648  x10:0011ff70 RA:0011ff78 x10=00000000   # lw      a0, 8(a0)
      8000263c  x10:00000000 x4:0011f348 x10=0011f348   # add     a0, a0, tp
; ?? (start_snitch.S:15)
      80002ccc  x2:0011ff60 x2=0011ff58                 # addi    sp, sp, -8
; snrt_global_core_idx (team.c:32)
      80002650  x11:00000006 x10:00000000 x10=00000006  # sub     a0, a1, a0
; ?? (start_snitch.S:16)
      80002cd0  x2:0011ff58 x10:00000000 WA:0011ff58    # sw      a0, 0(sp)
; snrt_global_core_idx (team.c:32)
      80002654  x1:80002ce0                             # ret
; ?? (start_snitch.S:20)
      80002ce0  x2:0011e728 RA:0011e728 x5=00000000     # lw      t0, 0(sp)
; ?? (start_snitch.S:21)
      80002ce4  x2:0011e728 RA:0011e72c x1=80002aa8     # lw      ra, 4(sp)
; snrt_hartid (snrt.h:181)
;  in snrt_global_core_idx (team.c:32)
      8000264c  x11=00000005                            # csrr    a1, mhartid
; snrt_global_core_idx (team.c:32)
      80002640  x10:0011f348 RA:0011f348 x10=0011ff70   # lw      a0, 0(a0)
      80002644  x10:0011ff70 RA:0011ff70 x10=0011ff70   # lw      a0, 0(a0)
      80002650  x11:00000008 x10:00000000 x10=00000008  # sub     a0, a1, a0
; ?? (start_snitch.S:17)
      80002cd4  x2:0011ff58 x1:80002aa8 WA:0011ff5c     # sw      ra, 4(sp)
; snrt_global_core_idx (team.c:32)
      80002650  x11:00000002 x10:00000000 x10=00000002  # sub     a0, a1, a0
; ?? (start_snitch.S:22)
      80002ce8  x2:0011e728 x2=0011e730                 # addi    sp, sp, 8
; ?? (start_snitch.S:27)
      80002cec  x10:00000006                            # bnez    a0, pc + 24
; ?? (start.S:195)
      80002a9c  x8:00000000 x10=00000000                # mv      a0, s0
; snrt_global_core_idx (team.c:32)
      80002648  x10:0011ff70 RA:0011ff78 x10=00000000   # lw      a0, 8(a0)
      80002654  x1:80002ce0                             # ret
; ?? (start_snitch.S:18)
      80002cd8  x1=80002cd8                             # auipc   ra, 0x0
; snrt_global_core_idx (team.c:32)
      80002654  x1:80002ce0                             # ret
      80002650  x11:00000005 x10:00000000 x10=00000005  # sub     a0, a1, a0
; ?? (start_snitch.S:32)
      80002d04  x1:80002aa8                             # ret
; ?? (start.S:198)
      80002aa8                                          # wfi
; snrt_hartid (snrt.h:181)
;  in snrt_global_core_idx (team.c:32)
      8000264c  x11=00000003                            # csrr    a1, mhartid
; ?? (start_snitch.S:20)
      80002ce0  x2:0011df18 RA:0011df18 x5=00000000     # lw      t0, 0(sp)
; ?? (start_snitch.S:18)
      80002cdc  x1:80002cd8 x1=80002ce0                 # jalr    ra, ra, -1696
; ?? (start_snitch.S:20)
      80002ce0  x2:0011f748 RA:0011f748 x5=00000000     # lw      t0, 0(sp)
; snrt_global_core_idx (team.c:32)
      80002654  x1:80002ce0                             # ret
; ?? (start.S:196)
      80002aa0  x1=80002aa0                             # auipc   ra, 0x0
; snrt_global_core_idx (team.c:32)
      80002650  x11:00000003 x10:00000000 x10=00000003  # sub     a0, a1, a0
; ?? (start_snitch.S:21)
      80002ce4  x2:0011df18 RA:0011df1c x1=80002aa8     # lw      ra, 4(sp)
; snrt_global_core_idx (team.c:32)
      80002638  x10=00000000                            # lui     a0, 0x0
; ?? (start_snitch.S:21)
      80002ce4  x2:0011f748 RA:0011f74c x1=80002aa8     # lw      ra, 4(sp)
; ?? (start_snitch.S:20)
      80002ce0  x2:0011eb30 RA:0011eb30 x5=00000000     # lw      t0, 0(sp)
; ?? (start.S:196)
      80002aa4  x1:80002aa0 x1=80002aa8                 # jalr    ra, ra, 556
; snrt_global_core_idx (team.c:32)
      80002654  x1:80002ce0                             # ret
; ?? (start_snitch.S:22)
      80002ce8  x2:0011df18 x2=0011df20                 # addi    sp, sp, 8
; snrt_global_core_idx (team.c:32)
      8000263c  x10:00000000 x4:0011ff60 x10=0011ff60   # add     a0, a0, tp
; ?? (start_snitch.S:22)
      80002ce8  x2:0011f748 x2=0011f750                 # addi    sp, sp, 8
; ?? (start_snitch.S:21)
      80002ce4  x2:0011eb30 RA:0011eb34 x1=80002aa8     # lw      ra, 4(sp)
; ?? (start_snitch.S:15)
      80002ccc  x2:0011ef40 x2=0011ef38                 # addi    sp, sp, -8
; ?? (start_snitch.S:20)
      80002ce0  x2:0011f340 RA:0011f340 x5=00000000     # lw      t0, 0(sp)
; ?? (start_snitch.S:27)
      80002cec  x10:00000008                            # bnez    a0, pc + 24
; snrt_global_core_idx (team.c:32)
      80002640  x10:0011ff60 RA:0011ff60 x10=0011ff70   # lw      a0, 0(a0)
; ?? (start_snitch.S:27)
      80002cec  x10:00000002                            # bnez    a0, pc + 24
; ?? (start_snitch.S:32)
      80002d04  x1:80002aa8                             # ret
; ?? (start.S:198)
      80002aa8                                          # wfi
; ?? (start_snitch.S:21)
      80002ce4  x2:0011f340 RA:0011f344 x1=80002aa8     # lw      ra, 4(sp)
; ?? (start_snitch.S:32)
      80002d04  x1:80002aa8                             # ret
; ?? (start.S:198)
      80002aa8                                          # wfi
; snrt_global_core_idx (team.c:32)
      80002644  x10:0011ff70 RA:0011ff70 x10=0011ff70   # lw      a0, 0(a0)
      80002648  x10:0011ff70 RA:0011ff78 x10=00000000   # lw      a0, 8(a0)
; snrt_hartid (snrt.h:181)
;  in snrt_global_core_idx (team.c:32)
      8000264c  x11=00000000                            # csrr    a1, mhartid
; snrt_global_core_idx (team.c:32)
      80002650  x11:00000000 x10:00000000 x10=00000000  # sub     a0, a1, a0
      80002654  x1:80002ce0                             # ret
; ?? (start_snitch.S:20)
      80002ce0  x2:0011ff58 RA:0011ff58 x5=00000000     # lw      t0, 0(sp)
; ?? (start_snitch.S:21)
      80002ce4  x2:0011ff58 RA:0011ff5c x1=80002aa8     # lw      ra, 4(sp)
; ?? (start_snitch.S:22)
      80002ce8  x2:0011ff58 x2=0011ff60                 # addi    sp, sp, 8
; ?? (start_snitch.S:27)
      80002cec  x10:00000000                            # bnez    a0, pc + 24
; ?? (start_snitch.S:28)
      80002cf0  x5:00000000 x5=00000000                 # slli    t0, t0, 1
; ?? (start_snitch.S:29)
      80002cf4  x5:00000000 x5=00000001                 # ori     t0, t0, 1
; ?? (start_snitch.S:30)
      80002cf8  x6=01fffcf8                             # auipc   t1, 0x81ffd
      80002cfc  x6:01fffcf8 x6=02000014                 # addi    t1, t1, 796
; ?? (start_snitch.S:31)
      80002d00  x6:02000014 x5:00000001 WA:02000014     # sw      t0, 0(t1)
; ?? (start_snitch.S:32)
      80002d04  x1:80002aa8                             # ret
; ?? (start.S:198)
      80002aa8                                          # wfi
; ?? (start_snitch.S:22)
      80002ce8  x2:0011eb30 x2=0011eb38                 # addi    sp, sp, 8
; ?? (start_snitch.S:16)
      80002cd0  x2:0011ef38 x10:00000000 WA:0011ef38    # sw      a0, 0(sp)
; ?? (start_snitch.S:17)
      80002cd4  x2:0011ef38 x1:80002aa8 WA:0011ef3c     # sw      ra, 4(sp)
; ?? (start_snitch.S:18)
      80002cd8  x1=80002cd8                             # auipc   ra, 0x0
      80002cdc  x1:80002cd8 x1=80002ce0                 # jalr    ra, ra, -1696
; snrt_global_core_idx (team.c:32)
      80002638  x10=00000000                            # lui     a0, 0x0
      8000263c  x10:00000000 x4:0011ef40 x10=0011ef40   # add     a0, a0, tp
      80002640  x10:0011ef40 RA:0011ef40 x10=0011ff70   # lw      a0, 0(a0)
      80002644  x10:0011ff70 RA:0011ff70 x10=0011ff70   # lw      a0, 0(a0)
      80002648  x10:0011ff70 RA:0011ff78 x10=00000000   # lw      a0, 8(a0)
; snrt_hartid (snrt.h:181)
;  in snrt_global_core_idx (team.c:32)
      8000264c  x11=00000004                            # csrr    a1, mhartid
; snrt_global_core_idx (team.c:32)
      80002650  x11:00000004 x10:00000000 x10=00000004  # sub     a0, a1, a0
      80002654  x1:80002ce0                             # ret
; ?? (start_snitch.S:20)
      80002ce0  x2:0011ef38 RA:0011ef38 x5=00000000     # lw      t0, 0(sp)
; ?? (start_snitch.S:21)
      80002ce4  x2:0011ef38 RA:0011ef3c x1=80002aa8     # lw      ra, 4(sp)
; ?? (start_snitch.S:22)
      80002ce8  x2:0011ef38 x2=0011ef40                 # addi    sp, sp, 8
; ?? (start_snitch.S:27)
      80002cec  x10:00000004                            # bnez    a0, pc + 24
; ?? (start_snitch.S:32)
      80002d04  x1:80002aa8                             # ret
; ?? (start.S:198)
      80002aa8                                          # wfi
; ?? (start_snitch.S:22)
      80002ce8  x2:0011f340 x2=0011f348                 # addi    sp, sp, 8
; ?? (start_snitch.S:27)
      80002cec  x10:00000003                            # bnez    a0, pc + 24
; ?? (start_snitch.S:32)
      80002d04  x1:80002aa8                             # ret
; ?? (start.S:198)
      80002aa8                                          # wfi
; ?? (start_snitch.S:27)
      80002cec  x10:00000005                            # bnez    a0, pc + 24
; ?? (start_snitch.S:32)
      80002d04  x1:80002aa8                             # ret
; ?? (start.S:198)
      80002aa8                                          # wfi
