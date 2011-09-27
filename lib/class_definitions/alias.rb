class MyClass
  def my_method; puts 'my_method()'; end
  alias :m :my_method
  alias_method :m2, :m
  private :m2
end

obj = MyClass.new
obj.my_method
obj.m
obj.m2