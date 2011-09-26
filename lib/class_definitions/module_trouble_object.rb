module MyModule
  def my_method; 'hello'; end
end

#オブジェクト拡張
#オブジェクトから特異クラスをオープンする。
obj = Object.new
class << obj
  include MyModule
end

p obj.my_method
p obj.singleton_methods
