class Question
  attr_accessor :number1, :number2, :answer

  def initialize(num1, num2, ans)
    self.number1 = num1
    self.number2 = num2
    self.answer = ans
  end

  def ask_question
    puts "What does #{number1} plus #{number2} equal?"
  end

  def answer_to_question
    answer
  end

end

