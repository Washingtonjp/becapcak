# 6) Considerando o código abaixo, implemente as partes que estão faltando para que a função que verifica se um texto é um palíndromo funcione corretamente.


def palindromo(parametro1)
    pontuacoes = ",.!?;:"
    espaco = " "
    parametro1.delete!(pontuacoes)
    parametro1.delete!(espaco)
    parametro1.upcase!()
    com_acento = "ÁÉÍÓÚÂÊÎÔÛÃÕ"
    sem_acento = "AEIOUAEIOUAO"
    for i in (0..com_acento.size-1)
        parametro1.gsub!(com_acento[i], sem_acento[i])
    end
        if parametro1 == parametro1.reverse 
           return true 
        else 
           puts “String não é um palíndromo” 
        end 

end

# puts(palindromo("LÁ É RETRÔ, MADAME, TEMA DA MORTE REAL!")  # deve retornar true
# puts(palindromo("A história se repete, a primeira vez como tragédia e a segunda como farsa.")  # deve retornar false
# puts(palindromo("ABC DEFG. GFEDC BA!")  # deve retornar true


parametro1 = "LÁ É RETRÔ, MADAME, TEMA DA MORTE REAL"
# if string == string.reverse 
#     return true 
#  else 
#     puts “String não é um palíndromo” 
#  end 
#  end

total = palindromo(parametro1)
puts total