class Parent
  def altered()
    puts "Parent altered()"
  end
end

class Child < Parent
  def altered()
    puts "Child, before parent altered()"
    super()
    puts "Child, after parent altered()"
  end
end
dad = Parent.new()
son = Child.new()

dad.altered()
son.altered()