# (valor = 1.75)
# 5) Faça uma função chamada 'mediana' que recebe um array de números e retorna a mediana entre eles.


# Lembrando que para obter a mediana de uma série de números, é necessário ordenar a série (usar a função sort()) e retornar:

# - se a série tiver um número (n) ímpar de elementos, retornar o número da posição n/2 (a parte inteira);
# - e caso se a série tiver um número (n) par de elementos, retornar a média entre os números das posições (n/2)-1 e (n/2)

# Ex.: 

# puts(mediana([10, 0, -1, -500, 20, 100])) # deve imprimir 5.0
# puts(mediana([10, 0, -1, -500, 20]))      # deve imprimir 0.0


array = [10, 0, -1, -500, 20, 100]

puts array.sort

def mediana(array)
    array.sum / array.size
end

total = mediana(array.sort)
puts total