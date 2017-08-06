def triangles
  max_solutions = 0
  best_perimeter = nil
  (3..1000).each do |perimeter|
    possible_side_lengths = (1..perimeter).to_a
    current_solutions = 0
    a = 0
    p perimeter
    while a < possible_side_lengths.length - 2
      b = a + 1
      break if a + b > perimeter
      while b < possible_side_lengths.length - 1
        c = b + 1
        break if a + b + c > perimeter
        while c < possible_side_lengths.length
          if (a ** 2) + (b ** 2) == (c ** 2) && (a + b + c == perimeter)
            current_solutions += 1
          elsif a + b + c > perimeter
            break
          end
          c += 1
        end
        b += 1
      end
      a += 1
    end

    if current_solutions > max_solutions
      max_solutions = current_solutions
      best_perimeter = perimeter
    end

  end
  best_perimeter
end

p triangles
