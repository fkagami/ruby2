def new_entry()
  entry = nil
  puts "input name or enter"
  name = gets().chomp()
  if name.size == 0
    return nil
  end
  entry = {name: name}

  puts "your hometown? or enter"
  entry[:hometown] = gets().chomp
  puts "memo"
  entry[:memo] = gets().chomp()
  entry
end

list = {}
while entry = new_entry()
  list[entry[:name]] = entry
end

File.open("namelista.data", "wb") do |file|
  Marshal.dump(list, file)
end
