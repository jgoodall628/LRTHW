class Parent
  def override()
    puts "Parent override()"
  end
  
  def implicit()
    puts "Parent implicit"
  end
  
  def altered()
    puts "Parent altered()"
  end
end

class Child < Parent
  
  def override()
    puts "Child override()"
  end
  
  def altered()
    puts "Child, before parent altered()"
    super()
    puts "Child, after parent altered()"
  end
end

dad = Parent.new()
son = Child.new()

dad.implicit
son.implicit

dad.override
son.override

dad.altered()
son.altered()