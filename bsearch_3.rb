require "pry"

def bsearch(data, i)
  # sorted data is array
  # at first find center id
  center = data.size / 2
  if data[center] == i
    puts "true#{center + 1}番目にあった"
  elsif data[center] > i
    (0..center).each do |idx|
      if data[idx] == i
        puts "true#{idx + 1}番目にあった"
      end
    end
  else
    (center..(data.size - 1)).each do |idx|
      if data[idx] == i
        puts "true #{idx + 1}番目にあった"
      end
    end
  end
end

data = [1,2,3,4,5,6,7,8,9,10]
bsearch(data, 1)
bsearch(data, 4)
bsearch(data, 5)
bsearch(data, 6)
