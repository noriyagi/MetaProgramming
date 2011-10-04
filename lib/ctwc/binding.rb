class MyClass
  def my_method
    @x = 1
    binding
  end
end

b = MyClass.new.my_method

#evalのメソッド引数にBindingを渡せばそのスコープでコードを実行できる。
p eval "@x", b

class AnotherClass
  def my_method
    eval "self", TOPLEVEL_BINDING
  end
end

p AnotherClass.new.my_method
