class String
  def self.inherited(subclass)
    puts "#{self} は #{subclass} に継承された。"
  end
end

class MyString < String; end

module M
  def self.included(othermod)
    puts "M は #{othermod} にミックスインされる。"
  end
end

class C
  include M
end