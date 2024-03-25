class Circle
    attr_accessor :raio, :x, :y

    def initialize x, y, raio
        @x = x
        @y = y
        @raio = raio
    end

    def is_inside_circle? point
        dist = Math.sqrt((point.x - @x)**2 + (point.y - @y)**2)
        raio > dist
    end

    def print_circle
        puts "\n\nCoordenada x = #{@x}\nCoordenada y = #{@y}\nRaio = #{@raio}"
    end
end

puts "Informe o ponto do centro do círculo e então seu raio"
coord_x, coord_y, raio = gets.chomp.split(" ").map(&:to_i)


circle = Circle.new coord_x, coord_y, raio
circle.print_circle

