# Question 1
10.times { |number| puts (" " * number) + "The Flintstones Rock!" }

# Question 2
result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a 
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end

# Question 3 
# You cannot add a fixnum into a string. 
(40+2).to_s
puts "the value of 40 + 2 is #{40 + 2}"

# Question 4
1 and 3
1 and 2

# Question 5
while dividend > 0 do
  divisors << number / dividend if number % dividend == 0
  dividend -= 1
end

# Question 6
# The first buffer will mutate the argument. 

# Question 7
# limit is not in the scope of the fib method. To fix this, make limit an additional argument.

# Question 8
words.split.map { |word| word.downcase.capitalize }.join(' ')

# Question 9
munsters.each do |name, details|
  case details["age"]
  when 0...18
    details["age_group"] = "kid"
  when 18...65
    details["age_group"] = "adult"
  else 
    details["age_group"] = "senior"
  end
end