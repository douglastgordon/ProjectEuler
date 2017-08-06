def curious?(num)
  factorials = {
    0 => 1,
    1 => 1,
    2 => 2,
    3 => 6,
    4 => 24,
    5 => 120,
    6 => 720,
    7 => 5_040,
    8 => 40_320,
    9 => 362_880,
  }
  arr = num.to_s.split("").map(&:to_i)
  sum = 0
  arr.each do |el|
    sum += factorials[el]
  end
  sum == num
end

def sum_of_all_curious_numbers
  start = 10 # single digit numbers can't be curious
  finish = 1_000_000 # arbitrarily large number
  sum = 0
  (start..finish).each do |num|
    sum += num if curious?(num)
    p num if num % 100_000 == 0
  end
  sum
end

p sum_of_all_curious_numbers
