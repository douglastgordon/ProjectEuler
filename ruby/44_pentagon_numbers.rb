def first_10000_pentagons
  pentagons = []
  (1..100_000).each do |num|
    pentagons << ((num * ((3 * num) - 1)) / 2) # pentagon formula
  end
  pentagons
end


def pentagon_pairs_with_pentagonal_differences_and_sums
  pentagons = first_10000_pentagons
  # p pentagons
  pairs = []
  # i = 0
  j = 1
  # while i < 10000 # only checking first 10000
  #   j = i + 1
  #   while j < 10000
  #     difference = pentagons[j] - pentagons[i]
  #     sum = pentagons[j] + pentagons[i]
  #     if pentagons.include?(difference) && pentagons.include?(sum)
  #       pairs << [pentagons[i], pentagons[j]]
  #     end
  #     j += 1
  #   end
  #   p i
  #   i += 1
  # end
  while j < 20
    i = 0
    while i < 10_000
      difference = pentagons[i+j] - pentagons[i]
      sum = pentagons[i+j] + pentagons[i]
      if pentagons.include?(difference) && pentagons.include?(sum)
        pairs << [pentagons[i], pentagons[j]]
      end
      i += 1
    end
    p j
    j += 1
  end
  pairs
end

p pentagon_pairs_with_pentagonal_differences_and_sums
