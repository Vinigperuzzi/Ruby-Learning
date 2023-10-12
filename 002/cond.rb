def funcao(valor)
    if valor >= 10
        puts 'É maior ou igual a 10'
    elsif valor < 0
        puts 'Valor é negativo'
    else
        puts valor
    end 
end

def main
    x = gets.chomp.to_i
    unless x > 100
        funcao(x)
    end
end

main