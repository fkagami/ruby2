puts "input file name"
begin
  File.open(gets().chomp()) do |file|
    puts file.read
  end
rescue Errno::ENOENT => e
  puts e
end
