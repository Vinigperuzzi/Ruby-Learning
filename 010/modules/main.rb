require_relative 'pagamento.rb'
require_relative 'compra.rb'

include Pagamento

p = Visa.new
c = Compra.new

puts p.pagar 100
puts c.pegarProduto gets.chomp