ori $t1, $zero, 0x01


sll $t2, $t1, 4

sub $t1, $t2, $t1

sll $t1, $t1, 4

or $t0, $t1, $zero
srl $t0, $t0, 4

or $t1, $t0, $t1
sll $t1, $t1, 4

or $t1, $t0, $t1
sll $t1, $t1, 4

or $t1, $t0, $t1
sll $t1, $t1, 4

or $t1, $t0, $t1
sll $t1, $t1, 4

or $t1, $t0, $t1
sll $t1, $t1, 4

or $t1, $t0, $t1
sll $t1, $t1, 4

or $t1, $t0, $t1

