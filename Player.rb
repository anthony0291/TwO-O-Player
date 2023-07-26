class Player 
  attr_accessor :name, :lives
  
  def initialize(name)
    @name = name
    @lives = 3
  end

  def name
    puts "Hey #{@name}"
  end

  def lives
    puts "You have #{@lives} lives"
  end

  def lose_life
    @lives -= 1
    if @lives == 0
      puts "Game-Over #{@name}"
    else 
    puts "You're down to #{@lives} #{@name}"
    end

  end

end
