class Computer
  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
  end
#componentに処理を渡し、DS#〜を呼び出している。
  def mouse
    component :mouse
  end

  def cpu
    component :cpu
  end

  def keyboard
    component :keyboard
  end

  def component(name)
    info = @data_source.send "get_#{name}_info", @id
    price = @data_source.send "get_#{name}_price", @id
    result = "#{name.to_s.capitalize}: #{info}($#{price})"
    return "* #{result}" if price >= 100
    result
  end

end


my_computer = Computer.new(42, DS.new)
p my_computer.cpu
