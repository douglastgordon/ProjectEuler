def reciprocal_cycles
  num_with_max_cycle = nil
  max_cycle = 0
  (1...1000).each do |num|
    p num
    current_cycle = cycle(num)
    if current_cycle > max_cycle
      max_cycle = current_cycle
      num_with_max_cycle = num
    end
  end
  num_with_max_cycle
end

def cycle(num)
  remainders = []
  denom = 10
  remainder = nil

  until remainder == 0 || repeat?(remainders)
    until denom > num
      denom *= 10
    end
    remainder = denom % num
    remainders << remainder
    denom = remainder * 10
  end

  if repeat?(remainders)
    i = 0
    while i < remainders.length - 1
      j = i + 1
      while j < remainders.length
        if remainders[i] == remainders[j]
          return j - i
        end
        j += 1
      end
      i += 1
    end
  else
    return 0
  end
end

def repeat?(arr)
  arr.uniq.length != arr.length
end

p reciprocal_cycles
# p cycle(7)
