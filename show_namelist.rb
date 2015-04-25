require "pp"

File.open("namelista.data", "rb") do |file|
  pp(Marshal.load(file))
end
