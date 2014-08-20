
def fibonacci (num)
  if (num < 2) 
   num
  else
    fibonacci(num - 1) + fibonacci(num - 2)
  end   
end
  
n = gets.chomp.to_i
puts fibonacci(n)