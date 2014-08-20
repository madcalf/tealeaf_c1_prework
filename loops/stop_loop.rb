# loops exercise 2

# --- while loop
puts "Type the magic word."
input = gets.chomp
while input != "STOP"
  puts "Nope, '#{input}' is not the magic word! Try again."
  input = gets.chomp
end
puts "Yup, you got it!"

# --- until loop
puts "Enter the magic word again."
input = gets.chomp
until input == "STOP"
  puts "Sorry, '#{input}' is not the magic word. You just had it!"
  input = gets.chomp
end
puts "Yeah, that's it. I'm done."
