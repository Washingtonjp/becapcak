# O número PI ou 3.14159... pode ser obtido através de várias fórmulas. Uma forma simples de obtê-lo é pela fórmula de Leibniz, que diz que a convergência da seguinte série infinita é igual a PI:

# PI = 4/1 - 4/3 + 4/5 - 4/7 + 4/9 - 4/11 ...

# Escreva uma função chamada "calcula_pi" que recebe o número de termos a serem usados na fórmula de Leibniz para obter o valor de PI. O resultado do cálculo deve ser retornado pela função.

# Valide o número de termos. Deve ser um número inteiro maior ou igual 1. Se a validação falhar, a função retorna nil.

# OBS.: Não se esqueçam que o retorno da função deve ser um número ponto flutuante!

# Ex: 

# puts(calcula_pi(4))
# # deve retornar o valor de (4/1 - 4/3 + 4/5 - 4/7), ou seja, 2.8952380952380956
# # note que a expressão tem 4 termos, pois 4 foi o número de termos informado no parâmetro.


def calculapi(quantidadetermo)
    if quantidadetermo <= 0
        return puts "valor menor igual a 0"
    end
        leibndiz = 0
        total = 1
        for i in (1..quantidadetermo)
         if   i.even?
                leibndiz = 4.0 / (i - 2)
            elsif
                leibndiz = 4.0 / (i + 2.0)
                leibndiz = leibndiz
            end
            total = leibndiz
        end
    return total
end



puts calculapi(-1)
puts calculapi(0)
puts calculapi(4.0)
puts calculapi(6)
puts calculapi(345)
puts calculapi(34)
