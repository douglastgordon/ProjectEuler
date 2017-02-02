def primes_below_million
  nums = (2..1_000_000).to_a
  i = 0
  while i < nums.length
    new_nums = []

    nums.each do |el|
      if el % nums[i] != 0 || nums[i] == el
        new_nums << el
      end
    end
    nums = new_nums
    i += 1
  end
  nums
end


p primes_below_million
