PAPER = 0
SCISORS = 1
STONE = 2
WIN = {
  [PAPER, STONE] => true,
  [SCISORS, PAPER] => true,
  [STONE, SCISORS] => true
}
HANDS = ["パー", "チョキ", "グー"]

com_win = 0
plr_win =0
while com_win < 3 && plr_win < 3
  puts "パー0 チョキ1 グー2"
  choice = gets()
  player = Integer(choice)
  computer = rand(3)
  puts "あなた#{HANDS[player]}　COM#{HANDS[computer]}"
  if WIN[[player, computer]]
    plr_win += 1
  elsif WIN[[computer, player]]
    com_win += 1
  end
end

if plr_win >= 3
  puts "You Win"
else
  put "You Lose"
end
