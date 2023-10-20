def fatorial numero
    if numero == 0
        return 1
    end
    soma = numero
    while numero > 1
        numero -= 1
        soma *= numero
    end
    soma
end

def main
    puts 'Informe um número para calcular o fatorial:'
    numero = gets.chomp
    soma = fatorial numero.to_i
    puts "#{numero}! = #{soma}"
end

main

