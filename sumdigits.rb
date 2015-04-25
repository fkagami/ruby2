require "/Users/fumiyasu-kagami/study/ruby2/read-integer"

input = read_integer("適当な整数を入力せよ")

total = 0
while input > 0
  total += input % 10
  input /= 10
end

puts "全ての桁の合計は#{total}だよ"
