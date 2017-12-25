three_over_seven = (3 / 7.0)
closest = 0
fraction = [0, 1]

(1..1_000_000).to_a.each do |denominator|
  numerator = (three_over_seven * denominator).floor
  if ((numerator / denominator.to_f) > (fraction.first / fraction.last.to_f)) && ((numerator / denominator.to_f) <  (3 / 7.0))
    closest = numerator
    fraction = [numerator, denominator]
  end
end

p closest
p fraction
