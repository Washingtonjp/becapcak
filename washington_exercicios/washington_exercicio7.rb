#1) Faça um programa para calcular a boa e velha tabuada.

#Pergunte ao usuário qual o número que ele quer o cálculo da tabuada e imprima na tela os resultados.

#Por exemplo: 

#Se o usuário digitar 7, deve imprimir dessa forma:

#7 x 1 = 7
#7 x 2 = 14
#7 x 3 = 21
#... até
#7 x 10 = 70

puts"adicionar um numero para calcular taboada"

numero1 = " ataboada do ".to_f + gets.to_f


for numero in(1..10)
   puts "#{numero} X #{numero1} = #{numero * numero1} "
end   