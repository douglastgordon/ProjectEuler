require 'byebug'
def four_digit_primes
  primes = []
  (1000..9999).each do |el|
    primes << el if is_prime?(el)
  end
  primes
end

def is_prime?(n)
  if n.even?
    return false
  end
  (3..(n**0.5)).step(2).each do |divisor|
    return false if n % divisor == 0
  end
  true
end

def find_triplets
  primes = four_digit_primes
  hash = Hash.new

  primes.each do |el|
    hash[el] = el.to_s.split("").sort.join("")
  end
  potential_sets = sets(hash)
  real_set = find_set_with_arithmetic_sequence(potential_sets)
  real_set.map(&:to_s).join("").to_i
end

def sets(hash)
  sets = []
  hash.values.uniq.each do |sorted_value|
    set = []
    hash.each do |k, v|
      set << k if v == sorted_value
    end
    sets << set.sort if set.length >= 3
  end
  sets
end


def find_set_with_arithmetic_sequence(arrs)
  arrs.each do |arr|
    i = 0
    while i < arr.length - 2
      j = i + 1
      while j < arr.length - 1
        k = j + 1
        while k < arr.length
          if arr[k] - arr[j] == arr[j] - arr[i] && arr[k] != 8147
            return [arr[i], arr[j], arr[k]]
          end
          k += 1
        end
        j += 1
      end
      i += 1
    end
  end
  return "nope"
end

p find_triplets
