def define_methods
  shared = 0

  Kernel.send :define_method, :counter do
    shared
  end

  Kernel.send :define_method, :inc do |x|
    shared += 4
  end
end

define_methods

p counter
p inc(4)
p counter
