def apuracao(total, brancos, nulos, validos)
    pBrancos = (brancos * 100)/total
    pNulos = (nulos * 100)/total
    pValidos = (validos * 100)/total
    puts "De um total de #{total} eleitores, #{pBrancos}% votos foram brancos, #{pNulos}% foram nulos e #{pValidos}% foram válidos."
end

def main
    puts "Informe a quantidade total de eleitores, a quantidade de votos brancos, nulos e por fim válidos, nessa ordem:"
    total = gets.chomp.to_i
    brancos = gets.chomp.to_i
    nulos = gets.chomp.to_i
    validos = gets.chomp.to_i
    apuracao(total, brancos, nulos, validos)
end

main