puts "誕生年は？"
year = gets.chomp()
if year.to_i < 1970 || year.to_i > 2010
  puts "サバ読むなって"
  exit
end

puts "月は？"
mon = gets.chomp()
if mon.to_i < 1 || mon.to_i > 12
  puts "うそつけ"
  exit
end

puts "日は？"
day = gets.chomp()
if day.to_i < 1 || day.to_i > 31
  puts "うそつけ"
  exit
end

puts "お前の誕生日の曜日は#{["日", "月", "火", "水", "木", "金"][Time.new(year, mon, day).wday]}曜日です"
