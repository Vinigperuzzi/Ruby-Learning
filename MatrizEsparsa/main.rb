require_relative 'Matrix.rb'

m1 = Matrix.new 4, 4

m1.setElement 1, 1, 31
puts "Setou elemento"

puts m1.getElement(2, 1).data
