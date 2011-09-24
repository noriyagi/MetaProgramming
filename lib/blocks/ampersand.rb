def math(a, b)
  yield(a,b)
end

def teach_math(a,b,&operation)
  puts "Lets Start"
  puts math(a,b,&operation)
end

teach_math(2,3){|x,y| x*y}

#ブロックをprocに変換している例
def my_method(&the_proc)
  the_proc
end

p = my_method{|name| "Hello, #{name}!" }
puts p.class
puts p.call("Bill")
