TURMAC = 60
TURMAD = 20
TOTAL = TURMAC + TURMAD

def percAluno percC, percD
  repC = (percC * TURMAC)/100
  repD = (percD * TURMAD)/100
  puts "Da turma C #{repC.to_i} foram reprovados e da turma D #{repD.to_i}."
  totalRep repC, repD
end

def totalRep repC, repD
  total = (repC * 100 / TOTAL) + (repD * 100 / TOTAL)
  puts "O percentual de alunos reprovados é #{total.to_i}%"
end

def main
puts "Informe o percentual de alunos rodados de cada turma:"
  percC = gets.chomp.to_f
  percD = gets.chomp.to_f
  if percC > 100 || percD > 100
    puts "Não é possível reprovar mais do que o total de alunos"
    return 1
  end
  percAluno percC, percD
end

main 
  