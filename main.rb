require_relative ("question")
require_relative ("person")
require_relative ("random_num")

def score_zero (player1, player2)
  if player1.total_lives == 0
    winner = player2.person_name
    winner_score = player2.person_lives
  elsif player2.total_lives == 0
    winner = player1.person_name
    winner_score = player1.person_lives
  end
  puts "#{winner} wins with a score of #{winner_score}/3"
  puts "----- GAME OVER -----"
  puts "Good bye"
end

def game(player1, player2)
  i = 1
  while (player1.person_lives > 0) && (player2.person_lives > 0)
    number1 = (Random_num.new).random_number
    number2 = (Random_num.new).random_number
    question = Question.new(number1, number2, number1 + number2)
    question.ask_question
    answer = gets.chomp.to_i
    round = i % 2
    if answer != question.answer_to_question
      if round == 1
        player1.total_lives -= 1
        puts "Player 1: Seriously? No!"
      else
        player2.total_lives -= 1
        puts "Player 2: Seriously? No!"
      end
    else
      puts (round == 1 ) ? ("Player 1: YES! You are correct") : ("Player 2: YES! You are correct")
    end
    if player1.total_lives == 0 || player2.total_lives == 0
      score_zero(player1, player2)
    else
      puts "P1: #{player1.total_lives}/3 vs P2: #{player2.total_lives}/3"
      puts "----- NEW TURN -----"
    end
    i += 1
  end
end

player1 = Person.new("Player 1")
player2 = Person.new("Player 2")
game(player1, player2)