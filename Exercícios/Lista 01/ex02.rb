def recalcSalario salario, ajuste
    salario += (salario * (ajuste/100))
    salario
end

def main
    puts "Por favor informe o salário e o percentual de aumento, nessa ordem:"
    salario = gets.chomp
    ajuste = gets.chomp
    novoSalario = recalcSalario salario.to_f, ajuste.to_f
    puts "O salário original com #{ajuste}% de ajuste é #{novoSalario}"
end

main