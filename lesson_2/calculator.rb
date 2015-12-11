# ask the user for two numbers, store numbers, and ask what operation is to be used.
puts "Welcome, to the calculator app. Please enter your first number."
user_first_number = gets.chomp
puts "Enter your second number."
user_second_number = gets.chomp
puts "You've entered #{user_first_number} and #{user_second_number}."
puts "Please enter the number 1 for addition, 2 for subtraction, 3 for multiplication, or 4 for divison."
user_operation_choice = gets.chomp

# calculate numbers based on operation 
def addition(num1, num2)
  num1.to_i + num2.to_i
end

def subtraction(num1, num2)
  num1.to_i - num2.to_i
end

def multiply(num1, num2)
  num1.to_i * num2.to_i
end

def divide(num1, num2)
  num1.to_f / num2.to_f
end

#case statement with answer
answer = case 
  when user_operation_choice == '1'
    addition(user_first_number, user_second_number)
  when user_operation_choice == '2' 
    subtraction(user_first_number, user_second_number)
  when user_operation_choice == '3'
    multiply(user_first_number, user_second_number)
  when user_operation_choice == '4'
    divide(user_first_number, user_second_number)
  else
    puts "You did not enter a valid option"
  end

puts "Your answer is #{answer}."
