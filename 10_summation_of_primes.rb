def summation_of_primes
  sum = 2
  (3...2_000_000).step(2).each do |num|
    sum += num if is_prime?(num)
  end
  sum
end

def is_prime?(num)
  return true if num == 2 || num == 3
  return false if num < 2 || num.even?
  (3..(num**0.5)).step(2).each do |divisor|
    return false if num % divisor == 0
  end
  true
end

p summation_of_primes
