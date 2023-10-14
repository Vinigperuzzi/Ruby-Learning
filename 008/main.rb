require_relative 'Pessoa.rb'
require_relative 'teste.rb'
p = Pessoa.new
puts "Informe o nome:"
p.setNome gets.chomp

puts p.getNome

p.falar

t = Test.new
t.testar