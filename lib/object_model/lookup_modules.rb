module M
   def my_method
     'M#my_method()'
   end
end

 class C
   include M
 end

 class D < C
 end

p D.new.my_method()
p D.ancestors  #モジュールはincudeされるクラスの直上に位置する。