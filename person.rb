class Person
  attr_accessor :name, :total_lives

  def initialize (name)
    self.name = name
    self.total_lives = 3
  end

  def person_name
    name
  end

  def person_lives
    total_lives
  end

end