# variables exercise 2
puts "How old are you?"
age = gets.chomp.to_i
puts "Ok, if you're #{age} today..."
i = 10
4.times do
  puts "In #{i} years you will be #{age + i}"
  i += 10
end