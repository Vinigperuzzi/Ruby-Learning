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
    p1 = gets.chomp.to_i
    op = gets.chomp
    p2 = gets.chomp.to_i
    resultado = calc(p1, p2, op)
    puts resultado
end

main
