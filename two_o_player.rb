# Create a 2-Player math game where players take turns to answer simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or lose a life.

# Player 1 and Player 2 start with 3 lives.
# Lose a life if they mis-answer a question
# End of each turn should output current score for both players.
# when player runs out of lives, game should announce winner

# Objects are Important for: 
#STATE: storing data and describing themselves(variables)
#BEHAVIOUR: Defining actions that can be performed on them(methods)

#OBJECTS are important for State(Variables) and Behaviour(methods)

# Player 1 and Player 2 start with 3 lives.
# Lose a life if they mis-answer a question
# End of each turn should output current score for both players.
# when player runs out of lives, game should announce winner

#Extract Nouns for Classes:
#Nouns: Player, Lives, Turn, Score, Game, Winner
#Relevant Nouns: Player, Lives, Score, Turn?

#Nouns as Classes
#Player (state): keeps track of their name and amount of lives left.
#Lives(Behaviour): if a question is answered wrong, Lives will subtract from a players lifetotal.
#Score(Behaviour): Displays the remaining lives of both players.


#Players take turns
#randomly generate question "#{randomnumber1} + #{randomnumber2}" take in answer and see if it == (#randomnumber1 + #randomnumber2)
#if it does equal then CorrectMethod() puts "Correct"), else IncorrectMethod( subtract from Player Lives, puts "Incorrect")
#Player alternate method toggles Player 1 and Player 2 and puts question.
#"Display P1: #{P1lives}/3 vs P2:#{P2Lives}
#puts "-----NEW TURN----"

# class Player
#   def store_lives player1 : 3

#   def win
#     puts "Correctamundo!"
#   end

#   def loser(lives)
#     # life_total = life_total - 1
#     puts "You have #{life_total} remaining lives"
#   end
# end

class Player
  attr_reader :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end
  
  def lose_life
    @lives -= 1
    puts "you lose 1 life"
  end
end



player1 = Player.new
puts player1.lives

