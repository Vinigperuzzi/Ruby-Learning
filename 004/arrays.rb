v = Array.new

(0..100).each do |i|
    v.push(i.to_i)
end

v.each do |elemento|
    if elemento % 2 == 0
        puts "#{elemento} é par"
    else
        puts "#{elemento} é impar"
    end
end
