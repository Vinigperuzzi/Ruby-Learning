def fibonacci limite
    a, b, soma = 0, 1, 0
    limite.times do |x|
        a = a + b
        b = a - b
        soma += b
        print "#{b} "
    end
    puts "\nA soma dos #{limite} termos da sequência Fibonacci é #{soma}."
end       

def main
    puts "Informe a quantidade de números da sequência Fibonacci que você deseja mostrar:"
    limite = gets.chomp.to_i
    fibonacci limite
end

main