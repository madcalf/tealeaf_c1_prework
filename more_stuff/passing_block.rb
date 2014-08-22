# from book
def take_block(number, &block)
  block.call
end
 
# this book example is confusing, cuz the passing number 
# to take_block doesn't really do anything. the #{number} being
# printed inside the block is the number passed into the .each method
# not the one passed to the take_block method
[1, 2, 3, 4, 5].each do |number|
  take_block(number) do
    puts "Block being called in the method! #{number}"
  end
end

# this illustrates what i'm trying to say i think
[1, 2, 3, 4, 5].each do |number|
  x = 55
  take_block(x) do |num|
    puts "the arg passed to take_block method is #{x}"
    puts "But arg passed to the block from each method is #{number}"
  end
end

# --- Procs  
talk = Proc.new do 
  puts "I am talking."
end
talk.call

talk = Proc.new do |name|
  puts "I am talking to #{name}"
end
talk.call("Bob")

def take_proc(proc)
  [1, 2, 3, 4, 5].each do |number|
    proc.call number
  end
end

# define the proc
proc = Proc.new do |number|
  puts "#{number}. Proc being called in the method."
end

take_proc(proc)