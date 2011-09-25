class MyClass
  @my_var = 1  #クラスインスタンス変数

  def self.read; @my_var; end #このselfはクラスを指している
  def write; @my_var = 2; end #オブジェクトのインスタンス変数
  def read; @my_var; end
end

obj = MyClass.new
obj.write
p obj.read
p MyClass.read