def digit_sum(num)
  num.to_s.split("").map(&:to_i).inject(:+)
end

def max_digit_sum
  max = 0
  (1...100).each do |a|
    p a
    (1...100).each do |b|
      sum = digit_sum(a ** b)
      max = sum if sum > max
    end
  end
  max
end


p max_digit_sum
