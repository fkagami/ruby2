require "zlib"

Zlib::GzipWriter.open("namelista.data.gz") do |gz|
  File.open("namelista.data", "rb") do |data|
    gz.write(data.read())
  end
end
