# (valor = 1.75)
# 3) Escreva uma função chamada "calcula_media" que deve receber um array de números como parâmetro e deve retornar o valor da média aritmética entre todos os números do array.


# puts(calcula_media([1, 2, -1, 3, 0, 7]))  # deve imprimir 2.0
def calcula_media(array)
     array.sum / array.size
end





puts "calculando a media do array"
array = [1, 2, -1, 3, 0, 7]

puts array

mediaarry = calcula_media(array)
puts "a media do arrey é "
puts mediaarry.to_f

