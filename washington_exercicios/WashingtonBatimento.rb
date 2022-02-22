#
def converteAnosParaDias(ano)
    return ano * 365
end    

def calculoDeBatimento(idade , batimentos)
    return converteAnosParaDias(idade) * 24 * 60 * batimentos
end

batimentos = 80 
idade = 85
total = calculoDeBatimento(idade , batimentos)
puts total.to_s

# Crie uma função que calcule a quantidade de batimentos cardiacos de
# uma pessoa na vida.
# A função deve receber idade, quantidade de batimentos por minuto.
# Utilizar a função converteAnosParaDias na solução.
