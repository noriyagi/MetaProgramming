class String
  alias :real_length :length

  def length
    real_length > 5 ? 'long' : 'short'
  end
end

p "War and Peace".length
p "War and Peace".real_length
