def distribuiSalario nEmpregados, salarioMinimo, custoBici, nBiciVendidas
    valorBici = custoBici + (custoBici * 0.5)
    lucroBruto = valorBici * nBiciVendidas
    comissaoInd = ((custoBici * 0.15) * nBiciVendidas)/nEmpregados
    salarioInd = (2 * salarioMinimo) + comissaoInd
    lucroLiquido = lucroBruto - (salarioInd * nEmpregados)
    return [salarioInd, lucroLiquido]
end

def main
    puts "Informe a quantidade de empregados, o valor do salário mínimo, o preço de custo de cada bicicleta e o número de bicicletas vendidas, nessa ordem:"
    nEmpregados = gets.chomp.to_i
    salarioMinimo = gets.chomp.to_f
    custoBici = gets.chomp.to_f
    nBiciVendidas = gets.chomp.to_f
    resultado = distribuiSalario nEmpregados, salarioMinimo, custoBici, nBiciVendidas
    puts "Nesse mês, o salário total de cada vendedor deve ser #{sprintf("%.2f", resultado[0])} reais e a loja teve um lucro de #{sprintf("%.2f", resultado[1])} reais."
end

main