class Computer
  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
    #"String#grep()"にブロックを渡すと正規表現にマッチした要素が評価される。
    data_source.methods.grep(/^get_(.*)_info$/){Computer.define_component $1}
  end

  #"self"によってクラスメソッドになっている。
  def self.define_component(name)
    define_method(name){
    info = @data_source.send "get_#{name}_info", @id
    price = @data_source.send "get_#{name}_price", @id
    result = "#{name.capitalize}: #{info}($#{price})"
    return "* #{result}" if price >= 100
    result
    }
  end

  define_component :mouse
  define_component :cpu
  define_component :keyboard

end
my_computer = Computer.new(42, DS.new)
p my_computer.cpu
