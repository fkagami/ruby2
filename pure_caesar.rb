def caesar(key, msg)
  ret = ""
  msg.each_byte() do |ch|
    if ch < 0x61 || ch > 0x7a
      raise ArgumentError, "範囲外の文字#{ch}"
    end
    ch += key
    if ch > 0x7a
      ch -= 0x7a - 0x61 + 1
    end
    ret << ch
  end
  ret
end

if $0 == __FILE__
  if $*.size < 2
    puts "Usage: ruby caesar.rb key msg[msg ...]"
    exit(1)
  end
  key = $*.shift().to_i
  $*.each do |msg|
    puts caesar(key, msg)
  end
end
