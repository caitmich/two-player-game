
class Game

  attr_accessor :current_player, :game_over

  # initialize by creating 2 players and creating an arr of players:
  def initialize
    @game_over = false
    @players = []
    @players[0] = Player.new("player1")
    @players[1] = Player.new("player2")
    @turn = 0
  end

  def start_game 
    puts "Game start"

  # while game over is falsey
    while !@game_over do

      current_player = @players[@turn % 2]
      other_player = @players[(@turn + 1) % 2]
      new_question = Question.new(current_player.name)
      new_question.ask
      user_answer = Integer($stdin.gets.chomp)

    # validate user's answer using validate method from Question
      if new_question.validate(user_answer)
        puts "Correct!"
      else
    # else current player loses a life and it prints wrong answer
        current_player.lose_life
        puts "Wrong answer!" 
    # if they get it wrong and run out of lives
        if current_player.lives == 0
          puts "#{other_player.name} Wins with a score of #{other_player.lives}!"
          puts "---- GAME OVER ----"
          puts "Good bye!"
    # set game over to true so there will not be another round
          @game_over == true
    # break out of loop so it doesn't print the next lines:
          break
        end
      end 
    # if both players have lives left, print the current scores and increment turn:
      puts " P1: #{@players[0].lives}/3 P2: #{@players[1].lives}/3"
        puts "---- NEW TURN ----"
      @turn = @turn + 1

    end

  end
end

  


