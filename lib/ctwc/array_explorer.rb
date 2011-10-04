def explore_array(method)
  code = "['a', 'b','c'].#{method}"
  puts "Evaluating: #{code}"
  eval code
end

#文字列を編集して、evalで実行
loop{p explore_array(gets())}