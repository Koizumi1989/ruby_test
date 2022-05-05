# 掛け算耐性
# 整数に対して、「一桁ことにばらして各桁の数字の積を求める」という操作を考えます。

# 123 → 1 × 2 × 3 = 6
# 666 → 6 × 6 × 6 = 216
# 1024 → 1 × 0 × 2 × 4 = 0
# 任意の整数について、「操作」を繰り返し適用すると、最終的には一桁の数に到達します。

# 77 → 49 → 36 → 18 → 8
# 123456 → 720 → 0
# 一桁の数に到達するのに必要な「操作」の回数は、77では4回、123456では2回となります。

# それでは、1000000以下の整数のうち、一桁の数に到達するのに必要な「操作」の回数が4回となるものはいくつあるかを、求めてください。

us = {}

(1..1000000).each do |i|
  n = 0
  while i.to_s.length > 1 do
    i = i.to_s.split('').map(&:to_i).inject(:*)
    n += 1
  end
  us[n] = (us[n] || 0) + 1
end

p us
# {0=>9, 1=>248, 2=>340, 3=>310, 4=>84, 5=>9}
p us[4] # 3回目で一桁
# 310