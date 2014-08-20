names = ["bob", "joe", "steve", "janice", "susan", "helen", "joe", "susan"]
x = 1

# single line uses curly braces
names.each {|name| puts name}

# multi line uses do/end. No braces
names.each do |name|
  puts "#{x}. #{name}"
  x += 1
end

puts
puts "-- each multi lines --"
# above without the external counter
# note .index is problematic if elements are duplicated in array
# looks like it always returns the first index found
names.each do |name|
  puts "#{names.index(name)}. #{name}"
end

# single line 
puts
puts "-- each on single line --"
names.each {|name| puts "#{names.index(name)}. #{name}"}

# random stuff
puts
puts "-- each_index single --"
names.each_index {|i| puts "#{i}. #{names[i]}"}

puts
puts "-- each_index multi line --"
names.each_index do |i|
  puts "#{i}. #{names[i]}"
end