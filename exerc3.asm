    .data
n:  .word 4  # O número para o qual queremos calcular o fatorial

    .text
 
    lw $a0, n  # Carrega o valor de n no registrador $a0

    jal factorial  # Chama a subrotina factorial

    # Agora, $v0 contém o fatorial de n
    # ...

    # Termina o programa
    li $v0, 10
    syscall

factorial:
    # Salva o endereço de retorno e o argumento na pilha
    addi $sp, $sp, -8
    sw $ra, 4($sp)
    sw $a0, 0($sp)
    

    # Verifica se n é igual a 1
    li $t1, 1
    beq $a0, $t1, base_case

    # Caso recursivo: se n não é igual a 1, calcula n * factorial(n - 1)

    # Primeiro, calcula n - 1 e chama factorial recursivamente
    addi $a0, $a0, -1
    jal factorial

    # Agora, $v0 contém o fatorial de n - 1
    # Multiplica n por $v0 para obter o fatorial de n
    lw $a0, 0($sp)  # Recupera o valor original de n da pilha
    mul $v0, $a0, $v0

    # Restaura o endereço de retorno e o argumento da pilha
    lw $ra, 4($sp)
    addi $sp, $sp, 8

    jr $ra  # Retorna para a função chamadora

base_case:
    # Caso base: se n é igual a 1, retorna 1
    li $v0, 1
    lw $ra, 4($sp)
    addi $sp, $sp, 8
    jr $ra
