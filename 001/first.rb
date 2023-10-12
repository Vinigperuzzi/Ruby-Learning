def faz_coisas(coisa)
    puts "Você digitou " + "#{coisa.to_i + 10}" + "!\nMuito obrigado pela interação!"
end

def main
    puts "Por favor, informe um valor: "
    faz_coisas gets.chomp
end

main
