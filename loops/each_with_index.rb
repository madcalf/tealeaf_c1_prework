# loops exercise 3
# 
# --- from docs
# each_with_index {|(*args), idx| ... }
# each_with_index
# --- 
# So what does the * mean? Does it indicate that the arg can be any type?
# The fact that it says args (plural) implies that you can pass more than one arg within parenthesis
# If so, what other args could you pass, assuming the first arg refers to the current item in the collection.
#
puts "-- single line syntax --"
hobbits = ["Bilbo", "Frodo", "Merry", "Pippin", "Sam"]
hobbits.each_with_index {|(item, arg2), i| puts "#{i}. #{item}, arg2: #{arg2}"}

puts
puts "-- multi line syntax --"
hobbits.each_with_index do |(item, arg2), i|
  puts "#{i}. #{item}"
end

puts
# note if not using multiple args, then you don't need the parens
hobbits.each_with_index do |item, i|
  puts "#{i}. #{item}"
end

# curious about each_with_object
# each_with_object(obj) {|(*args), obj| ... }
# each_with_object(obj)

puts
puts "--- each_with_object. single line block"
x = 1;
hobbits.each_with_object(x) {|item, obj| puts "item: #{item}, obj:#{obj}"}

puts "--- each_with_object. do/end block"
hobbits.each_with_object(x) do |item, obj|
  obj += 1;
  puts "item: #{item}, obj: #{obj}"
end

puts
# just thinking up another example...
files = ["one.txt", "sample.rb", "test.rb"]
path = "~/prework/exercises/"
files.each_with_object(path) do |a_item, a_path|
  fullpath = "#{a_path}#{a_item}"
  puts "fullPath: #{fullpath}" 
end