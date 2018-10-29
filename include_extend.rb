require "pry"

# examples of how to include a moduel in various classes.
# The methods in the module below then are available to the instances of the classes in which they are included.
module Electricity
  def power
    "The power of the sun in the palm of my hand"
  end

  def shock
    "It's only a tickle"
  end

end

class Guitar
  include Electricity
end

class Car
  include Electricity
end

class Person
  include Electricity
end

stratocaster = Guitar.new
tesla = Car.new
john = Person.new

p stratocaster.power
p tesla.power
p john.shock


# Using extend we can add the methods in the module as class methods,
# as in the ridiculous examples below

class Array
  extend Electricity
end
class Integer
  extend Electricity
end

p Array.shock
p Integer.power



binding.pry
