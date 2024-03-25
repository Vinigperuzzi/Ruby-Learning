require_relative 'pessoa.rb'
require_relative 'pessoa-fisica.rb'

p1 = Pessoa.new

#p1.falar_protegido  #Não é possível chamar método privado
p1.chamar_falar

p2 = PessoaFisica.new
p2.chamar_falar
p2.pagar_fornecedor