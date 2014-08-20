# flow control exercise 3

# Question: is it better to have the method do the printing (Version 1)
#  or to return the result and have the caller do the outputting? (Version 2)
# Does it even matter? 

# # Version 1: method outputs the answer
# def test (number) 
#   answer = case 
#     when number > 100
#       "Hey #{number} is above 100, dummy!"
#     when number > 50
#       "Your number is between 50 and 100"
#     when number >= 0
#       "Your number is between 0 and 50"
#     else
#      "Come on, the number has to be at least 0."
#     end
#     puts answer
# end

# puts "Gimme a number between 1 and 100."
# num = gets.chomp.to_i
# test(num)

# Version 2: method returns the answer instead of printing it
def test (number) 
  answer = case 
    when number > 100
      "Hey #{number} is above 100, dummy!"
    when number > 50
      "Your number is between 50 and 100"
    when number >= 0
      "Your number is between 0 and 50"
    else
      "Come on, the number has to be at least 0."
    end
    return answer
end

# based on solution. 
# Didn't know about the .. syntax. It wasn't covered in this lesson...
def test2 (number)
  answer2 = case number
  when 0..50
    "Your number is between 0 and 50"
  when 51..100
    "Your number is between 50 and 100"
  else
    if (number < 0)
      answer2 = "Come on, the number has to be at least 0."
    elsif (number > 100)
      answer2 = "Hey #{number} is above 100, dummy!"
    end
    return answer2
  end
end

puts "Gimme a number between 1 and 100."
num = gets.chomp.to_i
# print out the answer here instead of in the method
puts test(num)
puts test2(num)