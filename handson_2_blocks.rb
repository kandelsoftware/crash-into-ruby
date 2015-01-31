# for loops are rarely ever used. instead...

# blocks
3.times { puts "hi" }
2.upto(4) {|i| puts "#{i}..." }
3.upto(5) do |i|
  puts "#{i}..."
end

stuff.each do |e|
  puts e.reverse
end

wrong_stuff = stuff.map do |e|
  e.gsub "o", "a"
end
wrong_stuff   # => ["hella", "warld"]

def decorate
  puts "in..."
  yield
  puts "...out"
end
decorate { puts "...block..." }

def callback
  yield 3
end
callback {|n| n * 2 }

def callback
  yield 3, 2
end
callback {|n, m| n * m }
