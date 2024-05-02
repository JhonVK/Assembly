.data
texto: .asciiz "Escolha uma das opções de calculo de area: 1-Circunferencia, 2-Triangulo e 3-retangulo: "
texto2: .asciiz "Digite o raio: "
pi: .float 3.14
.text


	l.s $f1, pi
	li $s1, 1
	li $s2, 2
	li $s3, 3
	
	lui $a0, 0x1001
	li $v0, 4
	syscall
	
	li $v0, 5
	syscall
	
	beq $v0, $s1, sub1
	beq $v0, $s2, sub2
	beq $v0, $s3, sub3
	
	
	
sub1:   jal sub10
	mul.s $f0, $f0, $f0
	mul.s $f0, $f0, $f1
	
	
	li $v0, 10
	syscall
	

sub10:la $a0, texto2
	li $v0, 4	
	syscall
	li $v0, 6
	syscall
	
 	jr $ra
 	
 sub2: jal sub20
 	
 	div $t0, $t0, 2
 	mult $t0, $t1
 	mflo $a0
 
	li $v0, 1
 	syscall 
 
 
        li $v0, 10
	syscall
 sub20:li $v0, 5	
	syscall
	add $t0, $t0, $t9
	li $v0, 5	
	syscall
	add $t1, $t1, $t9
	jr $ra
    
  sub3: jal sub30
 	
 	mult $t0, $t1
 	mflo $a0
 	
 	li $v0, 1
 	syscall 
 	
 
        li $v0, 10
	syscall
 sub30:li $v0, 5	
	syscall
	add $t0, $t0, $t9
	li $v0, 5	
	syscall
	add $t1, $t1, $t9
	jr $ra
    
 	

	
