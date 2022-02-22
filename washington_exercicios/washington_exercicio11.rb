# 1) Desenhe um quadrado de 10 linhas por 10 colunas. Desenhar as bordas com “*”, preencher com “x”.

# 2) Esse aqui é um desafio. Faça um código para obter esse resultado:

#         *
#         **
#         ***
#         ****
#         *****
#         ******
#         *******
#         ********
#         *********
#         **********

# 3) Desenhar uma pirâmide. O tamanho da base deve ser informado. Se o tamanho da base for numero par, 
# o topo terá "**", se for ímpar "*". Então, cada nível é preenchido até que o nível da base tenha o 
# mesmo número de "*" que o número informado.

#     **
#    ****
#   ******
#  ********
# **********

#        *
#       ***
#      *****
#     *******
#    *********
#   ***********
#  *************
# ***************


# 4) Quer mais? Tente fazer uma letra V, usando asteriscos “*” e
# underscores "_".

# _***************_
# *_*************_*
# **_***********_**
# ***_*********_***
# ****_*******_****
# *****_*****_*****
# ******_***_******
# *******_*_*******
# ********_********


# def imprimirAsteriscos(totalLinhas,totalColunas)
#     for l in(1..totalLinhas)
#         for c in(1..totalColunas) 
#         if l == 1 or l == totalLinhas or c == 1 or c == totalColunas
#             print  "*"
#         else
#             print "x"
#         end
#     end
#     print "\n"
#     end 
# end

# print "Número de Linhas.: "
# totalLinhas = gets.chomp.to_i # Testar com 3
# print "Numero de colunas.: "
# totalColunas = gets.chomp.to_i # Testar com 10

# imprimirAsteriscos(totalLinhas,totalColunas)

def imprimirAsteriscos(linhas,colunas)
    for l in(1..linhas )
        for c in("*")
            if l == 1 or l == linhas or c == ponto*2
            print x
            else ponto*ponto

            end
        end
        print "\n"
    end 
end
ponto = "*".to_s
print "Número de Linhas.: "
linhas = gets.chomp.to_i # Testar com 3
print "Numero de colunas.: "
colunas = gets.chomp.to_i # Testar com 10

imprimirAsteriscos(linhas,colunas)