# More Stuff Exercise 2, 4
# What will the following program print to the screen? What will it return?

# don't think this will print anything, cuz it doesn't call the block
# not sure what it returns
# results: 
#   Prints nothing. 
#   Returns an instance of the block that was passed:
#   (#<Proc:0x007fa3c5806090@block_test.rb:13>)
puts "\n-- broken version"
def execute(&block)
  block
end
returnVal = execute { puts "Hello from inside the execute method!"}
puts "returns: #{returnVal}"

# fixed version (exercise 4)
# Results:
#   Prints the specified output string
#   Returns nothing (or maybe it's an empty line). Interesting...
#   Actually i think this is the trailing \n that comes with using puts
puts "\n-- fixed version"
def execute2(&block)
  block.call
end 

def execute3(&block)
  block.call
  88 # return something else instead of the result of the block
end 

#  ok, since puts returns nil, execute2 doesn't return anything when
#   called with this block
returnVal = execute2 { puts "Hello from inside the execute2 method!"}
puts "returns: #{returnVal}" 

# but if we call it with this block, it will return the string
puts "\n-- pass a block that doesn't use puts"
returnVal = execute2 { "Hello from inside the execute2 method!" }
puts "returns: #{returnVal}" 

puts "\n-- try passing a block that does not return a string"
puts execute2 { 45 }
puts "returns: #{returnVal}" 

puts "\n-- use the method that executes additional code after calling the block"
returnVal = execute3 { puts "Hello from inside the execute3 method!"}
puts "returns: #{returnVal}" 