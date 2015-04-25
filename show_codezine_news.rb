require "open-uri"
require "rss"

xml = nil
open("http://codezine.jp/rss/new/20/index.xml") do |http|
  xml = http.read()
end

rss = RSS::Parser.parse(xml.force_encoding("utf-8"))
rss.items.each do |item|
  puts "---------"
  puts item.title
  puts item.description
  puts item.pubDate().strftime("%Y / %m / %d %X")
end
