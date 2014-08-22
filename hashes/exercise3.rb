# Hashes exercise 3

# Using some of Ruby's built-in Hash methods, write a program that loops 
# through a hash and prints all of the keys. Then write a program that does
# the same thing except printing the values. Finally, write a program 
# that prints both.

puts "-- Exercise 3"
people = {Elrond: "Elf/Man", Gimli: "Dwarf", Bilbo: "Hobbit", Fili: "Dwarf", 
          Aragorn: "Man", Gandalf: "Wizard", Eomer: "Man"}

puts "--- keys only"
people.each_key { |key| puts key}

puts "--- values only"
people.each_value { |val| puts val}

puts "--- keys and values"
people.each_pair { |key, val| puts "#{key} is a #{val}"}

