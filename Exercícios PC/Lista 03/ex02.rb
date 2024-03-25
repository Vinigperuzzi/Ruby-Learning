def analyze_bigger (value1, value2)
    if value1 >=value2
        return value1
    else
        return value2
    end
end

def main
    puts "inform two numbers to see which is bigger"
    values = gets.chomp.split(" ")
    value1 = values[0].to_i
    value2 = values[1].to_i
    bigger = analyze_bigger(value1, value2)
    puts "The large number is #{bigger}"
end

main
    