def my_method(greeting)
  puts "#{greeting}, #{yield}"
end
my_proc = proc{"Bill"}
my_method("Hello", &my_proc)

#procとして定義したmy_procをブロックとして使っている。