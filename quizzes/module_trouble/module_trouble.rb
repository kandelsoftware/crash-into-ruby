# Every single day, somewhere in the world, a Ruby programmer 
# tries to define a class method by including a module, like this:

module MyModule
  def my_method
    'hello'
  end
end

class MyClass
  include MyModule
end

MyClass.my_method # => NoMethodError!

puts "OK!"

# The code above breaks, because you only get instance methods by
# including a module - not class methods. How would you change the
# code above so that MyModule stays the same, but my_method becomes
# a class method on MyClass?
#
# (If you happen to know about the extend() method, try *not* to use
# it - it makes things too easy, so it's considered cheating. :)
# Instead, think about the object model and singleton classes.
# How would you modify the code that you just looked at so that it
# works as expected?
