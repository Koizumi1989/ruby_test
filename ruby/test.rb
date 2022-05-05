# 1234567890の正の約数のうち、20000000以下のものを全て足し合わせたときの和を求めてください。

def divisor_sum(num, limit)
  (1..limit).select{ |i| num % i == 0 }.sum
end

puts divisor_sum(1234567890, 20000000)