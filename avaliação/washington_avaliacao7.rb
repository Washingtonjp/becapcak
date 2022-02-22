# 7) (Opcional) (Vale até 2,0 pontos)
# Descreva o que o algoritmo abaixo está fazendo e qual o ajuste necessário para que a ordenação seja feita corretamente.
def ordenarArray(array)
    ordenado = false
    until ordenado 
       for i in(0..array.size-2)
            atual = i
            proximo = i + 1
            if array[atual] > array[proximo]
                temp = array[proximo]
                array[proximo] = array[atual]
                array[atual] = temp
                ordenado = true
            end    
            puts array[proximo]
       end  
    end
end

numeros = [10, 0, -1, -500, 20, 100]

total = ordenarArray(numeros)
puts total


# Explicação : você faz um for para percorrer o array e acrescenta o atual  com os originais  e o proximo +1 "que é um novo array"
#é como você colocasse os arrays em paralelo um ao outro e ir adicionando a sequencia ordenada no novo array