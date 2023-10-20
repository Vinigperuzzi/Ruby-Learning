PI = 3.14

def calcArea r
    PI * (r*r)
end

def main
    puts "Informe um valor de raio para ser calculada a área:"
    raio = gets.chomp
    area = calcArea raio.to_i
    puts "A área do círculo cujo raio é #{raio} é #{area}."
end

main