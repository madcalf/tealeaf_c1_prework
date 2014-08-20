a = 8

# case a
#   when 5
#     puts "a is 5"
#   when 6
#     puts "a is 6"
#   else
#     puts "a is neither 5, nor 6"
#   end
  
# refactor to assign result of case to variable
answer = case a
when 5
  "a is 5"
when 6
  "a is 6"
else
  "a is neither 5, nor 6"
end
puts answer

# Yet another way. Case without an arg. 
# Assign the var a inside
b = 5
answer2 = case 
  when b == 5
    "b is 5"
  when b == 6
    "b is 6"
  else 
    "b is neither 5 nor 6"
  end
  
  puts answer2