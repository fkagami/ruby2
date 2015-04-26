require "benchmark"

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

Benchmark.bm(8) do |rpt|
  rpt.report("bsort") do
    for n in 1..100_000
      data = [4, 2, 6, 1, 10]
      bsort(data)
    end
  end
end
