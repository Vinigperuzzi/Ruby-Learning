require_relative 'Matrix.rb'

def teste n1, n2
    m1 = Matrix.new n1, n2
    n1.times do |i|
        n2.times do |j|
            m1.setElement i+1, j+1, ("#{i+1}#{j+1}").to_i
        end
    end
    m1.printAll
end

m1 = Matrix.new 4, 4

m1.setElement 1, 1, 11
m1.setElement 1, 2, 12
m1.setElement 2, 1, 21
m1.setElement 2, 2, 22
puts "Setou elementos"

m1.printStructure
puts "\n\n\n\n"
m1.printAll

puts m1.getElement(1, 1).data
puts m1.getElement(1, 2).data
puts m1.getElement(2, 1).data
puts m1.getElement(2, 2).data


