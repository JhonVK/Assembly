ori $t1, $zero, 8

sll $t1, $t1, 2



ori $t2, $zero, 11

sll $t2, $t2, 1

nor $t2, $t2, $zero

addi $t2, $t2, 1



ori $t3, $t3, 11
or $t5, $t3, $zero
nor $t5, $t5, $zero
addi $t5, $t5, 1


sll $t3, $t3, 2
add $t3, $t3, $t5



and $t5, $t5, $zero



add $t7, $t1, $t2
add $t7, $t7, $t3