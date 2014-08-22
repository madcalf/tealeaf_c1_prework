# More Stuff exercise 1
# Write a program that checks if the sequence of characters "lab" 
# exists in the following strings. If it does exist, print out the word.

strings = ['laboratory', 'experiment', 'Pans Labyrinth', 'elaborate',
           'polar bear']
           
# note string.match works with strings or regexp
# but the =~ method only appears to work with regexp
#  
# --------------
# using each
puts "\n--- version 1"
strings.each do |elem|
  # using match method here
  if elem.match(/lab/)
    puts elem
  end
end 

# --------------
# using select to return an array of items where the match is true
# using single line block
puts "\n--- version 2"
# this time use the other match syntax
a = strings.select { |elem| elem =~ /lab/ }
puts a

# --------------
# same as above with select but as multiline block
puts "\n--- version 3"
b = strings.select do |elem|
  elem =~ /lab/
end
puts b

# --------------
# SOLUTION
# His solution creates a function that prints whether or not the match is tre
# and he passes each word into that function
puts "\n-- solution"
def check_in(word)
  if /lab/ =~ word
    puts word
  else
    puts "No match"
  end
end

check_in("laboratory")
check_in("experiment")
check_in("Pans Labyrinth")
check_in("elaborate")
check_in("polar bear")

# --------------
# variation on this solution 
# to not hardcode the search term in the function
puts "\n -- variation on solution"
def contains(str, regexp)
  # oops, using match() here cuz not sure how to use a var in a regexp
  if regexp =~ str
    puts str
  else
    puts "No match"
  end
end

contains("laboratory", /lab/)
contains("experiment", /lab/)
contains("Pans Labyrinth", /lab/)
contains("elaborate", /lab/)
contains("polar bear", /lab/)
