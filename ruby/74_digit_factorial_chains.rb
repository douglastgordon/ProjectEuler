def factorial_chain_length(num)
  chain = [num]
  loop do
    next_num = next_factorial_chain(chain.last)
    return chain.length if chain.include?(next_num)
    chain << next_num
  end
end

def next_factorial_chain(num)
  num.to_s.split("").map{ |el| factorial(el.to_i) }.inject(:+)
end

def factorial(num)
  return 1 if num == 0
  (1..num).inject(:*)
end

def chains_with_sixty_terms_below_million
  total = 0
  (1...1_000_000).to_a.each do |num|
    p num if num % 100000 == 0
    total += 1 if factorial_chain_length(num) == 60
  end
  total
end

p chains_with_sixty_terms_below_million
