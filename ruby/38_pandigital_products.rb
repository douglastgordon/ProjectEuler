require 'byebug'

def pandigital_products
  largest_pandigital = 123456789
  (1..100_000).each do |n|
    current_pandigital = ""
    multiplier = 1
    until current_pandigital.length >= 9
      current_pandigital += (n * multiplier).to_s
      multiplier += 1
    end
    current_pandigital = current_pandigital.to_i
    if pandigital?(current_pandigital) && current_pandigital > largest_pandigital
      largest_pandigital = current_pandigital
    end
  end
  largest_pandigital
end


def pandigital?(num)
  num.to_s.split("").map(&:to_i).sort.join("") == "123456789"
end


p pandigital_products
