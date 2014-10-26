## Animal is-a object look at the extra credit
class Animal
end

## Dop is-a Animal
class Dog < Animal
  def initialize(name)
    #dog has-a name
    @name = name
  end
end

## Cat is an Animal

class Cat < Animal
  
  def initialize(name)
    ## cat has-a name
    @name = name
  end
end

## Person is-an object
class Person
  
  def initialize(name)
    ## Person has a name
    @name = name
    
    ## Person has-a pet of some kind
    @pet = nil
  end
  
  attr_accessor :pet
end

## An employee is a person
class Employee < Person
  
  def initialize(name, salary)
    ## an employee has a name through person
    super(name)
    ## an employee has a salary
    @salary = salary
  end
  
end

## A fish is an object
class Fish
end

## A Salmon is a Fish
class Salmon < Fish
end

## A Halibut is a Fish
class Halibut < Fish
end

## rover is-a dog
rover = Dog.new("Rover")

## satan is a Cat
satan = Cat.new("Satan")

## mary is a person
mary = Person.new("Mary")

## mary's pet is satan
mary.pet = satan

## frank is an Employee with a salary of 120000
frank = Employee.new("Frank", 120000)

## frank has a pet, rover

## flipper is a fish
flipper = Fish.new

## crouse is a Salmon
crouse = Salmon.new()

## harry is a Halibut
harry = Halibut.new()