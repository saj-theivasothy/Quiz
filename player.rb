class Player
  attr_accessor :lives, :name

  def initialize(name)
    @lives = 3
    @name = name
  end

  def update_lives
    if @lives > 0
      @lives -= 1
    else
      @lives
    end
  end

end
