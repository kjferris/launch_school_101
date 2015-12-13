def prompt(msg)
  puts "=> #{msg}"
end

def valid_number?(num)
  num.to_i != 0
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt("Welcome to the calculator. Please enter your name.")

user_name = ''

loop do
  user_name = gets.chomp

  if user_name.empty?
    prompt("Please enter a valid name.")
  else
    break
  end
end

prompt("Hi #{user_name}!")

loop do # main loop
  user_first_number = ''
  user_second_number = ''
  loop do
    prompt("Please enter a number.")
    user_first_number = gets.chomp

    if valid_number?(user_first_number)
      break
    else
      prompt("You did not enter a valid number, please try again.")
    end
  end

  loop do
    prompt("Please enter a second number.")
    user_second_number = gets.chomp

    if valid_number?(user_second_number)
      break
    else
      prompt("You did not enter a valid number, please try again.")
    end
  end
  operator_prompt = <<-MSG
  What operation would you like?
  1)Addition
  2)Subtracting
  3)Multiplication
  4)Divison
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = gets.chomp
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Please enter 1, 2, 3, or 4")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers.")

  result = case operator
           when '1'
             user_first_number.to_i + user_second_number.to_i
           when '2'
             user_first_number.to_i - user_second_number.to_i
           when '3'
             user_first_number.to_i * user_second_number.to_i
           when '4'
             user_first_number.to_f / user_second_number.to_f
           end

  prompt("The result is #{result}. Would you like to calculate another number? Press 'y' to continue.")
  try_again = gets.chomp.downcase
  break unless try_again == 'y'
end
