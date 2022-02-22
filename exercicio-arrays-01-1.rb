# def posicaoArray(array, elemento)
#     for i in(0..array.size-1)
#         if elemento == array[i]
#             return i # esse valor refere-se ao índice do array
#         end        
#     end

#     return -1

# end

def posicaoArray(array, elemento)
    for i in(0..array.size-1)
        if elemento == array[i]
            puts "Índice do Elemento no Array .: " + i.to_s
            puts "Posição do Elemento no Array .:" + (i+1).to_s
            puts "Elemento no Array .: " + array[i].to_s
        end        
    end

end

numeros = [10,20,30,40,50,60,70,80,90,100]

# para o valor 60
#  - o elemento no array é o número 60
#  - o índice no array é o de número 5
#  - a posição no array é a de número 6

# puts "Posição do elemento no Array"
puts "Valor a ser pesquisado"
valor = gets.chomp.to_i

puts posicaoArray(numeros, valor)