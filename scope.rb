require 'pry'

# examples of scope in a ruby class
class Robot

  def initialize name
    # name is passed into each class at definition
    # it's not availaible to the rest of the class without the @name = name step
    @name = name

    # 2 x @ makes this a class variable, shared by all instances
    @@type = "Robot"
  end

  def name
    # maybe a silly example,
    # but the name of this method does not conflict with the
    # parameter passed in to initialize
    @name
  end

  def type
    @@type
  end

  def change_type new_type
    # This method will change the type of all instances of Robot
    @@type = new_type
  end

end


a = Robot.new "Asimov"
p a.name
p a.type

b = Robot.new "Marvin"
p b.name
p b.type

c = Robot.new "R2D2"
p c.name
p c.type
c.change_type "Droid"
p c.type
p b.type
p a.type


# binding.pry
