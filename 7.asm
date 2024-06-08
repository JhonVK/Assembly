    .data
string: .asciiz "Gosto muito do meu professor de AOC-I."

    .text
    .globl main
main:
    la $a0, string  # Carrega o endereço da string
    la $a1, string  # Carrega um segundo ponteiro para a string

loop:
    lb $t0, 0($a1)  # Carrega o byte atual
    beqz $t0, end   # Se o byte for nulo, termina o loop

    li $t1, 32      # Carrega o valor ASCII para espaço
    beq $t0, $t1, space  # Se o byte for um espaço, vai para 'space'

    sb $t0, 0($a0)  # Armazena o byte na posição atual da string
    addiu $a0, $a0, 1  # Incrementa o ponteiro da string

space:
    addiu $a1, $a1, 1  # Incrementa o ponteiro do próximo caractere
    j loop

end:
    sb $zero, 0($a0)  # Adiciona o caractere nulo no final da string
    jr $ra  # Retorna do programa
