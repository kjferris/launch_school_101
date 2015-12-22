# Question 1
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.has_key?("Spot")

# Question 2
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
ages.value.inject(:+)

# Question 3
ages.keep_if { |name, age| age < 100 }

# Question 4
munsters_description.capitalize!
munsters_description.swapcase!
munsters_description.downcase!
munsters_description.upcase!

# Question 5
ages.merge!(additional_ages)

# Question 6
ages.values.min

# Question 7
advice.include?("Dino")

# Question 8 
flintstones.index { |name| name[0, 2] == "Be" }

# Question 9
flintstones.map! do |name|
  name[0, 3]
end

# Question 10
flintstones.map! { |name| name[0, 3] }
