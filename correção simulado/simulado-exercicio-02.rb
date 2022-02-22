def tipo_triangulo(a, b, c)
    if a <= 0 || b <= 0 || c <= 0
        return "ARGUMENTOS INVÁLIDOS"
    end
    
    if a == b && b == c
        return "TRIÂNGULO EQUILATERO"
    elsif a == b || a == c || b == c
        return "TRIÂNGULO iSÓSCELES"
    else
        return "TRIÂNGULO ESCALENO"        
    end
end

puts tipo_triangulo(10, 10, 10)
puts tipo_triangulo(10, 5, 5)
puts tipo_triangulo(10, 8, 6)
puts tipo_triangulo(10, 0, 6)
puts tipo_triangulo(0, 8, 6)