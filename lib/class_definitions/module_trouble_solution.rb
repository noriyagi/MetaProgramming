module MyModule
  def my_method; puts 'hello'; end
end

#クラス拡張
class MyClass
  class << self
  include MyModule
  end
end

MyClass.my_method
