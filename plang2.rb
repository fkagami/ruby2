STATE_TRANSITION_TABLE = {
  "q1" => ["q1", "q2", "q3"],
  "q2" => ["q2", "q7", "q4"],
  "q3" => ["q3", "q4", "q5"],
  "q4" => ["q4", "a2", "q6"],
  "q5" => ["q5", "q6", "a4"],
  "q6" => ["q6", "a3", "a5"],
  "q7" => ["q7", "a6", "a1"]
}

MESSAGES = {
  "q1" => "1静 2動 ならどっち？",
  "q2" => "1コーヒー 2紅茶 ならどっち？",
  "q3" => "1記号 2言語 ならどっち？",
  "q4" => "1カレー 2 ならどっち？",
  "q5" => "1規律 2自由 ならどっち？",
  "q6" => "1古 2新 ならどっち？",
  "q7" => "コーヒーに砂糖を 1入れる 2入れない",
  "a1" => "a1 java",
  "a2" => "a2 haskell",
  "a3" => "a3 lisp",
  "a4" => "a4 ruby",
  "a5" => "a5 python",
  "a6" => "a6 js"
}

state ="q1"

while state[0] == "q"
  puts MESSAGES[state]
  state = STATE_TRANSITION_TABLE[state][gets().to_i] || STATE_TRANSITION_TABLE[state][0]
end

puts MESSAGES[state]
