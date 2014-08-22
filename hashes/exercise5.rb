# Hashes Exercise 5
# What method could you use to find out if a Hash contains a specific 
# value in it? Write a program to demonstrate this use.

puts "-- Exercise 5"
people = {Elrond: "Elf/Man", Gimli: "Dwarf", Bilbo: "Hobbit", Fili: "Dwarf", 
          Aragorn: "Man", Gandalf: "Wizard", Eomer: "Man"}

people.has_value?("Hobbit")   # returns true
people.key("Hobbit")          # returns :Bilbo