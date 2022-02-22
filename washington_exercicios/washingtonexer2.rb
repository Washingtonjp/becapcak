#Exercício 04

#Sabendo que:

#1) O diâmetro de um círculo é 2x o seu raio.
#2) O comprimento de um círculo é seu diâmetro vezes o valor da constante matemática PI (3.1415...)
#3) A área de um círculo é seu raio ao quadrado vezes o valor da constante matemática PI (3.1415...)

#Escreva funcões para calcular o diâmetro, o comprimento e a área de um círculo com base no valor do seu raio.

#Ou seja, escreva uma função para cada cálculo, considerando que o raio será informado na chamada de cada função.

#Importante: evite duplicação de código!

#Dica: no Ruby, a constante PI é fornecedida por 'Math::PI' (rode um 'puts Math::PI' no 'irb' para ver o que aparece)

#Escreva códigos para testar cada uma das funções.
#
def calculoDiametroDeumCirculo(raio)
    return raio * 2
end

def calculoComprimentoCirculo(raio , pi)
    return calculoDiametroDeumCirculo(raio) * pi
end

def calculoAreaCirculo(raio , pi)
    return (raio**2) * pi
end


pi = Math::PI
raio = 9

#questão 1
totaldiametro = calculoDiametroDeumCirculo(raio)
puts "o total do diametro diametro e ".to_s  + totaldiametro.to_s 

#questão 2
totalComprimentoCirculo = calculoComprimentoCirculo(raio , pi)
puts "o total do Comprimento Circulo e ".to_s  + totalComprimentoCirculo.to_s 

#questão 3
totalAreaDoCirculo = calculoAreaCirculo(raio , pi)
puts "o total da area do circulo e ".to_s  + totalAreaDoCirculo.to_s 