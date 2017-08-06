def largest_prime_factor
  biggest_prime_factor = 0
  num = 600_851_475_143
  i = (num ** 0.5).to_i
  while i > 0
    return i if num % i == 0 && is_prime?(i)
    i -= 1
  end
  -1
end

def is_prime?(num)
  return true if num == 2 || num == 3
  return false if num < 2 || num.even?
  (3..(num**0.5)).step(2).each do |divisor|
    return false if num % divisor == 0
  end
  true
end

p largest_prime_factor
