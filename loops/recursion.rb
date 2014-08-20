# loops exercise 4
# Write a method that counts down to zero using recursion.
#
# ok both these work now. You had the puts *after* the call to countdown and that
# was apparently enuf to cause the count to be reversed! Don't quite get that... 
# also the returns are not necessary. 
# 
def countdown (num)
  if num > 0
    puts num
    countdown(num - 1)
  else
    puts num
    num
  end
end
countdown(15)

# ok this one works too. Don't need to return anything
#  Man, really getting confused without explicit returns.
puts 
puts "--- attempt 2 ----"
def countdown (num)
  if num <= 0
    puts "inside if num: #{num}"
    num
    # return num  # explicit return not nec. this is the same as above line
  else
    puts "inside else #{num}"
    countdown(num - 1)
    # return countdown(num - 1)  # explicit return not nec. Is same as above line.
  end
end
puts countdown(10)