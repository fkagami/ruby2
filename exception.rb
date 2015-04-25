def sample()
  raise "sample of exception"
end
def sample2()
  raise ArgumentError, "this is arg error sample"
end

begin
  sample()
rescue RuntimeError => e
    puts e
    puts "message:"
    puts e.message()
    puts "backtrace:"
    puts e.backtrace()
end
puts "-------"
sample2()
