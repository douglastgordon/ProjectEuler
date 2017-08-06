def even_fibonaccis
  sum = 0
  fibs = [1, 2]
  while fibs.last < 4_000_000
    sum += fibs.last if fibs.last.even?
    next_num = fibs.inject(:+)
    fibs << next_num
    fibs.shift
  end
  sum
end

p even_fibonaccis
