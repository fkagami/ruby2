#encoding: utf-8

sentences = []
File.open("words.csv", "r") do |file|
  file.each_line() do |line|
    if line[0] == "#"
      next
    end
    sentences << line.chomp().split(",")
  end
end

def make_sentence(sentences)
  whenn = sentences[rand(sentences.size())][0]
  where = sentences[rand(sentences.size())][1]
  who = sentences[rand(sentences.size())][2]
  with_who = sentences[rand(sentences.size())][3]
  what = sentences[rand(sentences.size())][4]

  if with_who == ""
    puts("#{whenn}に#{where}で#{who}が#{what}")
  else
    puts("#{whenn}に#{where}で#{who}が#{with_who}と#{what}")
  end
end

while true
  make_sentence(sentences)
  puts("終了（Y）？、継続（それ以外）？")
  ans = gets().chomp
  if ans == "Y" || ans == "y"
    exit
  end
end
