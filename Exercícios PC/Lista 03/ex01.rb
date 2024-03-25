def avalia_sinal (valor)
    if valor >= 0
        return 1
    else
        return 0
    end
end


def main
    puts "informe um valor para ter o sinal analisado"
    valor = gets.chomp.to_i
    if avalia_sinal(valor) == 1
        puts "O valor é positivo"
    else
        puts "O valor é negativo"
    end
end

main
    