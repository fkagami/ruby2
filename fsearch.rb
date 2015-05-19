def exists(data, a)
  data.each do |d|
    return true if d == a
  end
  false
end

data = [4, 2, 6, 1, 10]
puts(exists(data, 1))
puts(exists(data, 5))
