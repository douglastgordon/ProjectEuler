def divisible_by_one_through_twenty(num)
  (2..20).each do |divisor|
    return false if num % divisor != 0
  end
  true
end

def smallest_multiple
  num = 2000
  loop do
    if divisible_by_one_through_twenty(num)
      return num
    end
    num += 20
  end
end

p smallest_multiple
