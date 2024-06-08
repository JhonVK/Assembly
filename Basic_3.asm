lui $t1, 0x1234
ori $t1, $t1, 0x5678

sll $t2, $t1, 28
srl $t1, $t1, 4

sll $t3, $t1, 28
srl $t1, $t1, 4

srl $t3, $t3, 4

or $t2, $t2, $t3

sll $t3, $t1, 28

srl $t3, $t3, 8

or $t2, $t2, $t3




srl $t1, $t1, 4

sll $t3, $t1, 28

srl $t3, $t3, 12

or $t2, $t2, $t3



srl $t1, $t1, 4

sll $t3, $t1, 28

srl $t3, $t3, 16

or $t2, $t2, $t3


srl $t1, $t1, 4

sll $t3, $t1, 28

srl $t3, $t3, 20

or $t2, $t2, $t3


srl $t1, $t1, 4

sll $t3, $t1, 28

srl $t3, $t3, 24

or $t2, $t2, $t3


srl $t1, $t1, 4

sll $t3, $t1, 28

srl $t3, $t3, 28

or $t2, $t2, $t3
