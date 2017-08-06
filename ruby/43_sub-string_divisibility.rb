def has_property?(num)
  num = num.to_s.split("")
  if (num[1..3].join("").to_i % 2 == 0 &&
     num[2..4].join("").to_i % 3 == 0 &&
     num[3..5].join("").to_i % 5 == 0 &&
     num[4..6].join("").to_i % 7 == 0 &&
     num[5..7].join("").to_i % 11 == 0 &&
     num[6..8].join("").to_i % 13 == 0 &&
     num[7..9].join("").to_i % 17 == 0)
     return true
   end
   false
end


def pandigitals_with_property_sum
  pandigitals = (0..9).to_a.permutation.to_a.map do |el|
    el.join("").to_i
  end
  sum = 0
  pandigitals.each do |pandigital|
    sum += pandigital if has_property?(pandigital)
  end
  sum
end

p pandigitals_with_property_sum
