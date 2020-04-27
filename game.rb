class Game

  attr_accessor :player1, :player2, :current_player

  def initialize(player1, player2) 
    @player1 = player1
    @player2 = player2
    @current_player = @player1
  end

  def set_current_player
    if @current_player === @player1
      @current_player = player2
    else 
      @current_player = player1
    end
  end

  def score
    puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
  end

end

