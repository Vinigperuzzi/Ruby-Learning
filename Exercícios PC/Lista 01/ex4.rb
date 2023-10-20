def celsiusToFah temp
    fah = ((9 * temp)/5) + 32
end

def main
    puts "Informe a temperatura em Celsius para ser convertida:"
    cel = gets.chomp
    fah = celsiusToFah cel.to_f
    puts "A temperatura de #{cel}º em Fahrenheit é #{sprintf("%.2f", fah)}"
end

main