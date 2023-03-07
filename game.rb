class Game
  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player = 0
  end

  def start_game
    puts "----- NEW GAME -----"
    until game_over?
      new_turn
      display_score
    end
    end_game
  end

  def new_turn
    question = Question.new
    current_player = @players[@current_player]
    puts "#{current_player.name}: #{question.question}"
    answer = gets.chomp.to_i
    if answer == question.answer
      puts "#{current_player.name}: YES! You are correct."
    else
      puts "#{current_player.name}: Seriously? No!"
      current_player.lose_life
    end
    switch_player
  end

  def switch_player
    @current_player = (@current_player + 1) % 2
  end

  def display_score
    player1 = @players[0]
    player2 = @players[1]
    puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
    puts "----- NEW TURN -----"
  end

  def game_over?
    @players.any? { |player| player.lives == 0 }
  end

  def end_game
    winner = @players.max_by { |player| player.lives }
    loser = @players.min_by { |player| player.lives }
    puts "#{winner.name} wins with a score of #{winner.lives}/3"
    puts "GAME OVER"
    puts "Good bye!"
  end
end


