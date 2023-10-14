module Pagamento
    class Visa
        TAXA = 0.05
        def pagar preco
            preco += preco * TAXA
        end
    end
end
