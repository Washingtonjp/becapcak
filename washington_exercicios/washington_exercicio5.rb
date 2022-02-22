#Exercicio 05

#Parte 1:

#Considere os métodos (as funções) escritos nos exercícios anteriores:
#Os métodos que calculam:

#- o diâmetro de um círculo é 2x o seu raio
#- o comprimento de um círculo é seu diâmetro vezes o valor da constante matemática PI (3.1415...)
#- a área de um círculo é seu raio ao quadrado vezes o valor da constante matemática PI (3.1415...)

#Escreva um programa que use esses métodos, porém, de tal forma que o valor do raio do círculo seja perguntado ao usuário.
#Escreva um programa que pergunte o nome e a idade do usuário. Escreva também uma função que calcula a quantidade de batimentos cardíacos (uma estimativa) baseado na quantidade de dias que o usuário viveu. Considere uma média de 80 batimentos por minuto. Essa função deve receber a idade do usuário como parâmetro. 

#Para cada parte, escreva códigos que testem os programas escritos.

def calculoDiametroDeumCirculo(raio)
    return raio * 2
end

def calculoComprimentoCirculo(raio , pi)
    return calculoDiametroDeumCirculo(raio) * pi
end

def calculoAreaCirculo(raio , pi)
    return (raio**2) * pi
end
def converteAnosParaDias(idade)
    return idade * 365
end    

def calculoDeBatimento(idade , batimentos)
    return converteAnosParaDias(idade) * 24 * 60 * batimentos
end

batimentos = 80 
pi = Math::PI


puts "bom dia tudo bem ! vamos realizar alguns calculos!"
puts "digite seu nome "
nome = gets
puts "digite sua idade"
idade = gets.to_f
total = calculoDeBatimento(idade , batimentos)
puts "uma pessoa tem a media 80 batimentos por minuto vamos calcular seus batimentos até sua idade atual!"
puts "o total de batimento na sua idade atual é " + total.to_s 
puts " vamos calcular algumas medidas de um circulo! "
puts "digite a medida do raio que deseja calcular "
raio = gets.to_f



#questão 1
totaldiametro = calculoDiametroDeumCirculo(raio)
puts "o total do diametro diametro e ".to_s  + totaldiametro.to_s 

#questão 2
totalComprimentoCirculo = calculoComprimentoCirculo(raio , pi)
puts "o total do Comprimento Circulo e ".to_s  + totalComprimentoCirculo.to_s 

#questão 3
totalAreaDoCirculo = calculoAreaCirculo(raio , pi)
puts "o total da area do circulo e ".to_s  + totalAreaDoCirculo.to_s 

