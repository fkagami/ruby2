require "open-uri"

open("http://codezine.jp") do |http|
  File.open("codezine-top.html", "w") do |file|
    file.write(http.read())
  end
end
