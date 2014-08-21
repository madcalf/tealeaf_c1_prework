# Arrays exercises

# Exercise 1
# Below we have given you an array and a number. 
# Write a program that checks to see if the number appears in the array.
puts "\n-- Exercise 1"
arr = [1, 3, 5, 7, 9, 11]
number = 3
puts "array '#{arr}' contains #{number}? #{arr.include?(number)}"

# Exercise 2
# What will the following programs return? What is value of arr after each?
puts "\n-- Exercise 2.1"
arr = ["b", "a"]
arr = arr.product(Array(1..3))
print "#{arr}\n"
arr.first.delete(arr.first.last)
print "#{arr}\n"

puts "\n-- Exercise 2.2"
arr = ["b", "a"]
arr = arr.product([Array(1..3)])
print "#{arr}\n"
arr.first.delete(arr.first.last)
print "#{arr}\n"

# Exercise 3
# How do you print the word "example" from the following array?
puts "\n-- Exercise 3"
arr = [["test", "hello", "world"], ["example", "mem"]]
puts arr.last.first
# or 
puts arr[1][0]

# Exercise 4
# What does each method return in the following example?
puts "\n-- Exercise 4"
arr = [15, 7, 18, 5, 12, 8, 5, 1]
puts arr.index(5) # 3
puts arr[5]       # 8
# puts arr.index[5] # error

# Exercise 5
# What is the value of a, b, and c in the following program?
puts "\n-- Exercise 5"
string = "Welcome to Tealeaf Academy!"
a = string[6]   # e
b = string[11]  # T
c = string[19]  # A
puts "a: #{a}"
puts "b: #{b}"
puts "c: #{c}"

# Exercise 6
# Fix the following:
# names = ['bob', 'joe', 'susan', 'margaret']
# names['margaret'] = 'jody' 
# it returns error cuz 'margaret' is not a proper index. Needs to be an integer
puts "\n-- Exercise 6"
names = ['bob', 'joe', 'susan', 'margaret']
names[3] = 'jody'
print "#{names}\n"

# Exercise 7
puts "\n-- Exercise 7"
numbers = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
numbers2 = Array.new(numbers.size) { |index| numbers[index] + 2}
p "orig array: #{numbers}"
p "new array: #{numbers2}"