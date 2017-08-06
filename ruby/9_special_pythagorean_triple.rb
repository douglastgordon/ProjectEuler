def special_triple
  (1..1000).each do |a|
    ((a + 1)..1000).each do |b|
      ((b + 1)..1000).each do |c|
        break if (a + b + c > 1000)
        if (a ** 2) + (b ** 2) == c ** 2 && a + b + c == 1000
          return a * b * c
        end
      end
    end
  end
end

p special_triple
