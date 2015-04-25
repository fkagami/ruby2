def read_integer(msg)
  while true
    puts(msg)
    s = gets().chomp
    if s.size == 0
      puts "do not blank"
      next
    end
    digit = true
    s.each_char() do |c|
      if !"0123456789".include?(c)
        digit = false
        puts "integer only"
        break
      end
    end
    if digit
      return Integer(s)
    end
  end
end
