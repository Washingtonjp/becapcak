def exibirMatriz(matriz)
    print "["
    for l in(0..matriz.size-1)
        for c in(0..matriz[l].size-1)
            print matriz[l][c]
            if c < matriz[l].size-1
                print ","
            end    
        end
        if l < matriz.size-1
            print "\n"
        end    
    end
    print "]"
end

def transposta(matriz)
    transposta = []
    for c in(0..matriz[0].size-1)
        linha = []
        for l in(0..matriz.size-1)
            linha.push(matriz[l][c])
        end
        transposta.push(linha)
    end
    return transposta
end

matriz = []
matriz[0] = [1, 2, 3]
matriz[1] = [6, 5, 4]

exibirMatriz(matriz)
puts
exibirMatriz(transposta(matriz))
