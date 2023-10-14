class Pessoa
    def initialize
        @nome = "Empty"
    end

    def getNome
        @nome
    end

    def setNome nome
        @nome = nome
    end
    def falar
        puts "Olá pessoal!"
    end
end