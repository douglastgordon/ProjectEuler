def sum_of_squares
  sum = 0
  (1..100).each do |num|
    sum += num ** 2
  end
  sum
end

def square_of_sums
  sum = 0
  (1..100).each do |num|
    sum += num
  end
  sum ** 2
end

p (sum_of_squares - square_of_sums).abs
