class Game
  attr_accessor :current_round, :current_player

  def initialize 
    @current_player = nil
    @players = []
    @current_round = 0
  end

  def run_game
    puts "Racers start your engines!"
    player_one = Player.new
    player_two = Player.new
    player_one.name = "Player 1"
    player_two.name = "Player 2"
    @players << player_one
    @players << player_two
    @current_player = player_two
    

    run_round
  end


  def round_increment! #exclamation for mutable
    @current_round += 1
  end

  def next_player!
    if (@current_player == @players[0])
      @current_player = @players[1]
    elsif (@current_player == @players[1])
      @current_player = @players[0]
    end
  end

  def end_game
    puts "***************GAME OVER *******************"
    puts "#{@current_player.name} you have zero lives."
    next_player!
    puts "#{@current_player.name} you have #{@current_player.lives} left and are the Greetest!" 
  end

  def run_round
    while (@current_player.lives > 0) do
      round_increment!
      next_player!
      question = Question.new
      puts "Question: #{@current_round}"
      puts "#{@current_player.name}: What is #{question.show_question}"
      answer = $stdin.gets.chomp.to_i
      if question.is_correct?(answer)
        puts "#{@current_player.name}: Yes! You are correct!"
      else
        puts "#{@current_player.name}: Seriously? No!"
        @current_player.lose_life
      end
      puts "P1: #{@players[0].lives}/3 P2: #{@players[1].lives}/3"
      puts "_____NEW TURN_____"
    end
      end_game
  end
end