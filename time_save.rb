t = Time.now
puts t
File.open("time_save.data", "wb") do |file|
  Marshal.dump(t, file)
end
