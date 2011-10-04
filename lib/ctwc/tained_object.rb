#ユーザ情報を読み込む
user_input = "User input: #{gets()}"
puts user_input.tainted?

#セキュリティ
$SAFE = 1
user_input = "User input: #{gets()}"
eval user_input