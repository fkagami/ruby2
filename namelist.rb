require "pp"

list = {}

begin
  File.open("namelista.data", "rb") do |file|
    list = Marshal.load(file)
  end
rescue => e
  puts e
  exit
end

def new_entry()
  entry = nil
  puts "input name or cansel enter"
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

if list
  puts "list already exists"
  puts list
  puts "Force Progiress? yes(any key) | cansel: enter"
  ans = gets().chomp()
  if ans.nil?
    exit
  else
    list = {}
    while entry = new_entry()
      list[entry[:name]] = entry
    end

    File.open("namelist.data", "wb") do |file|
      Marshal.dump(list, file)
    end
  end
end
