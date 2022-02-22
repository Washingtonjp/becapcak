#Exercicio 03

#Escreva uma função (com parâmetros, variáveis locais e retorno, se necessários) para as seguintes necessidades abaixo:

#1. retornar a quantidade de horas que tem em uma quantidade de anos, que será um valor informado para a função

#2. retornar a quantidade de minutos que tem em uma quantidade de décadas, que será um valor informado para a função

#3. retornar a idade em valor de segundos, sendo que a idade deve ser informada para a função

#4. retornar a quantidade de anos que tem em uma quantidade de segundos, que será um valor informado para a função


def horasEmAnos(horas)
    return horas / 24 / 365 
end

def minutosEmDecadas(decadas)
    return decadas * 10 * 365 * 24 * 60
end

def idadeEmminuto(idade)
    return idade * 365 * 24 * 60 * 60
end 

def anosEmsegundos(segundos)
return segundos / 60 / 24 / 365
end


horas = 237734
decadas = 3
idade = 45
segundos = 1051200


#pergunta 1 
totaldehorasemanos = horasEmAnos(horas)
puts "o total de anos nas horas e ".to_s + totaldehorasemanos.to_s 

# pergunta 2 
totalminutosdecada = minutosEmDecadas(decadas)
puts "o total de minutos em decadas e ".to_s + totalminutosdecada.to_s 

# pergunta 3
totalIdadeEmMinuto = idadeEmminuto(idade)
puts "o total de segundos conforme a idedade e ".to_s  + totalIdadeEmMinuto.to_s 

#Pergunta 4 
totalAnosEmsegundos = anosEmsegundos(segundos)
puts "o total de anos em segundos e " .to_s   + totalAnosEmsegundos.to_s 