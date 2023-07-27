class Player 
  attr_accessor :name, :lives
  # :player_one, :player_two
  
  def initialize
    # @player_one = {name=>'Player 1', lives=>3 }
    # @player_two = {name=>'Player 1', lives=>3}
    @name = name
    @lives = 3
  end

  # def name
  #   puts "Hey #{@player_one}"
  # end

  # def lives
  #   puts "You have #{@player_one.lives} lives"
  # end

  def lose_life
    @lives -= 1
    # if @lives == 0
    #   puts "Game-Over #{@player_one}"
    # else 
    # puts "You're down to #{@lives} #{@player_one}"
    # end
  end

end
