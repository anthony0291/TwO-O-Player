class Game
  attr_accessor :current_round, :current_player, :answer, :run_round, :start_question

  def initialize 
    @current_player = @player_one
    @current_round = 0
    @players = []
    @answer = nil
  end

  def run_game
    puts "Racers start your engines!"
    run_round
  end

  def run_round
    while @current_player(:lives) > 0 do
    round_increment!
    next_player!
    puts "Round: #{@current_round}! FIGHT!"
    answer = $stdin.gets.chomp.to_i
      if question.is_correct?(answer)
        puts "#{@current_player}: Yes! You are correct."
      else
        puts "#{@current_player}: Seriously? No!"
      end
    puts "P1: #{@player_one.lives}/3 P2: #{@player_two.lives}/3"
    end
  end

  def round_increment! #exclamation for mutable
    @current_round += 1
    puts "current_round"
  end

  def next_player!(current_player)
    if @current_player == @player_one
      @current_player = @player_two
    elsif @current_player = @player_two
      @current_player = @player_one
    end
  
  end

  def end_game
    puts "***************GAME OVER *******************"
    puts "#{@current_player} you have zero lives."
    next_player!
    puts "#{@current_player} you have #{current_player.lives} left and are the Greetest!" 
  end

end