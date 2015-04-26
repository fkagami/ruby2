VAR = /\A([a-z]_?|_)[a-z\d]+(_[a-z\d]+)*\Z/

while true
  puts "名前を入力、空打ちで終了"
  name = gets().chomp()
  if name.size == 0
    break
  elsif name.match(VAR)
    puts "#{name}は変数名として利用できます"
  else
    puts "#{name}は変数名として利用できません"
  end
end
