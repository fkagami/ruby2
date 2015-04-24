def read_integer(name)
  puts("#{name}の数は？")
  s = gets()
  Integer(s)
end

def match_heads(heads, legs, wings)
  for dragonflies in (0..heads)
    max_turtles = heads - dragonflies
    for turtles in (0..max_turtles)
      cranes = heads - turtles - dragonflies
      if cranes >= 0 && wings ==4 * dragonflies + 2 * cranes && legs == 6 * dragonflies + 4 * turtles + 2 * cranes
        return cranes, turtles, dragonflies
      end
    end
  end
  [nil, nil, nil]
end

heads = read_integer("頭")
legs = read_integer("脚")
wings = read_integer("翼")

cranes, turtles, dragonflies= match_heads(heads, legs, wings)

if cranes
  puts "鶴は#{cranes}、カメは#{turtles}、トンボは#{dragonflies}"
else
  puts "その組み合わせは出来ない"
end
