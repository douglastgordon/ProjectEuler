def quadratic_primes
  most_consecutive = 0
  best_a = nil
  best_b = nil

  a = -999
  while a < 1000
    b = -1000
    while b <= 1000
      current_consecutive = number_of_consecutive_primes(a, b)
      if current_consecutive > most_consecutive
        most_consecutive = current_consecutive
        best_a = a
        best_b = b
      end
      b += 1
    end
    a += 1
  end
  best_a * best_b
end


def number_of_consecutive_primes(a, b)
  n = 0
  loop do
    current = (n ** 2) + (a * n) + b
    break if !is_prime?(current)
    n += 1
  end
  n
end


def is_prime?(num)
  return true if num == 2 || num == 3
  return false if num < 2 || num.even?
  (3..(num**0.5)).step(2).each do |divisor|
    return false if num % divisor == 0
  end
  true
end

p quadratic_primes
# p number_of_consecutive_primes(-79, 1601)
