require 'rubygems'
require 'highline'

hl = HighLine.new
#askに文字列と後で処理するコードを補完したprocを渡して呼び出す。(相手はQuestionオブジェクト)
#ユーザ入力を受けた後で、Questionオブジェクトはprocオブジェクトに入力値を渡す。
friends = hl.ask("input friends!", lambda{|s| s.split(',')})
puts "Friends List: #{friends.inspect}"
