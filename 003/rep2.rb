def calc(p1, p2, op)
    case op
    when '+'
        return p1 + p2
    when '-'
        return p1 - p2
    when '*'
        return p1 * p2
    when '/'
        return p1 / p2
    when '**'
        return p1 ** p2
    else 
        puts 'Nenhum operador reconhecido (+, -, *, /, **)'
    end
end

def main
    exp = gets.chomp.split
    p1 = exp[0].to_i
    op = exp[1]
    p2 = exp[2].to_i
    unless (p1 == 0 || p2 == 0)
        resultado = calc(p1, p2, op)
        puts resultado
    else 
        puts "Expressão não pode ser reconhecida, lembre-se de usar operando operador operando (1 + 2)."
    end
    
end

puts "Bem vindo à calculadora, fique à vontade para fazer contas de somar, subtrair, multiplicar, dividir e exponencial"
teste = true
while teste
    main
    puts "Deseja continuar (S/N)"
    testeget = gets.chomp
    unless (testeget == "s" || testeget == "S")
        teste = false
        puts "Encerrando calculadora..."
    end
end

