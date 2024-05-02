.data 
 .word 1
 .word 2
 .word 3
 .word 4
 .word 5
 .word 6
 .word 7
 .word 8
 .text
 
 
or $t0, $zero, $t0  ## SETA 0 EM T0
ori $t7, $zero, 7  ## SETA 7 EM T7
ori $t8, $zero, 2 ## SETA 2 EM T8
lui $t1, 0x1001  ## BASE MEMORIA
ori $t6, $zero, 4 ##SETA 4 EM T6
   
L1:
beq $t0, $t7, EXIT  ##SE T0==7 EXIT
addi $t0, $t0, 1 ##SOMA 1 A T0
div $t0, $t8  ##DIVIDE TO POR T8
mfhi $t9  ##QUARDA O RESTO EM T9
bne $t9, $zero, ELSE ##SE RESTO FOR DIFERENTE DE 0 PULA ELSE
lw $t2, 0($t1) ##CARREGA VALOR DA MEMORIA EM T2
mul $t2, $t2, $t8 ##MULTIPLICA VALOR DA MEMORIA POR 2
sw $t2, 0($t1) ##ARMAZENA T2 A MEMORIA

or $at, $t2, $zero ##REGISTRADOR DE TESTE

add $t1, $t1, $t6 ##SOMA AO ENDEREÇO BASE+4
j L1
ELSE:
lw $t2, 0($t1) ##CARREGA VALOR DA MEMORIA EM T2
sub $t1, $t1, $t6 ##SUBTRAI AO ENDEREÇO BASE-4
lw $t3, 0($t1) ## CARREGA VALOR DA MEMORIA EM T3
add $t2, $t2, $t3 ##SOMA VEROR[I] COM VETOR [I-1]
add $t1, $t1, $t6 ##SOMA AO ENDEREÇO BASE+4
sw $t2, 0($t1) ##ARMAZENA T2 A MEMORIA
or $at, $t2, $zero ##REGISTRADOR DE TESTE
add $t1, $t1, $t6 ##SOMA AO ENDEREÇO BASE+4
j L1
EXIT: 
