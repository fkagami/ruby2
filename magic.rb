TESTS = [
  "# encoding:",
  "#encoding:",
  "#encoding    :",
  "#encoding",
  "encoding :",
  "# e n c co ding:"
]

TESTS.each do |t|
  puts "#{t}のマッチング結果：\"#{t.match(/^#\s*encoding\s*:/)}\""
end
