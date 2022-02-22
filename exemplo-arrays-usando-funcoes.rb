# Remoção do ultimo elemento
def exibirArray(array)
    for i in(0..array.size-1)
        print array[i]
        if i < array.size-1
            print ", "
        end    
    end
    print "\n"
end


numeros = [10, 0, -1, -500, 20, 100]

puts "Elementos do Array"
puts exibirArray(numeros)

puts "Tamanho do Array"
puts numeros.size

# remove o primeiro elemento do array
# numeros.shift()

# Remover o último elemento do array
# numeros.pop()
 
# Remover um elemento usando o indice
# numeros.delete_at(2)

# Remover um elemento usando o valor
numeros.delete(-500)

puts "Elementos do Array"
puts exibirArray(numeros)

puts "Tamanho do Array"
puts numeros.size






# Remoção do primeiro elemento