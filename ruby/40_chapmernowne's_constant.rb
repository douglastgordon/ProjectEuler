def champs_constant
  nums = (1..9).to_a
  prefix = 1
  until nums.length >= 1_000_000
    (0..9).each do |num|
      nums << prefix
      nums << num
    end
    prefix += 1
  end
  nums = nums.join("").split("").map(&:to_i)
  nums[0] * nums[9] * nums[99] * nums[999] * nums[9_999] * nums[99_999] * nums[999_999]
end

p champs_constant
