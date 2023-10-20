COMBPRECO = 5.99

def rendimento kmIni, kmFim, combGasto, totalRec
    media = (kmFim - kmIni)/combGasto
    lucro = totalRec - (combGasto * COMBPRECO)
    return [media, lucro]
end


def main
    puts "Informe a marcação do odômetro no início do dia, a marcação ao final, a quantidade de combustível utilizada e os ganhos com passageiros, nessa ordem: "
        kmIni = gets.chomp.to_i
        kmFim = gets.chomp.to_i
        combGasto = gets.chomp.to_f
        totalRec = gets.chomp.to_f
        resultados = rendimento kmIni, kmFim, combGasto, totalRec
        puts "A média do consumo foi #{sprintf("%.2f", resultados[0])} km por litro de combustível, e o lucro foi #{sprintf("%.2f", resultados[1])} reais."
end

main