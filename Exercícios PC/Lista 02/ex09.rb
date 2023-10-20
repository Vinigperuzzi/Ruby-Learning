#param 0 retorna bool se é primo ou não, param 2 retorna a quantidade de divisores e qualquer outra coisa retorna uma lista de divisores

def pegaDivisores numero, param = 0
    teste = 1
    divisoresEncontrados = []
    while teste <= numero do
        if numero % teste == 0
            divisoresEncontrados.push teste
        end
        teste += 1
    end
    if param == 0
        if numero == 1
            return false
        end
        if divisoresEncontrados.length <= 2
            return true
        else
            return false
        end
    elsif param == 1
        return divisoresEncontrados.length
    else
        return divisoresEncontrados
    end
end

def verificaPrimo numero
    if pegaDivisores numero, 0 == true
        puts "O número #{numero} é primo."
    else
        puts "O número #{numero} não é primo."
    end
end

def contaDivisores numero
    return pegaDivisores numero, 1
end

def listaDivisores numero
    return pegaDivisores numero, 2
end

def main
    puts 'Informe o número para somar os divisores:'
    numero = gets.chomp.to_i
    verificaPrimo numero
    puts "O número #{numero} possui #{contaDivisores numero} divisores."
    puts "São eles #{listaDivisores numero}."
end

main