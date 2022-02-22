# (valor = 1.25)
# 1) Cada maça custa R$ 0,30, porém, se levar mais de uma dúzia, o preço de cada baixa para R$ 0,25. 

# Considerando essa precificação, escreva uma função chamada "preco_maca" que deve receber como parâmetro a quantidade de maçãs e deve retornar o valor em reais a ser pago por elas.

# Valide se a quantidade é um número maior que zero, se não for, a função deve retornar nil.

# puts(preco_maca(6)) # deve imprimir 1.8
# puts(preco_maca(12)) # deve imprimir 3.0

def precoMacas(qauntidadeMacas)
    for i in(1..qauntidadeMacas)
        if
        qauntidadeMacas < 0
        return nil
            elsif
            qauntidadeMacas < 12
            precodamaca = 0.30
                else 
                 qauntidadeMacas > 12
                 precodamaca = 0.25
        end
        return puts precodamaca * qauntidadeMacas
    end
end

puts "Bom dia tudo bem !"
puts "A qui vendemos maças por atacado e varejo, "
puts "Se o senhor quiser acima de 12 unidades cada uma sairá por R$0.25 se não cada uma saira por R$0.30 "
print "por favor digite a quantidade de maças desejada "
qauntidadeMacas = gets.to_f


total = precoMacas(qauntidadeMacas)
puts total


