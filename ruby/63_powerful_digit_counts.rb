def powerful_digit_counts
  total = 0
  (1..1000).each do |digit|
    (1..40).each do |power|
      if ((digit ** power).to_s.length == power)
        total += 1
        pairs << [digit, power]
      end
    end
  end
  total
end

p powerful_digit_counts
