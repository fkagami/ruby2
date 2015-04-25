require "/Users/fumiyasu-kagami/study/ruby2/read-integer"

msgs = ["birth year?", "birth month?", "birthday?"]
birthday = []

msgs.each do |msg|
  birthday <<  read_integer(msg)
end

puts "その誕生日の曜日は#{["日", "月", "火", "水", "木", "金"][Time.new(birthday[0], birthday[1], birthday[2]).wday]}曜日です"
