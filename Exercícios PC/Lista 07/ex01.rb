class Coordinates

    attr_accessor :x, :y

    def initialize x, y
        @x = x
        @y = y
    end

    def print
        puts "Point x: #{x}, poins y: #{y}"
    end
end


puts "Informe a quantidade de pontos"
tam = gets.chomp.to_i

pontos = []

tam.times do |x|
    pontos.push(Coordinates.new x, x+1)
end

pontos.each do |coords|
    coords.print()
end