class Question
  attr_accessor :correct_answer

  def initialize
    @number_one = rand(1..20)
    @number_two = rand(1..20)
    @correct_answer = @number_one + @number_two
  end

  def show_question
    "#{@number_one} + #{@number_two}"
  end

  def is_correct?(answer)
    answer == @correct_answer
  end
  
end

