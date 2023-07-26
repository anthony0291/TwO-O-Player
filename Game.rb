class Game
  attr_accessor :current_round, :current_player

  def initialize 
    @current_player = nil
    @current_round = 0
    @players = []
  end

  def start_game
    puts "Racers start your engines!"
  end

  def round_increment! #exclamation for mutable
    @current_round += 1
  end

  


end