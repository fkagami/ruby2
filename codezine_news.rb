require "open-uri"

open("http://codezine.jp/rss/new/20/index.xml") do |http|
  File.open("codezine-news.xml", "w") do |file|
    file.write(http.read())
  end
end
