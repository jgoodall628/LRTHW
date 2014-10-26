class Other
  def override()
    puts "Other override()"
  end
  
  def implicit()
    puts "Other implicit"
  end
  
  def altered()
    puts "Other altered()"
  end
end

class Child
  
  def initialize()
    @other = Other.new()
  end
  def implicit()
    @other.implicit()
  end
  def override()
    puts "Child override()"
  end
  
  def altered()
    puts "Child, before parent altered()"
    @other.altered()
    puts "Child, after parent altered()"
  end
end


son = Child.new()


son.implicit
son.override
son.altered()