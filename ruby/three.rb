# 3の倍数と3のつく数字だけ
# 次の条件の少なくとも一方を満たす整数のことを「A的な数」と呼ぶことにします。

# 3の倍数である。
# 十進法で書いた場合に「3」が含まれる。
# 例えば、9、31、42、135は何れも「A的な数」です。

# 1から40000までの整数のうち「A的な数」だけを足し合わせたときの合計を求めてください。

def findthird
  num = 1
  while (num <= 40000) do
    if (num % 3 == 0 || num.to_s.include?("3"))
      #3の倍数とは、数字を3で割りき切れる数字なので「%3」
      #3のつく数字はnumの数を文字列に変換し、「to_s」、
      #指定した文字列"3"が含まれている場合にtrueを返す条件を加える。「.include?("3")」
      puts "#{ num } ☆"
    else
      puts num
    end

    num = num + 1
  end
end

findthird

