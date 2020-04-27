require_relative "player"
require_relative "quiz"
require_relative "game"

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")

game = Game.new(player1, player2)

while (player1.lives > 0 && player2.lives > 0)
  puts "-------- NEW TURN --------"

  quiz = Quiz.new
  question = quiz.question
  answer = quiz.answer

  puts "#{game.current_player.name}: #{question}"
  answer_from_player = gets.chomp.to_i

  if answer_from_player == answer
    puts "#{game.current_player.name}: YES! You are correct!"
    
  elsif answer_from_player != answer && game.current_player.lives > 1
    puts "#{game.current_player.name}: Seriously? No!"
    game.current_player.update_lives

  else
    game.set_current_player
    puts "#{game.current_player.name} wins with a score of #{game.current_player.lives}/3"
    puts "-------- GAME OVER --------"
    puts "Good bye!"
    break;
  end

  game.score
  game.set_current_player
end