.data
.space 30
mensagem: .asciiz "Digite o tamanho da sua frase: "

mensagem2: .asciiz "Digite a sua frase: "
.text 
la $a0, mensagem
li $v0, 4
syscall 

li $v0, 5
syscall
move $a1, $v0
addi $a1, $a1, 1

la $a0, mensagem2
li $v0, 4
syscall 

li $v0, 8
lui $a0, 0x1001
syscall 
li $t8, 32
li $t3, 90
li $t5, 1

inicio: 
beq $a1, $zero, fim
lb $t1, ($a0)
slt $t4, $t1, $t3
beq $t1, $t8, espaco
beq $t4, $t5, maiuscula
beq $t4, $zero, minuscula

maiuscula:
addi $t1, $t1, 32
sb $t1, ($a0)


addi $a0, $a0, 1

sub $a1, $a1, $t5
j inicio

minuscula:
sub $t1, $t1, 32
sb $t1, ($a0)

addi $a0, $a0, 1
sub $a1, $a1, $t5
j inicio

espaco:
addi $a0, $a0, 1
sub $a1, $a1, $t5
j inicio

fim:

lui $a0, 0x1001

li $v0, 4
syscall

li $v0, 10
syscall 

