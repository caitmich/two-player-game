class Player
  def initialize(name)
    @name = name
  end

end

class Score

  def initialize
    @score = 0
  end

  def gain_point
    @score += 1
  end

end

class Lives
  def initialize
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end

  def game_over
    puts "---- GAME OVER ----"
    puts "Good bye!"
  end

end

class Game

  def current_player
  end

  def player_turn
    #game loop to swap turns
    puts "---- NEW TURN ----"
  end
end
