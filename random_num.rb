class Random_num
  attr_accessor :number
  
  def initialize
    self.number = rand(20)
  end


  def random_number
    number
  end
end