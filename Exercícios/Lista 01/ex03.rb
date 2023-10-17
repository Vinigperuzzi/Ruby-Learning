def fahrenheitToCelsius temp
    celsius = 5 * ((temp - 32) / 9 )
end

def main
    puts "Informe a temperatura em Fahrenheit para ser convertida:"
    temp = gets.chomp
    celsius = fahrenheitToCelsius temp.to_f
    puts "A temperatura de #{temp} F é #{sprintf("%.2f", celsius)}º"
end

main