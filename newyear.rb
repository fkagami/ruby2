require "date"

year = Date.today.year
puts "あと#{(Date.new(year + 1, 1, 1) - Date.today).to_i}回寝るとお正月"
