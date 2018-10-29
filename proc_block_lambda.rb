require "pry"

a = [1,2,3,4,5]

# BLOCKS - a block is the bit of code between the {},
# which could be written alternatively between `do` and `end`
b = a.map { |x| x ** 2 }


# a PROC is basically a code snippet, eg
p = Proc.new { |x| x ** 2 }
# which can be re-used, eg
c = b.map(&p)

# a PROC can be called directly, by `proc_name.call` though the example above
# can't really as it acts on an array and not on nothing at all. But we can do

p1 = Proc.new { puts c }
p1.call


# A lambda is also a code snippet, but declared slightly differnty, thus:
l = lambda { |x| x ** 2 }
d = b.map(&l)

# and can also be called thusly
l1 = lambda { puts d }
l1.call

# The block of code can't be assigned directly to a variable.
# eg var = { |x| x ** 2 } ==> nope

# to pass it around as a variable / object and re-use it later you have to make it a proc or lambda eg
var1 = Proc.new { |x| x** 2 }
#  or
var2 = lambda { |x| x ** 2 }
# There are differences between procs and lambdas, but they are beyond the scope of today's homework



binding.pry
