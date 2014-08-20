x = 0

# # conditional loop
# while x <= 10
#   if x.odd?
#     puts x
#   end
#   x += 1
# end

# # conditional loop with next
# while x <= 10
#   if x == 5
#     x += 1
#     next
#   elsif x.odd?
#     puts x
#   end
#   x += 1
# end

# conditional with break
while x <= 10
  if x == 7
    break
  elsif x.odd?
    puts x
  end
  x += 1
end

