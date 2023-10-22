require_relative 'Matrix.rb'

m1 = Matrix.new 2, 2

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

