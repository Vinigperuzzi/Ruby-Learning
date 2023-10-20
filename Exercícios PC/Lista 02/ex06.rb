def fatorial numero
    soma = 1
    (numero-1).times do |x|
        soma *= numero - x
    end
    soma
end

def main
    puts 'Informe um número para calcular o fatorial:'
    numero = gets.chomp
    soma = fatorial numero.to_i
    puts "#{numero}! = #{soma}"
end

main

