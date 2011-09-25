#class MyClass < Array
#  def my_method
#    'Hello!'
#  end
#end

c = Class.new(Array) do
  def my_method
    'Hello!'
  end
end

MyClass = c

p c.name

class Object
  def eigenclass
    class << self; self; end
  end
end

p "abc".eigenclass