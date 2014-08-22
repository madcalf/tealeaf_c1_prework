names = ['bob', 'joe', 'steve', nil, 'frank']

# without the rescue, it simply breaks with an error when it gets
# to the nil value.
# names.each do |name|
#     puts "#{name}'s name has #{name.length} letters in it."
# end

# with the rescue, it will note the error then continue with 
# the rest of the array
names.each do |name|
  begin
    puts "#{name}'s name has #{name.length} letters in it."
  rescue
    puts "Something went wrong!"
  end
end

# inline rescue example
puts
zero = 0;
puts "before the each call"
zero.each { |element| puts element } rescue puts "Can't do that!"
puts "after the each call"