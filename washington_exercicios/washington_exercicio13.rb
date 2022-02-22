def insere_no_array(array , acrescentar , f)
    for i in(0..array.size-1)
        if  i == f
        return array.insert(f, acrescentar)
        else
             print "essa posição não existe nesse arrey"
        end
    end
end
array = [10, 20 , 30 , 40 ,50]
puts "valor a ser acrescentado"
acrescentar = gets.to_s
puts "posição para acrescentar"
f = gets.to_i
fim = insere_no_array(array , acrescentar , f)
puts fim 