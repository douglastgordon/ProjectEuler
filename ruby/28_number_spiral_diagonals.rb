def spiral_diagonals
  sum = 0
  (3..1001).step(2).each do |side_length|
    sum += side_length ** 2
    sum += (side_length ** 2) - (side_length - 1)
    sum += (side_length ** 2) - (side_length - 1) - (side_length - 1)
    sum += (side_length ** 2) - (side_length - 1) - (side_length - 1) - (side_length - 1)
  end
  sum + 1
end

p spiral_diagonals
