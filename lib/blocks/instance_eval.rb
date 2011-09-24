class MyClass
  def initialize
    @v = 1
  end
end

obj = MyClass.new
obj.instance_eval do
  p self
  p @v
end

v = 2
#レシーバをselfとして、ブロックを評価する。→カプセル化を破壊する。
#コンテキスト探索機
obj.instance_eval{@v = v}
p obj.instance_eval{@v}
