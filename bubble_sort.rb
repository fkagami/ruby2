def bsort(data)
  while true
    mark = false
    for n in 0..(data.size - 2)
      if data[n] > data[n+1]
        left = data[n]
        data[n] = data[n+1]
        data[n+1] = left
        mark = true
      else
        next
      end
    end
    return if !mark
  end
end

data = [4, 2, 6, 1, 10]
bsort(data)
puts data
