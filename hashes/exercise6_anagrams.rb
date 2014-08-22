# Hashes Exercise 6
# Given the array...
# words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
#           'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
#           'flow', 'neon']
# Write a program that prints out groups of words that are anagrams. 
# Anagrams are words that have the same exact letters in them but in a 
# different order. Your output should look something like this:
# ["demo", "dome", "mode"]
# ["neon", "none"]
# (etc)
#  ------

puts "\n-- Exercise 6"
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

words.each do |word| 
  # puts "#{word}:\n"

  # split the word into an array of chars
  splitWord = word.split('')
  # get all possible permutations of those chars
  permutations = splitWord.permutation(word.size).to_a
  # print "type: #{permutations.class} --- #{permutations}\n"
  
  # loop thru each permutation, convert it to a string
  # and see if that string matches any word in our orig words array
  # if it does, add it to the anagrams array for that word
  anagrams = []  # all anagrams for this word
  permutations.each do |elem|
    if words.include?(elem.join)
      anagrams.push(elem.join)
    end
   end
  print "#{anagrams}\n"
end


# the solution was a bit simpler. No permutations necessary...
# he also splits word into chars, but then sorts the chars, so that
# he can just compare if they have the same letters
# this one avoids all the repeats too.
puts "\n-- SOLUTION" 
result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end
puts "result: #{result}"
result.each do |k, v|
  puts "------"
  p v
end