
def doSomething
  x = 14
  x = 28
end

def doSomethingElse
  18
end

a = true;
result = 
  case a
  when true
    doSomething
  else false
    doSomethingElse
  end
    

puts "result: #{result}"

( people.select {|k, v| v == "Dwarf"} ).keys