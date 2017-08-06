def digit_cancelling_fractions
  fractions = []
  (10..99).each do |numerator|
    (10..99).each do |denominator|
      next if denominator <= numerator
      if cancelling?(numerator, denominator)
        fractions << [numerator, denominator]
      end
    end
  end
  total_numerator = 1
  total_denominator = 1
  fractions.each do |fraction|
    numerator = fraction.first
    denominator = fraction.last
    total_numerator *= numerator
    total_denominator *= denominator
  end
  reduce(total_numerator, total_denominator).last
end


def cancelling?(numerator, denominator)
  value = numerator.to_f / denominator.to_f
  numerator = numerator.to_s.split("")
  denominator = denominator.to_s.split("")
  changed = false
  (1..9).each do |num|
    num = num.to_s
    if numerator.include?(num) && denominator.include?(num)
      changed = true
      numerator.delete(num)
      denominator.delete(num)
    end
  end
  numerator = numerator.join("").to_i
  denominator = denominator.join("").to_i
  new_value = numerator.to_f / denominator.to_f
  value == new_value && changed
end

def reduce(numerator, denominator)
  loop do
    numerator_factors = factors(numerator)
    denominator_factors = factors(denominator)
    highest_common_factor = highest_common_factor(numerator_factors, denominator_factors)
    return [numerator, denominator] if highest_common_factor.nil?
    numerator = numerator / highest_common_factor
    denominator = denominator / highest_common_factor
  end
end

def factors(num)
  factors = []
  (2..(num/2)).each do |el|
    factors << el if num % el == 0
  end
  factors << num
  factors
end

def highest_common_factor(arr1, arr2)
  arr1 = arr1.reverse
  arr2 = arr2.reverse
  arr1.each do |num|
    return num if arr2.include?(num)
  end
  nil
end

p digit_cancelling_fractions
# p reduce(21,49)
