def square_digit_chains
  count = 0
  (1...10_000_000).each do |num|
    p num
    until num == 1 || num == 89
      num = num.to_s.split("")
      num = num.map do |digit|
        digit.to_i ** 2
      end
      num = num.inject(:+)
    end
    count += 1 if num == 89
  end
  count
end

p square_digit_chains
