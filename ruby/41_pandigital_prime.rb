def pandigital_prime
  permutes = []
  (1..9).each do |n|
    n_permutes = (1..n).to_a.permutation.to_a
    n_permutes = n_permutes.map do |arr|
      arr.join.to_i
    end
    permutes.concat(n_permutes)
  end
  permutes.reverse.each do |el|
    return el if is_prime?(el)
  end
  "no dice"
end

def is_prime?(num)
  (2..(num**0.5)).each do |divisor|
    return false if num % divisor == 0
  end
  true
end

p pandigital_prime
