require './Game'
require './Player'
require './Question'

game = Game.new
# game.start_game


player1 = Player.new('Alex')

question = Question.new
puts question.show_question
puts question.get_answer

