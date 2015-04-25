t = nil
File.open("time_save.data", "rb") do |file|
  t = Marshal.load(file)
end

puts t
