require './player'
require './game'
require './question'

puts "Welcome to the Math Game!"

print "Player 1, enter your name: "
player1 = Player.new(gets.chomp)

print "Player 2, enter your name: "
player2 = Player.new(gets.chomp)

game = Game.new(player1, player2)
game.start_game()
