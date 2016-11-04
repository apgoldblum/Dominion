#Author: Aaron G
require './game'

# Start Game
puts "Welcome to Dominion!!!"
print "How many players? "
player_count = gets.to_i

while player_count < 2 || player_count > 4 do
  puts "I'm sorry, that is not a valid number of players"
  print "Please enter a valid number of players (2-4): "
  player_count = gets.chomp.to_i
end

game = Game.new(player_count)
game.setup()
game.start()
game.play()
