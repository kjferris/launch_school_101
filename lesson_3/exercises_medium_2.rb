# Question 1
total_male_age = 0
munsters.each do |name, details|
  total_male_age += details["age"] unless details["gender"] == "female"
end

# Question 2
munsters.each do |name, details|
  puts "#{name} is a #{details["age"]} year old #{details["gender"]}."
end

# Question 3
def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = not_so_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# Question 4
new = sentence.split(/\W/)
new.reverse!
back_wards = new.join(' ') + '.'

# Question 5
34

# Question 6
# The original hash is now changed. When passing in the munsters hash to the method it altered it.

# Question 7
"Paper"

# Question 8
"no"
