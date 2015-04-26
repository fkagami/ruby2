require "pp"

HASH_SIZE = 11
TABLE = Array.new(HASH_SIZE)

def hash(s)
  h = 0
  s.each_byte() do |ch|
    h ^= ch
    h <<= 1
  end
  h % TABLE.size
end

def set(key, val)
  h = hash(key)
  if !TABLE[h]
    TABLE[h] = []
  end
  TABLE[h] << [key, val]
end

def get(key)
  h = hash(key)
  if TABLE[h]
    TABLE[h].each do |set|
      if set[0] == key
        return set[1]
      end
    end
  end
  raise ArgumentError, "key:#{key} not found"
end

set("hello", "world")
set("時計の針は","０時を刺してる")
set("クロノスタシスって", "知ってる？")
set("時計の針がとまって見える", "現象のことだよ")
pp TABLE
puts get("hello")
puts get("時計の針は")
puts get("時計の針がとまって見える")
