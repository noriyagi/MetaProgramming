class MyClass
  def initialize(value)
    @x = value
  end

  def my_method
    @x
  end
end

#Object#method()を呼び出すと、メソッドをMethodオブジェクトとして取得できる。
object = MyClass.new(1)
m = object.method :my_method
p m.call
