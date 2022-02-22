# 2) Faça uma função chamada 'multiplica_arrays' que deve receber como parâmetros 2 arrays e deve retornar um valor numérico que deve ser o resultado da soma da multiplicação entre os elementos que ocupam a mesma posição em cada array.

# Ex.:

# puts multiplica_arrays([1, 2, 3], [10, 20, 30]) # deve imprimir 140

# Pois o resultado é igual a: (1*10) + (2*20) + (3*30)

# Obs.: Valide se os 2 arrays têm o mesmo tamanho. Caso não tiverem, a função deve retornar nil.




def multiplicaarrays(array1, array2)
    novoarray = []
    if array1.size-1 != array2.size-1
        return nil
    elsif array1.size-1 == array2.size-1
        for i in (0..array1.size-1)
            soma = array1[i] * array2[i]
            novoarray << soma
        end
        return novoarray.sum
end
end

array1 = [1, 2, 3]
array2 = [10, 20, 30]

puts multiplicaarrays(array1 , array2)
