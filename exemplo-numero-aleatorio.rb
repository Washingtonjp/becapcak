# puts rand() # retornar um numero float "aleatorio" entre 0.0 e 1.0 (exclusive)
# puts rand(10) # Retornar um número inteiro "aleatorio" entre 0 e 10 (exclusive)
# puts rand(1..100) # Retornar um numero inteiro "aleatorio" entre 1 e 5 (inclusive)

puts "Jogo de Adivinhação"
puts "O computador selecionaou um número entre 0 e 100"
puts "Forneça um número para adivinhação"

numeroComputador = rand(0..100)
palpite = gets().chomp()
print "(#{numeroComputador})  Seu Palpite: é " + palpite.to_s
for i in(1..5)
if !ehNumero(palpite)
    puts
    puts " Chute é inválido! Não foi digitado um valor numérico."
elsif palpite.to_i < 0 || palpite.to_i > 100
    puts
    puts " Palpite é inválido! Dever um número entre 0 e 100"
else        
    if numeroComputador == palpite.to_i
        puts " Acertou!"
    else
        puts " Errou!"
    end
    redo
end            
