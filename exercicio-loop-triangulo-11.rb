def imprimirTriangulo(altura)
    for linha in(0..altura)
        for coluna in(1..linha+1)
            print "* "
        end
        print "\n"
    end
end

puts "Digite a Altura desejada para o triangulo"
altura = gets.chomp.to_i

imprimirTriangulo(altura)

nome = "Leo" # trava o conteúdo (imutável)

nome_1 = "Willian" # trava o conteúdo (imutável)

nome_2 = "Carol" # trava o conteúdo (imutável)
nome_n = "José"

puts nome