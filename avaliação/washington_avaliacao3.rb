# 3) Defina uma função “altura_escada” que deve receber um número inteiro para representar a altura da escada e deve retornar um array de strings para representar graficamente a escada.

# Valide o parâmetro da altura da escada, que deve ser um número maior ou igual a 1. Caso contrário, a função deve retornar um array vazio.

# Ex.:

# puts(altura_escada(1))
# # deve imprimir
# #

# puts(altura_escada(2))
# # deve imprimir
# _#
# ##

# puts(altura_escada(3))
# # deve imprimir
# __#
# _##
# ###

# puts(altura_escada(5))
# # deve imprimir
# ____#
# ___##
# __###
# _####
# #####

# puts(altura_escada(0))
# # deve imprimir nada, pois tem que retornar um array vazio




def alturaescada(base)
    if base <= 0
        puts "numero igual ou menor que 0"
    end
caractere = "#"
    for i in (1..base)
    forma = caractere + ("#" * (i-1))
    anderline = "_" * (base - i )
    escada = forma + anderline
    puts escada
end
end


puts = alturaescada(6)