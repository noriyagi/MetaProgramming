def a_method(a,b)
  a + yield(a,b)
end

p a_method(1,2){|x,y| (x + y)*3}

def b_method
  return yield if block_given?
  'block not found'
end

p b_method
p b_method{"block find!!"}