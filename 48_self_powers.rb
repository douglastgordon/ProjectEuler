def self_powers
  sum = 0
  (1..1000).each do  |num|
    sum += (num ** num)
  end
  sum.to_s.split("")[-10..-1].join("").to_i
end

p self_powers
