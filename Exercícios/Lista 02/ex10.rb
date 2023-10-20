def contaConceitos listaConteitos
    a, b, c, d, e = 0, 0, 0, 0, 0
    listaConteitos.each do |elemento|
        case elemento
        when 'A', 'a'
            a += 1
        when 'B', 'b'
            b += 1
        when 'C', 'c'
            c += 1
        when 'D', 'd'
            d += 1
        when 'E', 'e'
            e += 1
        end
    end
    puts "Nessa turma houve #{a} notas A, #{b} notas B, #{c} notas C, #{d} notas D e #{e} notas E."
end

def main
    puts 'Informe a quantidade de notas que serão informadas:'
    qtd = gets.chomp.to_i
    notas = []
    qtd.times do |i|
        puts "Informe o #{i+1}º conceito:"
        notas.push gets.chomp
    end
    contaConceitos notas
end

main