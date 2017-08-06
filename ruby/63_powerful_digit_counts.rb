def digit_count(num)
  num.to_s.length
end

def powerful_digit_counts
  count = 0
  (1..10000).each do |n|
    power = 1
    until digit_count(n ** power) > n
      if digit_count(n ** power) == n
        count += 1
        break
      end
      power += 1
    end
  end
  count
end


p powerful_digit_counts
