# (valor = 1.25)
# 2) Escreva uma função chamada "tipo_triangulo" que deve receber três parâmetros: a, b e c, que se referem a cada lado do triângulo. A função deve retornar uma string contendo a seguinte informação, conforme a regra abaixo:

# "TRIANGULO EQUILATERO", se os 3 lados forem iguais
# "TRIANGULO ISÓSCELE", se 2 dos lados forem iguais
# "TRIANGULO ESCALENO", se os 3 lados forem diferentes

# Valide se os parâmetros são valores maiores que zero, se não forem, a função deve retornar deve retornar "ARGUMENTOS INVÁLIDOS".


# puts(tipo_triangulo(10, 10, 10))  # deve imprimir TRIANGULO EQUILÁTERO

def tipo_triangulo(a , b , c)
    if  a <= 0 || b <=0 || c <= 0
        return "argumentos invalodos"
    end
    if
        a == b and a == c 
        puts "TRIANGULO EQUILATERO"
            elsif
            a == b or a == c or b == c
            puts "TRIANGULO ISÓSCELE"
                else
                puts "TRIANGULO ESCALENO"
    end
end

puts "de o valor oa primeiro lado do triangulo :"
a = gets
puts  "de o valor oa segundo lado do triangulo :"
b = gets
puts "de o valor oa terceiro lado do triangulo :"
c = gets

tipotriangulo = tipo_triangulo(a, b , c)
puts tipotriangulo