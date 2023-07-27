class Question
  attr_accessor :show_question, :answer, :correct_answer

  def initialize
    @number_one = rand(1..20)
    @number_two = rand(1..20)
    @correct_answer = (@number_one + @number_two)
  end

  def show_question
    puts "What is #{@number_one} + #{@number_two}? "
  end

  def get_answer
    answer = $stdin.gets.chomp
    puts "> #{answer}"
    is_correct?(answer)
  end

  def is_correct?(guess)
    puts @correct_answer
    if guess.to_i == @correct_answer
      puts "Good Job!"
    else
      puts "Sorry that's not right!"

    end
  end
end
