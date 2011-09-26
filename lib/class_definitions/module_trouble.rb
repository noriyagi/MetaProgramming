module MyModule
  def self.my_method; 'hello'; end
end

class MyClass
  include MyModule
end

#includeしたのはインスタンスメソッドになっている！
#クラスメソッドを手に入れるためには？
MyClass.my_method
