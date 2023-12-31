class Testes
    def teste1
        puts "Doing test 1..."
        m1 = Matrix.new 4, 4
    
        m1.setElement 1, 1, 11
        m1.setElement 1, 1, 99
        m1.setElement 1, 2, 12
        m1.setElement 2, 1, 21
        m1.setElement 3, 1, 31
        m1.setElement 4, 2, 42
        m1.setElement 10, 11, 1011
        puts "Setou elementos"
    
        m1.printHeader
        puts "\n\n\n\n"
        m1.printAll
    
        m1.printMatrix
    
        m1.getElement(12, 13)
    end
    
    def teste2 n1, n2
        puts "Doing test 2..."
        m1 = Matrix.new n1, n2
        n1.times do |i|
            n2.times do |j|
                m1.setElement i+1, j+1, ("#{i+1}#{j+1}").to_i
            end
        end
        m1.printMatrix
    end
    
    def teste3 n1, n2
        puts "Doing test 3..."
        m1 = Matrix.new n1, n2
        n1.times do |i|
            n2.times do |j|
                m1.setElement i+1, j+1, ("#{i+1}#{j+1}").to_i
            end
        end
        puts "Imprimindo a matrix 1"
        m1.printMatrix
    
        m2 = Matrix.new n1, n2
        n1.times do |i|
            n2.times do |j|
                m2.setElement i+1, j+1, ("#{(i+1)*2}#{(j+1)*2}").to_i
            end
        end
        puts "Imprimindo a matrix 2"
        m2.printMatrix
    
        m1.setElement(2, 2, 0)
        m2.setElement(2, 2, 0)
    
        m3 = m1.sum m2
        puts "Imprimindo a matrix resultado"
        m3.printMatrix
        m3.printAll
    end
    
    def teste4 n1, n2
        puts "Doing test 4..."
        m1 = Matrix.new n1, n2
        n1.times do |i|
            n2.times do |j|
                m1.setElement i+1, j+1, ("#{i+1}#{j+1}").to_i
            end
        end
        m2 = m1.transpose
        puts "Imprimindo a matriz 1:"
        m1.printMatrix
        puts "Imprimindo a matriz 2:"
        m2.printMatrix
    
        m3 = m1.sum m2
    end
    
    def teste5 n1, n2
        puts "Doing test 5..."
        m1 = Matrix.new n1, n2
        n1.times do |i|
            n2.times do |j|
                m1.setElement i+1, j+1, ("#{i+1}#{j+1}").to_i
            end
        end
        puts "Imprimindo a matrix 1"
        m1.printMatrix
    
        m2 = Matrix.new n1, n2
        n1.times do |i|
            n2.times do |j|
                m2.setElement i+1, j+1, ("#{(i+1)*2}#{(j+1)*2}").to_i
            end
        end
    
        m3 = m2.transpose
        m3.setElement(1, 1, 0)
        m3.setElement(2, 1, 0)
        
        puts "Imprimindo a matrix 3"
        m3.printMatrix
    
        m4 = m1.multiply m3
        puts "Imprimindo a matrix resultado"
        m4.printMatrix
        m4.printAll
    end
end