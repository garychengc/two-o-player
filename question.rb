class Question
  attr_accessor :number1, :number2

  def initialize(num1, num2)
    self.number1 = num1
    self.number2 = num2
  end

  def ask_question
    puts "What does #{number1} plus #{number2} equal?"
  end

end


