# Variables exercises 1, 3, 4
puts "Please tell me your first name."
first_name = gets.chomp
puts "Now tell me your last name."
last_name = gets.chomp

# is one method of concatenation prefered over the other?
puts "Hey " + first_name + " " + last_name + "! How's it going?"
puts "Hi #{first_name} #{last_name}! What's up?"

# exercise 3
10.times do
  puts first_name
end