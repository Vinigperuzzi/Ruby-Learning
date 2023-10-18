$totalO = 0
$totalX = 0
$totalY = 0
$total1 = 0
$total2 = 0
$total3 = 0
$total4 = 0

def informaPosicao coordX, coordY
    if coordX == 0 && coordY == 0
        puts "O ponto está na origem!"
        $totalO += 1
        return
    elsif coordX == 0
        puts "O ponto está sobre o eixo das abcissas!"
        $totalX += 1
        return
    elsif coordY == 0
        puts "O ponto está sobre o eixo das ordenadas!"
        $totalY += 1
        return
    end
    quadrante = 0
    if coordX >= 0 && coordY >= 0
        $total1 += 1
        quadrante = 1
    elsif coordX < 0 && coordY >= 0
        $total2 += 1
        quadrante = 2
    elsif coordX < 0 && coordY < 0
        $total3 += 1
        quadrante = 3
    elsif coordX >= 0 && coordY < 0
        $total4 += 1
        quadrante = 4
    end
    puts "O Quadrante é #{quadrante}"
end

def pedeInfo
    puts "Informe as coordenadas do ponto, primeiro o X depois o Y"
    x = gets.chomp.to_f
    y = gets.chomp.to_f
    informaPosicao x, y
end

def main
    teste = true
    while teste do
        pedeInfo
        puts "Deseja informar outro ponto? (S/N)"
        escolha = gets.chomp
        if escolha == 'N' || escolha =='n'
            teste = false
        end
    end
    puts "Dos pontos informados: #{$totalO} estão na origem, #{$totalX} estão sobre o eixo das abcissas, #{$totalY} estão sobre o eixo das ordenadas, #{$total1} estão no primeiro quadrante, #{$total2} estão no segundo quadrante, #{$total3} estão no terceiro quadrante e #{$total4} estão no quarto quadrante."
end

main

