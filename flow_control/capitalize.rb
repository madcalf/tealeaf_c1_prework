# flow control exercise 2

def capitalize (str)
  #long way
  # if str.size > 10 
  #   str.upcase
  # else
  #   str
  # end
  
  # try the short way
  (str.size > 10) ? str.upcase : str
end

puts "Gimme a string!"
s = gets.chomp
puts capitalize(s)