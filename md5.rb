require "digest/md5"

$*.each do |file|
  sha = Digest::MD5.new()
  sha.file(file)
  puts sha.hexdigest
end
