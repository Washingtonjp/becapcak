def preco_maca(quantidade)
    if quantidade > 0
        preco = 0.30
        if quantidade >= 12
            preco = 0.25
        end
        return quantidade * preco
    else
        return nil    
    end

end

puts preco_maca(0)
puts preco_maca(-1)
puts preco_maca(6)
puts preco_maca(12)
puts preco_maca(120)