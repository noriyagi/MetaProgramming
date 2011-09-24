def monthly_sales
  110 #from DataBase
end

target_sales = 100

event "Monthly Sales is too Higher" do
  monthly_sales > target_sales
end

event "Monthly Sales is too Lower" do
  monthly_sales < target_sales
end