# 1,3,7,11,21,39...
# 50番個目にある数字は何ですか？
# トリボナッチ数列とは、項の数字がその前の3つの項の数字の合計となっている数列である

puts "求めたい数字を入力して下さい"
puts "１つ目の数字"
a = gets.to_i
puts "２つ目の数字"
b = gets.to_i
puts "３つ目の数字"
c = gets.to_i
puts "何番目の数字を求めますか？"
t = gets.to_i

n = 0
while n < (t - 3)
  d = a + b + c
  a = b
  b = c
  c = d
  n += 1
end

puts "#{t}番目の数は#{c}です"
