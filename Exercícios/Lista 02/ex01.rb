def calculaMedia v1, v2, mt
    media = (3*v1 + 3*v2 + 4*mt)/10
end

def main
    puts "Informe a nota 1, nota 2 e média dos trabalhos, nessa ordem:"
    v1 = gets.chomp.to_f
    v2 = gets.chomp.to_f
    mt = gets.chomp.to_f
    media = calculaMedia v1, v2, mt
    puts "A média desse aluno foi #{sprintf("%.2f", media)}."
end

main