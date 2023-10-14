class Pessoa
    attr_accessor :nome, :email

    def chamar_falar
        puts "Vou chamar o método falar"
        falar_protegido
    end
    
    private
    def falar_protegido
        puts "Estou falando"
    end
end