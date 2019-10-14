require_relative ("question")
require_relative ("person")

gary = Person.new("Gary")
jason = Person.new("Jason")


question = Question.new(1, 2)


puts gary.person_name
puts jason.person_name
puts gary.person_lives
puts jason.person_lives

question.ask_question