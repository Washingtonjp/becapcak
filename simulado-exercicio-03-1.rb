def calcula_media(numeros)
      soma = 0.0
      for i in(0..numeros.size-1)
        soma = soma + numeros[i]
      end
    return soma / numeros.size
end

media = calcula_media([1,2,-1,3,0,7])
puts media
puts calcula_media([3,4,3])