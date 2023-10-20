require 'date'

def calculaIdade dia, mes, ano
    hoje = Date.today

    diaHoje = hoje.day
    mesHoje = hoje.month
    anoHoje = hoje.year

    if ano > anoHoje
        puts 'Data de nascimento no futuro!'
        return -1
    end

    if ano == anoHoje && mes >= mesHoje && dia > diaHoje
        puts 'Data de nascimento no futuro!'
        return -1
    end

    idade = anoHoje - ano

    if dia > diaHoje && mes > mesHoje
        idade -= 1
    end
    idade
end

def main
    puts 'Informe a data do seu nascimento na ordem dia, mês e ano:'
    dia = gets.chomp.to_i
    mes = gets.chomp.to_i
    ano = gets.chomp.to_i
    idade = calculaIdade dia, mes, ano
    if idade != -1
        puts "A sua idade é #{idade} anos."
    end
end

main