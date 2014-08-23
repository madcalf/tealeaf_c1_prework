# Final intro exercises
# 
# Exercise 1
# Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
# and print out each value.
puts "\n--- Exercise 1"
a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
a.each { |elem| puts elem}

# Exercise 2
# Same as above, but only print out values greater than 5.
puts "\n--- Exercise 2"
a.each do |elem|
  if elem > 5
    puts elem
  end
end

# Exercise 3
# Now, using the same array from #2, use the select method to extract 
# all odd numbers into a new array.
puts "\n--- Exercise 3"
result = a.select { |elem| elem % 2 != 0}
puts result

# Exercise 4
# Append "11" to the end of the original array. Prepend "0" to the beginning.
puts "\n--- Exercise 4"
a.push(11)
a.unshift(0)
puts a

# Exercise 5
# Get rid of "11". And append a "3".
puts "\n--- Exercise 5"
a.pop
a.push(3)
puts a

# Exercise 6
# Get rid of duplicates without specifically removing any one value.
puts "\n--- Exercise 6"
puts a.uniq!

# Exercise 7
# What's the major difference between an Array and a Hash?
# Array is an ordered list of items accessed by index that corresponds to it's 
#   position in the array (starting at 0)
# Hash is a list of key/value pairs. Each value is accessed by it's 
#  associated key. Keys can be of any type.

# Exercise 8
# Create a Hash using both Ruby syntax styles.
puts "\n--- Exercise 8"
weapons = {:luke => "lightsaber", :han => "blaster", :deckard => "pistol",
           :strider => "sword", :gimli => "axe"}
puts weapons
weapons = {luke: "lightsaber", han: "blaster", deckard: "pistol", 
           strider: "sword", gimli: "axe"}
puts weapons

# Exercise 9
puts "\n--- Exercise 9"
h = {a:1, b:2, c:3, d:4}
# 1. Get the value of key `:b`.
puts h[:b]
# 2. Add to this hash the key:value pair `{e:5}`
h[:e] = 5
puts h
# 3. Remove all key:value pairs whose value is less than 3.5
h.delete_if { |key, val| val < 3.5 }
puts h

# Exercise 10
# Can hash values be arrays? YES
# Can you have an array of hashes? YES
# (give examples)
puts "\n--- Exercise 10"
h = {yummy:["watermelon", "mango", "chocolate"], 
    nasty:["papaya", "spinach", "white chocolate"]}
puts "hash with arrays as values:\n#{h}"
h2 = [{name:"Alistair", age: 45}, {name:"Andrea", age: 71}, {name:"Miranda", age: 16}]
puts "array of hashes:\n#{h2}"

# Exercise 12
# Write a program that moves the information from the array into the empty 
# hash that applies to the correct person.
puts "\n--- Exercise 12"
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]
puts contacts

# Exercise 13
# Using the hash you created from the previous exercise, demonstrate 
# how you would access Joe's email and Sally's phone number?
puts "\n--- Exercise 13"
puts contacts["Joe Smith"][:email]
puts contacts["Sally Johnson"][:phone]

# Exercise 14
# Create the data structure that you created in the previous example 
# for Joe Smith using loops instead of assignment. 
puts "\n--- Exercise 14"
# reset the data
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
contacts.each do |key, val|
  data = contact_data.shift
  val[:email] = data.shift
  val[:address] = data.shift
  val[:phone] = data.shift
end 
puts contacts

# another way, if we don't want to hardcode the keys inthe loop
puts "\n--- Exercise 14b"
# reset the data
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {} }
keys = [:email, :address, :phone]
contacts.each do |key, val|
  data = contact_data.shift
  keys.each do |k|
    val[k] = data.shift
  end
end  
puts contacts

# SOLUTION 14
# this only does joe smith
# similar, but different cuz i miss-read the instructions and looped it 
# for everyone, not just joe smith. Oops.
# puts "\n--- Solution 14"
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end
# puts contacts

# Exercise 14
# Use Ruby's Array method delete_if and String method start_with?
#  to delete all of the words that begin with an "s" in the following array.
puts "\n--- Exercise 15"
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
puts arr.delete_if { |elem| elem.start_with?("s")}

# Exercise 15
# Turn this array into a new array that consists of strings containing 
# one word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. 
puts "\n--- Exercise 16"
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
puts "orig:\n#{a}"
a.map! { |elem| elem.split(" ") }
b = a.flatten
puts "flattened:\n#{b}"

# Exercise 17
# What will the following program output?
# Answer: They are the same. So i guess order of items doesnt matter.
#   It's just if they have the same keys and values.
hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end