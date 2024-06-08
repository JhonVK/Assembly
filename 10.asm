.data
	string:  .asciiz "Gosto muito do meu professor de AOC-I."

.text
	la $s1, string 		#$s1 = primeiro endereco da string
	
	ori $t0, $t0, 32	#valor de espaco na tabela ascii
#	ori $t1, $t1, 0		#valor de null na tabela ascii - nao e necessario, como null e zero basta utilizar o reg $zero nos testes
	
loop:
	lbu, $t3, 0($s1)	#carrega char na posicao atual da string
	beq $t3, $zero, fim	#testa se char e igual a null (null em ascii e zero)	
	beq $t3, $t0, tiraespaco#testa se char e igual a espaco, se for comeca um loop para tirar esse espaco
	
	addi $s1, $s1, 1	#atualiza para o proximo char
	j loop			#volta ao loop
	
tiraespaco:
	la $s2, 0($s1) 		#$s2 = endereco atual da string(char = espaco), utilizado uma variavel auxiliar para nao perder a posicao de s1
tiraespaco2:	
	lbu $t3, 0($s2) 	#carrega char na posicao atual da string	
	beq $t3, $zero, loop	#testa se chegou ao final da string (null), se sim retorna ao loop de cima

	lbu $t3, 1($s2)		#carrega em t3 o proximo char
	sb $t3, 0($s2)		#armazena valor da posicao n+1 na posicao n
	
	addi $s2, $s2, 1 	#atualiza para o proximo char
	j tiraespaco2		#volta ao loop que retira o atual espaco
			
fim:	
	nop			#fim do programa
	