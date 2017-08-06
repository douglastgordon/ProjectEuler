require 'byebug'
UPPER_LIMIT = 28_123

def abundant_nums
  abundants = []
  (2..UPPER_LIMIT).each do |num|
    if sum_of_divisors(num) > num
      abundants << num
    end
  end
  abundants
end

def sum_of_divisors(num)
  divisors = []
  (1..(num/2)).each do |el|
    divisors << el if num % el == 0
  end
  divisors.inject(:+)
end

def numbers_sum_of_two_abundant_numbers
  abundants = abundant_nums
  p "calculated abundant nums"
  two_sum = []
  abundants.each do |num1|
    abundants.each do |num2|
      if (num1 + num2) > UPPER_LIMIT
        break
      else
        two_sum << (num1 + num2)
      end
    end
  end
  two_sum.uniq.sort
end

def non_two_abundant_sum
  two_sum_abundants = numbers_sum_of_two_abundant_numbers
  non_two_sums = []
  (1..UPPER_LIMIT).each do |num|
    non_two_sums << num if !two_sum_abundants.include?(num)
  end
  non_two_sums.inject(:+)
end

p non_two_abundant_sum
