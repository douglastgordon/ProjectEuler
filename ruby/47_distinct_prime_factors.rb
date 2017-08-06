def prime_factor_count(num)
  count = 0
  (2..(num / 2)).each do |n|
    if num % n == 0 && is_prime?(n)
      count += 1
    end
  end
  count
end

def is_prime?(num)
  return true if num == 2 || num == 3
  return false if num < 2 || num.even?
  (3..(num**0.5)).step(2).each do |divisor|
    return false if num % divisor == 0
  end
  true
end

def distinct_prime_factors
  last_four_counts = []
  num = 1
  loop do
    last_four_counts << prime_factor_count(num)
    if last_four_counts.length > 4
      last_four_counts.shift
    end
    return num - 3 if last_four_counts == [4, 4, 4, 4]
    num += 1
  end
end


p distinct_prime_factors
