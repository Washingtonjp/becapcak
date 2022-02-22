# A partir da versão 2 do jogo de adivinhação, faça uma nova versão em que o jogador receba a informação, após chutar o número, se o chute foi maior ou menor que o número pensado. A seguir, ele ganha uma nova tentativa, de modo que o jogo somente vai terminar quando ele acertar.

# Ao final, após acertar, informe o número de tentativas que o jogador teve para acertar.

# Observação: valide o chute do jogador, ignorando a tentativa caso ele informe um numero invalido.
def ehNumero(n)
     Float(n) != nil rescue false
end
tentativas = 0
erro = 0 
for i in(0..4)
 tentativas = i + 1


puts "Jogo de Adivinhação"
puts "O computador selecionaou um número entre 0 e 10"
puts "Forneça um número para adivinhação"

numeroComputador = rand(0..10)
palpite = gets().chomp()
print "Seu Palpite: é  #{ palpite.to_s} o numero do sorteado é #{numeroComputador} "


if !ehNumero(palpite)

    puts "\n Chute é inválido! Não foi digitado um valor numérico."
    redo
elsif palpite.to_i < 0 || palpite.to_i > 10
    
    puts "\n Palpite é inválido! Dever um número entre 0 e 10"
    redo
else        
    if numeroComputador == palpite.to_i
        puts " Acertou!"
        break
    elsif  palpite.to_i < numeroComputador 
        erro = erro +1
        puts  "\n seu palpite foi menor que o numero gerado "
    else palpite.to_i > numeroComputador
        erro = erro +1
        puts  "\n seu palpite foi maior que o numero gerado"
        
end
end
puts  "seu numero de tentativas é : #{tentativas}  "
puts "você ja errou : #{erro} "
end
