
def mediana(numeros)
    numeros.sort()
    if numeros.size % 2 == 1
        posicao = numeros.size / 2
        return numeros[posicao]
    else
        posicao1 = (numeros.size / 2) - 1
        posicao2 = numeros.size / 2
        return (numeros[posicao1] + numeros[posicao2]) / 2.0
    end        
end

puts mediana([10, 0, -1, -500, 20, 100])
puts mediana([10, 0, -1, -500, 20])
#puts mediana([1, 1, 1, 2, 2, 3, 4, 5, 5])