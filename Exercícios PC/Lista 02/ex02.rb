def calculaMedia v1, v2, mt
    media = (3*v1 + 3*v2 + 4*mt)/10
end

def verificaAprovacao media, v1, v2, mt
    if media >= 7
        puts "Aprovado por média."
    else
        if v1 <= v2
            maior = v2
        else
            maior = v1
        end
        nota = (70 - (maior*3) - (mt*4)).to_f/10
        if nota > 3
            puts "É impossível que o aluno seja aprovado, pois deve tirar mais do que 10 na optativa"
        else
            puts "O aluno precisa tirar #{sprintf("%.2f", (nota*10)/3)} na optativa para ser aprovado."
        end
    end
end

def main
    puts "Informe a nota 1, nota 2 e média dos trabalhos, nessa ordem:"
    v1 = gets.chomp.to_f
    v2 = gets.chomp.to_f
    mt = gets.chomp.to_f
    media = calculaMedia v1, v2, mt
    verificaAprovacao media, v1, v2, mt
end

main