# Question 1 
# 1 2 2 3

# Question 2
# 1.The difference between a ! and ? is the bang operator indicates something will be mutated. The != means not equal.
# 2.! before something will make it evalute to the opposite boolean.
# 3.Using ! after a method will cause mutatation.
# 4.? is used in the ternary operator.
# 5.? is used after something will indicate a condition check
# 6.!! will change it into a boolean equivalent. 

#Question 3
advice = "Few things in life are as important as house training your pet dinosaur."
advice.gsub!('important', 'urgent')

#Question 4
# The delete_at method will delete the item at the index number.

#Question 5
(10..100).cover?(42)

#Question 6
famous_words = "seven years ago..."
"Four score and " + famous_words
famous_words.prepend("Four score and ")

#Question 7
42

#Question 8
["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]].flatten!

#Question 9 
flintstones.assoc("Barney")

#Question 10
flintstones_hash = {}
flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end