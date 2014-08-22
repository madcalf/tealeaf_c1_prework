# Hashes exercises 1 & 2

# Exercise 1
# Given a hash of family members, with keys as the title 
# and an array of names as the values, use Ruby's built-in select 
# method to gather only immediate family members' names into a new array.
puts "\n-- Exercise 1"

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank", "rob", "david"],
            aunts: ["mary", "sally", "susan"]
          }
          
immediate_family = family.select { |key, val| key == :sisters || key == :brothers }
# just show the names, not the hashes
puts "--- via values"
puts immediate_family.values

# can also use flatten
# note this one doesn't quite work cuz it includes the :brothers and :sisters labels
# puts immediate_family.flatten
# 
# this one works
puts "--- via values.flatten"
puts immediate_family.values.flatten

# ----------------------
# Exercise 2
# Look at Ruby's merge method. Notice that it has two versions. 
# What is the difference between merge and merge!? 
# Write a program that uses both and illustrate the differences.
puts "\n-- Exercise 2"
puts "--- Non mutating. Duplicate keys combine both values"
people1 = {Elrond: "Elf", Gimli: "Dwarf", Bilbo: "Hobbit", Fili: "Dwarf"}
people2 = {Elrond: "Man", Aragorn: "Man", Gandalf: "Wizard", Eomer: "Man"}
puts "people1 before merge: #{people1}"
puts "people2 before merge: #{people2}"
puts
merged = people1.merge(people2) { |key, oldVal, newVal| "#{oldVal}/#{newVal}" }
puts "merged: #{merged}"
puts
puts "people1 after merge: #{people1}"
puts "people2 after merge: #{people2}"

puts
puts "--- Mutating. Duplicate keys combine both values"
puts "people1 before merge: #{people1}"
puts "people2 before merge: #{people2}"
puts
people1.merge!(people2) { |key, oldVal, newVal| "#{oldVal}/#{newVal}"}
puts
puts "people1 after merge: #{people1}"
puts
puts "people2 after merge: #{people2}"