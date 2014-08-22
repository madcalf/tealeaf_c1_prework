
def divide(number, divisor)
  begin
    answer = number / divisor
  rescue ZeroDivisionError => e
    puts "ERROR! #{e.message}"
    puts "e: #{e}"
    puts e == e.message
    puts e.to_s == e.message
    puts "e.class: #{e.class}"
    puts "e.message.class: #{e.message.class}"
    puts "#{e.class}: #{e.message} " 
    puts "e.backtrace: #{e.backtrace}"
    puts "e.backtrace_locations: #{e.backtrace_locations}"
  end
end

puts divide(16, 4)
puts divide(4, 0)
puts divide(14, 7)