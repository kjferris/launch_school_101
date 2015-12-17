VALID_CHOICE = %w(rock paper scissors)

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'scissors' && second == 'paper') ||
    (first == 'paper' && second == 'rock')
end

def display_result(player, computer)
  if win?(player, computer)
    prompt("You win!")
  elsif win?(computer, player)
    prompt("You lose!")
  else
    prompt("It's a tie!")
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose: #{VALID_CHOICE.join(', ')}")
    choice = gets.chomp

    if VALID_CHOICE.include?(choice)
      break
    else
      prompt("That is not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICE.sample

  puts("You chose: #{choice}, computer chose #{computer_choice}.")

  display_result(choice, computer_choice)

  prompt("Do you want to play again? Press 'y' to continue.")
  try_again = gets.chomp.downcase
  break unless try_again == 'y'
end

prompt("Thanks for playing!")
