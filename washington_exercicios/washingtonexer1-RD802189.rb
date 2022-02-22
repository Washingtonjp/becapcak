#Exercicio 03

#Escreva uma função (com parâmetros, variáveis locais e retorno, se necessários) para as seguintes necessidades abaixo:

#1. retornar a quantidade de horas que tem em uma quantidade de anos, que será um valor informado para a função

#2. retornar a quantidade de minutos que tem em uma quantidade de décadas, que será um valor informado para a função

#3. retornar a idade em valor de segundos, sendo que a idade deve ser informada para a função

#4. retornar a quantidade de anos que tem em uma quantidade de segundos, que será um valor informado para a função


def horasEmAnos(anos)
    return anos * 365 * 24
end

def minutosEmDecadas(decadas)
    return decadas * 10 * 365 * 24
end

def idadeEmminuto(idade)
    return idade * 365 * 24 * 60 * 60
end 

def anosEmsegundos(segundos)
return segundos / 60 / 24 / 365
end


anos = 2
decadas = 3
idade = 45
segundos = 63072000


#pergunta 1 
totaldehorasemanos = horasEmAnos(anos)
puts totaldehorasemanos

# pergunta 2 
totalminutosdecada = minutosEmDecadas(decadas)
puts totalminutosdecada

# pergunta 3
totalIdadeEmMinuto = idadeEmminuto(idade)
puts totalIdadeEmMinuto

#Pergunta 4 
totalAnosEmsegundos = anosEmsegundos(segundos)
puts totalAnosEmsegundos