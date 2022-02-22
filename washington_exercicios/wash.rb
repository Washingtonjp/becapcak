# puts "Cálculo da Tabuada"
# puts "Digite o número que deseja calcular na tabuada"
# numero = gets.chomp.to_i

# for i in(1..10)
#     puts numero.to_s + " x " + i.to_s + " = " + (numero * i).to_s
# end

# 
puts "Cálculo do MMC" #escrevendo na tela quebrando libra 
print "Digite um número para x : " # escrevendo na tela não quebrando lilha
x = gets.chomp.to_i   #informou que x é o valor que o usuario colocar e colocou que sera um numero
print "Digite um número para y : "
y = gets.chomp.to_i   #informou que y é o valor que o usuario colocar e colocou que sera um numero

if x > y   # aqui esta perguntando se x é maior que y
    maior = x
    menor = y   # se verdade retorna x o maior 
else
    maior = y      # se for falso retorna y o maior  e x menor
    menor = x
end

mmc = maior    #mmc vai ser o maior numero 
while mmc % menor != 0      # retorna a sobra da divisão até que o mais proximo que 0
    mmc += maior #adiciona o mmc e  atribui ao maior numero
    puts mmc
end

puts "MMC " + x.to_s + ", " + y.to_s + " = " + mmc.to_s   #aqui esta falando que o mmc de x , y é = á o valor de mmc dos dois numeros.