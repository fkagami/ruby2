def compress(nums)
  r = ""
  count = 0
  nums.each_char() do |c|
    if c == "0"
      count += 1
      if count == 10
        r << "Z0"
        count = 0
      end
    else
      r << make_zero(count)
      count = 0
      r << c
    end
  end
  r << make_zero(count)
end

def make_zero(count)
  r = ""
  if count > 1
    r = "Z#{count}"
  elsif count == 1
    r = "0"
  end
  r
end

$*.each do |arg|
  puts "#{arg} => #{compress(arg)}"
end
