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

class Circle
    attr_accessor :raio

    def initialize x, y, raio
        @coord = Coordinates.new x, y
        @raio = raio
    end

    def is_inside_circle? point
        dist = Math.sqrt((point.x - @coord.x)**2 + (point.y - @coord.y)**2)
        raio > dist
    end

    def print_circle
        puts "\n\nCoordenada x = #{@coord.x}\nCoordenada y = #{@coord.y}\nRaio = #{@raio}"
    end
end


puts "Informe a quantidade de pontos"
tam = gets.chomp.to_i

pontos = []

tam.times do |x|
    pontos.push(Coordinates.new x, x+1)
end

puts "Informe o ponto do centro do círculo e então seu raio"
coord_x, coord_y, raio = gets.chomp.split(" ").map(&:to_i)


circle = Circle.new coord_x, coord_y, raio

pontos.each_with_index do |coords, index|
    if circle.is_inside_circle? coords
        puts "O ponto #{index} está dentro do círculo"
    end
end

circle.print_circle