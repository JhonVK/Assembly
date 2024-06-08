.data
	tamanho: .word 7
	vetor1: .word -30, -23, 56, -43, 72, -18, 71
	vetor2: .word 45, 23, 21, -23, -82, 0, 69
	soma: .word 0, 0, 0, 0, 0, 0, 0
.text
lw $s0, tamanho
li $s4, 1

la $t1, vetor1
la $t2, vetor2
la $t6, soma
inicio:

lw $t3, ($t1)
lw $t4, ($t2)

add $t9, $t3, $t4

sw $t9, ($t6)


addi $t1, $t1, 4
addi $t2, $t2, 4
addi $t6, $t6, 4
subi $s0, $s0, 1


bne $s0, $zero, inicio
li $v0, 10

syscall
