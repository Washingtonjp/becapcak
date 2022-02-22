# Array de uma dimensão
array = [1, 2, 3, 4, 5]

# Array de duas dimensões
array2d = [[1, 2, 3], [10, 20, 30], [0, 1, -1]]

# Array n Dimensões
# Não existe limite para a quantidade de dimensões do array
array3d = [
    [[1, 2, 3], [10, 20, 30], [0, 1, -1]],
    [[0, 0, 0], [1, 1, 1], [2, 2, 2]],
    [[0, 0, 0], [0, 0, 0], [0, 0, 0]]
]

for i in(0..array3d.size-1)
    for j in(0..array3d[0].size-1)
        for z in(array3d[0][0].size-1)
    end    
end

puts "Array"
puts array[0]
puts array[1]
puts

puts "Array 2D"
puts array2d[0]
puts array2d[1][2]
puts

puts "Array3D"
puts array3d[1]
puts array3d[1][0]
puts array3d[1][2][2]