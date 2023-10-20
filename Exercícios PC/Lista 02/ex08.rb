def somaDivisores numero
    teste = 1
    soma = 0
    while teste <= numero do
        if numero % teste == 0
            soma += teste
        end
        teste += 1
    end
    soma
end

def main
    puts 'Informe o número para somar os divisores:'
    numero = gets.chomp.to_i
    soma = somaDivisores numero
    puts "A soma dos divisores de #{numero} é #{soma}"
end

main