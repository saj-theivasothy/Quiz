class Quiz
  attr_reader :number1, :number2

  def initialize
    @number1 = rand(0..20)
    @number2 = rand(0..20)
  end

  def question
    @question = "What does #{number1} plus #{number2} equal?"
  end

  def answer
    @answer = number1 + number2
  end

end