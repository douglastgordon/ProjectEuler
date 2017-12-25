def make_pentagon(n)
  (n * ((3 * n) - 1)) / 2
end

def first_10000_pentagon_numbers
  (1..10000).map do |num|
    make_pentagon(num)
  end
end

def is_pentagonal?(x)
  # x = n(3n−1)/2
  # x = (3n^2 - n) / 2
  # x = 1.5n^2 - 0.5n
  # 1.5n^2 - 0.5n - x = 0
  n = (0.5 + Math.sqrt(0.25 - (4 * 1.5 * (x * -1)))) / (2 * 1.5)
  n % 1 == 0
end

def find_pair
  first_10000 = first_10000_pentagon_numbers()
  differences = []
  first_10000.each_with_index do |x, x_idx|
    first_10000.each_with_index do |y, y_idx|
      if y_idx > x_idx && is_pentagonal?(y - x) && is_pentagonal?(y + x)
        differences << (y - x)
      end
    end
  end
  differences.sort( ).first
end

p find_pair()
