a = [1,2,3,4,5]
File.open("array_save.data", "wb") do |file|
  a = Marshal.dump(a, file)
end

puts a
