def bsearch(data_to_find, data, startIdx, endIdx)
  return -1 if startIdx > endIdx
  centerIdx = (startIdx + endIdx) / 2
  return centerIdx if data[centerIdx] == data_to_find
  if data[centerIdx] > data_to_find
    bsearch(data_to_find, data, startIdx, centerIdx - 1)
  else
    bsearch(data_to_find, data, centerIdx + 1, endIdx)
  end
end

data = [1, 3, 5, 7, 9]
data_to_find = 7

puts "#{data_to_find}は、#{data}の#{bsearch(data_to_find, data, 0, data.size - 1)}番目の要素です}"

data_to_find = 6

puts "#{data_to_find}は、#{data}の#{bsearch(data_to_find, data, 0, data.size - 1)}番目の要素です}"
