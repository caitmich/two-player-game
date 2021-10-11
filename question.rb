class Question
  attr_reader :correct_answer

  def initialize(player)
    @player = player
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @correct_answer = Integer(@num1 + @num2)
  end

  def ask
    
    puts " #{@player}: What does #{@num1} plus #{@num2} equal?"
    print "> "
  end
  
  def validate(user_answer)
    user_answer == @correct_answer   
  end

end