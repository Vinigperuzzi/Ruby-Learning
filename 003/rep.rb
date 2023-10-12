i = 0
while i < 30 do
    puts "#{i}"
    i += 1
end

(0..5).each do |individual|
    puts individual.to_s
end

array = ["Maria", "Julia", "João", "Lucas", "Marcos"]

array.each do |nome|
    puts nome
end

5.times do |a|
    puts "O número é: #{a}"
end

gets.chomp.to_i.times do |a|
    puts "O número é: #{a}"
end
