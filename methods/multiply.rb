# methods exercise 3

def multiply(arg1, arg2)
  arg1 * arg2
end

def random_method(arg1)
  arg1
end

# this works if no space after method name
puts multiply(10, 45)

# but with space, it throws an error
#puts multiply (10, 45)

# but the space doesn't seem to be a problem if there's only one arg
# both these work. wierd...
puts random_method(30)
puts random_method (20) 