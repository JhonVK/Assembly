.data
.space 30

mensagem1: .asciiz "Quantidade de valores a serem armazenados: "
mensagem2: .asciiz "Digite os valores a serem armazenados: "
mensagem3: .asciiz "Numero de pares: "
mensagem4: .asciiz "soma dos pares: "
.text
la $a0, mensagem1
li $v0, 4
syscall

li $v0, 5
syscall
move $t1, $v0
move $t3, $v0
la $a0, mensagem2
li $v0, 4
syscall
li $t2, 1
lui $a0, 0x1001

jal sub
sw $v0, ($a0) 
addi $a0, $a0, 4
sub $t1, $t1, $t2
beqz $t1, cont

sub:
li $v0, 5

syscall        
jr $ra     

cont:
lui $a0, 0x1001
li $t6, 2
li $t2, 1
j iniciosub
soma:
add $s3, $s3, $t7
jr $ra
iniciosub:
jal sub2
add $s5, $s5, $t9
sub $t3, $t3, $t2
beqz $t3, fim

sub2:
lb $t7, ($a0)
div $t7, $t6
mfhi $t8
seq $t9, $t8, $zero
addi $a0, $a0, 4
beq $t9, $t2, soma
jr $ra

 
fim:
la $a0, mensagem3
li $v0, 4
syscall

move $a0, $s5
li $v0, 1
syscall 

la $a0, mensagem4
li $v0, 4
syscall

move $a0, $s3
li $v0, 1
syscall 


li $v0, 10
syscall












