# methods exercise 5

# change method to just output words (but doesn't return anything)
def scream(words)
  words = words + "!!!!"
  puts words
end
scream("Yippeee")

# just trying something... 
# this one returns the words then outputs the return value
# any difference?
def scream(words)
  words = words + "!!!!"
  return words
end
puts scream("Kayay!")
