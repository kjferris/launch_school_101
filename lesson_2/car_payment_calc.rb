
def prompt(msg)
  puts "=> #{msg}"
end

def integer?(num)
  num.to_i.to_s == num
end

def float?(num)
  num.to_f.to_s == num
end

loop do
  loan_amount = ''
  interest_rate = ''
  loan_period = ''
  prompt("Welcome to the car payment calculator. Please enter a valid loan amount.")

  loop do
    loan_amount = gets.chomp
    if integer?(loan_amount)
      break
    else
      prompt("Please enter a number only, with no letters or symbols.")
    end
  end

  loop do
    prompt("Please enter the interest rate with no symbols. Example 5% would just be the number 5.")
    interest_rate = gets.chomp
    if integer?(interest_rate)
      break
    else
      prompt("Example for 5% would be 0.05")
    end
  end

  loop do
    prompt("Please enter the loan period(months).")
    loan_period = gets.chomp
    if integer?(loan_period)
      break
    else
      prompt("Enter a numerical amount only.")
    end
  end

  annual_interest_rate = interest_rate.to_f() / 100
  monthly_interest_rate = annual_interest_rate / 12

  monthly_payment = loan_amount.to_f *
                    monthly_interest_rate /
                    (1 - (1 + monthly_interest_rate)**-loan_period.to_i)

  prompt("The monthly payments is #{monthly_payment}. Would you like to calculate again? Press y to try again")
  try_again = gets.chomp
  break unless try_again == 'y'
end
