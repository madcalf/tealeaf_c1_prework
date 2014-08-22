def test(b)
  b.map! { |letter| "I like the letter: #{letter}"}
end

a = ['a', 'b', 'c']
puts test(a)

def foo(a) 
  a = 3  
end

def bar(arr)
  arr.push("item")
end

x = 1
puts foo(x)
print x

puts
arg = [1, 3, 5]
print "#{bar(arg)}\n"
print "#{arg}\n"

# ---- block and procs
def some_method(&block)
  block.call
end

def method2(arg, &block)
  puts "arg is #{arg}"
  block.call
end

# now we're calling the above method passing a block as the param
some_method { puts "here's a string!"}
some_method do 
  puts "string 1"
  puts "string 2"
end

method2(444) { puts "this block is the 2nd param"}

