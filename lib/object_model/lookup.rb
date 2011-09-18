class MyClass
  def my_method; 'my_method()'; end
end

class MySubclass < MyClass
end

obj = MySubclass.new
p obj.my_method()

p MySubclass.ancestors


