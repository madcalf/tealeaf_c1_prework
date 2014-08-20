
# exercise 4 - questions
'4' == 4 ? puts("TRUE") : puts("FALSE")

x = 2
 if ((x * 3) / 2) == (4 + 4 - x - 3)
   puts "Did you get it right?"
 else
   puts "Did you?"
 end 
 
 y = 9
 x = 10
 if (x + 1) <= (y)
   puts "Alright."
 elsif (x + 1) >= (y)
   puts "Alright now!"
 elsif (y + 1) == x
   puts "ALRIGHT NOW!"
 else
   puts "Alrighty!"
 end
 
 # exercise 6 - fix the following
def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
  end # end was missing
end 

equal_to_four(5)