matrice3d = Array.new
matrice2d = Array.new
array = Array.new

(0..2).each do |i|
    (0..5).each do |j|
        (0..10).each do |k|
            array.push((k+j)*i)
        end
        matrice2d.push(array)
    end
    matrice3d.push(matrice2d)
end

matrice3d.each do |m2d|
    m2d.each do |a|
        a.each do |elem|
        print "#{elem}  "
        end
        print "\n"
    end
    print "\n"
end