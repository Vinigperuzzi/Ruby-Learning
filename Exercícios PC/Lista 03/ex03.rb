def analyze_bigger (value1, value2)
    if value1 <= value2
        return value1, value2
    else
        return value2, value1
    end
end

def main
    puts "inform two numbers to see which is bigger"
    values = gets.chomp.split(" ")
    value1 = values[0].to_i
    value2 = values[1].to_i
    array_sorted = analyze_bigger(value1, value2)
    array_sorted.each do |value|
        print "#{value} "
    end
end

main
    