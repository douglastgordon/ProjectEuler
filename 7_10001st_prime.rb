def nth_prime(num)
  count = 0
  i = 0
  loop do
    count += 1 if is_prime?(i)
    return i if count == num
    i += 1
  end
end

def is_prime?(num)
  return true if num == 2 || num == 3
  return false if num < 2 || num.even?
  (3..(num**0.5)).step(2).each do |divisor|
    return false if num % divisor == 0
  end
  true
end

p nth_prime(10001)
