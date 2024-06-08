.data

vetor1: .word 0, 0, 0, 0, 0
vetor2: .word 0, 0, 0, 0, 0
string: .asciiz "Digite os 5 primeiros valores :"
string2: .asciiz "Digite os 5 ultimos valores :"
string3: .asciiz "Os valores concatenados são: "
.text
li $t3, 5
li $t4, 1
la $t1, vetor1
la $t2, vetor2
la $a0, string

li $v0, 4
syscall 
inicio:
li $v0, 5
syscall 
sw $v0, ($t1)
addi $t1, $t1, 4
sub $t3, $t3, $t4
beqz $t3, p2
j inicio 

p2:
li $t3, 5
la $a0, string2
li $v0, 4
syscall 
inicio2:
li $v0, 5
syscall 
sw $v0, ($t2)
addi $t2, $t2, 4
sub $t3, $t3, $t4
beqz $t3, alastro
j inicio2
alastro:
la $a0, string3
li $v0, 4
syscall 

la $t1, vetor1
la $t2, vetor2
li $t3, 10

inicio3:
li $v0, 1
lw $a0, 0($t1)
syscall 
addi $t1, $t1, 4
sub $t3, $t3, $t4
beqz $t3, fim
j inicio3

fim:
li $v0, 10
syscall
