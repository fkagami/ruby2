File.open("birthwday", "w") do |f|
  begin
    f.write(data)
  rescue => e
    puts "エラー#{e}"
  end
end
