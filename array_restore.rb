a = nil
File.open("array_save.data", "rb") do |file|
  a = Marshal.load(file)
end

puts a
